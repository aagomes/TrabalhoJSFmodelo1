<%-- 
    Document   : listar
    Created on : 28/09/2016, 12:35:18
    Author     : alexandre
--%>

<%@page import="br.edu.ifsul.modelo.Professor"%>
<%@page import="br.edu.ifsul.dao.ProfessorDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="professorDAO" scope="session"
             type="ProfessorDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Listagem de professores</title>
    </head>
    <body>
        <a href="../index.html">Inicio</a>
        <h2>Professores</h2>
        <h2><%=professorDAO.getMensagem()%></h2>
        <a href="ServletProfessor?acao=incluir">Incluir</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Titulacao</th>
                    <th>Topicos Interesse</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                  for(Professor p :professorDAO.getLista() )  {
                %>  
                <tr>
                    <td><%=p.getTitulacao()%></td>
                    <td><%=p.getTopicosInteresse()%></td>
                    <td><a href="ServletProfessor?acao=alterar&id=<%=p.getTitulacao()%>">Alterar</a></td>
                    <td><a href="ServletProfessor?acao=excluir&id=<%=p.getTitulacao()%>">Excluir</a></td>
                </tr>
                <%
                    }
                %>    
                    
            </tbody>
        </table>
    </body>
</html>
