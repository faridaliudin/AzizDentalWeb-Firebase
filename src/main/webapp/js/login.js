function adminRef() {
    const database = firebase.database();
    return database.ref("login");
  }
  
  $("#loginBtn").click(function (e) {
    e.preventDefault();
  
    const username = $("#username").val();
    const password = $("#password").val();
  
    if (username !== "" || password !== "") {
      adminRef().once("value", snapshot => {
        for (const adminId in snapshot.val()) {
            const admin = snapshot.val()[adminId];
            if (username === admin.username && password === admin.password) {
              window.location.href = "admin.jsp";
            } 
        }
      })
    } else {
      alert("Maaf anda belum mengisi username atau password!");
    }
  
  });