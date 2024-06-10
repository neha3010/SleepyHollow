<%@page import="java.sql.*"%>
<%

//    Request input parameters: An employee ssn
//    Response output: the distinct award ids belonging to the specified employee ssn.
//    URL format: http://127.0.0.1:8080/sleepyhollow/AwardIds.jsp?ssn=certainssn
//    Sample URL: http://127.0.0.1:8080/sleepyhollow/AwardIds.jsp?ssn=123-56-8901


    String ssn =  request.getParameter("ssn");
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"nbogired","ushemooz");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select distinct(award_id) from Granted where ssn='"+ssn+"'");

    String result = "";

    while(rs.next()){
        result += rs.getObject("award_id")+"#";
    }
    conn.close();
    out.print(result);

%>
