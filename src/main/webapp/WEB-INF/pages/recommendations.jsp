<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" class=""><head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

      <style class="INLINE_PEN_STYLESHEET_ID">
         .followed-button{
         background-color:#018786;
         }

         :root {
         --background: #ffffff;
         --cs-primary: #25b9f4;
         --cs-surface: #ffffff;
         --cs-surface-2: #eef4f8;
         --cs-separator: #e8ecf0;
         --cs-on-surface-primary: #0000008f;
         --cs-on-surface-secondary: #657786;
         --font-family-primary: "DM Sans", Aria, sans-serif;
         --joke-author-img-width: 60px;
         --joke-width: 480px;
         --layout-container-width: 920px;
         }
         * {
         box-sizing: border-box;
         }
         html,
         body {
         background: var(--background);
         font-family: var(--font-family-primary);
         font-size: 14px;
         line-height: 1.42;
         height: 100%;
         }
         #root {
         height: 100%;
         }
         .joke {
         background-color: var(--cs-surface);
         padding: 15px;
         min-height: calc(33px + var(--joke-author-img-width));
         transition: background-color 0.25s;
         }
         .joke:focus,
         .joke:hover {
         background-color: var(--cs-surface-2);
         }
         .joke_wrapper {
         margin-left: calc(1.25 * var(--joke-author-img-width));
         }
         .joke_block {
         position: relative;
         }
         .joke_block--header .joke_element {
         display: inline-block;
         margin-right: 7px;
         }
         .joke_element--author-img {
         height: var(--joke-author-img-width);
         left: calc(-1.25 * var(--joke-author-img-width));
         position: absolute;
         top: 3px;
         width: var(--joke-author-img-width);
         }
         .joke_element--author-img img {
         border-radius: 50%;
         max-width: 100%;
         }
         .joke_element--author-name {
         color: var(--cs-on-surface-primary);
         font-weight: bold;
         }
         .joke_element--author-username {
         color: var(--cs-on-surface-secondary);
         }
         .joke_element {
         margin: 0;
         }
         .joke_block--text {
         font-size: 18px;
         margin-top: 7px;
         }
         .joke_block--footer {
         margin-top: 12px;
         }
         .layout {
         height: 100%;
         }
         .layout_wrapper {
         display: grid;
         grid-template-columns: 140px 480px 1fr;
         height: 100%;
         margin: auto;
         width: var(--layout-container-width);
         }
         .layout_header {
         background-color: var(--cs-surface);
         height: 100%;
         }
         .layout_content {
         border-left: 1px solid var(--cs-separator);
         border-right: 1px solid var(--cs-separator);
         width: var(--joke-width);
         }
         .layout_footer {
         padding: 20px;
         }
         .feed_header {
         border-bottom: 1px solid var(--cs-separator);
         padding: 20px;
         }
         .feed {
         margin-bottom: 60px;
         }
         .feed_title {
         font-size: 20px;
         font-weight: bolder;
         margin: 0;
         }
         .feed_subtitle {
         color: var(--cs-on-surface-secondary);
         margin: 0;
         margin-top: 7px;
         }
         .feed_item {
         border-bottom: 1px solid var(--cs-separator);
         }
         .feed_error {
         padding: 40px;
         text-align: center;
         }
         .feed_error_icon {
         fill: hsla(197, 20%, 92%, 1);
         height: 90px;
         width: 90px;
         }
         .feed_error_title {
         color: var(--cs-on-surface-primary);
         font-weight: bold;
         margin: 0;
         margin-top: 1.3em;
         }
         .feed_error_text {
         color: var(--cs-on-surface-secondary);
         margin: 0;
         margin-top: 0.7em;
         }
         .navbar--header {
         background-color: #ffffff;
         /*box-shadow: 0 5px 30px hsla(197 , 75%, 55%, .08);*/
         position: relative;
         }
         .navbar_block {
         padding: 8px;
         }
         .navbar_header {
         display: flex;
         justify-content: flex-end;
         }
         .navbar_brand {
         display: block;
         padding: 20px 20px;
         }
         .navbar_brand svg {
         display: block;
         fill: var(--cs-primary);
         height: 34px;
         width: 34px;
         }
         .form--search-form input {
         -webkit-appearance: none;
         background-color: #e8ecf0;
         border: 2px solid #e8ecf0;
         border-radius: 25px;
         font-size: 12px;
         line-height: 1;
         outline: none;
         padding: 8px 12px;
         width: 100%;
         }
         .form--search-form input::placeholder {
         font-style: italic;
         }
         .form--search-form input:focus {
         border: 2px solid var(--cs-primary);
         }
         .nav {
         list-style: none;
         margin: 0;
         padding: 0;
         }
         .nav--joke_rebound .nav_item {
         display: inline-block;
         margin-right: 70px;
         }
         .nav--joke_rebound .nav_link svg {
         display: block;
         fill: var(--cs-on-surface-secondary);
         height: 20px;
         margin-right: 5px;
         width: 20px;
         }
         .nav--joke_rebound .nav_link {
         align-items: center;
         color: var(--cs-on-surface-secondary);
         display: flex;
         text-decoration: none;
         }
         .nav--joke_rebound .nav_link:hover {
         color: var(--cs-primary);
         }
         .nav--joke_rebound .nav_link:hover svg {
         fill: var(--cs-primary);
         }
         .pagination--infinite-scroll .pagination_button_next {
         background-color: #ffffff;
         border-color: transparent;
         color: var(--cs-primary);
         cursor: pointer;
         letter-spacing: 0.045em;
         padding: 20px;
         width: 100%;
         }
         .section {
         background-color: var(--cs-surface-2);
         border-radius: 10px;
         margin-bottom: 20px;
         }
         .section--search {
         background-color: #ffffff;
         }
         .section_block {
         padding: 15px;
         }
         .section_block--header {
         border-bottom: 1px solid var(--cs-separator);
         }
         .section_block--content p {
         margin: 0;
         margin-bottom: 1em;
         }
         .section_title {
         margin: 0;
         }
         .nav_item + .nav_item {
         margin-top: 10px;
         }
         .nav_link {
         color: var(--cs-on-surface-primary);
         text-decoration: none;
         }
         .nav_link_text--primary {
         color: var(--cs-on-surface-primary);
         display: block;
         font-weight: bold;
         font-size: 16px;
         }
         .nav_link_text--secondary {
         color: var(--cs-on-surface-secondary);
         }

         textarea {
             border: 0;
             border-radius: 0.5em;
             box-shadow: 0 0 0 0.1em #a8ceee inset;
             margin: 0 auto 0.75em auto;
             padding: 0.75em;
             resize: none;
             width: 100%;
             height: 5em;
         }
         .bottom {
             display: flex;
             justify-content: flex-end;
             align-items: center;
         }
         .bottom > span {
             margin-right: 0.75em;
         }
         button {
             background-color: #55abee;
             border: 0;
             color: #fff;
             display: inline-block;
             font-weight: bold;
         }
         button span {
             display: block;
             padding: 0.75em 1.5em;
             transition: all 0.1s linear;
         }
         button, button span {
             border-radius: 1.5em;
         }
      </style>
   </head>
   <body>


      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <jsp:include page="templates/navbar.jsp"/>
                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Recommendations for you :)</h1>
                        </div>

                        <c:forEach var="member" items="${RECOMMENDATIONS}">
                        <div class="feed_item">
                           <div class="joke">
                              <div class="joke_wrapper">
                                 <div class="joke_block joke_block--header">
                                    <span class="joke_element joke_element--author-name">${member.name}</span><span class="joke_element joke_element--author-username">${member.email}</span>
                                    <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                 </div>
                                 <!--<div class="joke_block joke_block--text">Why does a Moon-rock taste better than an Earth-rock? Because it's a little meteor.</div>-->
                                  <c:if test="${not member.is_followed}">
                                        <button class="follow-member" member-id="${member.id}" type="submit" tabindex="0" style="margin-top: 15px;">
                                         <span tabindex="-1">Follow</span>
                                                                       </button>
                                  </c:if>
                                  <c:if test="${member.is_followed}">
                                        <button class="follow-member followed-button" member-id="${member.id}" type="submit" tabindex="0" style="margin-top: 15px;">
                                         <span tabindex="-1">Followed</span>
                                                                       </button>
                                  </c:if>




                              </div>
                           </div>
                        </div>
                            </c:forEach>



                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>
                  <jsp:include page="templates/sidebar.jsp"/>
               </div>
            </div>
         </div>
      </div>
      <script type="text/javascript">

            $(".follow-member").click( function(event){
                var memberId=this.getAttribute("member-id");
                var button=this;
                var isFollowed=$(button).hasClass("followed-button");
                if(!isFollowed){
                    $.ajax({
                          type: "POST",
                          url: "/user/follow-member/"+memberId,

                          success: function(response){
                              if(!!response){
                                $(button).addClass("followed-button");
                                 button.querySelector("span").innerText="Followed";
                              }
                          },
                          contentType: 'application/json'
                        });

                }
                else{
                    $.ajax({
                          type: "POST",
                          url: "/user/un-follow-member/"+memberId,

                          success: function(response){
                              if(!!response){
                                $(button).removeClass("followed-button");
                                 button.querySelector("span").innerText="Follow";
                              }
                          },
                          contentType: 'application/json'
                        });
                }


          });
            </script>

</body></html>