<link rel="stylesheet" href="${path}/home/home.less">

   <div class="header">
     <span></span>
     <!-- <img src="../img/logo.png"> -->
   </div>

   <div class="wrap">
     <div id="photo">
       <ul id="pic-view" class="pic-view">
         <!-- for: ${homeData.bannerImg} as ${item} -->
            <li>
                <!-- if : ${item.link} -->
                <a href=${item.link}>
                <!--else-->
                <a>
                <!-- /if -->
                    <img src="${item.img}" />
                </a>
            </li>
            <!-- /for -->
       </ul>
     </div>

     <div class="container">
      <section class="content-banner">
        <img src="${path}/common/img/home-banner.jpg"/>
      </section>

      <nav class="content-nav">
        <div class="nav-row">
          <aside class="col-span col-span-one">
            <img src="${path}/common/img/icon-design.png"/>
          </aside>
          <aside class="col-span col-span-two">
            <img src="${path}/common/img/icon-good.png"/>
          </aside>
        </div>
        <div class="nav-row">
            <aside class="col-span col-span-one">
              <img src="${path}/common/img/icon-data.png"/>
            </aside>
            <aside class="col-span col-span-two">
              <img src="${path}/common/img/icon-change.png"/>
            </aside>
        </div>
      </nav>

      <section class="content-step">
        <img src="${path}/common/img/content-step.jpg"/>
      </section>

     </div>

    
   </div>


  </div>

 </body>
</html>
