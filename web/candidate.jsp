<%@page import="com.pro.User"%>
<%@page import="com.pro.Candidate"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<head>

    <title>ONPS</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<%

    Session s = HibernateUtil.getSessionFactory().openSession();

    Candidate c = (Candidate) s.get(Candidate.class, Integer.parseInt(request.getParameter("cand")));
     request.setAttribute("candi",c.getVoterId());
    
%>   

<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="form-horizontal templatemo-contact-form-1">			
            <form action="voted.jsp?candidate=<%=request.getParameter("cand")%>" method="post" >
                <table width="496" border="0" cellpadding="0" cellspacing="0">
                    <!--DWLayoutTable-->
                    <tr>
                        <td width="171" height="86">&nbsp;</td>
                        <td colspan="2" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                        <td width="225">&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="52" colspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <!--DWLayoutTable-->
                                <tr>
                                    <td width="225" height="52" valign="top"><font color="#FFFFFF" ><b>Name</b></font></td>
                                </tr>
                            </table>    </td>
                        <td colspan="2" valign="top"><font color="#FFFFFF" ><b><!--DWLayoutEmptyCell-->&nbsp;<%=c.getName()%></b></font></td>
                    </tr>
                    <tr>
                        <td height="51" colspan="2" valign="top"><font color="#FFFFFF" ><b>Party</b></font></td>
                        <td colspan="2" valign="top"><font color="#FFFFFF" ><b><!--DWLayoutEmptyCell-->&nbsp;<%=c.getParty().getName()%></b></font></td>
                    </tr>
                    <tr>
                        <td height="53" colspan="2" valign="top"><font color="#FFFFFF" ><b>Constituency</b></font></td>
                        <td colspan="2" valign="top"><font color="#FFFFFF" ><b><!--DWLayoutEmptyCell-->&nbsp;<%=c.getConstituency().getName()%></b></font></td>
                    </tr>
                    <tr>
                        <td height="2"></td>
                        <td width="54"></td>
                        <td width="46"></td>
                        <td></td>
                    </tr>
                </table>
                   
                        <%
                        
                       // out.print(c.getVoterId());
                   
                    // out.print(request.getAttribute("candidate"));
                    User u = (User) s.get(User.class, (Integer) (session.getAttribute("user")));

                    if (u.getVoted().equals("N")) {

                        %>

                <input type="submit" value="VOTE NOW" class="btn btn-success pull-right">
                <%                   } else {
                        out.println(" You have already voted !</br>    Thanks !");
                    
                 %>
                    <div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Logout" onClick="window.location='logout.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	
                 <%
                    }
                 %>
            </form>

        </div>
    </div>
</body>