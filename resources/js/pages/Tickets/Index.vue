<script setup>
import AppLayout from '@/layouts/AppLayout.vue';
import { Head, Link } from '@inertiajs/vue3';

const props = defineProps({
    tickets: Object,
    statuses: Object,
    priorities: Object,
    categories: Object,
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

        <div class="mx-auto max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
            <div class="mb-6 flex items-center justify-between">
                <h1 class="text-2xl font-bold">Support Tickets</h1>
                <Link :href="route('tickets.create')" class="rounded-lg bg-blue-500 px-4 py-2 text-white hover:bg-blue-600"> Create New Ticket </Link>
            </div>

            <div class="overflow-hidden rounded-lg bg-white shadow">
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
                                <span class="rounded-full bg-blue-100 px-2 py-1 text-sm text-blue-800">
                                    {{ ticket.category }}
                                </span>
                            </td>
                            <td class="px-6 py-4">
                                <span
                                    :class="{
                                        'bg-red-100 text-red-800': ticket.priority === 'High',
                                        'bg-yellow-100 text-yellow-800': ticket.priority === 'Medium',
                                        'bg-green-100 text-green-800': ticket.priority === 'Low',
                                    }"
                                    class="rounded-full px-2 py-1 text-sm"
                                >
                                    {{ ticket.priority }}
                                </span>
                            </td>
                            <td class="px-6 py-4">
                                <span
                                    :class="{
                                        'bg-green-100 text-green-800': ticket.status === 'Resolved',
                                        'bg-blue-100 text-blue-800': ticket.status === 'Open',
                                        'bg-yellow-100 text-yellow-800': ticket.status === 'In Progress',
                                    }"
                                    class="rounded-full px-2 py-1 text-sm"
                                >
                                    {{ ticket.status }}
                                </span>
                            </td>
                            <td class="space-x-2 px-6 py-4">
                                <Link :href="route('tickets.show', ticket.id)" class="text-blue-500 hover:text-blue-700"> View </Link>
                                <Link :href="route('tickets.edit', ticket.id)" class="text-green-500 hover:text-green-700"> Edit </Link>
                                <button @click="deleteTicket(ticket.id)" class="text-red-500 hover:text-red-700">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                
            
         
            </div>
                <!-- Pagination -->
            <div class="mt-4" v-if="tickets.links">
                    <div class="flex items-center justify-between">
                        <div v-if="tickets.links.prev">
                            <Link :href="tickets.links.prev" class="rounded bg-gray-200 px-4 py-2"> Previous </Link>
                        </div>

                        <div class="flex space-x-1">
                            <template v-for="(link, index) in tickets.links.links" :key="index">
                                <Link
                                    :href="link.url"
                                    class="rounded px-3 py-1"
                                    :class="{
                                        'bg-blue-500 text-white': link.active,
                                        'text-gray-500': !link.url,
                                        'hover:bg-gray-100': link.url && !link.active,
                                    }"
                                    v-html="link.label"
                                />
                            </template>
                        </div>

                        <div v-if="tickets.links.next">
                            <Link :href="tickets.links.next" class="rounded bg-gray-200 px-4 py-2"> Next </Link>
                        </div>
                    </div>
                </div>
        </div>
    </AppLayout>
</template>
