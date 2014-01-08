<%--

    Copyright (C) 2014 lyh (liuyuhua69@gmail.com)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

            http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
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

