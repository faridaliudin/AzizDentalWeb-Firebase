const masukanId = document.getElementById("masukanId");
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

showBtn.addEventListener("click", (e) => {
  e.preventDefault();
  const inputId = document.getElementById("masukanId").value;
  masukanRef.once('value', snapshot => {
    const masukan = snapshot.val();
    const masukanId = Object.keys(masukan);
    const id = masukanId.find(id => id === inputId);
    if (masukan[id]) {
      email.value = masukan[id].email;
      feedback.value =  masukan[id].feedback;
    } else {
      email.value = "" ;
      feedback.value = "";
      alert('ID tidak ditemukan!')
    }
  });
})

function reset(){  
  document.getElementById("myForm").reset();  
}   

removeBtn.addEventListener("click", (e) => {
  e.preventDefault();
  masukanRef
    .child(masukanId.value)
    .remove()
    .then(() => {
      getMasukanDataToTable();
      console.log("Masukan Deleted !");
    })
    .catch((error) => {
      console.error(error);
    });
});

function isValid() {
  if (email.value === '' || feedback.value === '') {
    alert("Tolong isi semua kolom!");
    return false;
  }
  return true;
}

// function getLastId() {
//   masukanRef.once("value", (snapshot) => {
//     const masukan = snapshot.val();
//     const keys = Object.keys(snapshot.val());
//     return keys[keys.length - 1];
//   });
// }

function refreshForm() {
  email.value = '';
  feedback.value = '';
}


// getLastId();
getMasukanDataToTable();
