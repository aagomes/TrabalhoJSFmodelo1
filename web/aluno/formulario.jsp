<%-- 
    Document   : formulario
    Created on : 28/09/2016, 12:35:18
    Author     : alexandre
--%>

<%@page import="br.edu.ifsul.dao.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="alunoDAO" scope="session"
             type="AlunoDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Aluno</title>
        <script>
            function doSalvar(){
                document.getElementById("acao").value = 'salvar';
                document.getElementById("form").submit();
            }
            function doCancelar(){
                document.getElementById("acao").value = 'cancelar';
                document.getElementById("form").submit();
            }            
        </script>                        
    </head>
    <body>
        <h2>Edição de Aluno</h2>
        <h2><%=alunoDAO.getMensagem()%></h2>
        <form name="form" id="form" action="ServletAluno" method="POST">

            Nome:  <input type="text" name="nome" id="nome"
                           value="<%= alunoDAO.getObjetoSelecionado().getNome() == null
                           ? "" : alunoDAO.getObjetoSelecionado().getNome() %>"
                           size="40" /><br/>
            Email:  <input type="text" name="email" id="email"
                           value="<%= alunoDAO.getObjetoSelecionado().getEmail()== null
                           ? "" : alunoDAO.getObjetoSelecionado().getEmail() %>"
                           size="40" /><br/>
            Nascimento:  <input type="date" name="nascimento" id="nascimento"
                           value="<%= alunoDAO.getObjetoSelecionado().getNascimento()== null
                           ? "" : alunoDAO.getObjetoSelecionado().getNascimento() %>"
                           size="40" /><br/>
            
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/> 
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>

