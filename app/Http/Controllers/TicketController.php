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
}
