<%@page import="com.pro.Constituency"%>
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
  
    User u = (User) s.get(User.class, Integer.parseInt(request.getParameter("userId")));

    //request.setAttribute("userid",u.getUserId());
    Constituency c = (Constituency) s.get(Constituency.class, u.getCid());

%>   

<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="form-horizontal templatemo-contact-form-1">			
            <form action="uservalid.jsp?userid=<%=request.getParameter("userId")%>" method="post" >
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
                        <td colspan="2" valign="top"><font color="#FFFFFF" ><b><!--DWLayoutEmptyCell-->&nbsp;<%=u.getName()%></b></font></td>
                    </tr>
                    <tr>
                        <td height="51" colspan="2" valign="top"><font color="#FFFFFF" ><b>Date Of Birth</b></font></td>
                        <td colspan="2" valign="top"><font color="#FFFFFF" ><b><!--DWLayoutEmptyCell-->&nbsp;<%=u.getDob().toString()%></b></font></td>
                    </tr>
                    <tr>
                        <td height="53" colspan="2" valign="top"><font color="#FFFFFF" ><b>Constituency</b></font></td>
                        <td colspan="2" valign="top"><font color="#FFFFFF" ><b><!--DWLayoutEmptyCell-->&nbsp;<%=c.getName()%></b></font></td>
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
                    if (u.getActive().equals("Y")) {

                %>

                <input type="submit" value="Activate" name="active" class="btn btn-success pull-right">
                &nbsp;<input type="submit" value="Deactivate" name="deactive" class="btn btn-success pull-right">
                <p><%                   } else
                        out.println("Inactive User");
                    %></p>
            </form>

        </div>
    </div>
</body>