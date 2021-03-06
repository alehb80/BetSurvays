<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link href="../../resources/css/st1.css" rel="stylesheet" type="text/css">
    <title>Login Page</title>
</head>
<body onload='document.loginForm.j_username.focus();'>
<h2>Accedi:</h2>

<%

    String errorString = (String)request.getAttribute("error");
    if(errorString != null && errorString.trim().equals("true")){
        out.println("* E-mail o Password incorretti. Riprova usando E-mail e Password corretti.");
    }
%>

<form name='loginForm' action="<c:url value='j_spring_security_check' />"
      method='POST'>

    <table>
        <tr>
            <td><h4>E-mail:</h4></td>
            <td><input type='text' name='j_username' value=''>
            </td>
        </tr>
        <tr>
            <td><h4>Password:</h4></td>
            <td><input type='password' name='j_password' />
            </td>
        </tr>
        <tr>
            <td><input name="submit" type="submit"
                       value="Accedi" />
            </td>
            <td><input name="reset" type="reset" />
            </td>
        </tr>
    </table>

</form>
</body>
</html>