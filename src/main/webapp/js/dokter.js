const nama = document.getElementById("nama");
const usia = document.getElementById("usia");
const gender = document.getElementById("gender");
const telepon = document.getElementById("telepon");
const jamPraktek = document.getElementById("jamPraktek");
const addBtn = document.getElementById("addBtn");
const updateBtn = document.getElementById("updateBtn");

const database = firebase.database();
const db = firebase.firestore();
const dokterRef = database.ref("dokter");

function getDokterDataToTable() {
  tbody.innerHTML = "";
  dokterRef.once("value", (snapshot) => {
    const dokter = snapshot.val();
    const keys = Object.keys(snapshot.val());
    keys.forEach((id) => {
      const tr = document.createElement("tr");
      tr.innerHTML = `
                    <td>${id}</td>
                    <td>${dokter[id].nama}</td>
                    <td>${dokter[id].usia}</td>
                    <td>${dokter[id].gender}</td>
                    <td>${dokter[id].telepon}</td>
                    <td>${dokter[id].jamPraktek}</td>
                `;
      tbody.appendChild(tr);
    });
  });
}

addBtn.addEventListener("click", (e) => {
  e.preventDefault();
  if (isValid()) {
    try {
      dokterRef.once("value", (snapshot) => {
        if (snapshot.val() === null) {
          dokterRef.child(1).set({
            nama: nama.value,
            usia: usia.value,
            gender: gender.value,
            telepon: telepon.value,
            jamPraktek: jamPraktek.value,
          });
        } else {
          const dokter = snapshot.val();
          const keys = Object.keys(snapshot.val());
          let lastId = keys[keys.length - 1];
          dokterRef.child(++lastId).set({
            nama: nama.value,
            usia: usia.value,
            gender: gender.value,
            telepon: telepon.value,
            jamPraktek: jamPraktek.value,
          });
        }
        alert("data berhasil ditambah");
        refreshForm();
      });
    } catch (error) {
      console.log(error);
    }
  }
});

showBtn.addEventListener("click", (e) => {
  e.preventDefault();
  const inputId = document.getElementById("dokterId").value;
  dokterRef.once("value", (snapshot) => {
    const dokter = snapshot.val();
    const dokterId = Object.keys(dokter);
    const id = dokterId.find((id) => id === inputId);
    if (dokter[id]) {
      nama.value = dokter[id].nama;
      usia.value = dokter[id].usia;
      gender.value = dokter[id].gender;
      telepon.value = dokter[id].telepon;
      jamPraktek.value = dokter[id].jamPraktek;
    } else {
      nama.value = "";
      usia.value = "";
      gender.value = "";
      telepon.value = "";
      jamPraktek.value = "";
      alert("ID tidak ditemukan!");
    }
  });
});

updateBtn.addEventListener("click", (e) => {
  try {
    const newData = {
      nama: nama.value,
      usia: usia.value,
      gender: gender.value,
      telepon: telepon.value,
      jamPraktek: jamPraktek.value,
    };
    dokterRef.child(dokterId.value).update(newData);
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
  if (dokterId.value === "") {
    alert("Tolong masukkan id untuk di delete");
    return;
  }

  dokterRef
    .child(dokterId.value)
    .remove()
    .then((x) => {
      console.log(x);
      getDokterDataToTable();
      alert("Data berhasil di delete");
    })
    .catch((error) => {
      console.log("halo halo halo");
      alert("Data gagal di delete!");
    });
});

function isValid() {
  if (
    nama.value === "" ||
  usia.value === "" ||
  gender.value === "" ||
  telepon.value === "" ||
  jamPraktek.value === ""
  ) {
    alert("Tolong isi semua kolom!");
    return false;
  }
  return true;
}

function getLastId() {
  dokterRef.once("value", (snapshot) => {
    const dokter = snapshot.val();
    const keys = Object.keys(snapshot.val());
    return keys[keys.length - 1];
  });
}

function refreshForm() {
  nama.value = "";
  usia.value = "";
  gender.value = "";
  telepon.value = "";
  jamPraktek.value = "";
}

getLastId();

getDokterDataToTable();
