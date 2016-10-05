<%-- 
    Document   : listar
    Created on : 28/09/2016, 12:35:18
    Author     : alexandre
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.edu.ifsul.modelo.Instituicao"%>
<%@page import="br.edu.ifsul.dao.InstituicaoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="instituicaoDAO" scope="session"
             type="InstituicaoDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de Instituicao</title>
    </head>
    <body>
        <a href="../index.html">Inicio</a>
        <h2>Instituicoes</h2>
        <h2><%=instituicaoDAO.getMensagem()%></h2>
        <a href="ServletInstituicao?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Ano de Fundacao</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                  for(Instituicao i :instituicaoDAO.getLista() )  {
                      
                %>  
                <tr>
                    <td><%=i.getId()%></td>
                    <td><%=i.getNome()%></td>
                    <td><%=i.getAnoFundacao()%></td>
                    <td><a href="ServletInstituicao?acao=alterar&id=<%=i.getId()%>">Alterar</a></td>
                    <td><a href="ServletInstituicao?acao=excluir&id=<%=i.getId()%>">Excluir</a></td>
                </tr>
                <%
                    }
                %>    
                    
            </tbody>
        </table>
    </body>
</html>
