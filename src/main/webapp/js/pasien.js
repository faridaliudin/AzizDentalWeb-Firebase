const nama = document.getElementById("nama");
const email = document.getElementById("email");
const telepon = document.getElementById("telepon");
const keluhan = document.getElementById("keluhan");
const addBtn = document.getElementById("addBtn");
const updateBtn = document.getElementById("updateBtn");

const database = firebase.database();
const db = firebase.firestore();
const pasienRef = database.ref("pasien");

function getPasienDataToTable() {
  tbody.innerHTML = "";
  pasienRef.once("value", (snapshot) => {
    const pasien = snapshot.val();
    const keys = Object.keys(snapshot.val());
    keys.forEach((id) => {
      const tr = document.createElement("tr");
      tr.innerHTML = `
                  <td>${id}</td>
                  <td>${pasien[id].nama}</td>
                  <td>${pasien[id].email}</td>
                  <td>${pasien[id].telepon}</td>
                  <td>${pasien[id].keluhan}</td>
              `;
      tbody.appendChild(tr);
    });
  });
}

showBtn.addEventListener("click", (e) => {
  e.preventDefault();
  const inputId = document.getElementById("pasienId").value;
  pasienRef.once("value", (snapshot) => {
    const pasien = snapshot.val();
    const pasienId = Object.keys(pasien);
    const id = pasienId.find((id) => id === inputId);
    if (pasien[id]) {
      nama.value = pasien[id].nama;
      email.value = pasien[id].email;
      telepon.value = pasien[id].telepon;
      keluhan.value = pasien[id].keluhan;
    } else {
      nama.value = "";
      email.value = "";
      telepon.value = "";
      keluhan.value = "";
      alert("ID tidak ditemukan!");
    }
  });
});

// function update() {
//     const updatedData = {
//         nama : nama.value,
//         email : email.value,
//         telepon : telepon.value,
//         keluhan : keluhan.value
//     };
//     // update() untuk update data pada spesifik reference
//     pasienRef.child(pasienId.value).update(updatedData);
//   }

//   updateBtn.addEventListener('click', e => {
//     e.preventDefault();
//     if (isValid(e)) {
//       try {
//         update();
//         getAllPasien();
//         resetForm();
//         alert('pasien updated successfully');
//       } catch (error) {
//         console.error(error);
//       }
//     }
//   });

updateBtn.addEventListener("click", (e) => {
  try {
    const newData = {
      nama: nama.value,
      email: email.value,
      telepon: telepon.value,
      keluhan: keluhan.value,
    };
    pasienRef.child(pasienId.value).update(newData);
    alert("Data berhasil di update");
  } catch (error) {
    console.log(error);
    alert("Data gagal di update!");
  }
});

function reset() {
  document.getElementById("myForm").reset();
}

removeBtn.addEventListener("click", (e) => {

  if (pasienId.value === "") {
    alert("Tolong masukkan id untuk di delete");
    return;
  }

  pasienRef
    .child(pasienId.value)
    .remove()
    .then((x) => {
      console.log(x);
      getPasienDataToTable();
      alert("Data berhasil di delete");
    })
    .catch((error) => {
      console.log("halo halo halo");
      alert("Data gagal di delete!");
    });

});


getPasienDataToTable();
