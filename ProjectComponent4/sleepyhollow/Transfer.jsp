<%@page import="java.sql.*"%>
<%

//    Request input parameters: A source ssn, a destination ssn, transfer amount
//    Response output: A ?transfer completed? message indicating the successful transfer execution from the current employee ssn (ssn1) to a destination employee ssn account (ssn2).
//    URL format: http://127.0.0.1:8080/sleepyhollow/Transfer.jsp?ssn1=srcssn&ssn2=destssn&amount=transferamount
//    Sample URL: http://127.0.0.1:8080/sleepyhollow/Transfer.jsp?ssn1=123-56-8901&ssn2=678-99-6568&amount=200

    String amount =  request.getParameter("amount");
    String ssn1 =  request.getParameter("ssn1");
    String ssn2 =  request.getParameter("ssn2");
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"nbogired","ushemooz");
    Statement stmt = conn.createStatement();

    ResultSet rs = stmt.executeQuery("select from_ssn, to_ssn, amount from Transfer where from_ssn='"+ssn1+"' and to_ssn='"+ssn2+"' and amount="+amount);

    if(rs.next()){
        out.print("Transfer Executed Successfully");
    } else {
      out.print("Transfer Failed");
    }
    conn.close();
%>
