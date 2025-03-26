<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use App\Http\Resources\TicketResource;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use App\Http\Requests\StoreTicketRequest;
use App\Http\Resources\UserResource;
use App\Http\Resources\CommentResource;
use App\Http\Resources\ChatResource;
use Inertia\Inertia;
use App\Events\NewMessage;
use App\Models\Chat;
use App\Http\Requests\StoreMessageRequest;
use App\Http\Resources\MessageResource;

class ChatController extends Controller
{
    public function getChat(Ticket $ticket): JsonResponse
    {
        $this->authorize('view', $ticket);

        $chat = $ticket->chat ?? $ticket->chat()->create([
            'admin_id' => User::where('role', 'admin')->first()->id
        ]);

        return response()->json([
            'chat' => $chat->load('messages')
        ]);
    }
    public function show(Ticket $ticketId)
    {
        // Find ticket or fail
        $ticket = Ticket::findOrFail($ticketId);

        // Authorize access
        $this->authorize('view', $ticket);

        // Find or create chat
        $chat = Chat::firstOrCreate(
            ['ticket_id' => $ticket->id],
            [
                'customer_id' => $ticket->user_id,
                'admin_id' => User::where('role', 'admin')->first()->id ?? 1 // Fallback to admin ID 1 if none found
            ]
        );

        // Load messages
        $messages = $chat->messages()
            ->with(['sender', 'receiver'])
            ->latest()
            ->get();

        return inertia('Tickets/Chat', [
            'ticket' => $ticket,
            'chat' => $chat,
            'messages' => MessageResource::collection($messages)
        ]);
    }
    public function sendMessage(StoreMessageRequest $request, Chat $chat): JsonResponse
    {
        $this->authorize('participate', $chat);

        $message = $chat->messages()->create([
            'content' => $request->content,
            'user_id' => auth()->id()
        ]);

        broadcast(new NewMessage($message))->toOthers();

        return response()->json(new MessageResource($message), 201);
    }
}
