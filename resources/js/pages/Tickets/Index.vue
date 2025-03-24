<script setup>
import { Head, Link } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';
import { ref } from 'vue';

const props = defineProps({
    tickets: Object,
    statuses: Object,
    priorities: Object,
    categories: Object
});

const deleteTicket = (id) => {
    if (confirm('Are you sure you want to delete this ticket?')) {
        router.delete(route('tickets.destroy', id));
    }
};
</script>

<template>
    <AppLayout>
        <Head title="My Tickets" />
        
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-2xl font-bold">Support Tickets</h1>
                <Link 
                    :href="route('tickets.create')"
                    class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600"
                >
                    Create New Ticket
                </Link>
            </div>

            <div class="bg-white rounded-lg shadow overflow-hidden">
                <table class="w-full">
                    <thead class="bg-gray-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-sm font-medium text-gray-500">Subject</th>
                            <th class="px-6 py-3 text-left text-sm font-medium text-gray-500">Category</th>
                            <th class="px-6 py-3 text-left text-sm font-medium text-gray-500">Priority</th>
                            <th class="px-6 py-3 text-left text-sm font-medium text-gray-500">Status</th>
                            <th class="px-6 py-3 text-left text-sm font-medium text-gray-500">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <tr v-for="ticket in tickets.data" :key="ticket.id">
                            <td class="px-6 py-4">{{ ticket.subject }}</td>
                            <td class="px-6 py-4">
                                <span class="px-2 py-1 bg-blue-100 text-blue-800 rounded-full text-sm">
                                    {{ ticket.category }}
                                </span>
                            </td>
                            <td class="px-6 py-4">
                                <span :class="{
                                    'bg-red-100 text-red-800': ticket.priority === 'High',
                                    'bg-yellow-100 text-yellow-800': ticket.priority === 'Medium',
                                    'bg-green-100 text-green-800': ticket.priority === 'Low'
                                }" class="px-2 py-1 rounded-full text-sm">
                                    {{ ticket.priority }}
                                </span>
                            </td>
                            <td class="px-6 py-4">
                                <span :class="{
                                    'bg-green-100 text-green-800': ticket.status === 'Resolved',
                                    'bg-blue-100 text-blue-800': ticket.status === 'Open',
                                    'bg-yellow-100 text-yellow-800': ticket.status === 'In Progress'
                                }" class="px-2 py-1 rounded-full text-sm">
                                    {{ ticket.status }}
                                </span>
                            </td>
                            <td class="px-6 py-4 space-x-2">
                                <Link 
                                    :href="route('tickets.show', ticket.id)"
                                    class="text-blue-500 hover:text-blue-700"
                                >
                                    View
                                </Link>
                                <Link 
                                    :href="route('tickets.edit', ticket.id)"
                                    class="text-green-500 hover:text-green-700"
                                >
                                    Edit
                                </Link>
                                <button 
                                    @click="deleteTicket(ticket.id)"
                                    class="text-red-500 hover:text-red-700"
                                >
                                    Delete
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- Pagination -->
                <div class="px-6 py-4 bg-gray-50 border-t border-gray-200">
                    <nav class="flex items-center justify-between">
                        <div class="text-sm text-gray-700">
                            Showing {{ tickets.from }} to {{ tickets.to }} of {{ tickets.total }} results
                        </div>
                        <div class="flex space-x-2">
                            <Link 
                                v-for="link in tickets.links"
                                :key="link.label"
                                :href="link.url || '#'"
                                class="px-3 py-1 rounded-md"
                                :class="{
                                    'bg-blue-500 text-white': link.active,
                                    'text-gray-700 hover:bg-gray-100': !link.active && link.url,
                                    'text-gray-400 cursor-not-allowed': !link.url
                                }"
                                v-html="link.label"
                            />
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </AppLayout>
</template>