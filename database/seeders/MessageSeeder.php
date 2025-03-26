<?php

namespace Database\Seeders;

use App\Models\Chat;
use App\Models\Message;
use App\Models\User;
use Illuminate\Database\Seeder;

class MessageSeeder extends Seeder
{
    public function run()
    {
        $chats = Chat::all();
        $admin = User::where('role', 'admin')->first();

        foreach ($chats as $chat) {
            $participants = [
                $chat->customer_id,
                $chat->admin_id
            ];

            // Create 5-10 messages per chat
            Message::factory()->count(rand(5, 10))->create([
                'chat_id' => $chat->id,
                'sender_id' => $participants[array_rand($participants)],
                'receiver_id' => $participants[array_rand($participants)]
            ]);
        }
    }
}