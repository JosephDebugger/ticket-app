<?php

namespace Database\Seeders;

use App\Models\Chat;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Database\Seeder;

class ChatSeeder extends Seeder
{
    public function run()
    {
        $tickets = Ticket::all();
        $admin = User::where('role', 'admin')->first();

        foreach ($tickets as $ticket) {
            Chat::create([
                'ticket_id' => $ticket->id,
                'customer_id' => $ticket->user_id,
                'admin_id' => $admin->id
            ]);
        }
    }
}