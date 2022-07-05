const nama = document.getElementById("nama");
const email = document.getElementById("email");
const telepon = document.getElementById("telepon");
const keluhan = document.getElementById("keluhan");
const addBtn = document.getElementById("addBtn");

const database = firebase.database();
const db = firebase.firestore();
const pasienRef = database.ref("pasien");

addBtn.addEventListener("click", (e) => {
  e.preventDefault();
  if (isValid()) {
    try {
      pasienRef.once("value", (snapshot) => {
        if (snapshot.val() === null) {
          pasienRef.child(1).set({
            nama: nama.value,
            email: email.value,
            telepon: telepon.value,
            keluhan: keluhan.value,
          });
        } else {
          const pasien = snapshot.val();
          const keys = Object.keys(snapshot.val());
          let lastId = keys[keys.length - 1];
          pasienRef.child(++lastId).set({
            nama: nama.value,
            email: email.value,
            telepon: telepon.value,
            keluhan: keluhan.value,
          });
        }
        alert(
          "data anda berhasil dikirim, silahkan kembali ke home dan tunggu jadwal anda"
        );
        refreshForm();
      });
    } catch (error) {
      console.log(error);
    }
  }
});

function isValid() {
    if (nama.value === '' || email.value === '' || telepon.value === '' || keluhan.value === '') {
      alert("Tolong isi semua kolom!");
      return false;
    }
    return true;
  }

  function getLastId() {
    pasienRef.once("value", (snapshot) => {
      const pasien = snapshot.val();
      const keys = Object.keys(snapshot.val());
      return keys[keys.length - 1];
    });
  }
  
  function refreshForm() {
    nama.value = '';
    email.value = '';
    telepon.value = '';
    keluhan.value = '';
  }

  getLastId();