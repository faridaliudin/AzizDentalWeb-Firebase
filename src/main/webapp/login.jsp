<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- Nunito Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <title>Aziz Dental - Login</title>
</head>
<body class="bg-light">
    <div class="container-fluid">
        <div class="row mx-1">
            <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1 text-center mt-5 pb-4 text-primary">
                <h1 class="h1">Login</h1>
            </div>
            <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1 bg-white shadow mb-5 border border-primary">
                <div class="row">
                    <div class="col-lg-6 col-md-6 p-4 bg-primary ">
                        <img src="/assets/img/lock.png" alt=" image">
                    </div>
                    <div class="col-lg-6 col-md-6 p-lg-5 p-md-5 px-3 py-4">
                        <div id="loginForm">
                            <form>
                                <h2 class="h2 text-center text-dark mb-3">LOGIN</h2>
                            <div class="form-group">
                                <label for="username">Username<span class="text-danger ml-1">*</span></label>
                                <input type="text" class="form-control" id="username" placeholder="username...">
                            </div>
                            <div class="form-group">
                                <label for="userSIPassword">Password<span class="text-danger ml-1">*</span></label>
                                <input type="password" class="form-control" id="password" placeholder="password">
                            </div>
                            <button class="btn btn-outline-primary text-uppercase mb-3" id="loginBtn">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-app.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-database.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.14.5/firebase-firestore.js"></script>
  <script>
    // Your web app's Firebase configuration
    const firebaseConfig = {
      apiKey: "AIzaSyA3VA1L5YRxD1Ed3oiVpduSx9-O4_xvY8s",
      authDomain: "project-3-b81a6.firebaseapp.com",
      databaseURL:
        "https://project-3-b81a6-default-rtdb.asia-southeast1.firebasedatabase.app",
      projectId: "project-3-b81a6",
      storageBucket: "project-3-b81a6.appspot.com",
      messagingSenderId: "978302663935",
      appId: "1:978302663935:web:c674a5603be8480da760ca",
      measurementId: "G-HB49YXNHD6",
    };

    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="js/login.js"></script>
</body>
</html>