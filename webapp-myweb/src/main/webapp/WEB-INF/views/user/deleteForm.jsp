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

<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/user/delete"
		modelAttribute="userForm" class="form-horizontal">
		<fieldset>
			<legend>Delete User</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>
				<div class="col col-sm-10">${userForm.name}</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">${userForm.email}</div>
			</div>
			<div class="form-group">
				<form:label path="birth" class="col col-sm-2 control-label">User Birth</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${userForm.birth}" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="password" class="col col-sm-2 control-label">User Password</form:label>
				<div class="col col-sm-10">******</div>
			</div>
			<div class="form-group">
				<form:label path="confirmPassword"
					class="col col-sm-2 control-label">User Password (confirm)</form:label>
				<div class="col col-sm-10">******</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="id" value="${user.id}" />
					<form:hidden path="version" value="${user.version}" />
					<input type="submit" class="btn btn-danger" name="delete"
						value="Delete" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>