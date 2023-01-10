<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
     <!-- Meta -->
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />

      <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="Codedthemes" />
      <!-- Favicon icon -->

      <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon"/>
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet"/>
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css"/>
      <!-- waves.css -->
      <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all"/>
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css"/>
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css"/>
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css"/>
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
</head>
<body themebg-pattern="theme1">
    <form id="form1" runat="server">
  <!-- Pre-loader start -->
  <div class="theme-loader">
      <div class="loader-track">
          <div class="preloader-wrapper">
              <div class="spinner-layer spinner-blue">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
              <div class="spinner-layer spinner-red">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-yellow">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>

              <div class="spinner-layer spinner-green">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Pre-loader end -->
  <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="md-float-material form-material">
                        <div class="text-center">
                            <img src="assets/images/logo.png" alt="logo.png"/>
                        </div>
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">Sign up</h3>
                                    </div>
                                </div>
                                  <div class="form-group form-primary">
                                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <asp:Label ID="lblname" CssClass="float-label" runat="server" Text="Your Full Name"></asp:Label>
                                </div>

                                <div class="form-group form-primary">
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="form-bar"></span>
                                    <asp:Label ID="lblemail" CssClass="float-label" runat="server" Text="Your Email Address"></asp:Label>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                         <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="form-bar"></span>
                                            <asp:Label ID="lblpwd" CssClass="float-label" runat="server" Text="Password"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                      <asp:TextBox ID="txtcnfpwd" runat="server" CssClass="form-control"></asp:TextBox>
                                            <span class="form-bar"></span>
                                        <asp:Label ID="lblcnfpwd" CssClass="float-label" runat="server" Text="Confirm Password"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row m-t-25 text-left">
                                    <div class="col-md-12">
                                        <div class="checkbox-fade fade-in-primary">
                                            <label>
                                            <asp:CheckBox ID="checkbox" runat="server" />
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">I read and accept <a href="#">Terms &amp; Conditions.</a></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                                <asp:Button ID="Button1" CssClass="btn btn-primary btn-md btn-block waves-effect text-center m-b-20" runat="server" Text="Sign up now" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-10">
                                       
                                    </div>
                                    <div class="col-md-2">
                                        <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
   
<!-- Required Jquery -->
<script type="text/javascript" src="assets/js/jquery/jquery.min.js "></script>
<script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="assets/js/common-pages.js"></script>
    </form>
</body>
</html>
