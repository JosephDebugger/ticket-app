<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Database\Seeder;

class CommentSeeder extends Seeder
{
    public function run()
    {
        $tickets = Ticket::all();
        $users = User::all();

        foreach ($tickets as $ticket) {
            Comment::factory()->count(rand(2, 5))->create([
                'ticket_id' => $ticket->id,
                'user_id' => $users->random()->id
            ]);
        }
    }
}