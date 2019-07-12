<%-- 
    Document   : index
    Created on : 26 Jun, 2019, 4:16:17 PM
    Author     : Amey
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"> 
        
        <style>
            .modal-header,h4{
               background-color: darkcyan;
               color: white;
               font-size:30px;
               text-align: center;
            }
            
            
        </style>
    </head>
    <body>
        <%
            
        %>
        <!--main form to add content in the form -->
        <div class="frm" style=" align-content: center; height: 730px; width: 1515px; background-color: #46b8da;">
            <div class=" modal-dialog">
                <div class=" modal-content" style="background-color: #9d9d9d;align-content: center; width: 700px; font-family: cursive;">
                <h2> Report Creator </h2> 
                </div>
                <div class="modal-body" style="padding:25px 25px;">
                    <form action="report.jsp" style="height: 100px; width: 900px;">
                        <div class="form-group">
                            CLIENT:-<input type="text"   name="client" placeholder="ex. URL or IP Address" >
                        </div>
                        <div class="form-group" >
                            Testing Type: &nbsp;<select name="test">
                                <option value="VAPT">VAPT</option>
                                <option value="Web Application Testing">Web Application Testing</option>
                                <option value="Mobile Application Testing">Mobile Application Testing</option>
                            </select>
                        </div>    
                        <div class="form-group">
                            SCOPE:-<input type="text"   name="scope" placeholder="ex. URL or IP Address" >
                        </div>
                        <div class="form-group">    
                            TOTAL VULNERABILITIES:-<input type="text"   name="totalvuln" placeholder="USERNAME">
                        </div>
                        <div class="form-group">
                                HIGH:-<input type="text"   name="highvuln" placeholder="ADDRESS">&nbsp;&nbsp;MEDIUM:-<input type="text"   name="meduimvuln"  placeholder="EX 2 or 3">&nbsp;&nbsp;LOW:-<input type="text"   name="lowvuln" placeholder="EX 2 or 3">&nbsp;&nbsp;INFO:-<input type="text"   name="informationalvuln" placeholder="EX 2 or 3">
                        </div>
                        <div class="form-group">
                            NO. OF REPRESENTATIVES:-<input type="number"   name="nrep" placeholder="EX. Aashay Shah">
                        </div>
                        
                        <button type="submit" class="btn btn-success btn-block">Login</button>
                        <button type="reset" class="btn btn-danger btn-block">Reset</button>
                    </form>
                </div>
            </div>
        </div>
        <!--bottom division to see how the form is getting made -->
        <div class="tbl" style=" float: bottom; align-content: center; height: 730px; width: 1515px; background-color: #761c19;">
            <div class=" modal-content">
                
            </div>
        </div>
    </body>
</html>