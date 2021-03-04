<!doctype html>
<html>
    <head>
        <link rel="icon" type="image/png" href="/static/images/favicon.ico"/>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <style>
            body {
              background-color: #00acee;
            }

            .form-container {
              padding: 30px;
              max-width: 350px;
              background: white;
              border-radius: 30px;
              box-sizing: border-box;
            }

            .container {
              margin: 100px auto;
              max-width: 350px;
              box-sizing: border-box;
            }

            .form-container .head {
              text-align: center;
              font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            }

            .Inputs {
              padding-top: 50px;
            }

            form {
              width: 100%;
            }

            form label {
              display: block;
              font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
              color: grey;
              line-height: 30px;
            }

            input {
              display: block;
              margin-bottom: 20px;
              width: 100%;
              padding: 5px;
              border: 1px solid rgb(133, 133, 133);
              border-radius: 5px;
              box-sizing: border-box;
            }

            button {
              font-size: 20px;
              display: block;
              margin-bottom: 20px;
              width: 100%;
              padding: 5px;
              background: #00acee;
              border-radius: 10px;
              border: hidden;
              color: white;
              font-weight: bold;
              font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            }

            .footer {
              text-align: center;
              font-size: 13px;
              box-sizing: border-box;
              padding: 5px 20px;
              font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            }

            a {
              text-decoration: none;
            }

            .signup {
              margin: 20px;
              text-align: center;
              color: white;
              font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            }

            .signup a {
              color: #000066;
              text-decoration: underline;
            }
        </style>
    </head>
    <body>
      <div class="container">
        <div class="form-container">

          <div class="head">
            <h3>Sign Up</h3>
            <p>Welcome to Twitter Signup Page</p>
          </div>

          <form class="Inputs">

            <label for="first">Name</label>
            <input id="signup-name" name="Firstname" type="text" placeholder="Enter your Name"/>

            <label for="email">Email</label>
            <input id="signup-email" name="email" type="email" placeholder="Enter your Email"/>

            <label for="pswd">Password</label>
            <input id="signup-pswd" name="pswd" type="password" placeholder="Choose a Password" type="password"/>

            <p id="signup-error" style="color: red; display:none; " ></p>

            <button id="signup-button" type="button">Signup</button>

          </form>

          <div class="footer">
            <p>By clicking the Signup Button you agree to our
              <a href="#">Term & conditions </a>and <a href="#">Privacy policy</a></p>
          </div>

        </div>
      </div>

      <script>

        function validateSignup(){
          var name = $("#signup-name").val();
          var email = $("#signup-email").val();
          var password = $("#signup-pswd").val();

          var error = "";
          if( !name ) { error += "Name is empty. "; }
          if( !email ) { error += "Email is empty. "; }
          if( !password ) { error += "Password is empty. "; }
          if( !!password && password.length < 5 ) { error += "Pick a longer password. "; }

          $("#signup-error").html(error);
          $("#signup-error").show();

          if( error.length > 0 ) { return false; }

          $("#signup-error").hide();
          return true;
        }

        $("#signup-button").click(function(){

          var valid = validateSignup();
          if( !valid ) { $("#signup-error").show(); }
          else {
            $("#signup-error").hide();

            var user = {
              "name" : $("#signup-name").val(),
              "email" : $("#signup-email").val(),
              "password" : $("#signup-pswd").val()
            }
            $.ajax({
              type: "POST",
              url: "/signup",
              data: JSON.stringify(user),
              success: function(response){
                if( !!response ){
                  alert(response.message);
                }
              },
              contentType: "application/json"
            });

          }

        });

      </script>

    </body>
</html>