<%@page import="java.lang.Integer"%>
<%@page import="com.pro.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.pro.HibernateUtil"%>
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
    <div class="container">
        <div class="col-md-12">			

            <div class="form-group">
                <div class="col-md-12"> </div>
            </div>
            </br>
            </br></br></br></br></br></br></br></br></br></br></br></br>
           

            <table align="center">
                <tr>  <td> <div class="form-group">
                            <div class="col-md-12">
                                <input type="button"  value="Search by Constituency" onClick="window.location = 'candilist.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div></td>	

                    <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Search by Party" onClick="window.location = 'party.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div></td>	 

                    <%  
                        Session s=HibernateUtil.getSessionFactory().openSession();
                        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                        //get current date time with Date()
                        Date date = new Date();
                        if (dateFormat.format(date).compareTo("2015/04/22 10:14:15") > 0) {
                            Query query = s.createQuery("from User");
                            List l = query.list();
                            Iterator i = l.iterator();
                            while (i.hasNext()) {
                                User u = (User) i.next();
                                u.setVoted("Y");
                            }
                    %>
                    <td> <div class="form-group">
                            <div class  

                                 ="col-md-12">
                                <input type="button" value="Results" onClick="window.location = 'results.jsp';" class  




                                       ="btn btn-success pull-right">
                            </div>
                        </div>	</td>

                    <%
                        }
                  
                    %>

                

            </table>
            </form>		      
        </div>
    </div>
</body>