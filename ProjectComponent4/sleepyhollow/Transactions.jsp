<%@page import="java.sql.*"%>
<%

//    Request input parameters:  An employee ssn
//    Response output: the transaction id, transaction date and amount for all the transactions belonging to the specified employee ssn.
//    URL format: http://127.0.0.1:8080/sleepyhollow/Transactions.jsp?ssn=certainssn
//    Sample URL: http://127.0.0.1:8080/sleepyhollow/Transactions.jsp?ssn=123-56-8901


    String ssn =  request.getParameter("ssn");
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"nbogired","ushemooz");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select trans_id, t_date, amount from Transactions where ssn='"+ssn+"'");

    String result = "";

    while(rs.next()){
        result += rs.getObject("trans_id")+","+rs.getObject("t_date")+","+rs.getObject("amount")+"#";
    }
    conn.close();
    out.print(result);

%>
