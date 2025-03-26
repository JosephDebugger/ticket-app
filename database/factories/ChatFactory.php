<?php

namespace Database\Factories;

use App\Models\Ticket;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class ChatFactory extends Factory
{
    public function definition()
    {
        return [
            'ticket_id' => Ticket::factory(),
            'customer_id' => User::factory(),
            'admin_id' => User::factory(['role' => 'admin']),
            'created_at' => $this->faker->dateTimeBetween('-30 days', 'now'),
        ];
    }
}