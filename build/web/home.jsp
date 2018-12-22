<%-- 
    Document   : home
    Created on : Jun 23, 2015, 2:52:04 PM
    Author     : Nancy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">
    #trans{ background: transparent url(images/main.png);
            color: #666666;
            border-radius:20px;
          }
          .res{
               height:auto;
               
              }
</style>
<html>
    <head>
        <title>Home</title>
    </head>
    <body style="height: auto;width: 100%" background="images/back.jpg" >

        <form action="#"  class="res">
            <table  id="trans" width="1000px" align="center" class="res">

            <tbody>
                <tr>
                    <td colspan="2" class="res" ><%@ include file="template/header.html"%></td>

                </tr>
                <tr>
                    <td colspan="2" class="res" style="border-radius:10px; border-shadow:100px;"><%@ include file="template/menu.html"%></td>

                </tr>
                <tr>
                    <td class="res"> <%@ include file="news.jsp"%></td>
                    <td style="height: auto; width: 80%"> <%@ include file="template/slide.html"%></td>
                </tr>
                <tr>
                    <td colspan="2" class="res">
                        <%@ include file="template/container.htm"%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="res"><%@ include file="template/footer.html"%></td>

                </tr>
            </tbody>
        </table>
      </form>
        
    </body>
</html>
