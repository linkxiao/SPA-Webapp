<!-- var: types = location.hash.split("~")[1]-->
<!-- if: ${types} == 1-->
<!-- var: headerText = "关于法兰医疗"-->
<!-- /if -->
<!-- if: ${types} == 2-->
<!-- var: headerText = "常见问题"-->
<!-- /if -->
<!-- if: ${types} == 3-->
<!-- var: headerText = "就医指南"-->
<!-- /if -->
<!-- if: ${types} == 4-->
<!-- var: headerText = "意见反馈"-->
<!-- /if -->
<header data-type="${types}">
	<a href="javascript:history.back();" class="btn-back"><i class="gt-icon"></i></a>
	<span>${headerText}</span>
	<a href="" class="home"><i class="home-icon"></i></a>
</header>
<!-- if:${types} == 1-->
<div class="about-container">
	<img src="${path}/common/img/about_header.jpg">
	<div class="wrap-text">
		<h1>法兰医疗（ falanmed.com ）</h1>
		<h2>公司介绍 <br><span>Company</span></h2>
		<p>法兰医疗是中国领先的精准医疗服务平台，根据客户需求在全球范围内寻找最匹配医疗方案。公司总部位于北京，在巴黎、首尔、休斯顿、新加坡、东京设有服务中心。</p>
		<p>法兰医疗致力于打破医疗信息、语言及地域的藩篱，通过科技来改变人们的就医方式，促进全球医疗资源平等化、便捷化，使每个人都能自由获取全球最新医疗信息，平等地获取全球最先进的医疗照护。</p>
		<p>法兰医疗通过技术平台有效匹配国内外患者的医疗服务需求和医疗资源。对患者而言，法兰医疗通过网站及移动端的全平台覆盖，随时随地为其提供国内外专家预约、就医陪诊、健康体检、会员健康管理等多种医疗健康服务，帮助患者快捷找到最佳诊疗及健康方案。</p>
		<p>法兰医疗拥有全职医生团队及专业的国际医疗转诊团队。只需要简单三步，就可以让患者获得轻松、安心、精准的医疗服务。</p>
		<h2>公司业务 <br><span>Company business</span></h2>
		<ul class="service-list">
			<li>出国看病全程管理</li>
			<li>免费医疗方案咨询</li>
			<li>医疗青春项目</li>
			<li>国内就医安排</li>
			<li>客户疾病学术研究与文献搜集</li>
			<li>遗传背景和生活方式下的个性化体验安排</li>
		</ul>
	</div>
	<img src="${path}/common/img/about_resourse_fenbu.jpg">
	<div class="wrap-text">
		<h2>部分顶级合作医院 <br><span>Part of the top cooperative hospital</span></h2>
		<h1>亚太医疗资源</h1>
		<ul class="resource-list">
			<li><img src="${path}/common/img/about_asia_1.jpg" alt=""><p>国内20家顶级三甲医院</p></li>
			<li><img src="${path}/common/img/about_asia_2.jpg" alt=""><p>新加坡伊丽莎白诺维娜医院</p></li>
			<li><img src="${path}/common/img/about_asia_3.jpg" alt=""><p>日本30余家综合医院</p></li>
			<li><img src="${path}/common/img/about_asia_4.jpg" alt=""><p>韩国首尔峨山医院</p></li>
		</ul>
		<h1>欧洲医疗资源</h1>
		<ul class="resource-list">
			<li><img src="${path}/common/img/about_europe_1.jpg" alt=""><p>英国皇家布朗顿医院</p></li>
			<li><img src="${path}/common/img/about_europe_2.jpg" alt=""><p>法国巴黎乔治蓬皮杜医院</p></li>
			<li><img src="${path}/common/img/about_europe_3.jpg" alt=""><p>德国海德堡大学附属医院</p></li>
			<li><img src="${path}/common/img/about_europe_4.jpg" alt=""><p>法国巴黎儿童医院</p></li>
		</ul>
		<h1>美国医疗资源</h1>
		<ul class="resource-list">
			<li><img src="${path}/common/img/about_us_1.jpg" alt=""><p>美国约翰霍普金斯医院</p></li>
			<li><img src="${path}/common/img/about_us_2.jpg" alt=""><p>美国梅奥医院</p></li>
			<li><img src="${path}/common/img/about_us_3.jpg" alt=""><p>美国MD.Anderson医院</p></li>
			<li><img src="${path}/common/img/about_us_4.jpg" alt=""><p>美国克利夫兰医院</p></li>
		</ul>
	</div>
