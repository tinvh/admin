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
                        <%--
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
                        --%>
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
                                <li><a href="accountList.jsp"><i class="menu-icon icon-user"></i>Account </a></li>
                                <li><a href="knowledge.jsp"><i class="menu-icon icon-book"></i>AreaOfKnowledge </a></li>
                                <li><a href="language.jsp"><i class="menu-icon icon-suitcase"></i>Language </a></li>
                                <li><a href="post.jsp"><i class="menu-icon icon-upload-alt"></i>Post </a></li>
                            </ul>
                            <!--/.widget-nav-->
                                <ul class="widget widget-menu unstyled">
                                    
                                <li><a href="#"><i class="menu-icon icon-signout"></i>Logout </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>

                    <!--/.span3-->
                    <div class="span9">
                        <div class="content">
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="#" class="btn-box big span4"><i class=" icon-random"></i><b id="TotalTransaction"></b>
                                        <p class="text-muted">
                                            Transaction Success</p>
                                    </a><a href="#" class="btn-box big span4"><i class="icon-user"></i><b id="TotalUser"></b>
                                        <p class="text-muted">
                                            Users</p>
                                    </a><a href="#" class="btn-box big span4"><i class="icon-money"></i><b>Loading...</b>
                                        <p class="text-muted">
                                            Profit</p>
                                    </a>
                                </div>
                            </div>
                            <!--/#btn-controls-->
                            <%--
                            <div class="module">
                                <div class="module-head">
                                    <h3>
                                        Newest post</h3>
                                </div>
                                <div class="module-body table">
                                    <div id="display-resources"></div>
                                </div>
                                <!--/.module-->
                            </div>
                            --%>
                            <!--/.content-->
                        </div>
                        <!--/.span9-->
                    </div>
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
                event.preventDefault(); // get total account
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/account",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#TotalUser').text(result.length)
                        $('#UserID').text(localStorage.getItem("USERID"));
                    },
                    error: function () {
                        alert("Something wrong")
                    }
                });
                event.preventDefault();// get total transaction
                $.ajax({
                    url: "https://translate-app-api.herokuapp.com/transaction",
                    type: 'GET',
                    dataType: 'json',
                    contentType: "application/json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json',
                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                    },
                    success: function (result) {
                        $('#TotalTransaction').text(result.length)
                    },
                    error: function () {
                        alert("Something wrong")
                    }
                });
//                event.preventDefault(); // get top 5 newest post
//                $.ajax({
//                    url: "https://translate-app-api.herokuapp.com/post",
//                    type: 'GET',
//                    dataType: 'json',
//                    contentType: "application/json",
//                    headers: {
//                        'Accept': 'application/json',
//                        'Content-Type': 'application/json',
//                        'Authorization': "Bearer " + localStorage.getItem("TOKEN")
//                    },
//                    success: function (result) {
//                        var displayResources = $("#display-resources");
//                        displayResources.text("Loading...");
//                        var output = "<table><tr><th>Username</th><th>LanguageFrom</th><th>LanguageTo</th><th>Status</th><th>Price</th></tr><tbody>";
//                        var i = 0;
//                        for (i = result.length; i-- > (result.length - 5); ) {
//                            output +=
//                                    "<tr><td>" +
//                                    result[i].username +
//                                    "</td><td>" +
//                                    result[i].languageFrom +
//                                    "</td><td>" +
//                                    result[i].languageTo +
//                                    "</td><td>" +
//                                    result[i].status +
//                                    "</td><td>" +
//                                    result[i].priceFrom + " - " + result[i].priceTo +
//                                    "</td></tr>"
//                        }
//                        output += "</tbody></table>";
//                        displayResources.html(output);
//                    },
//                    error: function () {
//                        alert("Something wrong")
//                    }
//                });
            });


        </script>
    </body>
