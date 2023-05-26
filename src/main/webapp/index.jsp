<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<%
    session.setAttribute("session", "session implicit object");
    application.setAttribute("application", "application implicit object");
    pageContext.setAttribute("pageScope", "page scope object", PageContext.PAGE_SCOPE);
    pageContext.setAttribute("sessionScope", "session scope object", PageContext.SESSION_SCOPE);
    pageContext.setAttribute("requestScope", "request scope object", PageContext.REQUEST_SCOPE);
    pageContext.setAttribute("applicationScope", "application scope object", PageContext.APPLICATION_SCOPE);

//    request.getRequestDispatcher("demoJSP?name=T2108E&age=22").forward(request,response);
%>

<br/>
<a href="hello-servlet">Hello Servlet</a>
<a href="demoJSP.jsp?name=T2108E&age=22">demo JSP</a>
<br/>
<a href="User/index.jsp">User</a>

</body>
</html>