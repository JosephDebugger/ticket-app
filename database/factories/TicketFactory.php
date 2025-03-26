<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class TicketFactory extends Factory
{
    public function definition()
    {
        return [
            'user_id' => User::factory(),
            'subject' => $this->faker->sentence(),
            'description' => $this->faker->paragraph(3),
            'category' => $this->faker->randomElement(['Technical', 'Billing', 'General']),
            'priority' => $this->faker->randomElement(['Low', 'Medium', 'High']),
            'status' => $this->faker->randomElement(['Open', 'In Progress', 'Resolved', 'Closed']),
            'attachment_path' => $this->faker->optional(0.3)->filePath(), // 30% chance of having attachment
            'created_at' => $this->faker->dateTimeBetween('-30 days', 'now'),
        ];
    }
}