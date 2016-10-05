<%-- 
    Document   : formulario
    Created on : 28/09/2016, 12:35:18
    Author     : alexandre
--%>

<%@page import="br.edu.ifsul.modelo.Especialidade"%>
<%@page import="br.edu.ifsul.dao.EspecialidadeDAO"%>
<%@page import="br.edu.ifsul.dao.ProfessorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="professorDAO" scope="session"
             type="ProfessorDAO"/>
             
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edição de Professores</title>
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
        <h2>Edição de Professores</h2>
        <h2><%=professorDAO.getMensagem()%></h2>

        <form name="form" id="form" action="ServletProfessor" method="POST">

            Titulacao:  <input type="text" name="titulacao" id="titulacao"
                           value="<%= professorDAO.getObjetoSelecionado().getTitulacao() == null
                           ? "" : professorDAO.getObjetoSelecionado().getTitulacao() %>"
                           size="40" /><br/>
            Topicos Interesse:  <input type="text" name="topicosInteresse" id="topicosInteresse"
                           value="<%= professorDAO.getObjetoSelecionado().getTopicosInteresse()== null
                           ? "" : professorDAO.getObjetoSelecionado().getTopicosInteresse() %>"
                           size="80" /><br/>
            Especialidade:  <select id="especialidade">    
                                <option value="1">1</option> 
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select><br/>
        </div>
            <input type="button" value="Salvar" name="btnSalvar" onclick="doSalvar()"/> 
            <input type="button" value="Cancelar" name="btnCancelar" onclick="doCancelar()"/>
            <input type="hidden" name="acao" id="acao" value=""/>
        </form>
    </body>
</html>

