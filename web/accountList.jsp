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
                        <div class="span9">
                            <div class="content">
                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            ADMIN</h3>
                                    </div>
                                    <div class="module-body table">
                                        <div id="table-admin"></div> <!--/.Display table-->
                                    </div>
                                    <!--/.module-->
                                </div>
                                <!--/.content-->
                            </div>
                            <!--/.span9-->
                        </div>
                        <div class="span9">
                            <div class="content">
                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            CUSTOMER</h3>
                                    </div>
                                    <div class="module-body table">
                                        <div id="table-cus"></div> <!--/.Display table-->
                                    </div>
                                    <!--/.module-->
                                </div>
                                <!--/.content-->
                            </div>
                            <!--/.span9-->
                        </div>
                        <div class="span9">
                            <div class="content">
                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            TSL</h3>
                                    </div>
                                    <div class="module-body table">
                                        <div id="table-tsl"></div> <!--/.Display table-->
                                    </div>
                                    <!--/.module-->
                                </div>
                                <!--/.content-->
                            </div>
                            <!--/.span9-->
                        </div>
                    </div>
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
                event.preventDefault(); //Table AD
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
                        var displayResources = $("#table-admin");
                        displayResources.text("Loading...");
                        var output = "<table><tr><th>Username</th><th>FirstName</th><th>LastName</th><th>Email</th><th>Gender</th></tr><tbody>";
                        var i = 0;
                        for (i; i < result.length; i++) {
                            var tmp = result[i].role;
                            if (tmp === "AD") {
                                output +=
                                        "<tr onclick='ad_table(this)' id='usernameDetailID_cuoi_"+i+"'><td>" +
                                        result[i].username +
                                        "</td><td>" +
                                        result[i].firstName +
                                        "</td><td>" +
                                        result[i].lastName +
                                        "</td><td>" +
                                        result[i].email +
                                        "</td><td>" +
                                        result[i].gender +
                                        "</td></tr>"
                            }
                        }
                        output += "</tbody></table>";
                        displayResources.html(output);
                    },
                    error: function () {
                        alert("Something wrong")
                    }
                });
                event.preventDefault(); // Table CUS
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
                        var displayResources = $("#table-cus");
                        displayResources.text("Loading...");
                        var output = "<table><tr><th>Username</th><th>FirstName</th><th>LastName</th><th>Email</th><th>Gender</th></tr><tbody>";
                        var i = 0;
                        for (i; i < result.length; i++) {
                            var tmp = result[i].role;
                            if (tmp === "CUS") {
                                output +=
                                        "<tr onclick='cus_table(this)' id='usernameDetailID_cuoi_"+i+"'><td>" +
                                        result[i].username +
                                        "</td><td>" +
                                        result[i].firstName +
                                        "</td><td>" +
                                        result[i].lastName +
                                        "</td><td>" +
                                        result[i].email +
                                        "</td><td>" +
                                        result[i].gender +
                                        "</td></tr>"
                            }
                        }
                        output += "</tbody></table>";
                        displayResources.html(output);
                    },
                    error: function () {
                        alert("Something wrong")
                    }
                });
                event.preventDefault(); // Table TSL
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
                        var displayResources = $("#table-tsl");
                        displayResources.text("Loading...");
                        var output = "<table><tr><th>Username</th><th>FirstName</th><th>LastName</th><th>Email</th><th>Gender</th></tr><tbody>";
                        var i = 0;
                        for (i; i < result.length; i++) {
                            var tmp = result[i].role;
                            if (tmp === "TSL") {
                                output +=
                                        "<tr onclick='tsl_table(this)' id='usernameDetailID_cuoi_"+i+"'><td>" +
                                        result[i].username +
                                        "</td><td>" +
                                        result[i].firstName +
                                        "</td><td>" +
                                        result[i].lastName +
                                        "</td><td>" +
                                        result[i].email +
                                        "</td><td>" +
                                        result[i].gender +
                                        "</td></tr>"
                            }
                        }
                        output += "</tbody></table>";
                        displayResources.html(output);
                    },
                    error: function () {
                        alert("Something wrong")
                    }
                });
            });
        </script>
        <script>
            function tsl_table(b) {
                var a = "#"+$(b).attr('id').toString();
                    if (localStorage.getItem("USERNAMEDETAILID") === null) {
                    localStorage.setItem("USERNAMEDETAILID", $(a).find("td:eq(0)").text());
                } else {
                    localStorage.removeItem("USERNAMEDETAILID");
                    localStorage.setItem("USERNAMEDETAILID", $(a).find("td:eq(0)").text());
                }
                window.location.href = '../Web/accountDetail.jsp';
                // alert($('#usernameDetailID').text()); //ch? này nó l?y giá tr? ??u tiên c?a hàng nè a
                //window.location.href = '../Web/accountDetail.jsp';
            }
            function ad_table(b) {
                var a = "#"+$(b).attr('id').toString();
                    if (localStorage.getItem("USERNAMEDETAILID") === null) {
                    localStorage.setItem("USERNAMEDETAILID", $(a).find("td:eq(0)").text());
                } else {
                    localStorage.removeItem("USERNAMEDETAILID");
                    localStorage.setItem("USERNAMEDETAILID", $(a).find("td:eq(0)").text());
                }
                window.location.href = '../Web/accountDetail.jsp';
                // alert($('#usernameDetailID').text()); //ch? này nó l?y giá tr? ??u tiên c?a hàng nè a
                //window.location.href = '../Web/accountDetail.jsp';
            }
            function cus_table(b) {
                var a = "#"+$(b).attr('id').toString();
                    console.log(a);
                    if (localStorage.getItem("USERNAMEDETAILID") === null) {
                    localStorage.setItem("USERNAMEDETAILID", $(a).find("td:eq(0)").text());
                } else {
                    localStorage.removeItem("USERNAMEDETAILID");
                    localStorage.setItem("USERNAMEDETAILID", $(a).find("td:eq(0)").text());
                }
                window.location.href = '../Web/accountDetail.jsp';
                // alert($('#usernameDetailID').text()); //ch? này nó l?y giá tr? ??u tiên c?a hàng nè a
                //window.location.href = '../Web/accountDetail.jsp';
            }
//            $(document).ready(function (){
//                $('tr.a').click(function (){
//                    var a = $(this).attr('id');
//                    console.log("a", a);
//                })
//            })

//               $(document).on('click','tr.a td',function(e){
//                    var a = "#"+$(this).attr('id').toString();
//                    console.log(a);
//                    if (localStorage.getItem("USERNAMEDETAILID") === null) {
//                    localStorage.setItem("USERNAMEDETAILID", $(a).text());
//                    console.log("1");
//                } else {
//                    localStorage.removeItem("USERNAMEDETAILID");
//                    localStorage.setItem("USERNAMEDETAILID", $(a).text());
//                    console.log("2");
//                }
//               })
            
        </script>
    </body>
