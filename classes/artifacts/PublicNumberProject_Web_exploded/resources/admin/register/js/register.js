function checkForm() {

    var Form = document.getElementById("formId");
    var bool = true;
    if (!InputUsernameBlur()) bool = false;
    if (!InputPasswordBlur()) bool = false;
    if (!InputRepasswordBlur()) bool = false;
    if (!InputEmailBlur()) bool = false;
    if (bool==true) {
        Form.submit();
    }
    return bool;

}

/**
 * 校验用户名
 */
function InputUsernameBlur() {
    var uname = document.getElementById("InputUsername");
    var ename = document.getElementById("errorName");
    if (uname.value=="") {
        ename.innerHTML="用户名不能为空";
        return false;
    }
    else {
        ename.innerHTML="";
    }
    /* ?????? */
    if (uname.value.length<4 || uname.value.length>16) {
        ename.innerHTML="用户名需4-16位";
        return false;
    }
    else {
        ename.innerHTML="";
    }
    return true;
}

function InputPasswordBlur() {
    var pwd = document.getElementById("InputPassword");
    var epwd = document.getElementById("errorPassword");
    if (pwd.value=="") {
        epwd.innerHTML="密码不能为空"
        return false;
    }
    else {
        epwd.innerHTML="";
    }
    if (pwd.value.length<6 || pwd.value.length>16) {
        epwd.innerHTML="密码需6-16位"
        return false;
    }
    else {
        epwd.innerHTML="";
    }
    return true;
}

function InputEmailBlur() {
    var email = document.getElementById("InputEmail");
    var eemail = document.getElementById("errorEmail");
    if (email.value=="") {
        eemail.innerHTML="邮箱不能为空"
        return false;
    }
    else {
        eemail.innerHTML="";
    }
    var reg=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
    if (reg.test(email.value)==false) {
        eemail.innerHTML="邮箱格式不正确";
        return false;
    }
    else {
        eemail.innerHTML="";
    }
    return true;
}

function InputRepasswordBlur() {
    var rpwd = document.getElementById("InputRepassword");
    var erpwd = document.getElementById("errorRepassword");
    if (rpwd.value=="") {
        erpwd.innerHTML="确认密码不能为空"
        return false;
    }
    else {
        erpwd.innerHTML="";
    }
    var pwd = document.getElementById("InputPassword");
    if (pwd.value != rpwd.value) {
        erpwd.innerHTML="两次密码不一样！"
        return false;
    }
    else {
        erpwd.innerHTML="";
    }
    return true;
}