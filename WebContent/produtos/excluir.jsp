<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="util.Conexao"%>  

<% String id = request.getParameter("id"); %>

<%
    Statement st = null;
    ResultSet rs = null;

    try {
        
        st = new Conexao().conectar().createStatement();
        st.executeUpdate("DELETE from produtos where id = '" + id + "'");
        
        out.print("Exclu�do com Sucesso!!");
        
    } catch (Exception e) {
        out.print(e);
    }

%>