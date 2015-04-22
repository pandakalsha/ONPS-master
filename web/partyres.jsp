<%@page import="com.pro.Party"%>
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
    Party p = (Party) s.get(Party.class, Integer.parseInt(request.getParameter("party")));
%>


<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="col-md-12">			

            <div class="form-group">
                <div class="col-md-12">
                    <h1 class="margin-bottom-15"><%=p.getName()%> has <%=p.getVoteN()%> votes. </h1></br></br>

                </div>
            </div>
            </br>
            </br></br></br></br></br></br></br></br></br></br></br></br>

            <table align="center">
                <tr> 

                    <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Logout" onClick="window.location = 'logout.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	</td>

                  


                </tr></table>

            </table>
            </form>		      
        </div>
    </div>
    </br></br>
    <h4 align="center">${requestScope.msg}</h4>
</body>