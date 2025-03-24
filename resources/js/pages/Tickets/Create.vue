<script setup>
import { useForm } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';

const props = defineProps({
    ticket: Object,
    categories: Array,
    priorities: Array,
    statuses: Array,
    isEdit: Boolean
});

const form = useForm({
    subject: props.ticket?.subject || '',
    description: props.ticket?.description || '',
    category: props.ticket?.category || 'Technical',
    priority: props.ticket?.priority || 'Medium',
    status: props.ticket?.status || 'Open',
    attachment: null
});

const submit = () => {
    if (props.isEdit) {
        form.put(route('tickets.update', props.ticket.id));
    } else {
        form.post(route('tickets.store'));
    }
};
</script>

<template>
    <AppLayout>
    <div class="max-w-2xl mx-auto bg-white shadow-md rounded-lg p-4">
        <form @submit.prevent="submit" class="space-y-5">
            <div>
                <label class="block text-sm font-medium text-gray-700">Subject</label>
                <input 
                    v-model="form.subject"
                    type="text"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                >
                <p v-if="form.errors.subject" class="text-red-500 text-sm mt-1">
                    {{ form.errors.subject }}
                </p>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">Description</label>
                <textarea
                    v-model="form.description"
                    rows="4"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                ></textarea>
                <p v-if="form.errors.description" class="text-red-500 text-sm mt-1">
                    {{ form.errors.description }}
                </p>
            </div>

            <div class="grid grid-cols-3 gap-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700">Category</label>
                    <select
                        v-model="form.category"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    >
                        <option v-for="category in categories" :value="category">
                            {{ category }}
                        </option>
                    </select>
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700">Priority</label>
                    <select
                        v-model="form.priority"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    >
                        <option v-for="priority in priorities" :value="priority">
                            {{ priority }}
                        </option>
                    </select>
                </div>

                <div v-if="isEdit">
                    <label class="block text-sm font-medium text-gray-700">Status</label>
                    <select
                        v-model="form.status"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                    >
                        <option v-for="status in statuses" :value="status">
                            {{ status }}
                        </option>
                    </select>
                </div>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700">Attachment</label>
                <input
                    type="file"
                    @input="form.attachment = $event.target.files[0]"
                    class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-md file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100"
                >
                <p v-if="form.errors.attachment" class="text-red-500 text-sm mt-1">
                    {{ form.errors.attachment }}
                </p>
            </div>

            <div class="flex justify-end space-x-4">
                <Link 
                    :href="route('tickets.index')"
                    class="bg-gray-200 text-gray-700 px-4 py-2 rounded-lg hover:bg-gray-300"
                >
                    Cancel
                </Link>
                <button
                    type="submit"
                    class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600 disabled:opacity-50"
                    :disabled="form.processing"
                >
                    {{ isEdit ? 'Update Ticket' : 'Create Ticket' }}
                </button>
            </div>
        </form>
    </div>
</AppLayout>
</template>