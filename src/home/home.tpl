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
          <a href="#/detail/detail~1">
            <aside class="col-span col-span-one">
              <img src="${path}/common/img/icon-design.png"/>
            </aside>
          </a>
          <a href="#/detail/detail~2">
            <aside class="col-span col-span-two">
              <img src="${path}/common/img/icon-good.png"/>
            </aside>
          </a>
        </div>
        <div class="nav-row">
          <a href="#/detail/detail~3">
            <aside class="col-span col-span-one">
              <img src="${path}/common/img/icon-data.png"/>
            </aside>
          </a>
          <a href="#/detail/detail~4">
            <aside class="col-span col-span-two">
              <img src="${path}/common/img/icon-change.png"/>
            </aside>
          </a>
        </div>
      </nav>

      <section class="content-step">
        <img src="${path}/common/img/content-step.jpg"/>
      </section>

     <section class="content-case">
       <dt class="case-title">
         <p class="title"><img src="${path}/common/img/home-title.jpg"/></p>
         <span class="more"> 查看全部 > </span>
       </dt>
       <ul class="case-item flex-box">
         <li class="flex-cell">
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠心病</h3>
             <dd>王先生 年龄:25</dd>
           </article>
         </li>

         <li class="flex-cell">
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠状动脉硬化</h3>
             <dd>王先生 年龄:25</dd>
           </article>
         </li>

         <li class="flex-cell">
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠状动脉硬化</h3>
             <dd>王先生 年龄:25</dd>
           </article>
         </li>

         <li class="flex-cell">
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠状动脉硬化</h3>
             <dd>王先生 年龄:25岁</dd>
           </article>
         </li>

       </ul>
     </section>


     </div>


   </div>


  </div>

 </body>
</html>
