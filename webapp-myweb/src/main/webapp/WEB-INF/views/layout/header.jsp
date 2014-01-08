<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}"><spring:message code="com.izerui.default.title" ></spring:message></a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}?language=zh_CN">中文</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}?language=en_US">english</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>

