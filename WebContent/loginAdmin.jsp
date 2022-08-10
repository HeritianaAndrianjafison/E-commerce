<%@ page pageEncoding="UTF-8" %>
 <%
    String erreur = "";
 	erreur=(String) request.getAttribute("erreur");
   // out.println(erreur);
 %>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login Admin</title>
    <link rel="stylesheet" href="css/login_style.css">
  </head>
  <body>
    <div class="center">
      <h1>Login Admin</h1>
      <form method="post" action="loginAdmin">
        <div class="txt_field">
          <input type="text" name="pseudo"required >
          <span></span>
          <label>Pseudo</label>
        </div>
        <div class="txt_field">
          <input type="password"  name="mdp" required>
          <span></span>
          <label>Password</label>
        </div>
         <div class="pass">
          <a href="login">Login Client</a>
        </div>
        <input type="submit" value="Login">
        <div class="signup_link"  style="color:red;">
         <% if(erreur !="" && erreur !=null ) out.println("Attention , email ou mdp incorrect!! "); %>
        </div>
      </form>
    </div>

  </body>
</html>
