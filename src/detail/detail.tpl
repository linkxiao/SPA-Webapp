<!-- var: types = location.hash.split("~")[1]-->
<!-- if: ${types} == 1-->
<!-- var: headerText = "告别终身服药"-->
<!-- /if -->
<!-- if: ${types} == 2-->
<!-- var: headerText = "有效降低心绞疼发作"-->
<!-- /if -->
<!-- if: ${types} == 3-->
<!-- var: headerText = "再狭窄率大幅降低"-->
<!-- /if -->
<!-- if: ${types} == 4-->
<!-- var: headerText = "安心做核磁共震"-->
<!-- /if -->
<!-- if: ${types} == 5-->
<!-- var: headerText = "彻底恢复血管功能"-->
<!-- /if -->
<!-- if: ${types} == 6-->
<!-- var: headerText = "再手术完全无影响"-->
<!-- /if -->
<!-- if: ${types} == 7-->
<!-- var: headerText = "就医地域"-->
<!-- /if -->
<!-- if: ${types} == 8-->
<!-- var: headerText = "最新病例"-->
<!-- /if -->
<header data-type="${types}">
	<a href="javascript:history.back();" class="btn-back"><i class="gt-icon"></i></a>
	<span>${headerText}</span>
	<a href="" class="home"><i class="home-icon"></i></a>
</header>

<div class="list-container">
	<!-- if: ${types} == 1-->
		<h5>终身服药的痛苦</h5>

	<!-- elif: ${types} == 2-->
		<h5>心绞痛的危害</h5>

	<!-- elif: ${types} == 3-->
		<h5>再狭窄危险</h5>

	<!-- elif: ${types} == 4-->
		<h5>安心做核磁共震</h5>

  <!-- elif: ${types} == 5-->
    <h5>恢复血管功能的意义</h5>


	<!-- elif: ${types} == 6-->
		<h5>再手术完全无影响</h5>

	<!-- elif: ${types} == 7-->
		<h5>就医地域</h5>
		<img src="${path}/common/img/area-banner.jpg"

	<!-- elif: ${types} == 8-->
		<h5>最新案例</h5>
		<img src="${path}/common/img/area-banner.jpg"

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
