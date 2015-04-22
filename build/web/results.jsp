<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Property"%>
<%@page import="org.hibernate.criterion.Projections"%>
<%@page import="com.pro.Party"%>
<%@page import="org.hibernate.criterion.DetachedCriteria"%>
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

<body class="templatemo-bg-image-2">
    <%
        Session s=HibernateUtil.getSessionFactory().openSession();
        Criteria criteria = s.createCriteria(Party.class);
criteria.addOrder(Order.desc("voteN"));
criteria.setMaxResults(1);
Party p=(Party)criteria.uniqueResult();
%>

    
     <div class="form-group">
                <div class="col-md-12">
                    <br><br><br>
                    
                    <h1 class="margin-bottom-15"><marquee><%= p.getName()%> won by <%=p.getVoteN()%> votes all over India </marquee></h1></br></br>
                    
                </div>
    <div class="container">
        <div class="col-md-12">			

            <div class="form-group">
                <div class="col-md-12"> </div>
            </div>
            </br>
            </br></br></br><

            <table align="center">
                <tr>  <td> <div class="form-group">
                            <div class="col-md-12">
                                <input type="button"  value="Constituency wise results" onClick="window.location = 'state.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div></td>	

                    <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Party wise results" onClick="window.location = 'party2.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	</td>


                </tr></table>

            </table>
            </form>		      
        </div>
    </div>
</body>