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
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
</head>
<body onload='document.f.j_username.focus();'>
    <h3>Login with Username and Password</h3>
    <form name='f'
        action='${pageContext.request.contextPath}/j_spring_security_check'
        method='POST'>
        <table>
            <tr>
                <td>User:</td>
                <td><input type='text' name='j_username'
                    value='demo'>(demo)</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='j_password'
                    value="demo" />(demo)</td>
            </tr>
            <tr>
                <td colspan='2'><input name="submit" type="submit"
                    value="Login" /></td>
            </tr>
        </table>
    </form>
</body>
</html>