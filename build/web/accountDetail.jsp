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
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="dashBoard.jsp">Admin </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
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
                                <li class="active"><a href="dashboard.jsp"><i class="menu-icon icon-dashboard"></i>Dashboard
                                    </a></li>
                                <li><a href="accountList.jsp"><i class="menu-icon icon-user"></i>Account </a></li>
                                <li><a href="knowledge.jsp"><i class="menu-icon icon-book"></i>AreaOfKnowledge </a></li>
                                <li><a href="language.jsp"><i class="menu-icon icon-suitcase"></i>Language </a></li>
                                <li><a href="post.jsp"><i class="menu-icon icon-upload-alt"></i>Post </a></li>
                                <li><a href="rate.jsp"><i class="icon-group" style="margin-right: 10px"></i>Rate </a></li>
                                <li><a href="commission.jsp"><i class="icon-money" style="margin-right: 10px"></i>Commission </a></li>
                                <li><a href="payment.jsp"><i class="icon-credit-card" style="margin-right: 10px"></i>Payment </a></li>
                                <li><a href="refund.jsp"><i class="icon-refresh" style="margin-right: 10px"></i>Refund </a></li>
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">

                                <li><a href="index.html"><i class="menu-icon icon-signout"></i>Logout </a></li>
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
                                                <input type="text" id="userNameID" class="span8" disabled  >
                                                <span class="help-inline"></span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">FirstName</label>
                                            <div class="controls">
                                                <input type="text" id="firstName" class="span8">
                                                <span class="help-inline"></span>
                                            </div>
                                            <b id="firstName"></b>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">LastName</label>
                                            <div class="controls">
                                                <input type="text" id="lastName" class="span8">
                                                <span class="help-inline"></span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="basicinput">Email</label>
                                            <div class="controls">
                                                <input type="text" id="email" class="span8">
                                                <span class="help-inline"></span>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Gender</label>
                                            <div class="controls">
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsGender" value="male" checked=""/>
                                                    male
                                                </label> 
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsGender" value="female"/>
                                                    female
                                                </label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">Role</label>
                                            <div class="controls">
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsRole" value="AD" checked=""/>
                                                    AD
                                                </label> 
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsRole" value="CUS"/>
                                                    CUS
                                                </label> 
                                                <label class="radio inline">
                                                    <input type="radio" name="optionsRole" svalue="TSL"/>
                                                    TSL
                                                </label>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">WARNING</label>
                                            <div class="controls">
                                                <label class="checkbox inline">
                                                    <input type="checkbox" value="" name="checkWarning"/>
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
                var userNameDetailID = localStorage.getItem("USERNAMEDETAILID");
                event.preventDefault(); //Table AD
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/account/" + userNameDetailID,
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#userNameID').attr('placeholder', result.username);
                        $('#firstName').attr('value', result.firstName);
                        $('#lastName').attr('value', result.lastName);
                        $('#email').attr('value', result.email);
                        var gender = result.gender;
                        if (gender === "female") {
                            $('input:radio[name="optionsGender"]').filter('[value="female"]').attr('checked', true);
                        }
                        var role = result.role;
                        if (role === "CUS") {
                            $('input:radio[name="optionsRole"]').filter('[value="CUS"]').attr('checked', true);
                        } else
                        if (role === "TSL") {
                            $('input:radio[name="optionsRole"]').filter('[value="TSL"]').attr('checked', true);
                        }
                        var warning = result.warning;
                        if (warning === true) {
                            $('input:checkbox[name="checkWarning"]').filter('[value=""]').attr('checked', true);
                        }
                    },
                    error: function () {
                        alert("Something wrong");
                        window.location.href = '../Web/index.html';
                    }
                });
            });
        </script>
        <script>

        </script>
    </body>
