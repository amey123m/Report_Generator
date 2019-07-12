<%-- 
    Document   : report
    Created on : 10 Jul, 2019, 2:19:31 PM
    Author     : Amey
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String client=request.getParameter("client");
            String test=request.getParameter("test");
            String scope=request.getParameter("scope");
            String totalvuln=request.getParameter("totalvuln");
            String highvuln=request.getParameter("highvuln");
            String meduimvuln=request.getParameter("meduimvuln");
            String lowvuln=request.getParameter("lowvuln");
            String informationalvuln=request.getParameter("informationalvuln");
            String Representative=request.getParameter("nrep");
            session.setAttribute("client", client);
            session.setAttribute("test", test);
            session.setAttribute("scope", scope);
            session.setAttribute("totalvuln", totalvuln);
            session.setAttribute("highvuln", highvuln);
            session.setAttribute("meduimvuln", meduimvuln);
            session.setAttribute("lowvuln", lowvuln);
            session.setAttribute("informationalvuln", informationalvuln);
            session.setAttribute("Representative", Representative);
                     
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
            Connection conn= DriverManager.getConnection("jdbc:ucanaccess://E:\\my folder\\projects\\ReportGenerator\\CyberSecurity1.accdb");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM vuln;");
        %>
        <div class="modal-dialog" style="width:900px; padding:25px 25px;">
            <div class="modal-content">
                <div class="modal-header" style="padding:25px 25px;">
                    <h4><center>REGISTER</center></h4>
                </div>
                <div class="modal-body" style="padding:25px 25px;">
                    <form action="reg.jsp">
                        <table class="table-bordered" width="795" >
                            <th colspan="8" style="font-size: 20; font-family: sans-serif; font-style: initial"><%=client%></th>
                            <tr>
                                <td colspan="6"><b>Test Performed</b></td>
                                <td colspan="3"><%=test%></td>
                            </tr>
                            <tr>
                                <td colspan="6"><b>Scope of Test</b></td>
                                <td colspan="3"><%=scope%></td>
                            </tr>
                            <tr>
                                <td colspan="6"><b>Total Vulnerabilities</b></td>
                                <td colspan="3"><%=totalvuln%></td>
                            </tr>
                            <tr>
                                <td style="background-color: red;"><font color="white"><b>High</b></font></td>
                                <td><%=highvuln%></td>
                                <td style="background-color: orangered"><font color="white"><b>Medium</b></font></td>
                                <td><%=meduimvuln%></td>
                                <td style="background-color: #d58512"><font color="white" align="center"><b>Low</b></font></td>
                                <td><%=lowvuln%></td>
                                <td style="background-color: blue;"><font color="white"><b>Informational</b></font></td>
                                <td><%=informationalvuln%></td>
                            </tr>
                        </table>
                        <br>
                        
                    </form>
                </div>
            </div>
        </div>
        <br>
        <div class="modal-dialog" style="width:1200px; padding:25px 25px;">
            <div class="modal-content">
                <div class="modal-header" style="padding:25px 25px;">
                    <h4><center>VULNERABILITIES</center></h4>
                </div>
                <div class="modal-body" style="padding:25px 25px;">
                    <form action="repo.jsp">
                        <table class="table-bordered" width="1000" >
                            <tr>
                                <td width="50" align="center"></td>
                                <td style="background-color: chartreuse" width="100" align="center"><b>Sr No.</b></td>
                                <td style="background-color: chartreuse" width="365" align="center"><b>Vulnerability</b></td>
                                <td style="background-color: chartreuse" width="500" align="center"><b>Description</b></td>
                                <td style="background-color: chartreuse" width="150" align="center"><b>Category</b></td>
                                <td style="background-color: chartreuse" width="150" align="center"><b>Risk Rating</b></td>
                                <td style="background-color: chartreuse" width="365" align="center"><b>Remediation</b></td>
                            </tr>
                            <%
                                while(rs.next())
                                {%>
                                    <tr>
                                        <td align="center"><input type="checkbox" name="srno" value="<%=rs.getString(1)%>"></td>
                                        <td align="center"><%=rs.getString(1)%></td>
                                        <td align="center"><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(6)%></td>
                                        <td align="center"><%=rs.getString(3)%></td>
                                        <td align="center"><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                              <%}
                            %>
                        </table>
                        <br>
                        <button type="submit" class="btn btn-success btn-block">Login</button>
                        <button type="reset" class="btn btn-danger btn-block">Reset</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
