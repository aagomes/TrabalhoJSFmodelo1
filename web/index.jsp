<%-- 
    Document   : index
    Created on : 28/09/2016, 08:22:29
    Author     : alexandre
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page - Trabalho 1</title>
    </head>
    <body>
        <h2>
            <%
                Calendar agora = Calendar.getInstance();
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss:SS");
                out.write("Data e hora atual:"+sdf.format(agora.getTime()));
            %>            
        </h2>
        <h1>Trabalho JSP / JSF - DAW</h1>
    </body>
</html>