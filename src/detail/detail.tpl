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
		<i class="current-region">就医地域：${region}</i>更多<i class="more-icon"></i>
	</span>
</div>
<div class="nav">
	<ul class="item-list">
		<!-- if: ${types} == 1-->
			<li class="first-item item"><a href="javascript:void(0)" class="selected">支架设计</a></li>
		<!-- else-->
			<li class="first-item item"><a href="#/detail/detail~1">支架设计</a></li>
		<!-- /if-->
		<!-- if: ${types} == 2-->
			<li class="item"><a href="javascript:void(0)" class="selected">优势特点</a></li>
		<!-- else-->
			<li class="item"><a href="#/detail/detail~2">优势特点</a></li>
		<!-- /if-->
		<!-- if: ${types} == 3-->
			<li class="item"><a href="javascript:void(0)" class="selected">数据对比</a></li>
		<!-- else-->
			<li class="item"><a href="#/detail/detail~3">数据对比</a></li>
		<!-- /if-->
		<!-- if: ${types} == 4-->
			<li class="last-item item"><a href="javascript:void(0)" class="selected">术后变化</a></li>
		<!-- else-->
			<li class="last-item item"><a href="#/detail/detail~4">术后变化</a></li>
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
			<a href="javascript:alert(11)" class="special-death-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-attack.jpg" alt="attack" class="special-attack">
			<a href="javascript:alert(22)" class="special-attack-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-cures.jpg" alt="cures" class="special-cures">
			<a href="javascript:alert(33)" class="special-cures-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-resonance.jpg" alt="resonance" class="pecial-resonance">
			<a href="javascript:alert(44)" class="pecial-resonance-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-regain.jpg" alt="regain" class="special-regain">
			<a href="javascript:alert(55)" class="special-regain-a"></a>
		</div>
		<div class="type2">
			<img src="${path}/common/img/special-affect.jpg" alt="affect" class="special-affect">
			<img src="${path}/common/img/special-affect.jpg" alt="affect" class="special-affect">
			<a href="javascript:alert(66)" class="special-affect-a"></a>
		</div>
	<!-- /if-->
</div>
<div class="footer-nav">
	<ul class="item-list">
		<li class="first-item item"><a href="javascript:void(0)">关于我们</a></li>
		<li class="item"><a href="javascript:void(0)">常见问题</a></li>
		<li class="item"><a href="javascript:void(0)">就医指南</a></li>
		<li class="last-item item"><a href="javascript:void(0)">意见反馈</a></li>
	</ul>
</div>
