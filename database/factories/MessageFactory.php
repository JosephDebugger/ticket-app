<?php

namespace Database\Factories;

use App\Models\Chat;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class MessageFactory extends Factory
{
    public function definition()
    {
        // First create or get a chat
        $chat = Chat::factory()->create();
        
        // Get participants
        $participants = [$chat->customer_id, $chat->admin_id];
        
        // Randomly select sender
        $senderId = $this->faker->randomElement($participants);
        
        // Receiver is the other participant
        $receiverId = $participants[0] == $senderId ? $participants[1] : $participants[0];

        return [
            'chat_id' => $chat->id,
            'sender_id' => $senderId,
            'receiver_id' => $receiverId,
            'content' => $this->faker->realTextBetween(10, 200),
            'created_at' => $this->faker->dateTimeBetween('-30 days', 'now'),
        ];
    }
}