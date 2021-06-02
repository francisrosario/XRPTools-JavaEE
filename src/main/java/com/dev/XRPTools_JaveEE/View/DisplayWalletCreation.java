package com.dev.XRPTools_JaveEE.View;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class DisplayWalletCreation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        createXRPWallet wallet = (createXRPWallet)
        req.getAttribute("xrpwallet");

        out.println("<html lang=\"en\"><!--begin::Head--><head><base href=\"\">\n" +
                "\t<meta charset=\"utf-8\">\n" +
                "\t<title>XRP Wallet Tools</title>\n" +
                "\t<link rel=\"canonical\" href=\"Https://preview.keenthemes.com/metronic8\">\n" +
                "\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
                "\t<link rel=\"shortcut icon\" href=\"assets/media/logos/favicon.ico\">\n" +
                "\t<!--begin::Fonts-->\n" +
                "\t<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\">\n" +
                "\t<!--end::Fonts-->\n" +
                "\t<!--begin::Global Stylesheets Bundle(used by all pages)-->\n" +
                "\t<link href=\"assets/plugins/global/plugins.bundle.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "\t<link href=\"assets/css/style.bundle.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "  <link href=\"assets/css/style.bundletwo.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "\t<!--end::Global Stylesheets Bundle-->\n" +
                "</head>\n" +
                "<!--end::Head-->\n" +
                "<!--begin::Body-->\n" +
                "<body id=\"kt_body\" class=\"bg-white\" data-new-gr-c-s-check-loaded=\"8.875.0\" data-gr-ext-installed=\"\">\n" +
                "\t<!--begin::Main-->\n" +
                "\t<div class=\"d-flex flex-column flex-root\">\n" +
                "\t\t<!--begin::Authentication - Sign-in -->\n" +
                "\t\t<div class=\"d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed\" style=\"background-image: url(assets/media/illustrations/progress-hd.png)\">\n" +
                "\t\t\t<!--begin::Content-->\n" +
                "\t\t\t<div class=\"d-flex flex-center flex-column flex-column-fluid p-10 pb-lg-20\">\n" +
                "\t\t\t\t<!--begin::Logo-->\n" +
                "\t\t\t\t<a href=\"index.html\" class=\"mb-12\">\n" +
                "\t\t\t\t\t<img alt=\"Logo\" src=\"assets/media/logos/logo-2-dark.svg\" class=\"h-45px\">\n" +
                "\t\t\t\t</a>\n" +
                "\t\t\t\t<!--end::Logo-->\n" +
                "\t\t\t\t<!--begin::Wrapper-->\n" +
                "\t\t\t\t<div class=\"w-lg-600px bg-white rounded shadow-sm p-10 p-lg-15 mx-auto\">\n" +
                "\t\t\t\t\t<!--begin::Form-->\n" +
                "\t\t\t\t\t<form class=\"form w-100 fv-plugins-bootstrap5 fv-plugins-framework\" novalidate=\"novalidate\" id=\"kt_sign_in_form\" action=\"#\">\n" +
                "\t\t\t\t\t\t\n" +
                "<div class=\"notice d-flex bg-light-warning rounded border-warning border border-dashed mb-9 p-6\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<!--begin::Icon-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<!--begin::Svg Icon | path: icons/duotone/Code/Warning-1-circle.svg-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"svg-icon svg-icon-2tx svg-icon-warning me-4\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24px\" height=\"24px\" viewBox=\"0 0 24 24\" version=\"1.1\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<circle fill=\"#000000\" opacity=\"0.3\" cx=\"12\" cy=\"12\" r=\"10\"></circle>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<rect fill=\"#000000\" x=\"11\" y=\"7\" width=\"2\" height=\"8\" rx=\"1\"></rect>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<rect fill=\"#000000\" x=\"11\" y=\"16\" width=\"2\" height=\"2\" rx=\"1\"></rect>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</svg>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</span>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<!--end::Svg Icon-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<!--end::Icon-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<!--begin::Wrapper-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"d-flex flex-stack flex-grow-1\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<!--begin::Content-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"fw-bold\">\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h4 class=\"text-gray-800 fw-bolder\">Warning!</h4>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"fs-6 text-gray-600\">Take note of your generated XRP Address, Save it in a paper or txt file, Once the tab is quitted or refreshed there's no other way of regaining generated XRP Address<br>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t<!--end::Content-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t<!--end::Wrapper-->\n" +
                "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                "            <!--ADD CODE BELOW HERE-->\n" +
                "\n" + wallet.getWalletAddress() +
                "\t\t\t\t\t\t<!--ADD CODE ABOVE HERE-->\n" +
                "\t\t\t\t\t<div></div><div></div></form>\n" +
                "\t\t\t\t\t<!--end::Form-->\n" +
                "\t\t\t\t</div>\n" +
                "\t\t\t\t<!--end::Wrapper-->\n" +
                "\t\t\t</div>\n" +
                "\t\t\t<!--end::Content-->\n" +
                "\t\t\t<!--begin::Footer-->\n" +
                "\t\t\t<div class=\"d-flex flex-center flex-column-auto p-10\">\n" +
                "\t\t\t\t<!--begin::Links-->\n" +
                "\t\t\t\t<div class=\"d-flex align-items-center fw-bold fs-6\">\n" +
                "\t\t\t\t\t<a href=\"https://keenthemes.com/faqs\" class=\"text-muted text-hover-primary px-2\">About</a>\n" +
                "\t\t\t\t\t<a href=\"mailto:support@keenthemes.com\" class=\"text-muted text-hover-primary px-2\">Contact</a>\n" +
                "\t\t\t\t\t<a href=\"https://1.envato.market/EA4JP\" class=\"text-muted text-hover-primary px-2\">Contact Us</a>\n" +
                "\t\t\t\t</div>\n" +
                "\t\t\t\t<!--end::Links-->\n" +
                "\t\t\t</div>\n" +
                "\t\t\t<!--end::Footer-->\n" +
                "\t\t</div>\n" +
                "\t\t<!--end::Authentication - Sign-in-->\n" +
                "\t</div>\n" +
                "\t<!--end::Main-->\n" +
                "\t<!--begin::Javascript-->\n" +
                "\t<!--begin::Global Javascript Bundle(used by all pages)-->\n" +
                "\t<script src=\"assets/plugins/global/plugins.bundle.js\"></script>\n" +
                "\t<script src=\"assets/js/scripts.bundle.js\"></script>\n" +
                "\t<!--end::Global Javascript Bundle-->\n" +
                "\t<!--begin::Page Custom Javascript(used by this page)-->\n" +
                "\t<script src=\"assets/js/custom/authentication/sign-in/general.js\"></script>\n" +
                "\t<!--end::Page Custom Javascript-->\n" +
                "\t<!--end::Javascript-->\n" +
                "</body><!--end::Body--></html>");

        }
    }