<template>
    <div>
      <h1>Welcome to My Nuxt.js App</h1>
      <p>This is the homepage.</p>
      <button @click="onBack">Go to Back Page</button>
      <button @click="onTop">Go to Index</button>
    </div>
  </template>
  
  <script>
  import { useRuntimeConfig } from '#imports'
  
  export default {
    methods: {
      onBack() {
        this.$router.push('/first');
      },
      onTop() {
        this.$router.push('/');
      }
    }
  }
  </script>
  
  <style>
  /* スタイルを記述 */
  </style>
  