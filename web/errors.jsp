<%-- 
    Document   : errors
    Created on : Feb 27, 2015, 10:55:56 AM
    Author     : Nancy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
    </head>
    <body background="images/back.jpg">
        <h1><% out.println(request.getParameter("msg"));%></h1>
    </body>
</html>
