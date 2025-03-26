<script setup>
import { useForm, Head } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';
const form = useForm({
    subject: '',
    description: '',
    category: 'Technical',
    priority: 'Medium',
    attachment: null
});

const submit = () => {
    form.post(route('tickets.store'), {
        preserveScroll: true,
        onSuccess: () => form.reset(),
        headers: {
            'Authorization': `Bearer ${localStorage.getItem('auth_token')}`,
            'Accept': 'application/json',
        }
    });
};

</script>

<template>
    <AppLayout>
        <Head title="Create New Ticket" />
        
        <div class="max-w-2xl mx-auto p-6 bg-white rounded-lg shadow-md">
            <h1 class="text-2xl font-bold mb-6 text-gray-800">Create New Support Ticket</h1>
            
            <form @submit.prevent="submit" class="space-y-6" enctype="multipart/form-data">
                <!-- Subject -->
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Subject *</label>
                    <input
                        v-model="form.subject"
                        type="text"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                        :class="{ 'border-red-500': form.errors.subject }"
                    >
                    <p v-if="form.errors.subject" class="mt-1 text-sm text-red-600">
                        {{ form.errors.subject }}
                    </p>
                </div>

                <!-- Description -->
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Description *</label>
                    <textarea
                        v-model="form.description"
                        rows="4"
                        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                        :class="{ 'border-red-500': form.errors.description }"
                    ></textarea>
                    <p v-if="form.errors.description" class="mt-1 text-sm text-red-600">
                        {{ form.errors.description }}
                    </p>
                </div>

                <!-- Category & Priority -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Category *</label>
                        <select
                            v-model="form.category"
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                        >
                            <option value="Technical">Technical</option>
                            <option value="Billing">Billing</option>
                            <option value="General">General</option>
                        </select>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Priority *</label>
                        <select
                            v-model="form.priority"
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                        >
                            <option value="Low">Low</option>
                            <option value="Medium">Medium</option>
                            <option value="High">High</option>
                        </select>
                    </div>
                </div>

                <!-- File Upload -->
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">Attachment</label>
                    <input
                        type="file"
                        @input="form.attachment = $event.target.files[0]"
                        class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-md file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100"
                    >
                    <p v-if="form.errors.attachment" class="mt-1 text-sm text-red-600">
                        {{ form.errors.attachment }}
                    </p>
                </div>

                <!-- Form Actions -->
                <div class="flex justify-end space-x-4">
                    <button
                        type="button"
                        @click="$inertia.visit(route('tickets.index'))"
                        class="px-4 py-2 bg-gray-200 text-gray-700 rounded-md hover:bg-gray-300 transition-colors"
                    >
                        Cancel
                    </button>
                    <button
                        type="submit"
                        class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors disabled:opacity-50"
                        :disabled="form.processing"
                    >
                        <span v-if="form.processing">Creating...</span>
                        <span v-else>Create Ticket</span>
                    </button>
                </div>
            </form>
        </div>
</AppLayout>
</template>