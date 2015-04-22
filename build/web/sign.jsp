<%@page import="com.pro.User"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.pro.Constituency"%>
<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.State"%>
<!DOCTYPE html>
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
<body class="templatemo-bg-image-2">
    <div class="container">
        <div class="col-md-12">			
            <form class="form-horizontal templatemo-contact-form-1" role="form" action="signup.jsp" method="post">
                <div class="form-group">
                    <div class="col-md-12">
                        <h1 class="margin-bottom-15">Please enter your details !</h1>

                    </div>
                </div>				
                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">User Id (only 5 digits)</label>
                        <div class="templatemo-input-icon-container">

                            <input type="text" class="form-control" id="name" name="userId" placeholder="" required>
                        </div>		            		            		            
                    </div>              
                </div>
                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Password</label>
                        <div class="templatemo-input-icon-container">

                            <input type="password" class="form-control" id="name" name="pass" placeholder="" required>
                        </div>		            		            		            
                    </div>              
                </div>

                <div class="form-group">
                    <div class="col-md-12">		          	
                        <label for="name" class="control-label">Name</label>
                        <div class="templatemo-input-icon-container">

                            <input type="text" class="form-control" id="name" name="name" placeholder="" required>
                        </div>		            		            		            
                    </div>              
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <label for="email" class="control-label">Email</label>
                        <div class="templatemo-input-icon-container">

                            <input type="email" class="form-control" id="email" name="email" placeholder="" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <label for="website" class="control-label">Date of Birth (dd/mm/yyyy)</label>
                        <div class="templatemo-input-icon-container">

                            <input type="text" class="form-control" id="website" name="dob" placeholder="" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <label for="website" class="control-label">Mobile Number</label>
                        <div class="templatemo-input-icon-container">

                            <input type="text" class="form-control" id="website" name="mob" placeholder="" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <label for="website" class="control-label">Constituency</label>
                        <div class="demo">
                            <div id="wrapper">
                                <section class="clearfix">

                                    <select name="const">
                                        <%  Session s = HibernateUtil.getSessionFactory().openSession();
                                            Query query = s.createQuery("from Constituency");
                                            List l = query.list();
                                            Iterator i = l.iterator();
                                            while (i.hasNext()) {
                                                Constituency u = (Constituency) i.next();


                                        %>


                                        <option value="<%=u.getCid()%>" ><% out.println(u.getName()); %></option>
                                        <%

                                            }
                                        %>
                                    </select>

                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-12">
                                <input type="submit" value="Submit" class="btn btn-success pull-right" required>
                            </div>
                        </div>		    	
                        </form>		      
                    </div>
                </div>
                </body>
                </html>