</div>
<!-- elif:${types} == 2-->
<img src="${path}/common/img/question_header.jpg" style="width:100%;">
<div class="question-container">
	<h2>Q1：什么样的病人适合做可溶解支架？</h2>
	<p>A：由于需要出国就医，不适合急性心肌梗死的病人；其他病人，只要心脏血管狭窄达到放支架标准（狭窄超过70%），基本都可以放可溶解支架。出国就医前会有手术医生进行更精确的评估。</p>
	<h2>Q2：放了金属支架，可不可以不吃药？</h2>
	<p>A：医生不建议自行停服阿司匹林等抗血栓药物，停药后血栓形成的几率会明显升高。血栓可以发生在血管的任何地方，血栓随着血液流动，如果在脑动脉血管中停留，阻碍了脑动脉正常血液的流通就是脑血栓；若堵塞了心脏的血管，则会出现心肌梗塞。此外，还有下肢动脉血栓下肢深静脉血栓及肺栓塞等。</p>
	<h2>Q3：吃阿司匹林到底危害有多大？</h2>
	<p>A：长期服用阿司匹林，会出现的副作用有<br>①恶心、呕吐，上腹部不适或疼痛等胃肠道症状<br>②胃肠道出血或溃疡<br>③皮肤过敏反应<br>④肝肾功能损害<br>⑤出凝血功能障碍</p>
	<h2>Q4：放金属支架为什么需要终生服药？</h2>
	<p>A：金属支架在放置过程中，对血管内壁造成损伤，从而激活了凝血功能，更容易形成血栓。金属支架放进血管后，会对血管产生持续刺激，血管内壁也容易形成血栓。阿司匹林是一种抗血小板聚集的药物，在一定程度上减少血栓的形成。</p>
	<h2>Q5：对于已经放过支架的病人，可溶解支架还有好处吗？</h2>
	<p>A：对于体内已经有金属支架的病人，如果血管再次狭窄，由于可溶解支架的特性，2年后不会使血管内的支架再增多。支架越多，血管发生再次堵塞的几率越大。</p>
	<h2>Q6：国内医生对血管狭窄的评估跟国外医生不同怎么办？</h2>
	<p>A：国外医生对病人心脏血管的评估是通过国内客观的影像学结果判断的，这种影像包括冠状动脉CTA和冠状动脉造影。提供清晰的影像资料，国外医生会根据影像资料做出最准确的判断。</p>
	<h2>Q7： 已放过好几个支架，现在又出现不适症状，是放支架还是搭桥？</h2>
	<p>A：首先要明确目前的血管情况，现在的症状与血管狭窄有没有关系，最好做冠脉造影；冠脉CTA对于已放过金属支架的患者，支架内的情况不能清楚的看到。医生会根据造影的结果，评判适合放支架还是搭桥手术。</p>
	<h2>Q8：已经做过冠脉搭桥手术，如果血管再次狭窄，应该怎么办？</h2>
	<p>A：不建议再次搭桥，二次开胸手术的风险很大，搭桥手术后胸腔的筋膜有粘连，再次处理容易损伤搭桥的血管。若血管再次狭窄，建议做支架手术，可以处理原本狭窄的血管，也可以处理搭桥血管。处理静脉桥血管需要用金属支架，因为静脉血管较粗大，可降解支架没有相应的型号；处理动脉桥血管和原动脉血管都可以用生物可降解支架。</p>
	<h2>Q9：为什么放完支架不能做核磁共振？</h2>
	<p>A：主要有三点原因：<br>①金属会影响磁场的均匀性，使图像中产生大片的无信号伪影，不利于病灶的显示<br>②在强磁场的作用下，金属物品可能发生移动或破坏<br>③金属在高频强磁场中，会出现发热甚至熔化。</p>
	<h2>Q10：可溶解支架，为什么需要2年才溶解完？</h2>
	<p>A：支架在植入血管后6个月左右，病变的血管完成了重构，也就是说血管的形状已经固定，这时支架就失去了支撑血管的意义，支架还放在血管内只能增加再次狭窄的几率。可溶解支架放入血管后，会逐渐变成水和二氧化碳，通过呼吸道、排泄物及汗液排出体外。溶解的过程过快，会稍微对血管有刺激，2年的溶解期，对血管就没有什么伤害了。</p>
</div>
<!-- elif:${types} == 3-->
<img src="${path}/common/img/manual_header.jpg" style="width:100%;">
<div class="manual-container">
	<table border=0 cellspacing=18 cellpadding=0>
		<tr valign="top">
			<td><span class="call"></span></td>
			<td style="padding-bottom:10px;">
				<h2>致电咨询</h2>
				<ul>
					<li>致电400-184-6606，医疗顾问了解病情并收集资料</li>
					<li>医疗专家根据病历资料，进行初步评估</li>
					<li>手术医生确定是否适合治疗，并拟定治疗方案</li>
				</ul>
			</td>
		</tr>
		<tr valign="top">
			<td><span class="calen"></span></td>
			<td style="padding-bottom:43px;">
				<h2>确定行程</h2>
				<ul>
					<li>根据病情，确定出行时间</li>
					<li>办理签证，预订机票及酒店</li>
					<li>确定医疗行程</li>
				</ul>
			</td>
		</tr>
		<tr valign="top">
			<td><span class="airplane"></span></td>
			<td style="padding-bottom:34px;">
				<h2>出国就医</h2>
				<ul>
					<li>手术医生明确病情，进行术前准备</li>
					<li>医生进行手术，术后休养并观察</li>
					<li>制定服药方案，提供诊疗记录</li>
				</ul>
			</td>
		</tr>
	</table>
</div>

<!-- elif:${types} == 4-->
<div class="feedback-container">
	<input id="name-input" type="text" placeholder="请输入您的姓名">
	<input id="phone-number" type="text" placeholder="请输入您的电话号码">
	<textarea id="opinion-txt" placeholder="请输入您的意见"></textarea>
	<input id="feedback-btn" type="button" value="提交问题">
</div>
<!-- /if-->

<hr style="height:1px; border:none; border-top:1px solid #e1e1e1;">
<footer>
<ul class="item-con footer-con">
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
			 <strong><a href="tel:400-184-6606">400-184-6606</a></strong>
		 </p>
	 </aside>
     <div class="qrcode">
       <img src="${path}/common/img/qrcode.png" />
       <p>
         扫描二维码 <br/>关注我们
       </p>
     </div>
   </section>
</footer>
