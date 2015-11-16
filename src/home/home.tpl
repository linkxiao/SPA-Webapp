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
        <a href="#/item/item~1"><img src="${path}/common/img/home-banner.jpg"/></a>
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
         <p class="title">最新病例 New cases</p>
         <span class="more"> <a href="#/detail/detail~8">查看全部</a> </span>
       </dt>
       <ul class="case-item">
         <li>
            <a href="#/detail/detail~9">
              <img src="${path}/common/img/case01.jpg"/>
              <article>
                <h3>可溶解支架&nbsp;&nbsp;让我不用做“钢铁侠”</h3>
                <dd>王先生 &nbsp;&nbsp; 年龄:46岁</dd>
              </article>
            </a>
         </li>

         <li>
            <a href="#/detail/detail~10">
              <img src="${path}/common/img/case02.jpg"/>
              <article>
                <h3>手术后，心真的不疼了</h3>
                <dd>李先生 &nbsp;&nbsp; 年龄:53岁</dd>
              </article>
            </a>
         </li>

         <li>
            <a href="#/detail/detail~11">
              <img src="${path}/common/img/case03.jpg"/>
              <article>
                <h3>心里的“钉子”不再增加</h3>
                <dd>杨先生 &nbsp;&nbsp; 年龄:60岁</dd>
              </article>
            </a>
         </li>

         <li>
            <a href="#/detail/detail~12">
              <img src="${path}/common/img/case04.jpg"/>
              <article>
                <h3>“更年期”症状，也可以手术治好</h3>
                <dd>夏女士 &nbsp;&nbsp; 年龄:24岁</dd>
              </article>
            </a>
         </li>
       </ul>
     </section>

    </div>

   </div>


   <footer>
      <!-- <ul class="footer-con flex-box">
      <li class="flex-cell"><a href="#/other/other~1">关于我们</a></li>
      <li class="flex-cell"><a href="#/other/other~2">常见问题</a></li>
      <li class="flex-cell"><a href="#/other/other~3">就医指南</a></li>
      <li class="flex-cell"><a href="#/other/other~4">意见反馈</a></li>
      </ul> -->
      <ul class="footer-list item-con">
      <li class="first-item item"><a href="#/other/other~1">关于我们</a></li>
      <li class="item"><a href="#/other/other~2">常见问题</a></li>
      <li class="item"><a href="#/other/other~3">就医指南</a></li>
      <li class="last-item item"><a href="#/other/other~4">意见反馈</a></li>
      </ul>
      <h5>
        @2015 法兰医疗 版权所有,未经授权禁止复制
      </h5>
      <section>
        <aside>
          <a href="tel:400-184-6606"><img src="${path}/common/img/icon-phone.png" /></a>
          <p>
            <strong><a href="tel:400-184-6606">400-184-6606</a></strong> <br/>
          </p>
        </aside>
        <div class="qrcode">
          <img src="${path}/common/img/qrcode.png"/>
          <p>
            扫描二维码 <br/>关注我们
          </p>
        </div>
      </section>
   </footer>
