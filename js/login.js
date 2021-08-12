const loginForm = document.querySelector("form.login");
const signupForm = document.querySelector("form.signup");
const loginBtn = document.querySelector("label.login");
const signupBtn = document.querySelector("label.signup");
const signupLink = document.querySelector(".signup-link a");
const loginText = document.querySelector(".title-text .login");
const signupText = document.querySelector(".title-text .signup");
const Dangnhap = document.getElementById("Dangnhap");
const Dangky = document.getElementById("Dangky");



signupBtn.onclick= (()=>{
    loginForm.style.marginLeft = "-50%";
    loginText.style.marginLeft = "-50%";
});
loginBtn.onclick= (()=>{
    loginForm.style.marginLeft = "0%";
    loginText.style.marginLeft = "0%";
});
Dangnhap.onclick= (()=>{
    window.location.href = 'src\index.html';
});
Dangky.onclick=(()=>{
    var rs = validateSignup();
    if (rs) {
        signupBtn.onclick();
        return false;
    }
    
    
})



function validateSignup(){
    var signupInput,signupReput,text,signupEmail;
    signupInput = document.getElementById("signupPasswordInput").value;
    signupReput = document.getElementById("signupPasswordReput").value;
    signupEmail = document.getElementById("signupEmail").value;
    var bool = true;
    
    if(signupEmail==""){
        document.getElementById("valemail").innerHTML = "Tài khoản không được để trống";
        bool=false;
    }
    else{
        document.getElementById("valemail").innerHTML = "";
    }
    if(signupInput==""){
        document.getElementById("valpass").innerHTML = "Mật khẩu không được để trống";
        bool=false;
    }
    else{
        document.getElementById("valpass").innerHTML = "";
    }
    if( signupInput != signupReput){
        document.getElementById("valrepass").innerHTML="mật khẩu nhập lại phải trùng với mật khẩu";
        bool= false;
    }
    else{
        document.getElementById("valrepass").innerHTML="";
    }
    return bool;
}
