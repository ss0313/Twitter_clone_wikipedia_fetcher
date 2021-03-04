<html>
<body>
    <form>
        USER is trying to login at
        <br>
        <br>
        <div id="time">
        </div>
        <br>
        <div>
            <marquee> Made by Shreya
        </div>

        <script type="text/javascript">

            function updateTime(){
                document.getElementById("time").innerText = new Date().toString();
            }

            // every 1000 ms
            setInterval( updateTime , 1000 );

        </script>
    </form>
</body>
</html>