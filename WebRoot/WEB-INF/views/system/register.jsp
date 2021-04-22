<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户注册</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../resources/admin/zhuce/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/admin/zhuce/css/style.default.css" id="theme-stylesheet">
	<link rel="stylesheet" href="../resources/admin/zhuce/css/styleTop.css">
  </head>
<head>
   <!--  <title>用户注册</title> -->
    <script type="text/javascript" charset="UTF-8" src="../resources/admin/register/js/register.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
  <div class="container"> <a class="navbar-brand">Ad serving.website</a>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto menu-1">
        <li class="nav-item"> <a class="nav-link "></a> </li>
        <li class="nav-item"> <a class="nav-link "></a> </li>
        <li class="nav-item"> <a class="nav-link "></a> </li>
        <li class="nav-item"> <a class="nav-link "></a> </li>
        <li class="nav-item"> <a class="nav-link "></a> </li>
      </ul>
      <ul class="navbar-nav ml-auto menu-2">
        <li class="nav-item"> <a class="nav-link btn-menu-register"></a> </li>
        <li class="nav-item"> <a class="nav-link btn-menu-login"></a> </li>
        <li class="nav-item is-logged"> </li>
      </ul>
    </div>
  </div>
</nav>
 <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>欢迎注册</h1>
                  </div>
                  <p>很荣幸您的加入</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form action="<%=request.getContextPath()%>/system/userRegister" id="formId" class="reg-form" method="POST">
                   <div>
                    <tr>
                        <td><input type="text" name="username" id="InputUsername" placeholder="用户名" onblur="InputUsernameBlur()"></td>
                        <td><label id="errorName"></label></td>
                    </tr>
                </div>
                <div>
                    <tr>
                        <td><input type="password" name="password" id="InputPassword" placeholder="密码" onblur="InputPasswordBlur()"></td>
                        <td><label id="errorPassword"></label></td>
                    </tr>
                </div>
                <div>
                    <tr>
                        <td><input type="password" name="Repassword" id="InputRepassword" placeholder="确认密码" onblur="InputRepasswordBlur()"></td>
                        <td><label id="errorRepassword"></label></td>
                    </tr>
                </div>
                <div>
                    <tr>
                        <td><input type="email" name="Email" id="InputEmail" placeholder="电子邮箱" onblur="InputEmailBlur()"></td>
                        <td><label id="errorEmail"></label></td>
                    </tr>
                </div>
                   <div class="reg-sub">
                    <input id="submitButton" type="button" onclick="checkForm()" value="免费注册">
                  </div>
                 </form>
               </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


<%-- <div class="container">
    <!-- 注册页面左图 -->
    <div class="left"></div>
    <!-- 注册栏 -->
    <div class="right">
        <div class="reg-label">
           <h3 align="center"></h3>
           <label><h3 align="center">用 户 注 册</h3></label>
            <hr>
        </div>
        <div class="content">
            <form action="<%=request.getContextPath()%>/system/userRegister" id="formId" class="reg-form" method="POST">
                <div>
                    <tr>
                        <td><input type="text" name="username" id="InputUsername" placeholder="用户名" onblur="InputUsernameBlur()"></td>
                        <td><label id="errorName"></label></td>
                    </tr>
                </div>
                <div>
                    <tr>
                        <td><input type="password" name="password" id="InputPassword" placeholder="密码" onblur="InputPasswordBlur()"></td>
                        <td><label id="errorPassword"></label></td>
                    </tr>
                </div>
                <div>
                    <tr>
                        <td><input type="password" name="Repassword" id="InputRepassword" placeholder="确认密码" onblur="InputRepasswordBlur()"></td>
                        <td><label id="errorRepassword"></label></td>
                    </tr>
                </div>
                <div>
                    <tr>
                        <td><input type="email" name="Email" id="InputEmail" placeholder="电子邮箱" onblur="InputEmailBlur()"></td>
                        <td><label id="errorEmail"></label></td>
                    </tr>
                </div>
                <div class="reg-sub">
                    <input id="submitButton" type="button" onclick="checkForm()" value="免费注册">
                </div>
            </form>
        </div>
    </div>
    <div class="bottom">
        <label>© 中央民族大学 计算机学院 ｜ 软件工程 </label>
    </div>
</div> --%>
    <script src="../resources/admin/zhuce/js/jquery.min.js"></script>
    <script src="../resources/admin/zhuce/js/bootstrap.min.js"></script>
</body>
</html>

