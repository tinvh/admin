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
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            .tab button.active {
                background-color: #ccc;
            }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
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
                            <div class="span9">
                                <div class="content">
                                    <div class="module">
                                        <div class="module-head">
                                            <div class="tab">
                                                <button class="tablinks" onclick="postList(event, 'Request')">Request</button>
                                                <button class="tablinks" onclick="postList(event, 'Inprocess')">In process</button>
                                                <button class="tablinks" onclick="postList(event, 'Done')">Done</button>
                                            </div>

                                            <div id="Request" class="tabcontent">
                                                <div class="module-body table">
                                                    <div id="table-rq"></div> <!--/.Display table-->
                                                </div>
                                            </div>

                                            <div id="Inprocess" class="tabcontent">
                                                <div class="module-body table">
                                                    <div id="table-ip"></div> <!--/.Display table-->
                                                </div>
                                            </div>

                                            <div id="Done" class="tabcontent">
                                                <div class="module-body table">
                                                    <div id="table-d"></div> <!--/.Display table-->
                                                </div>
                                            </div>
                                        </div>
                                        <!--/.module-->
                                    </div>
                                    <!--/.content-->
                                </div>
                                <!--/.span9-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.container-->
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
                                                        event.preventDefault();
                                                        $('#UserID').text(localStorage.getItem("USERID"));
                                                        $.ajax({
                                                            url: "https://translate-app-api.herokuapp.com/post",
                                                            type: 'GET',
                                                            dataType: 'json',
                                                            contentType: "application/json",
                                                            headers: {
                                                                'Accept': 'application/json',
                                                                'Content-Type': 'application/json',
                                                                'Authorization': "Bearer " + localStorage.getItem("TOKEN")
                                                            },
                                                            success: function (result) {
                                                                var displayResourcesRQ = $("#table-rq");
                                                                var displayResourcesIP = $("#table-ip");
                                                                var displayResourcesD = $("#table-d");
                                                                displayResourcesRQ.text("Loading...");
                                                                displayResourcesIP.text("Loading...");
                                                                displayResourcesD.text("Loading...");
                                                                var output = "<table><tr><th>ID.</th><th>Username</th><th>LanguageFrom</th><th>LanguageTo</th><th>Status</th><th>Price</th></tr><tbody>";
                                                                var i = 0;
                                                                for (i = result.length; i-- > 0; ) {
                                                                    var tmp = result[i].status;
                                                                    if (tmp === "Request") {
                                                                        output +=
                                                                                "<tr onclick='post_table(this)' id='postID_" + i + "'><td>" +
                                                                                result[i].postId +
                                                                                "</td><td>" +
                                                                                result[i].username +
                                                                                "</td><td>" +
                                                                                result[i].languageFrom +
                                                                                "</td><td>" +
                                                                                result[i].languageTo +
                                                                                "</td><td>" +
                                                                                result[i].status +
                                                                                "</td><td>" +
                                                                                result[i].priceFrom + " - " + result[i].priceTo +
                                                                                "</td></tr>"
                                                                    }
                                                                }
                                                                output += "</tbody></table>";
                                                                displayResourcesRQ.html(output);
                                                                var output = "<table><tr><th>ID.</th><th>Username</th><th>LanguageFrom</th><th>LanguageTo</th><th>Status</th><th>Price</th></tr><tbody>";
                                                                var i = 0;
                                                                for (i = result.length; i-- > 0; ) {
                                                                    var tmp = result[i].status;
                                                                    if (tmp === "In process") {
                                                                        output +=
                                                                                "<tr onclick='post_table(this)' id='postID_" + i + "'><td>" +
                                                                                result[i].postId +
                                                                                "</td><td>" +
                                                                                result[i].username +
                                                                                "</td><td>" +
                                                                                result[i].languageFrom +
                                                                                "</td><td>" +
                                                                                result[i].languageTo +
                                                                                "</td><td>" +
                                                                                result[i].status +
                                                                                "</td><td>" +
                                                                                result[i].priceFrom + " - " + result[i].priceTo +
                                                                                "</td></tr>"
                                                                    }
                                                                }
                                                                output += "</tbody></table>";
                                                                displayResourcesIP.html(output);
                                                                var output = "<table><tr><th>ID.</th><th>Username</th><th>LanguageFrom</th><th>LanguageTo</th><th>Status</th><th>Price</th></tr><tbody>";
                                                                var i = 0;
                                                                for (i = result.length; i-- > 0; ) {
                                                                    var tmp = result[i].status;
                                                                    if (tmp === "Done") {
                                                                        output +=
                                                                                "<tr onclick='post_table(this)' id='postID_" + i + "'><td>" +
                                                                                result[i].postId +
                                                                                "</td><td>" +
                                                                                result[i].username +
                                                                                "</td><td>" +
                                                                                result[i].languageFrom +
                                                                                "</td><td>" +
                                                                                result[i].languageTo +
                                                                                "</td><td>" +
                                                                                result[i].status +
                                                                                "</td><td>" +
                                                                                result[i].priceFrom + " - " + result[i].priceTo +
                                                                                "</td></tr>"
                                                                    }
                                                                }
                                                                output += "</tbody></table>";
                                                                displayResourcesD.html(output);
                                                            },
                                                            error: function () {
                                                                alert("Something wrong")
                                                            }
                                                        });
                                                    });
            </script>
            <script>
                function post_table(b) {
                    var a = "#" + $(b).attr('id').toString();
                    //                  var a = $(b.target).closest('tr').find(".id").html()
                    // console.log($(a).closest('rd'));
                    //                    console.log($(a).find("td:eq(0)").text());
                    if (localStorage.getItem("POSTDETAILID") === null) {
                        localStorage.setItem("POSTDETAILID", $(a).find("td:eq(0)").text());
                    } else {
                        localStorage.removeItem("POSTDETAILID");
                        localStorage.setItem("POSTDETAILID", $(a).find("td:eq(0)").text());
                    }
                    window.location.href = '../Web/postDetail.jsp';
                }
                function postList(evt, postName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(postName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
            </script>
        </body>
