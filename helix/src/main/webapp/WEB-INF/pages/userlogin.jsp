<html>
<body>
USER LOGIN!!!
<br>
<br>
    <div id="time">
    </div>
    <br>
    <br>
        <div  >
        <marquee>Made by Shreya</marquee>
        </div>
    <script type="text/javascript">
    function UpdateTime(){
        document.getElementById("time").innerText=new Date().toString();
    }
    setInterval(UpdateTime,1000);
    </script>
</body>
</html>