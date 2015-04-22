

<%@page import="com.pro.User"%>
<%@page import="com.pro.Candidate"%>
<%@page import="com.pro.Party"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="com.pro.State"%>
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
    <link href="css/css.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <style>
        .demo select {
            border: 0 !important;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: #999999 url(img/demo/select-arrow.png) no-repeat 90% center;
            width: 175px;
            text-indent: 0.01px;
            text-overflow: "";
            color: #FFF;
            border-radius: 15px;
            padding: 5px;
            box-shadow: inset 0 0 5px rgba(000,000,000, 0.5);
        }
        .demo select.balck {
            background-color: #000;
        }
        .demo select.option3 {
            border-radius: 10px 0;
        }
    </style>
</head>

<%
    Session s = HibernateUtil.getSessionFactory().openSession();

%>

<body class="templatemo-bg-image-2">

    </br></br></br></br>
   
  
    <form class="demo" action="candidate.jsp">
        <div id="wrapper">
            <section class="clearfix"></br></br>
                <h2>Choose your Party</h2>
                </br>
                </br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <select name="cand">
                        <%                            Query query=s.createQuery("from Candidate");
                        List l=query.list();
                        Iterator i=l.iterator();
                        while(i.hasNext())
                        {
                            User u=(User)s.get(User.class,Integer.parseInt(session.getAttribute("user").toString()));
                            Candidate c=(Candidate)i.next();
                            
                            if(c.getParty().getRegId()==Integer.parseInt(request.getParameter("cand")) && c.getConstituency().getCid()==u.getCid())
                            {
                                                   
                        %>


                        <option value="<%=c.getVoterId()%>"><% out.println(c.getName()); %></option>
                        <%
                            }
                        }
                        
                        %>
                    </select>
                    </br>
                    </br>

                    <input type="submit" value="Search" class="btn btn-success pull-right">
                    <% 
                    %>
                    

                </form>		      
            </section>
        </div>
    </body>