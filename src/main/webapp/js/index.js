const email = document.getElementById("email");
const feedback = document.getElementById("feedback");
const addBtn = document.getElementById("addBtn");
const updateBtn = document.getElementById("updateBtn");
const showBtn = document.getElementById("showBtn");
const tbody = document.getElementById("tbody");

const database = firebase.database();
const db = firebase.firestore();
const masukanRef = database.ref("masukan");

function getMasukanDataToTable() {
  tbody.innerHTML = "";
  masukanRef.once("value", (snapshot) => {
    const masukan = snapshot.val();
    const keys = Object.keys(snapshot.val());
    keys.forEach((id) => {
      const tr = document.createElement("tr");
      tr.innerHTML = `
                <td>${id}</td>
                <td>${masukan[id].email}</td>
                <td>${masukan[id].feedback}</td>
            `;
      tbody.appendChild(tr);
    });
  });
}

addBtn.addEventListener("click", (e) => {
    e.preventDefault();
    if (isValid()) {
      try {
        masukanRef.once("value", (snapshot) => {
          if (snapshot.val() === null) {
            masukanRef.child(1).set({
              email: email.value,
              feedback: feedback.value,
            });
          } else {
            const masukan = snapshot.val();
            const keys = Object.keys(snapshot.val());
            let  lastId = keys[keys.length - 1];
            masukanRef.child(++lastId).set({
              email: email.value,
              feedback: feedback.value,
            });
          }
          alert('feedback anda berhasil dikirim'); 
          refreshForm()
        });
      } catch (error) {
        console.log(error);
      }
    }
  });

  function isValid() {
    if (email.value === '' || feedback.value === '') {
      alert("Tolong isi semua kolom!");
      return false;
    }
    return true;
  }
  
  function getLastId() {
    masukanRef.once("value", (snapshot) => {
      const masukan = snapshot.val();
      const keys = Object.keys(snapshot.val());
      return keys[keys.length - 1];
    });
  }
  
  function refreshForm() {
    email.value = '';
    feedback.value = '';
  }

  getLastId();