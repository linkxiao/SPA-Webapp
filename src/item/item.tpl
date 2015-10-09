<!-- var: types = location.hash.split("~")[1]-->
<!-- if: ${types} == 1-->
<!-- var: headerText = "可溶解支架"-->
<!-- /if -->
<!-- if: ${types} == 2-->
<!-- var: headerText = "可溶解支架"-->
<!-- /if -->
<!-- if: ${types} == 3-->
<!-- var: headerText = "可溶解支架"-->
<!-- /if -->
<!-- if: ${types} == 4-->
<!-- var: headerText = "可溶解支架"-->
<!-- /if -->
<header data-type="${types}">
	<a href="javascript:history.back();" class="btn-back"><i class="gt-icon"></i></a>
	<span>${headerText}</span>
	<a href="" class="home"><i class="home-icon"></i></a>
</header>
<div class="region">
	<span class="hint">全球最新一代心脏支架</span>
	<span class="region-view">
		<i class="current-region">就医地域：${region}</i><a href="#/detail/detail~7" style="color:#fff;">更多<i class="more-icon"></a></i>
	</span>
</div>
<div class="nav">
	<ul class="item-list">
		<!-- if: ${types} == 1-->
			<li class="first-item item"><a href="javascript:void(0)" class="selected">支架设计</a></li>
		<!-- else-->
			<li class="first-item item"><a href="#/item/item~1">支架设计</a></li>
		<!-- /if-->
		<!-- if: ${types} == 2-->
			<li class="item"><a href="javascript:void(0)" class="selected">优势特点</a></li>
		<!-- else-->
			<li class="item"><a href="#/item/item~2">优势特点</a></li>
		<!-- /if-->
		<!-- if: ${types} == 3-->
			<li class="item"><a href="javascript:void(0)" class="selected">数据对比</a></li>
		<!-- else-->
			<li class="item"><a href="#/item/item~3">数据对比</a></li>
		<!-- /if-->
		<!-- if: ${types} == 4-->
			<li class="last-item item"><a href="javascript:void(0)" class="selected">术后变化</a></li>
		<!-- else-->
			<li class="last-item item"><a href="#/item/item~4">术后变化</a></li>
		<!-- /if-->
	</ul>
</div>
<div class="list-container">
	<!-- if: ${types} == 1-->
		<img src="${path}/common/img/design-history.jpg" alt="history">
		<img src="${path}/common/img/design-material.jpg" alt="material">
		<img src="${path}/common/img/design-surface.jpg" alt="surface">
		<img src="${path}/common/img/design-composition.jpg" alt="composition">
		<img src="${path}/common/img/design-channelling.jpg" alt="channelling">
	<!-- elif: ${types} == 2-->
		<div class="type2">
			<img src="${path}/common/img/special-death.jpg" alt="" class="special-death">
			<a href="#/detail/detail~1" class="special-death-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-attack.jpg" alt="attack" class="special-attack">
			<a href="#/detail/detail~2" class="special-attack-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-cures.jpg" alt="cures" class="special-cures">
			<a href="#/detail/detail~3" class="special-cures-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-resonance.jpg" alt="resonance" class="pecial-resonance">
			<a href="#/detail/detail~4" class="pecial-resonance-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-regain.jpg" alt="regain" class="special-regain">
			<a href="#/detail/detail~5" class="special-regain-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-affect.jpg" alt="affect" class="special-affect">
			<a href="#/detail/detail~6" class="special-affect-a"></a>
		</div>
	<!-- elif: ${types} == 3-->
		<hr style="height:1px; border:none; border-top:1px solid #e1e1e1;">
		<div class="wrap-table">
			<table class="contrast-table" border=0 cellspacing=5 cellpadding=0>
				<tr>
					<th><img src="${path}/common/img/old.jpg" alt=""></th>
					<th><img src="${path}/common/img/new.jpg" alt=""></th>
				</tr>
				<tr>
					<td><p>传统金属支架</p></td>
					<td><p>可溶解支架</p></td>
				</tr>
				<tr>
					<td>
						<p>金属支架永久存在</p>
						<p>终生服用阿司匹林</p>
						<p>术后再狭窄率5%-10%</p>
					</td>
					<td>
						<p>两年后完全溶解</p>
						<p>服用阿司匹林两年</p>
						<p>术后再狭窄率&lt;4%</p>
					</td>
				</tr>
				<tr>
					<td>
						<p>再次放支架的难度高</p>
						<p>受磁场影响较大</p>
						<p>血管壁支撑力良好</p>
					</td>
					<td>
						<p>不影响再次放支架</p>
						<p>不受磁场影响</p>
						<p>血管壁支撑力良好</p>
					</td>
				</tr>
				<tr>
					<td>
						<p>血管功能丧失</p>
						<p>持续血管炎症反应</p>
						<p>异物反应较少</p>
					</td>
					<td>
						<p>完全恢复血管功能</p>
						<p>血管炎症反应小，2年后消失</p>
						<p>异物反应极少，2年后消失</p>
					</td>
				</tr>
			</table>
		</div>
	<!-- elif: ${types} == 4-->
		<hr style="height:1px; border:none; border-top:1px solid #e1e1e1;">
		<img src="${path}/common/img/three_phases.jpg">
		<img src="${path}/common/img/constrast.jpg">

	<!-- /if-->
</div>
<div class="footer-nav">
	<ul class="item-list">
		<li class="first-item item"><a href="#/other/other~1">关于我们</a></li>
		<li class="item"><a href="#/other/other~2">常见问题</a></li>
		<li class="item"><a href="#/other/other~3">就医指南</a></li>
		<li class="last-item item"><a href="#/other/other~4">意见反馈</a></li>
	</ul>
</div>
