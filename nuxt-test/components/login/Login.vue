<template>
    <div class="login-container">
      <form @submit.prevent="submitLogin">
        <div class="form-group">
          <label for="username">ユーザー名:</label>
          <input id="username" type="text" v-model="username" required>
        </div>
        <div class="form-group">
          <label for="password">パスワード:</label>
          <input id="password" type="password" v-model="password" required>
        </div>
        <button type="submit">ログイン</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        username: '',
        password: ''
      };
    },
    methods: {
      submitLogin() {
        // ログインロジックをここに書きます
        console.log('Login attempted with:', this.username, this.password);
        // 例: APIにログインリクエストを送信
        // this.$axios.post('/api/login', { username: this.username, password: this.password })
        //   .then(response => {
        //     // レスポンスに基づいて何かをする
        //   })
        //   .catch(error => {
        //     console.error('Login error:', error);
        //   });
      }
    }
  }
  </script>
  
  <style scoped>
  .login-container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  .form-group {
    margin-bottom: 20px;
  }
  
  label {
    display: block;
    margin-bottom: 5px;
  }
  
  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
  }
  </style>
  