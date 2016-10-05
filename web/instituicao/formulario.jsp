<%-- 
    Document   : formulario
    Created on : 28/09/2016, 12:35:18
    Author     : alexandre
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.edu.ifsul.dao.InstituicaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="instituicaoDAO" scope="session"
             type="InstituicaoDAO"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Instituicao</title>
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
        <h2>Edição de Instituicao</h2>
        <h2><%=instituicaoDAO.getMensagem()%></h2>
        <form name="form" id="form" action="ServletInstituicao" method="POST">
            
            Nome:  <input type="text" name="nome" id="nome"
                           value="<%= instituicaoDAO.getObjetoSelecionado().getNome() == null
                           ? "" : instituicaoDAO.getObjetoSelecionado().getNome() %>"
                           size="40" /><br/>  
            Ano Fundacao: <input type="date" name="anoFundacao" id="anoFundacao"
                                 value="<%= instituicaoDAO.getObjetoSelecionado().getAnoFundacao() == null
                                         ? "" : instituicaoDAO.getObjetoSelecionado().getAnoFundacao() %>"
                                         /><br/>
            
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/> 
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>

