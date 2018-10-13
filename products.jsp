  <%-- 
    Document   : products
    Created on : 2018-10-11, 9:11:12
    Author     : peng
--%>
<%@ page contentType="text/html" language="java" import="java.util.*"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

            <ol>
            <c:forEach var="li" items="${filelist}">
                        <c:url value="DownLoadServlet" var="downurl">
                            <c:param name="filename" value="${li['create_time']}_${li['filename']}"></c:param>
                        </c:url>
                        <li>
                            <c:out value="${li['info']}"></c:out>
                            <a href="${downurl}"> [download]</a>
                        </li>
            </c:forEach>
            </ol>
    </body>
</html>
