const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

// aggiungi .sign-up-mod x animazione
sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

// rimnuovi .sign-up-mod x animazione
sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

//validazioni form
function validaLogin(){
  if(document.login.username.value == ""){
      alert('inserisci il tuo username');
      return false;
  }

  if(document.login.password.value == ""){
      alert('inserisci la password');
      return false;
  }
}

function validaReg(){
  if(document.regist.username.value == ""){
      alert('inserisci il tuo username');
      return false;
  }

  if(document.regist.email.value == ""){
    alert('inserisci la tua email');
    return false;
  }

  if(document.regist.password.value == ""){
      alert('inserisci la password');
      return false;
  }
}