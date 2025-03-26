<script setup>
import { ref, onMounted, nextTick } from 'vue';
import { Head, Link, usePage } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';

const props = defineProps({
    ticket: Object,
    chat: Object,
    messages: Array,
});

const messageContent = ref('');
const messagesContainer = ref(null);
const messages = ref(props.messages || []);

// Initialize Echo and listen for messages
onMounted(() => {
    if (!window.Echo) {
        console.error('Echo is not initialized');
        return;
    }

    window.Echo.private(`chat.${props.ticket.id}`)
        .listen('.message.sent', (data) => {
            messages.value.push(data.message);
            scrollToBottom();
        })
        .error((error) => {
            console.error('Pusher error:', error);
        });

    scrollToBottom();
});

const sendMessage = async () => {
    if (!messageContent.value.trim()) return;

    try {
        const response = await axios.post(route('chats.sendMessage', {
            ticket: props.ticket.id
        }), {
            content: messageContent.value
        });

        messageContent.value = '';
        scrollToBottom();
    } catch (error) {
        console.error('Error sending message:', error);
    }
};

const scrollToBottom = () => {
    nextTick(() => {
        if (messagesContainer.value) {
            messagesContainer.value.scrollTop = messagesContainer.value.scrollHeight;
        }
    });
};
</script>

<template>
    <AppLayout>
        <Head :title="`Chat for Ticket #${ticket.id}`" />
        
        <div class="max-w-3xl mx-auto bg-white rounded-lg shadow-md overflow-hidden">
            <!-- Chat Header -->
            <div class="bg-gray-800 text-white p-4 flex justify-between items-center">
                <h2 class="text-lg font-semibold">
                    Chat for Ticket: {{ ticket.subject }}
                    <span class="text-sm text-gray-300 block">ID: #{{ ticket.id }}</span>
                </h2>
                <span :class="{
                    'bg-green-500': ticket.status === 'Resolved',
                    'bg-yellow-500': ticket.status === 'In Progress',
                    'bg-red-500': ticket.status === 'Open'
                }" class="px-3 py-1 rounded-full text-xs">
                    {{ ticket.status }}
                </span>
            </div>

            <!-- Messages Container -->
            <div ref="messagesContainer" class="h-96 overflow-y-auto p-4 space-y-4">
                <div v-for="message in messages" :key="message.id" 
                     :class="{
                        'flex justify-end': message.sender_id === $page.props.auth.user.id,
                        'flex justify-start': message.sender_id !== $page.props.auth.user.id
                     }">
                    <div :class="{
                        'bg-blue-500 text-white': message.sender_id === $page.props.auth.user.id,
                        'bg-gray-200': message.sender_id !== $page.props.auth.user.id
                    }" class="max-w-xs md:max-w-md rounded-lg p-3">
                        <div class="font-semibold">
                            {{ message.sender_id === $page.props.auth.user.id ? 'You' : message.sender.name }}
                        </div>
                        <p class="break-words">{{ message.content }}</p>
                        <div class="text-xs mt-1 opacity-70">
                            {{ new Date(message.created_at).toLocaleTimeString() }}
                        </div>
                    </div>
                </div>
            </div>

            <!-- Message Input -->
            <div class="border-t p-4 bg-gray-50">
                <form @submit.prevent="sendMessage" class="flex gap-2">
                    <input
                        v-model="messageContent"
                        type="text"
                        placeholder="Type your message..."
                        class="flex-1 rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    >
                    <button
                        type="submit"
                        class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 transition"
                    >
                        Send
                    </button>
                </form>
            </div>
        </div>
    </AppLayout>
</template>