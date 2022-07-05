<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aziz Dental - Admin</title>
    <!-- Font Google -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap"
      rel="stylesheet"
    />

    <!-- My Style -->
    <link rel="stylesheet" href="css/style.css" />

    <!-- Logo title -->
    <link rel="icon" href="assets/img/aziz-dental.png" type="image/x-icon" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"
      integrity="sha512-UJfAaOlIRtdR+0P6C3KUoTDAxVTuy3lnSXLyLKlHYJlcSU8Juge/mjeaxDNMlw9LgeIotgz5FP8eUQPhX1q10A=="
      crossorigin="anonymous"
    />
        <!-- Bootstrap CSS -->
        <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous"
      />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/styleadmin.css" />
    <!-- Logo title -->
    <link rel="icon" href="assets/img/aziz-dental.png" type="image/x-icon" />
  </head>
  <body>

    <nav
      class="navbar navbar-expand-lg navbar-dark sticky-top w-100"
      style="background-color: #1c658c"
    >
      <div class="container">
        <a class="navbar-brand" href="#">
          <img
            src="assets/img/aziz-dental.png"
            alt=""
            width="30"
            class="d-inline-block align-text-top me-3"
          />
          Aziz Dental Clinic</a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item mx-2">
              <a class="nav-link" aria-current="page" href="admin.jsp"
                >Feedback list</a>
            </li>
            <li class="nav-item mx-2">
              <a class="nav-link active" href="#">Pasien pendaftar</a>
            </li>
            <li class="nav-item mx-2">
                <a class="nav-link" href="dokter.jsp">Dokter</a>
              </li>
            <li class="nav-item mx-2">
              <a class="nav-link" href="index.jsp">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <main>
        <form>
          <label for="pasienId">Pasien ID</label><br />
          <input type="text" name="pasienId" id="pasienId" /><br />
          <label for="nama">Nama Pasien</label><br />
          <input type="text" name="nama" id="nama" /><br />
          <label for="email">Email Pasien</label><br />
          <input type="text" name="email" id="email" /><br />
          <label for="telepon">Nomor Telepon Pasien</label><br />
          <input type="number" name="telepon" id="telepon" /><br />
          <label for="keluhan">Keluhan Pasien</label><br />
          <input type="text" name="keluhan" id="keluhan" /><br />
          <button id="showBtn" class="btn btn-success">Show</button>
          <input type = "button" value = "Clear" class="btn btn-primary" onClick = "reset()"/>
          <button id="updateBtn" class="btn waves-effect waves-light">
            Update
          </button> <br /><br />
          <button id="removeBtn" class="btn waves-effect red darken-1">
            Remove
          </button>
        </form>
  
        <div style="width: 50%" class="input-field">
          <i class="material-icons prefix">search</i>
          <input id="icon_prefix" type="text" class="validate">
          <label for="icon_prefix">Search</label>
        </div>
        
        <table id="myTable">
          <thead>
            <tr>
              <th class="id">Id</th>
              <th class="nama">Nama</th>
              <th class="email">Email</th>
              <th class="telepon">Telepon</th>
              <th class="keluhan">Keluhan</th>
            </tr>
          </thead>
          <tbody id="tbody"></tbody>
        </table>
      </main>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
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
    <script src="js/pasien.js"></script>
</html>