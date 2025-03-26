<script setup lang="ts">
import type { HTMLAttributes } from 'vue';

defineOptions({
    inheritAttrs: false,
});

interface Props {
    className?: HTMLAttributes['class'];
}

defineProps<Props>();
</script>

<template>
    <!-- Replace the Laravel default logo with a demo app logo -->
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" :class="className" v-bind="$attrs">
        <circle cx="24" cy="24" r="22" fill="#4CAF50" />
        <text x="24" y="28" fill="#fff" font-size="16" font-family="Arial, sans-serif" text-anchor="middle" alignment-baseline="middle">
            Demo
        </text>
    </svg>
   
</template>
