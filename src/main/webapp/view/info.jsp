<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.dev.xrpwebtools.impl.XRPLImpl" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="org.xrpl.xrpl4j.wallet.DefaultWalletFactory" %>
<%@ page import="org.xrpl.xrpl4j.model.transactions.Hash256" %>
<%
    XRPLImpl bll = (XRPLImpl)session.getAttribute("dashboard");
%>
<html lang="en"><!--begin::Head--><head><base href="">
    <meta charset="utf-8">
    <title>XRP Wallet Tools</title>
    <link rel="canonical" href="Https://preview.keenthemes.com/metronic8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/media/logos/favicon.ico">
    <!--begin::Fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <!--end::Fonts-->
    <!--begin::Global Stylesheets Bundle(used by all pages)-->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css">
  <link href="assets/css/style.bundletwo.css" rel="stylesheet" type="text/css">
    <!--end::Global Stylesheets Bundle-->
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" class="bg-white" data-new-gr-c-s-check-loaded="8.875.0" data-gr-ext-installed="">
    <!--begin::Main-->
    <div class="d-flex flex-column flex-root">
        <!--begin::Authentication - Sign-in -->
        <div class="d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed" style="background-image: url(assets/media/illustrations/progress-hd.png)">
            <!--begin::Content-->
            <div class="d-flex flex-center flex-column flex-column-fluid p-10 pb-lg-20">
                <!--begin::Logo-->
                <a href="index.jsp" class="mb-12">
                    <img alt="Logo" src="assets/media/logos/logo-2-dark.svg" class="h-45px">
                </a>
                <!--end::Logo-->
                <!--begin::Wrapper-->
                <div class="w-lg-600px bg-white rounded shadow-sm p-10 p-lg-15 mx-auto">
                    <!--begin::Form-->
                    <form class="form w-100 fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate" id="kt_sign_in_form" action="#">
                        
<div class="notice d-flex bg-light-warning rounded border-warning border border-dashed mb-9 p-6">
                                                <!--begin::Icon-->
                                                <!--begin::Svg Icon | path: icons/duotone/Code/Warning-1-circle.svg-->
                                                <span class="svg-icon svg-icon-2tx svg-icon-warning me-4">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                        <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                                                        <rect fill="#000000" x="11" y="7" width="2" height="8" rx="1"></rect>
                                                        <rect fill="#000000" x="11" y="16" width="2" height="2" rx="1"></rect>
                                                    </svg>
                                                </span>
                                                <!--end::Svg Icon-->
                                                <!--end::Icon-->
                                                <!--begin::Wrapper-->
                                                <div class="d-flex flex-stack flex-grow-1">
                                                    <!--begin::Content-->
                                                    <div class="fw-bold">
                                                        <h4 class="text-gray-800 fw-bolder">Info!</h4>
                                                        <div class="fs-6 text-gray-600">Transaction Hash! Kindly click the link to check if Payment is Success or not! Thanks for using XRP Wallet Tools.<br>
                                                        </div>
                                                    </div>
                                                    <!--end::Content-->
                                                </div>
                                                <!--end::Wrapper-->
                                            </div>
            <!--ADD CODE BELOW HERE-->
                    <p>INFO: </p>
                    <%
                        out.write("Transaction HASH" + bll.gettransactionHash());
                        out.write("<br><br>");
                        out.write(bll.getInfoString());
                    %>
                        <!--ADD CODE ABOVE HERE-->
                    <div></div><div></div></form>
                    <!--end::Form-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Content-->
            <!--begin::Footer-->
            <div class="d-flex flex-center flex-column-auto p-10">
                <!--begin::Links-->
                <div class="d-flex align-items-center fw-bold fs-6">
                    <a href="https://keenthemes.com/faqs" class="text-muted text-hover-primary px-2">About</a>
                    <a href="mailto:support@keenthemes.com" class="text-muted text-hover-primary px-2">Contact</a>
                    <a href="https://1.envato.market/EA4JP" class="text-muted text-hover-primary px-2">Contact Us</a>
                </div>
                <!--end::Links-->
            </div>
            <!--end::Footer-->
        </div>
        <!--end::Authentication - Sign-in-->
    </div>
    <!--end::Main-->
    <!--begin::Javascript-->
    <!--begin::Global Javascript Bundle(used by all pages)-->
    <script src="assets/plugins/global/plugins.bundle.js"></script>
    <script src="assets/js/scripts.bundle.js"></script>
    <!--end::Global Javascript Bundle-->
    <!--begin::Page Custom Javascript(used by this page)-->
    <script src="assets/js/custom/authentication/sign-in/general.js"></script>
    <!--end::Page Custom Javascript-->
    <!--end::Javascript-->
</body><!--end::Body--></html>