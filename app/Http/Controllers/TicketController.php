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
use App\Http\Requests\UpdateTicketRequest;


class TicketController extends Controller
{
    public function index()
    {
        $tickets = Ticket::query()
            ->when(auth()->check() && auth()->user()->isCustomer(), fn($query) => $query->where('user_id', auth()->id()))
            ->with(['user', 'comments'])
            ->latest()
            ->paginate(10);
    
        return Inertia::render('Tickets/Index', [
            'tickets' => TicketResource::collection($tickets),
            'statuses' => ['Open', 'In Progress', 'Resolved', 'Closed'], // For filters
            'priorities' => ['Low', 'Medium', 'High'],
            'categories' => ['Technical', 'Billing', 'General']
        ]);

    }

    public function create()
    {
        return Inertia::render('Tickets/Create', [
            'priorities' => ['Low', 'Medium', 'High'],
            'categories' => ['Technical', 'Billing', 'General']
        ]);
    }

    public function store(StoreTicketRequest $request)
    {
        $ticket = auth()->user()->tickets()->create(
            $request->validated() + ['status' => 'Open']
        );

        if ($request->hasFile('attachment')) {
            $ticket->update([
                'attachment_path' => $request->file('attachment')->store('attachments', 'private')
            ]);
        }
        return Inertia::render('Tickets/Index', ['success' => 'Ticket created successfully']);
    }
    
    public function show(Ticket $ticket)
    {
        $this->authorize('view', $ticket);
        return Inertia::render('Tickets/Show', [
               'ticket' => new TicketResource($ticket->load([
                'user',
                'comments.user',
                'chat.messages.sender',
                'chat.messages.receiver'
            ])),
        ]);
    }
    public function update(UpdateTicketRequest $request, Ticket $ticket): TicketResource
    {
        $this->authorize('update', $ticket);
        $ticket->update($request->validated());
        return new TicketResource($ticket);
    }

    public function destroy(Ticket $ticket): JsonResponse
    {
        $this->authorize('delete', $ticket);
        $ticket->delete();
        return Inertia::render('Tickets/Index', ['success' => 'Ticket deleted successfully']);
      
    }

    public function updateStatus(Ticket $ticket, Request $request): TicketResource
    {
        $this->authorize('updateStatus', $ticket);
        
        $request->validate(['status' => 'required|in:Open,In Progress,Resolved,Closed']);
        
        $ticket->update(['status' => $request->status]);
        return new TicketResource($ticket);
    }
    

}
