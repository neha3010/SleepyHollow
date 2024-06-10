<%@page import="java.sql.*"%>
<%

//    Request input parameters: an award id and an employee ssn
//    Response output: the award date and award center name for the specified (award id, employee ssn) pair.
//    URL format: http://127.0.0.1:8080/sleepyhollow/GrantedDetails.jsp?awardid=certainawardid&ssn=certainssn
//    Sample URL: http://127.0.0.1:8080/sleepyhollow/GrantedDetails.jsp?awardid=5000&ssn=123-56-8901

    String award_id =  request.getParameter("awardid");
    String ssn =  request.getParameter("ssn");

    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    Connection conn = DriverManager.getConnection(url,"nbogired","ushemooz");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select g.award_date, a.center_name from Granted g, Award_Centers a where g.center_id=a.center_id and g.ssn='"+ssn+"' and g.award_id="+award_id);

    String result = "";
    while(rs.next()){
        result += rs.getObject("award_date")+","+rs.getObject("center_name")+"#";
    }
    conn.close();
    out.print(result);

%>
