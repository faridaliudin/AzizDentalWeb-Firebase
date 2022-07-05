<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

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

    <title>Aziz Dental</title>
  </head>
  <body>
    <!-- Navbar -->
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
              <a class="nav-link active" aria-current="page" href="#"
                >Beranda</a
              >
            </li>
            <li class="nav-item mx-2">
              <a class="nav-link" href="#about">Tentang</a>
            </li>
            <li class="nav-item mx-2 dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdownMenuLink"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Layanan
              </a>
              <ul
                class="dropdown-menu"
                aria-labelledby="navbarDropdownMenuLink"
              >
                <li><a class="dropdown-item" href="#layanan">Layanan </a></li>
                <li>
                  <a class="dropdown-item" href="form_daftar.jsp">Daftar Praktek</a>
                </li>
              </ul>
            </li>
            <li class="nav-item mx-2">
              <a class="nav-link" href="#contact">Kontak</a>
            </li>
            <li class="nav-item mx-2">
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Hero Section -->
    <section id="hero">
      <div class="container h-100">
        <div class="row h-100">
          <div class="col-md-6 hero-tagline my-auto">
            <h1>We Make Your Teeth Healthier.</h1>
            <p>
              <span class="fw-bold">Aziz Dental Clinic</span> hadir untuk
              memberikan edukasi maupun palayanan tentang kesehatan gigi dengan
              para dokter ahli.
            </p>
            <button class="button-lg-primary">Konsultasi</button>
          </div>
          <div class="col-md-6 d-flex align-items-end">
            <img
              id=""
              src="assets/img/dental-hero.png"
              alt=""
              class="img-hero w-100 img-doctor"
            />
          </div>
        </div>
        <img
          src="assets/img/accsent.png"
          alt=""
          class="accsent-img h-100 position-absolute top-0 start-0"
        />
      </div>
    </section>

    <!-- Layanan Section -->
    <section id="layanan">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">
            <h2>Layanan Kami</h2>
            <span class="sub-title"
              >Aziz dental hadir menajdi solusi bagi kamu</span
            >
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-md-4 text-center">
            <div class="card-layanan">
              <div class="circle-icon position-relative mx-auto">
                <img
                  src=""
                  alt=""
                  class="position-absolute top-50 start-50 translate-middle"
                />
              </div>
              <h3 class="mt-4">Treatment</h3>
              <p class="mt-3">
                Merawat gigi dengan layanan scalling, brightening, dan whitening
                untuk menajaga gigi lebih bersih.
              </p>
            </div>
          </div>
          <div id="middle-card" class="col-md-4 text-center">
            <div class="card-layanan">
              <div class="circle-icon position-relative mx-auto">
                <img
                  src=""
                  alt=""
                  class="position-absolute top-50 start-50 translate-middle"
                />
              </div>
              <h3 class="mt-4">Tooth Decay</h3>
              <p class="mt-3">
                Menajaga kesehatan gigi dengan layanan penambalan gigi,
                pencabutan gigi, perawatan saluran akar, estetika gigi.
              </p>
            </div>
          </div>
          <div class="col-md-4 text-center">
            <div class="card-layanan">
              <div class="circle-icon position-relative mx-auto">
                <img
                  src=""
                  alt=""
                  class="position-absolute top-50 start-50 translate-middle"
                />
              </div>
              <h3 class="mt-4">Orthodontic</h3>
              <p class="mt-3">
                Perawatan gigi untuk merapikan susunan gigi yang tidak rata
                dengan layanan odontektomi dan pemasangan behel
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section id="about">
      <div class="container">
        <div class="row workingspace">
          <div id="working-space" class="col">
            <img
              src="assets/img/aboutimg.jpg"
              alt=""
              class="img-fluid img-workingspace"
            />
          </div>
          <div class="col">
            <h3>Aziz Dental Clinic</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Consequuntur ratione maiores consectetur quos nulla ab ipsum
              consequatur similique laborum deleniti excepturi ut totam,
              accusantium blanditiis! Architecto, sint exercitationem!
              Optio,molestiae.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
      <div class="container-fluid overlay h-100">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h3 class="contact-desc">
                Butuh Informasi lengkap..? Silahkan Kontak Kami Kami Siap
                Membantu
              </h3>
              <div class="kontak">
                <h6>Kontak</h6>
                <div class="mb-3 d-flex align-items-center">
                  <div>
                    <img src="assets/img/office.png" alt="" />
                  </div>
                  <a href="#">Jl. Asia Afrika Manggarai Jakarta Indonesia</a>
                </div>
                <div class="mb-3 d-flex align-items-center">
                  <img src="assets/img/telephone.png" alt="" />
                  <a href="#">021-2218-1274</a>
                </div>
                <div class="mb-3 d-flex align-items-center">
                  <img src="assets/img/email.png" alt="" />
                  <a href="#">dentalgigi@gmail.com</a>
                </div>
              </div>
              <h6>Social Media</h6>
              <a href="#" class="me-3"
                ><img src="assets/img/facebook.png" alt=""
              /></a>
              <a href="#" class="me-3"
                ><img src="assets/img/instagram.png" alt=""
              /></a>
              <a href="#" class="linkazizdental">Aziz Dental</a>
            </div>
            <div class="col-md-6 mt-3">
              <div class="card-contact w-100 pb-5">
                <form>
                  <h2 id="ap">tolong beri feedback</h2>
                  <div class="form-floating mb-3">
                    <input
                      id="email"
                      type="text"
                      class="form-control"
                      id="floatingInput"
                      placeholder="name@example.com"
                      required
                    />
                    <label for="floatingInput" class="d-flex align-items-center"
                      >e-mail anda...</label
                    >
                  </div>

                  <div class="form-floating mb-3">
                    <input
                      id="feedback"
                      type="text"
                      class="form-control"
                      id="floatingInput"
                      placeholder="name@example.com"
                      required
                    />
                    <label for="floatingInput" class="d-flex align-items-center"
                      >feedback Anda...</label
                    >
                  </div>

                  <button id="addBtn" class="button-kontak">
                    Kirim
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- footer -->
    <footer class="d-flex align-items-center position-relative">
      <div class="container-fluid">
        <div class="container">
          <div class="row">
            <div class="col-md-7 d-flex align-items-center">
              <img src="assets/img/aziz-dental.png" width="40" alt="" />
              <a href="#" class="ms-3">Aziz Dental Clinic</a>
            </div>
            <div class="col-md-5 d-flex justify-content-evenly">
              <a class="ft" href="#hero">Beranda</a>
              <a class="ft" href="#about">Tentang</a>
              <a class="ft" href="#layanan">Layanan</a>
              <a class="ft" href="#contact">Kontak</a>
            </div>
          </div>
          <div
            class="row position-absolute copyright start-50 translate-middle w-100"
          >
            <div class="col-12">
              <p class="text-center">
                Copyright by Group 11 All Righ Reserved.
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <!-- Optional JavaScript; choose one of the two! -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script> -->
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
  <script src="js/index.js"></script>
</html>

    