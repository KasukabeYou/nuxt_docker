<template>
    <div>
      <h1>Welcome to First Page</h1>
      <button @click="onNext">Go to Second Page</button>
      <button @click="onBack">Go to Back</button>
    </div>
  </template>
  
  <script>
  import { useRuntimeConfig } from '#imports'
  
  export default {
    methods: {
      onNext() {
        this.$router.push('/second');
      },
      onBack() {
        this.$router.push('/');
      }
    }
  }
  </script>
  
  <style>
  /* スタイルを記述 */
  </style>
  