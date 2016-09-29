<%-- 
    Document   : Especialidade
    Created on : 28/09/2016, 12:35:18
    Author     : alexandre
--%>

<%@page import="br.edu.ifsul.dao.EspecialidadeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="especialidadeDAO" scope="session"
             type="EspecialidadeDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Especialidade</title>
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
        <h2>Edição de Especialidade</h2>
        <h2><%=especialidadeDAO.getMensagem()%></h2>
        <form name="form" id="form" action="ServletEspecialidade" method="POST">

            Nome:  <input type="text" name="nome" id="nome"
                           value="<%= especialidadeDAO.getObjetoSelecionado().getNome() == null
                           ? "" : especialidadeDAO.getObjetoSelecionado().getNome() %>"
                           size="40" /><br/>            
            
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/> 
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>

