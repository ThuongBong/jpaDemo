<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/23/2023
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Demo</title>
</head>
<body>
<%! int a = 100; %>
<%
    int b = 10;
    int c = 200;
    int d = b * c;
    request.setAttribute("d", d);
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    out.write("<h1>Name: " + name + "</h1>");
    out.write("<h1>Age: " + age + "</h1>");
    String sessionName = (String) session.getAttribute("session");
    String applicationName = (String) application.getAttribute("application");
    String pageScope = (String) pageContext.getAttribute("pageScope", PageContext.PAGE_SCOPE);
    String requestScope = (String) pageContext.getAttribute("requestScope", PageContext.REQUEST_SCOPE);
    String sessionScope = (String) pageContext.getAttribute("sessionScope",PageContext.SESSION_SCOPE);
    String applicationScope = (String) pageContext.getAttribute("applicationScope", PageContext.APPLICATION_SCOPE);

%>

<h1><%= 30+ 40 + 20 %></h1>
<h1>A: <%= a %></h1>
<h1>D: <%= d %></h1>
<h1>Session: <%= sessionName %></h1>
<h1>Application: <%= applicationName %></h1>
<h1>PageScope: <%= pageScope %></h1>
<h1>requestScope: <%= requestScope %></h1>
<h1>sessionScope: <%= sessionScope %></h1>
<h1>applicationScope: <%= applicationScope %></h1>
<h1>initParam: <%= config.getInitParameter("testInit") %></h1>

</body>
</html>
