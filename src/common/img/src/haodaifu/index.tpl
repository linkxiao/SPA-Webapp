<link rel="stylesheet" href="${path}/css/home.less">
	<!-- if: ${site} == "hdf" -->
	<div class="container">
		<div class="doctor-head">
			<div class="header btn-back">
				<span class="icon-icon_1" onclick="javascript:history.back();"></span>
			</div>
			<div class="doctor-head-img">
				<div>
					<img src="${doctor.avatar}" alt="">
				</div>
			</div>
			<div class="doctor-head-info">
				<div class="doctor-info-name">${doctor.name}</div>
				<div class="doctor-info-title">
					<!-- if: ${doctor.medTitle} != "" -->
					<span class="doctor-info-job">${doctor.medTitle}</span>
					<!-- /if -->
					<!-- if: ${doctor.eduTitle} != ""-->
					<span class="doctor-info-level">${doctor.eduTitle}</span>
					<!-- /if -->
				</div>
				<div class="doctor-info-hospital">
					<span>${doctor.hospitalName}</span>
					<span>${doctor.departName}</span>
				</div>
				<div class="doctor-info-certification">
					<span class="icon-logo haodaifu-logo"></span>
					<span class="haodaifu-title">服务由好大夫在线提供</span>
				</div>
			</div>
		</div>
		<div class="content-op">
			<div class="op-#/item/item-wrap">
				<a href="${doctor.orderLink}">
					<div class="op-#/item/item-1">
						<!-- <i class="c-icon">&#xe780</i> -->
						<span class="icon-icon_7"></span>
						<span>预约加号</span>
					</div>
				</a>
				<!-- if: ${doctor.onlineConsult} == ""-->
				<a class="gray">
				<!-- else -->
				<a href="${doctor.onlineConsult}">
				<!-- /if -->
					<div class="op-#/item/item-2">
						<span class="icon-icon_3"></span>
						<span>网络咨询</span>
					</div>
				</a>
			</div>
			<div class="op-#/item/item-wrap">
				<!-- if: ${doctor.phoneConsult} == ""-->
				<a class="gray">
				<!-- else -->
				<a href="${doctor.phoneConsult}">
				<!-- /if -->
					<div class="op-#/item/item-3">
						<span class="icon-icon_4"></span>
						<span>电话咨询</span>
					</div>
				</a>
				<!-- if: ${doctor.commentLink} == ""-->
				<a class="gray">
				<!-- else -->
				<a href="${doctor.commentLink}">
				<!-- /if -->
					<div class="op-#/item/item-4">
						<span class="icon-icon_6"></span>
						<span>用户评价</span>
					</div>
				</a>
			</div>
			<div class="op-#/item/item-wrap">
				<a href="${doctor.doctorLink}">
					<div class="op-#/item/item-5">
						<span class="icon-icon_2"></span>
						<span>医生简介</span>
					</div>
				</a>
				<a href="#/haodaifu/hospital">
					<div class="op-#/item/item-6">
						<span class="icon-icon_5"></span>
						<span>医院简介</span>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- /if -->
