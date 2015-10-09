<link rel="stylesheet" href="${path}/home/home.less">

   <header>
     <span class="logo"></span>
   </header>

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
          <a href="#/item/item~1">
            <aside class="col-span col-span-one">
              <img src="${path}/common/img/icon-design.png"/>
            </aside>
          </a>
          <a href="#/item/item~2">
            <aside class="col-span col-span-two">
              <img src="${path}/common/img/icon-good.png"/>
            </aside>
          </a>
        </div>
        <div class="nav-row">
          <a href="#/item/item~3">
            <aside class="col-span col-span-one">
              <img src="${path}/common/img/icon-data.png"/>
            </aside>
          </a>
          <a href="#/item/item~4">
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
         <p class="title">最新病例 New case</p>
         <span class="more"> <a href="#/detail/detail~8">查看全部 ></a> </span>
       </dt>
       <ul class="case-item">
         <li>
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠心病</h3>
             <dd>王先生 年龄:25</dd>
           </article>
         </li>

         <li>
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠状动脉硬化</h3>
             <dd>王先生 年龄:25</dd>
           </article>
         </li>

         <li>
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠状动脉硬化</h3>
             <dd>王先生 年龄:25</dd>
           </article>
         </li>

         <li>
           <img src="${path}/common/img/case01.jpg"/>
           <article>
             <h3>冠状动脉硬化</h3>
             <dd>王先生 年龄:25岁</dd>
           </article>
         </li>
       </ul>
     </section>


     <section class="content-bom">
        <ul class="bom-con flex-box">
        <li class="flex-cell"><a href="#/other/other~1">关于我们</a></li>
        <li class="flex-cell"><a href="#/other/other~2">常见问题</a></li>
        <li class="flex-cell"><a href="#/other/other~3">就医指南</a></li>
        <li class="flex-cell"><a href="#/other/other~4">意见反馈</a></li>
        </ul>
     </section>
    </div>


   </div>


  </div>
