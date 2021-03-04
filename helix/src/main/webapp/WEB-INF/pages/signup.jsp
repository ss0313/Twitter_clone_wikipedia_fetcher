<html>

<head>
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"></script>
<style>
    *,
    *::after,
    *::before {
       -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
       box-sizing: border-box;
       margin: 0;
       padding: 0;
       text-decoration: none;
       list-style-type: none;
       outline: none;
    }

    body,
    html {
      font-family: "Raleway";
    }

    body{
      background: rgba(0,223,156,1);
      background: -moz-linear-gradient(-45deg, rgba(0,223,156,1) 0%, rgba(0,164,170,1) 33%, rgba(0,115,181,1) 66%, rgba(0,53,197,1) 100%);
      background: -webkit-gradient(left top, right bottom, color-stop(0%, rgba(0,223,156,1)), color-stop(33%, rgba(0,164,170,1)), color-stop(66%, rgba(0,115,181,1)), color-stop(100%, rgba(0,53,197,1)));
      background: -webkit-linear-gradient(-45deg, rgba(0,223,156,1) 0%, rgba(0,164,170,1) 33%, rgba(0,115,181,1) 66%, rgba(0,53,197,1) 100%);
      background: -o-linear-gradient(-45deg, rgba(0,223,156,1) 0%, rgba(0,164,170,1) 33%, rgba(0,115,181,1) 66%, rgba(0,53,197,1) 100%);
      background: -ms-linear-gradient(-45deg, rgba(0,223,156,1) 0%, rgba(0,164,170,1) 33%, rgba(0,115,181,1) 66%, rgba(0,53,197,1) 100%);
      background: linear-gradient(135deg, rgba(0,223,156,1) 0%, rgba(0,164,170,1) 33%, rgba(0,115,181,1) 66%, rgba(0,53,197,1) 100%);
      	background-size: 100%;
    }

    .icon{
      width: 90px;
      height: 90px;

      color: #01a1ab;

      background-color: #fff;
      text-align: center;

      border-radius: 45px;

      margin: 60px auto 0;

      box-shadow: 0px 4px 3px 1px rgba(0,0,0,.1);
    }

    .icon > i{
      font-size: 45px;
      line-height: 90px;
      color: rgba(1, 167, 177, 0.9);
      text-shadow: 0px 4px 3px #fff, 0 0 0 #000, 1px 4px 6px transparent;
    }

    h1,h3,h4{
      text-align: center;
      color: #fff;
    }

    h1{
      font-size: 70px;
      margin-top: 20px;
      text-shadow: 0px 4px 3px rgba(0,0,0,.2);
    }

    h3{
      font-weight: 100;
    }

    h4{
      color: #848c8d;
      font-weight: 500;
      margin-top: 5px;
    }

    .signup-box,
    .login-box{
      width: 380px;

      background-color: #fff;

      padding: 20px;
      margin: 20px auto;

      border-radius: 5px;

      box-shadow: 0px 4px 3px 1px rgba(0,0,0,.1);

      text-align: center;
    }

    input{
      width: 100%;
      padding: 20px 0;
      margin-bottom: 20px;

      border: none;
      border-bottom: 1px solid #d3d8d8;

      font-size: 20px;
      font-weight: 200;
      color: #848c8d;
    }

    input:focus{
      border-bottom: 1px solid #00a4aa;
    }

    ::-webkit-input-placeholder {
      font-size: 13px;
      color: #9b9b9b;
      font-weight: 300;
    }
    ::-moz-placeholder {
      font-size: 13px;
      color: #9b9b9b;
      font-weight: 300;
      padding: 0;
    } /* firefox 19+ */
    :-ms-input-placeholder {
      font-size: 13px;
      color: #9b9b9b;
      font-weight: 300;
    } /* ie */
    input:-moz-placeholder {
      font-size: 13px;
      color: #9b9b9b;
      font-weight: 300;
    }

    .btn{
      display: inline-block;
      padding: 8px 28px;
      margin: 0 auto;
      font-size: 12px;
      font-weight: 400;
      line-height: 1.42857143;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      background-image: none;
      border: 1px solid transparent;
      border-radius: 4px;
      box-shadow: 0px 3px 2px 0px rgba(0,0,0,.2);
      transition: all 0.25s ease;
    }

    .btn-green{
      background-color: #00a4aa;
      color: #fff;
    }

    .btn-green:hover{
      background-color: #23b9be;
    }

    .btn-grey:hover{
      background-color: #e5e5e5;
    }

    .terms{
      margin-top: 20px;
      color: #848c8d;

      text-align: left;
      font-size: 13px;
      line-height: 24px;
    }

    .terms > a{
      color: #0b666a;
      font-weight: 500;
    }

    .login-box{
      overflow: auto;
      text-align: left;
      position: relative;
    }

    .login-box > p{
      position: absolute;
      top: 50%;
      transform: translateY(-50%);

      color: #4a4a4a;
      font-size: 13px;
      font-weight: 600;
    }

    .login-box > button{
      float: right;
    }
</style>
</head>

    <body>
    	<!-- Design from: https://dribbble.com/shots/2543440-Signup -->

        <div class="icon">
          <i class="material-icons">Discover</i>
        </div>

        <h1>TWITTER</h1>
        <h3>It&#x27s what&#x27s happening...</h3>

        <div class="signup-box">
          <h4>CREATE YOUR ACCOUNT</h4>

          <br />
          <form action="">

            <input id="signup-name" type="text" placeholder="Full Name"/>

            <input id="signup-email" type="email" placeholder="Email"/>

            <input id="signup-password" type="password"  placeholder="Password"/>

            <button type="submit" class="btn btn-green" id="btn-signup">Sign up</button>
            <p style="color:red; display none" id="signup-error"></p>

          </form>
           </div>

          <script>
          function validateSignUpForm(){
            var name=$("#signup-name").val();
            var email=$("#signup-email").val();
            var password=$("#signup-password").val();
            var error="";
            if(!name){
                error+="name is empty. ";
            }
            if(!email){
                            error+="email is empty. ";
                        }
            if(!password){
                            error+="password is empty. ";
                        }
            if(password.length<=4){
                            error+="Password too small. ";
                        }
             $("#signup-error").html(error);

            if(error.length>0){

            return false;}
            return true;
          }
          $("#btn-signup").click(function(){
                var isFormValid=validateSignUpForm();
              if(isFormValid){
                var name=$("#signup-name").val();
                            var email=$("#signup-email").val();
                            var password=$("#signup-password").val();
                var user={
                    "name":name,
                    "email":email,
                    "password":password
                }

                $("#signup-error").hide();
                $.ajax({
                  type: "POST",
                  url: "/signup",
                  data: JSON.stringify(user) ,
                  success: function(response){ },
                  contentType: 'application/json'
                });
               }
              else {  $("#signup-error").show();
              alert("Form invalid. Please check details.");}

          });
          </script>



    </body>






</html>