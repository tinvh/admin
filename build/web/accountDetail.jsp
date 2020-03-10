<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edmin</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
              rel='stylesheet'>
        <style>
            table {
                class:"datatable-1 table table-bordered table-striped	 display";
                width: 100%;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="dashBoard.jsp">Edmin </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
                            <li><a href="#"><i class="icon-eye-open"></i></a></li>
                            <li><a href="#"><i class="icon-bar-chart"></i></a></li>
                        </ul>
                        <form class="navbar-search pull-left input-append" action="#">
                            <input type="text" class="span3">
                            <button class="btn" type="button">
                                <i class="icon-search"></i>
                            </button>
                        </form>
                        <ul class="nav pull-right">

                            <li class="nav-user"><a href="#"><b id="UserID"></b>
                                    <img src="images/user.png" class="nav-avatar" />
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="dashBoard.jsp"><i class="menu-icon icon-dashboard"></i>Dashboard
                                    </a></li>
                                <li><a href="activity.html"><i class="menu-icon icon-bullhorn"></i>News Feed </a>
                                </li>

                                <li><a href="message.html"><i class="menu-icon icon-inbox"></i>Inbox <b class="label green pull-right">
                                            11</b> </a></li>
                                <li><a href="task.html"><i class="menu-icon icon-tasks"></i>Tasks <b class="label orange pull-right">
                                            19</b> </a></li>
                            </ul>
                            <!--/.widget-nav-->


                            <ul class="widget widget-menu unstyled">
                                <li><a href="accountList.jsp"><i class="menu-icon icon-user"></i>Account </a></li>
                                <li><a href="knowledge.jsp"><i class="menu-icon icon-book"></i>AreaOfKnowledge </a></li>
                                <li><a href="language.jsp"><i class="menu-icon icon-suitcase"></i>Language </a></li>
                                <li><a href="post.jsp"><i class="menu-icon icon-upload-alt"></i>Post </a></li>
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i class="menu-icon icon-cog">
                                        </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                                        </i>More Pages </a>
                                    <ul id="togglePages" class="collapse unstyled">
                                        <li><a href="other-login.html"><i class="icon-inbox"></i>Login </a></li>
                                        <li><a href="other-user-profile.html"><i class="icon-inbox"></i>Profile </a></li>
                                        <li><a href="other-user-listing.html"><i class="icon-inbox"></i>All Users </a></li>
                                    </ul>
                                </li>
                                <li><a href="#"><i class="menu-icon icon-signout"></i>Logout </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>
                    <div class="span9">
                        <div class="content">

                            <div class="module">
                                <div class="module-head">
                                    <h3>Account Detail</h3>
                                </div>
                                <div class="module-body">

                                    <br />

                                    <form class="form-horizontal row-fluid">
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">Username</label>
                                            <div class="controls">
                                                <input type="text" id="basicinput" placeholder="You can't type something here..." class="span8" disabled>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">FirstName</label>
                                            <div class="controls">
                                                <input type="text" id="basicinput" placeholder="Type something here..." class="span8">
                                                <span class="help-inline"></span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">LastName</label>
                                            <div class="controls">
                                                <input type="text" id="basicinput" placeholder="Type something here..." class="span8">
                                                <span class="help-inline"></span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">Email</label>
                                            <div class="controls">
                                                <input type="text" id="basicinput" placeholder="Type something here..." class="span8">
                                                <span class="help-inline"></span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Gender</label>
                                            <div class="controls">
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsGender" id="optionsRadios1" value="male" checked="">
                                                    male
                                                </label> 
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsGender" id="optionsRadios2" value="female">
                                                    female
                                                </label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Role</label>
                                            <div class="controls">
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsRole" id="optionsRadios1" value="AD" checked="">
                                                    AD
                                                </label> 
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsRole" id="optionsRadios2" value="CUS">
                                                    CUS
                                                </label> 
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsRole" id="optionsRadios3" value="TSL">
                                                    TSL
                                                </label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">WARNING</label>
                                            <div class="controls">
                                                <label class="checkbox inline">
                                                    <input type="checkbox" value="">
                                                    checked
                                                </label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button type="submit" class="btn">Update account detail</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>



                        </div><!--/.content-->
                    </div><!--/.span9-->
                    <!--/.span3-->
                </div>
                <!--/.container-->
            </div>
        </div>
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2014 Edmin - EGrappler.com </b>All rights reserved.
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script>
            $(window).on("load", function () {
                console.log("window loaded");
            });

            $(document).ready(function () {
                $('#UserID').text(localStorage.getItem("USERID"));
                $('#Test').text(localStorage.getItem("USERNAMEDETAILID"));
                $('#usernameDetailID').text(localStorage.getItem("USERNAMEDETAILID"));
                event.preventDefault(); //Table AD
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/account/" + $('#usernameDetailID').text(),
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        console.log($('#usernameDetailID').text());
                        console.log($('#UserID').text());
                        console.log($('#Test').text());
                    },
                    error: function () {
                        alert("Something wrong")
                    }
                });
            });
        </script>
    </body>
