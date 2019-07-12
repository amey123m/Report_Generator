<%-- 
    Document   : repo
    Created on : 11 Jul, 2019, 5:33:58 PM
    Author     : Amey
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.jfree.chart.JFreeChart" %>
<%@page import="org.jfree.chart.ChartUtilities" %>
<%@page import="org.jfree.chart.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
        <script>
            function exportHTML(){
                var header = "<html xmlns:o='urn:schemas-microsoft-com:office:office' "+
                    "xmlns:w='urn:schemas-microsoft-com:office:word' "+
                    "xmlns='http://www.w3.org/TR/REC-html40'>"+
                    "<head><meta charset='utf-8'><title>Export HTML to Word Document with JavaScript</title></head><body><br>";
                var footer = "<br></body></html>";
                var sourceHTML = header+document.getElementById("source-html").innerHTML+footer;                
                var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);
                var fileDownload = document.createElement("a");
                document.body.appendChild(fileDownload  );
                fileDownload.href = source;
                fileDownload.download = 'document.doc';
                fileDownload.click();
                document.body.removeChild(fileDownload);
            }
        </script>
    </head>
    <body>
        <%
            String[] vul;
            String client=(String)session.getAttribute("client");
            String test=(String)session.getAttribute("test");
            String scope=(String)session.getAttribute("scope");
            String totalvuln=(String)session.getAttribute("totalvuln");
            String highvuln=(String)session.getAttribute("highvuln");
            String meduimvuln=(String)session.getAttribute("meduimvuln");
            String lowvuln=(String)session.getAttribute("lowvuln");
            String informationalvuln=(String)session.getAttribute("informationalvuln");
            String Representative=(String)session.getAttribute("Representative");
            
            vul = request.getParameterValues("srno");
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
            Connection conn= DriverManager.getConnection("jdbc:ucanaccess://E:\\my folder\\projects\\ReportGenerator\\CyberSecurity1.accdb");
            Statement st = conn.createStatement();%>
            <div id="source-html">
            <div class="modal-dialog" style="width:700px; padding:25px 25px;">
                <div class="modal-content">
                    <div class="modal-header" style="padding:25px 25px;">
                        <h4><center>REGISTER</center></h4>
                    </div>
                    <div class="modal-body" style="padding:25px 25px;">
                        <table class="table-bordered" width="600" >
                            <td colspan="8" style="font-size: 20; font-family: sans-serif; font-weight: bold;" align="center"><h3><font align="center"><b><%=client%></b></font></h3></td>
                            <tr>
                                <td colspan="6" align="center" style="font-size: medium;"><b>Test Performed</b></td>
                                <td colspan="3"align="center" style="font-size: medium;"><%=test%></td>
                            </tr>
                            <tr>
                                <td colspan="6" align="center" style="font-size: medium;"><b>Scope of Test</b></td>
                                <td colspan="3" align="center" style="font-size: medium;"><%=scope%></td>
                            </tr>
                            <tr>
                                <td colspan="6" align="center" style="font-size: medium;"><b>Total Vulnerabilities</b></td>
                                <td colspan="3" align="center" style="font-size: medium;"><%=totalvuln%></td>
                            </tr>
                            <tr>
                                <td style="background-color: red; font-size: medium;" align="center"><font color="white"><b>High</b></font></td>
                                <td align="center" style="font-size: medium;"><%=highvuln%></td>
                                <td style="background-color: orangered; font-size: medium;" align="center"><font color="white"><b>Medium</b></font></td>
                                <td align="center" style="font-size: medium;"><%=meduimvuln%></td>
                                <td style="background-color: #d58512; font-size: medium;" align="center"><font color="white" align="center"><b>Low</b></font></td>
                                <td align="center" style="font-size: medium;"><%=lowvuln%></td>
                                <td style="background-color: blue; font-size: medium;" align="center"><font color="white"><b>Informational</b></font></td>
                                <td align="center" style="font-size: medium;"><%=informationalvuln%></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            
            <%for(int i = 0 ; i < vul.length ; i++)
            {
                ResultSet rs = st.executeQuery("SELECT * FROM vuln WHERE srno='"+vul[i]+"'");
                
        %>
                
                            
                            <%
                                while(rs.next())
                                {
                                    String risk = rs.getString(4);
                                    
                                    if(risk.equals("High"))
                                    {%>
                                    <div id="source-html">
                                        <div class="modal-dialog" style="width:700px; padding:25px 25px;">
                                            <div class="modal-content">
                                                <div class="modal-body" style="padding:25px 25px;">
                                                        <table class="table-bordered" width="600" >
                                                            <tr>
                                                                <td colspan="8" align="center" style="font-size: large;"><b><%=rs.getString(2)%></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" align="center"><b>Description</b></td><td><%=rs.getString(6)%></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" align="center"><b>Category</b></td><td align="center"><%=rs.getString(3)%></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="background-color: red" align="center"><b><font color="white">Risk Rating</font></b></td><td style="background-color: red" align="center"><font color="white"><b><%=rs.getString(4)%></b></font></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" align="center"><b>Remediation</b></td><td><%=rs.getString(5)%></td>
                                                            </tr>
                                                        </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%}
                                    else if(risk.equals("Medium"))
                                            {%>
                                            <div id="source-html">
                                                <div class="modal-dialog" style="width:700px; padding:25px 25px;">
                                                    <div class="modal-content">
                                                        <div class="modal-body" style="padding:25px 25px;">
                                                            <table class="table-bordered" width="600" >
                                                                <tr>
                                                                    <td colspan="8" align="center" style="font-size: large;"><b><%=rs.getString(2)%></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Description</b></td><td><%=rs.getString(6)%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Category</b></td><td align="center"><%=rs.getString(3)%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="background-color: orange" align="center"><b><font color="white">Risk Rating</font></b></td><td style="background-color: orange" align="center"><font color="white"><b><%=rs.getString(4)%></b></font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Remediation</b></td><td><%=rs.getString(5)%></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}
                                        else if(risk.equals("Low"))
                                           {%>
                                           <div id="source-html">
                                               <div class="modal-dialog" style="width:700px; padding:25px 25px;">
                                                    <div class="modal-content">
                                                        <div class="modal-body" style="padding:25px 25px;">
                                                            <table class="table-bordered" width="600" >
                                                                <tr>
                                                                    <td colspan="8" align="center" style="font-size: large;"><b><%=rs.getString(2)%></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Description</b></td><td><%=rs.getString(6)%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Category</b></td><td align="center"><%=rs.getString(3)%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="background-color: #eded00" align="center"><b><font color="white">Risk Rating</font></b></td><td style="background-color: #eded00" align="center"><font color="white"><b><%=rs.getString(4)%></b></font></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Remediation</b></td><td><%=rs.getString(5)%></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                           </div>
                                           <%}
                                            else{%>
                                            <div id="source-html">
                                                <div class="modal-dialog" style="width:700px; padding:25px 25px;">
                                                    <div class="modal-content">
                                                        <div class="modal-body" style="padding:25px 25px;">
                                                            <table class="table-bordered" width="600" >
                                                                <tr>
                                                                    <td colspan="8" align="center" style="font-size: large;"><b><%=rs.getString(2)%></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Description</b></td><td><%=rs.getString(6)%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Category</b></td><td align="center"><%=rs.getString(3)%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="background-color: blue" align="center"><b><font color="white">Risk Rating</font></b></td><td style="background-color: blue" align="center"><b><font color="white"><%=rs.getString(4)%></font></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="center"><b>Remediation</b></td><td><%=rs.getString(5)%></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}
                                }
                            %>
                        
            <%}%>
            <button onclick="exportHTML();" class="btn btn-success btn-block">Create Word</button>
                <button type="reset" class="btn btn-danger btn-block">Reset</button>
        </div>        
    </body>
</html>
