<%@page import="com.pro.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.pro.User"%>
<%@page import="com.pro.Party"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.text.DateFormat"%>
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
                <div class="col-md-12">
                    <h1 class="margin-bottom-15">Online National Polling System</h1></br></br>
                    <h2 class="margin-bottom-15">Welcome to the National E-Voting Website !</h2>
                    <h2 class="margin-bottom-15">Here you can vote and exercise your right to choose your representative.</h2>
                    <h2 class="margin-bottom-15">So come on ! Let's Vote !</h2>
                </div>
            </div>
            </br>
            </br></br></br></br></br></br></br></br></br></br></br></br>

            <table align="center">
                <tr> 

                    <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Login" onClick="window.location = 'index.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	</td>

                    <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Signup" onClick="window.location = 'signhome.jsp';" class="btn btn-success pull-right">
                            </div>
                        </div>	</td>
                        
                         <td><div class="form-group">
                            <div class="col-md-12">
                                <input type="button" value="Previous Year Results" onClick="window.location = 'pyear.jsp?state=';" class="btn btn-success pull-right">
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
