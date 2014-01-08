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

<h2>User List</h2>
${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${errorMessage}</div>
	</c:if>

	<div class="well">
		<a href="${pageContext.request.contextPath}/user/create?form"
			class="btn btn-primary">New User</a><br> <br>
		<form:form action="${pageContext.request.contextPath}/user/search"
			method="get" modelAttribute="userSearchForm"
			class="form-inline my-inline">
			<form:input path="name" class="form-control" />
			<input type="submit" value="Search" class="btn btn-default" />
		</form:form>
	</div>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>email</th>
				<th>birth</th>
				<th>actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${page.content}">
				<tr>
					<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td>${user.birth}</td>
					<td><form:form
							action="${pageContext.request.contextPath}/user"
							class="form-inline">
							<input type="hidden" name="id" value="${user.id}" />
							<input type="submit" class="btn btn-default"
								name="redirectToUpdate" value="Update" />
							<input type="submit" class="btn btn-danger"
								name="redirectToDelete" value="Delete" />
						</form:form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<util:pagination page="${page}" query="name=${param.name}" />
</div>
