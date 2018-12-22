<%-- 
    Document   : delques
    Created on : Aug 15, 2015, 11:56:19 AM
    Author     : Nancy
--%>


<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet"type="text/css" media="all" href="design.css"/>


<html>
   <head>
         <title>Questions</title>
    <style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;

          }
</style>
                 <%
      HttpSession hs = request.getSession();
      String uname = (String)hs.getAttribute("aname");
      String msg = request.getParameter("msg");
      int abc;
      if(uname!=null)
         abc = 0;
      else
          response.sendRedirect("temp.jsp");

    %>
    </head>

    <body background="images/back.jpg">
        
      <table  id="trans" width="1000px" align="center">

            <tbody>
                <tr>
                    <td colspan="2" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/adminmenu.jsp"%></td>

                </tr>
                <%
                 if(msg!=null)
                 {
                %>
                <tr>
                    <td style=" color: red;" align="center">
                        <br><br> Deleted Successfully! ! !
                    </td>
                </tr>
                <%}%>
                <tr> <td> <br><br>
                        <table  border="1" width="75%" align="center" style="color:#339966;" cellpadding="3" cellspacing="0">




 <tr bgcolor="#dfecf7" style="font-weight:bold; height: 10px">
     <th>Subject code </th><th> Topic code </th><th> Question </th><th> Correct answer </th><th> level </th>
 </tr>
  
	 <c:forEach var="d" items="${sessionScope.data}">
	 <tr>
		 <td align="center"><c:out value="${d.scode}"/></td>
		 <td align="center"><c:out value="${d.topic.tcode}"/></td>
                 <td align="center"><c:out value="${d.ques}"/></td>
                 <td align="center"><c:out value="${d.cans}"/></td>
                 <td align="center"><c:out value="${d.clev}"/></td>
                 <td><a href="DelQuesServ.do?qid=${d.qid}">Delete</a></td>
	 </tr>
	 </c:forEach>

 </table>
    </td>
        </tr>


        <tr><td><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> <%@ include file="template/footer.html"%></td></tr>
            </tbody>
          </table>

    </body>
</html>

     
