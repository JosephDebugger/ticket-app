<script setup>
import { Head, Link } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';
import { usePage } from '@inertiajs/vue3';


const props = defineProps({
    ticket: Object,
    comments: Array
});

const openChat = () => {
    try {
        window.location.href = route('tickets.chat', usePage().props.ticket.data.id);
    } catch (error) {
        console.error('Error opening chat:', error);
        alert('Failed to open chat. Please refresh the page and try again.');
    }
};
</script>

<template>
    <AppLayout>

        <Head :title="ticket.data.subject" />

        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <div class="flex justify-between items-center mb-6">
                <div>
                    <!-- <p>
                        {{ticket.data}}
                    </p> -->
                    <h1 class="text-2xl font-bold">{{ ticket.data.description }}</h1>
                    <div class="flex space-x-2 mt-2">
                        <span class="px-2 py-1 bg-blue-100 text-blue-800 rounded-full text-sm">
                            {{ ticket.data.category }}
                        </span>
                        <span :class="{
                                'bg-red-100 text-red-800': ticket.data.priority === 'High',
                                'bg-yellow-100 text-yellow-800': ticket.data.priority === 'Medium',
                                'bg-green-100 text-green-800': ticket.data.priority === 'Low'
                            }" class="px-2 py-1 rounded-full text-sm">
                            {{ ticket.data.priority }}
                        </span>
                    </div>
                </div>
                <Link :href="route('tickets.index')"
                    class="bg-gray-200 text-gray-700 px-4 py-2 rounded-lg hover:bg-gray-300">
                Back to Tickets
                </Link>
                <Link 
                @click="openChat" 
                class="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600 transition flex items-center gap-2">

                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M18 10c0 3.866-3.582 7-8 7a8.841 8.841 0 01-4.083-.98L2 17l1.338-3.123C2.493 12.767 2 11.434 2 10c0-3.866 3.582-7 8-7s8 3.134 8 7zM7 9H5v2h2V9zm8 0h-2v2h2V9zM9 9h2v2H9V9z" clip-rule="evenodd" />
                </svg>
              
            </Link>
            </div>

            <div class="bg-white rounded-lg shadow p-6 mb-6">
                <p class="text-gray-600 mb-4">{{ ticket.data.subject }}</p>

                <div v-if="ticket.data.attachment_path" class="mt-4">
                    <h3 class="text-sm font-medium text-gray-500 mb-2">Attachment</h3>
                    <a :href="route('attachments.download', ticket.data.attachment_path)"
                        class="text-blue-500 hover:text-blue-700 flex items-center">
                        <svg class="w-5 h-5 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                        </svg>
                        Download Attachment
                    </a>
                </div>
            </div>

            <!-- Comments Section -->
            <div class="bg-white rounded-lg shadow p-6">
                <h2 class="text-lg font-semibold mb-4">Comments</h2>

                <div v-for="comment in comments" :key="comment.id" class="mb-4 p-4 bg-gray-50 rounded-lg">
                    <div class="flex items-center justify-between mb-2">
                        <div class="flex items-center space-x-2">
                            <span class="font-medium">{{ comment.user.name }}</span>
                            <span class="text-sm text-gray-500">{{ comment.created_at }}</span>
                        </div>
                    </div>
                    <p class="text-gray-600">{{ comment.content }}</p>
                </div>

                <!-- Add Comment Form -->
                <form @submit.prevent="submitComment" class="mt-6">
                    <!-- <textarea v-model="commentForm.content" rows="3" -->
                     <textarea  rows="3"
                        class="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                        placeholder="Add a comment..."></textarea>
                    <button type="submit" class="mt-2 bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600">
                        Post Comment
                    </button>
                </form>
            </div>
        </div>
    </AppLayout>
</template>