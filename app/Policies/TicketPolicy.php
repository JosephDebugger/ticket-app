<?php

namespace App\Policies;
use App\Models\Ticket;

use App\Models\User;

class TicketPolicy
{
    /**
     * Create a new policy instance.
     */
    public function __construct()
    {
        //
    }
    public function view(User $user, Ticket $ticket): bool
    {
        return $user->isAdmin() || $ticket->user_id === $user->id;
    }

    public function create(User $user)
    {
        return true; // Both can create tickets
    }

    public function updateStatus(User $user): bool
    {
        return $user->isAdmin();
    }
    public function delete(User $user, Ticket $ticket)
    {
        return $user->isAdmin(); // Only admin can delete
    }

    public function restore(User $user, Ticket $ticket)
    {
        return $user->isAdmin();
    }

    public function forceDelete(User $user, Ticket $ticket)
    {
        return $user->isAdmin();
    }
}
