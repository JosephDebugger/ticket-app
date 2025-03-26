<?php

namespace Database\Seeders;

use App\Models\Ticket;
use App\Models\User;
use Illuminate\Database\Seeder;

class TicketSeeder extends Seeder
{
    public function run()
    {
        $customers = User::where('role', 'customer')->get();
        $statuses = ['Open', 'In Progress', 'Resolved', 'Closed'];
        $categories = ['Technical', 'Billing', 'General'];
        $priorities = ['Low', 'Medium', 'High'];

        foreach ($customers as $customer) {
            Ticket::factory()->count(rand(2, 3))->create([
                'user_id' => $customer->id,
                'status' => $statuses[array_rand($statuses)],
                'category' => $categories[array_rand($categories)],
                'priority' => $priorities[array_rand($priorities)]
            ]);
        }
    }
}