package com.dev.XRPTools_JaveEE.View;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class DisplayWalletCreation extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        createXRPWallet wallet = (createXRPWallet)
        req.getAttribute("xrpwallet");

        out.println("<html lang=\"en\"><!--begin::Head--><head><base href=\"\">\n" +
                "\t<meta charset=\"utf-8\">\n" +
                "\t<title>Metronic Bootstrap 5 Theme | Keenthemes</title>\n" +
                "\t<meta name=\"description\" content=\"Metronic admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets.\">\n" +
                "\t<meta name=\"keywords\" content=\"Metronic, bootstrap, bootstrap 5, Angular 11, VueJs, React, Laravel, admin themes, web design, figma, web development, ree admin themes, bootstrap admin, bootstrap dashboard\">\n" +
                "\t<link rel=\"canonical\" href=\"Https://preview.keenthemes.com/metronic8\">\n" +
                "\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
                "\t<link rel=\"shortcut icon\" href=\"assets/media/logos/favicon.ico\">\n" +
                "\t<!--begin::Fonts-->\n" +
                "\t<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\">\n" +
                "\t<!--end::Fonts-->\n" +
                "\t<!--begin::Global Stylesheets Bundle(used by all pages)-->\n" +
                "\t<link href=\"assets/plugins/global/plugins.bundle.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "\t<link href=\"assets/css/style.bundle.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "\t<!--end::Global Stylesheets Bundle-->\n" +
                "<style type=\"text/css\">.apexcharts-canvas {\n" +
                " position: relative;\n" +
                " user-select: none;\n" +
                " /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */\n" +
                "\n" +
                "\n" +
                "* scrollbar is not visible by default for legend, hence forcing the visibility */\n" +
                "apexcharts-canvas ::-webkit-scrollbar {\n" +
                " -webkit-appearance: none;\n" +
                " width: 6px;\n" +
                "\n" +
                ".apexcharts-canvas ::-webkit-scrollbar-thumb {\n" +
                " border-radius: 4px;\n" +
                " background-color: rgba(0, 0, 0, .5);\n" +
                " box-shadow: 0 0 1px rgba(255, 255, 255, .5);\n" +
                " -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);\n" +
                "\n" +
                "\n" +
                "apexcharts-inner {\n" +
                " position: relative;\n" +
                "\n" +
                ".apexcharts-text tspan {\n" +
                " font-family: inherit;\n" +
                "\n" +
                ".legend-mouseover-inactive {\n" +
                " transition: 0.15s ease all;\n" +
                " opacity: 0.20;\n" +
                "\n" +
                ".apexcharts-series-collapsed {\n" +
                " opacity: 0;\n" +
                "\n" +
                ".apexcharts-tooltip {\n" +
                " border-radius: 5px;\n" +
                " box-shadow: 2px 2px 6px -4px #999;\n" +
                " cursor: default;\n" +
                " font-size: 14px;\n" +
                " left: 62px;\n" +
                " opacity: 0;\n" +
                " pointer-events: none;\n" +
                " position: absolute;\n" +
                " top: 20px;\n" +
                " display: flex;\n" +
                " flex-direction: column;\n" +
                " overflow: hidden;\n" +
                " white-space: nowrap;\n" +
                " z-index: 12;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-active {\n" +
                " opacity: 1;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-light {\n" +
                " border: 1px solid #e3e3e3;\n" +
                " background: rgba(255, 255, 255, 0.96);\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-dark {\n" +
                " color: #fff;\n" +
                " background: rgba(30, 30, 30, 0.8);\n" +
                "\n" +
                ".apexcharts-tooltip * {\n" +
                " font-family: inherit;\n" +
                "\n" +
                "\n" +
                "apexcharts-tooltip-title {\n" +
                " padding: 6px;\n" +
                " font-size: 15px;\n" +
                " margin-bottom: 4px;\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {\n" +
                " background: #ECEFF1;\n" +
                " border-bottom: 1px solid #ddd;\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {\n" +
                " background: rgba(0, 0, 0, 0.7);\n" +
                " border-bottom: 1px solid #333;\n" +
                "\n" +
                ".apexcharts-tooltip-text-value,\n" +
                "apexcharts-tooltip-text-z-value {\n" +
                " display: inline-block;\n" +
                " font-weight: 600;\n" +
                " margin-left: 5px;\n" +
                "\n" +
                ".apexcharts-tooltip-text-z-label:empty,\n" +
                "apexcharts-tooltip-text-z-value:empty {\n" +
                " display: none;\n" +
                "\n" +
                ".apexcharts-tooltip-text-value,\n" +
                "apexcharts-tooltip-text-z-value {\n" +
                " font-weight: 600;\n" +
                "\n" +
                ".apexcharts-tooltip-marker {\n" +
                " width: 12px;\n" +
                " height: 12px;\n" +
                " position: relative;\n" +
                " top: 0px;\n" +
                " margin-right: 10px;\n" +
                " border-radius: 50%;\n" +
                "\n" +
                ".apexcharts-tooltip-series-group {\n" +
                " padding: 0 10px;\n" +
                " display: none;\n" +
                " text-align: left;\n" +
                " justify-content: left;\n" +
                " align-items: center;\n" +
                "\n" +
                ".apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {\n" +
                " opacity: 1;\n" +
                "\n" +
                ".apexcharts-tooltip-series-group.apexcharts-active,\n" +
                "apexcharts-tooltip-series-group:last-child {\n" +
                " padding-bottom: 4px;\n" +
                "\n" +
                ".apexcharts-tooltip-series-group-hidden {\n" +
                " opacity: 0;\n" +
                " height: 0;\n" +
                " line-height: 0;\n" +
                " padding: 0 !important;\n" +
                "\n" +
                ".apexcharts-tooltip-y-group {\n" +
                " padding: 6px 0 5px;\n" +
                "\n" +
                ".apexcharts-tooltip-candlestick {\n" +
                " padding: 4px 8px;\n" +
                "\n" +
                ".apexcharts-tooltip-candlestick>div {\n" +
                " margin: 4px 0;\n" +
                "\n" +
                ".apexcharts-tooltip-candlestick span.value {\n" +
                " font-weight: bold;\n" +
                "\n" +
                ".apexcharts-tooltip-rangebar {\n" +
                " padding: 5px 8px;\n" +
                "\n" +
                ".apexcharts-tooltip-rangebar .category {\n" +
                " font-weight: 600;\n" +
                " color: #777;\n" +
                "\n" +
                ".apexcharts-tooltip-rangebar .series-name {\n" +
                " font-weight: bold;\n" +
                " display: block;\n" +
                " margin-bottom: 5px;\n" +
                "\n" +
                ".apexcharts-xaxistooltip {\n" +
                " opacity: 0;\n" +
                " padding: 9px 10px;\n" +
                " pointer-events: none;\n" +
                " color: #373d3f;\n" +
                " font-size: 13px;\n" +
                " text-align: center;\n" +
                " border-radius: 2px;\n" +
                " position: absolute;\n" +
                " z-index: 10;\n" +
                " background: #ECEFF1;\n" +
                " border: 1px solid #90A4AE;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-xaxistooltip.apexcharts-theme-dark {\n" +
                " background: rgba(0, 0, 0, 0.7);\n" +
                " border: 1px solid rgba(0, 0, 0, 0.5);\n" +
                " color: #fff;\n" +
                "\n" +
                ".apexcharts-xaxistooltip:after,\n" +
                "apexcharts-xaxistooltip:before {\n" +
                " left: 50%;\n" +
                " border: solid transparent;\n" +
                " content: \" \";\n" +
                " height: 0;\n" +
                " width: 0;\n" +
                " position: absolute;\n" +
                " pointer-events: none;\n" +
                "\n" +
                ".apexcharts-xaxistooltip:after {\n" +
                " border-color: rgba(236, 239, 241, 0);\n" +
                " border-width: 6px;\n" +
                " margin-left: -6px;\n" +
                "\n" +
                ".apexcharts-xaxistooltip:before {\n" +
                " border-color: rgba(144, 164, 174, 0);\n" +
                " border-width: 7px;\n" +
                " margin-left: -7px;\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom:after,\n" +
                "apexcharts-xaxistooltip-bottom:before {\n" +
                " bottom: 100%;\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top:after,\n" +
                "apexcharts-xaxistooltip-top:before {\n" +
                " top: 100%;\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom:after {\n" +
                " border-bottom-color: #ECEFF1;\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom:before {\n" +
                " border-bottom-color: #90A4AE;\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {\n" +
                " border-bottom-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {\n" +
                " border-bottom-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top:after {\n" +
                " border-top-color: #ECEFF1\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top:before {\n" +
                " border-top-color: #90A4AE;\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {\n" +
                " border-top-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {\n" +
                " border-top-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-xaxistooltip.apexcharts-active {\n" +
                " opacity: 1;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-yaxistooltip {\n" +
                " opacity: 0;\n" +
                " padding: 4px 10px;\n" +
                " pointer-events: none;\n" +
                " color: #373d3f;\n" +
                " font-size: 13px;\n" +
                " text-align: center;\n" +
                " border-radius: 2px;\n" +
                " position: absolute;\n" +
                " z-index: 10;\n" +
                " background: #ECEFF1;\n" +
                " border: 1px solid #90A4AE;\n" +
                "\n" +
                ".apexcharts-yaxistooltip.apexcharts-theme-dark {\n" +
                " background: rgba(0, 0, 0, 0.7);\n" +
                " border: 1px solid rgba(0, 0, 0, 0.5);\n" +
                " color: #fff;\n" +
                "\n" +
                ".apexcharts-yaxistooltip:after,\n" +
                "apexcharts-yaxistooltip:before {\n" +
                " top: 50%;\n" +
                " border: solid transparent;\n" +
                " content: \" \";\n" +
                " height: 0;\n" +
                " width: 0;\n" +
                " position: absolute;\n" +
                " pointer-events: none;\n" +
                "\n" +
                ".apexcharts-yaxistooltip:after {\n" +
                " border-color: rgba(236, 239, 241, 0);\n" +
                " border-width: 6px;\n" +
                " margin-top: -6px;\n" +
                "\n" +
                ".apexcharts-yaxistooltip:before {\n" +
                " border-color: rgba(144, 164, 174, 0);\n" +
                " border-width: 7px;\n" +
                " margin-top: -7px;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left:after,\n" +
                "apexcharts-yaxistooltip-left:before {\n" +
                " left: 100%;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right:after,\n" +
                "apexcharts-yaxistooltip-right:before {\n" +
                " right: 100%;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left:after {\n" +
                " border-left-color: #ECEFF1;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left:before {\n" +
                " border-left-color: #90A4AE;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {\n" +
                " border-left-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {\n" +
                " border-left-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right:after {\n" +
                " border-right-color: #ECEFF1;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right:before {\n" +
                " border-right-color: #90A4AE;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {\n" +
                " border-right-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {\n" +
                " border-right-color: rgba(0, 0, 0, 0.5);\n" +
                "\n" +
                ".apexcharts-yaxistooltip.apexcharts-active {\n" +
                " opacity: 1;\n" +
                "\n" +
                ".apexcharts-yaxistooltip-hidden {\n" +
                " display: none;\n" +
                "\n" +
                ".apexcharts-xcrosshairs,\n" +
                "apexcharts-ycrosshairs {\n" +
                " pointer-events: none;\n" +
                " opacity: 0;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-xcrosshairs.apexcharts-active,\n" +
                "apexcharts-ycrosshairs.apexcharts-active {\n" +
                " opacity: 1;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-ycrosshairs-hidden {\n" +
                " opacity: 0;\n" +
                "\n" +
                ".apexcharts-selection-rect {\n" +
                " cursor: move;\n" +
                "\n" +
                ".svg_select_boundingRect, .svg_select_points_rot {\n" +
                " pointer-events: none;\n" +
                " opacity: 0;\n" +
                " visibility: hidden;\n" +
                "\n" +
                "apexcharts-selection-rect + g .svg_select_boundingRect,\n" +
                "apexcharts-selection-rect + g .svg_select_points_rot {\n" +
                " opacity: 0;\n" +
                " visibility: hidden;\n" +
                "\n" +
                ".apexcharts-selection-rect + g .svg_select_points_l,\n" +
                "apexcharts-selection-rect + g .svg_select_points_r {\n" +
                " cursor: ew-resize;\n" +
                " opacity: 1;\n" +
                " visibility: visible;\n" +
                "\n" +
                ".svg_select_points {\n" +
                " fill: #efefef;\n" +
                " stroke: #333;\n" +
                " rx: 2;\n" +
                "\n" +
                ".apexcharts-svg.apexcharts-zoomable.hovering-zoom {\n" +
                " cursor: crosshair\n" +
                "\n" +
                ".apexcharts-svg.apexcharts-zoomable.hovering-pan {\n" +
                " cursor: move\n" +
                "\n" +
                ".apexcharts-zoom-icon,\n" +
                "apexcharts-zoomin-icon,\n" +
                "apexcharts-zoomout-icon,\n" +
                "apexcharts-reset-icon,\n" +
                "apexcharts-pan-icon,\n" +
                "apexcharts-selection-icon,\n" +
                "apexcharts-menu-icon,\n" +
                "apexcharts-toolbar-custom-icon {\n" +
                " cursor: pointer;\n" +
                " width: 20px;\n" +
                " height: 20px;\n" +
                " line-height: 24px;\n" +
                " color: #6E8192;\n" +
                " text-align: center;\n" +
                "\n" +
                ".apexcharts-zoom-icon svg,\n" +
                "apexcharts-zoomin-icon svg,\n" +
                "apexcharts-zoomout-icon svg,\n" +
                "apexcharts-reset-icon svg,\n" +
                "apexcharts-menu-icon svg {\n" +
                " fill: #6E8192;\n" +
                "\n" +
                ".apexcharts-selection-icon svg {\n" +
                " fill: #444;\n" +
                " transform: scale(0.76)\n" +
                "\n" +
                ".apexcharts-theme-dark .apexcharts-zoom-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-zoomin-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-zoomout-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-reset-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-pan-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-selection-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-menu-icon svg,\n" +
                "apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {\n" +
                " fill: #f3f4f5;\n" +
                "\n" +
                ".apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,\n" +
                "apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,\n" +
                "apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {\n" +
                " fill: #008FFB;\n" +
                "\n" +
                ".apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,\n" +
                "apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,\n" +
                "apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,\n" +
                "apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,\n" +
                "apexcharts-theme-light .apexcharts-reset-icon:hover svg,\n" +
                "apexcharts-theme-light .apexcharts-menu-icon:hover svg {\n" +
                " fill: #333;\n" +
                "\n" +
                ".apexcharts-selection-icon,\n" +
                "apexcharts-menu-icon {\n" +
                " position: relative;\n" +
                "\n" +
                ".apexcharts-reset-icon {\n" +
                " margin-left: 5px;\n" +
                "\n" +
                ".apexcharts-zoom-icon,\n" +
                "apexcharts-reset-icon,\n" +
                "apexcharts-menu-icon {\n" +
                " transform: scale(0.85);\n" +
                "\n" +
                ".apexcharts-zoomin-icon,\n" +
                "apexcharts-zoomout-icon {\n" +
                " transform: scale(0.7)\n" +
                "\n" +
                ".apexcharts-zoomout-icon {\n" +
                " margin-right: 3px;\n" +
                "\n" +
                ".apexcharts-pan-icon {\n" +
                " transform: scale(0.62);\n" +
                " position: relative;\n" +
                " left: 1px;\n" +
                " top: 0px;\n" +
                "\n" +
                ".apexcharts-pan-icon svg {\n" +
                " fill: #fff;\n" +
                " stroke: #6E8192;\n" +
                " stroke-width: 2;\n" +
                "\n" +
                ".apexcharts-pan-icon.apexcharts-selected svg {\n" +
                " stroke: #008FFB;\n" +
                "\n" +
                ".apexcharts-pan-icon:not(.apexcharts-selected):hover svg {\n" +
                " stroke: #333;\n" +
                "\n" +
                ".apexcharts-toolbar {\n" +
                " position: absolute;\n" +
                " z-index: 11;\n" +
                " max-width: 176px;\n" +
                " text-align: right;\n" +
                " border-radius: 3px;\n" +
                " padding: 0px 6px 2px 6px;\n" +
                " display: flex;\n" +
                " justify-content: space-between;\n" +
                " align-items: center;\n" +
                "\n" +
                ".apexcharts-menu {\n" +
                " background: #fff;\n" +
                " position: absolute;\n" +
                " top: 100%;\n" +
                " border: 1px solid #ddd;\n" +
                " border-radius: 3px;\n" +
                " padding: 3px;\n" +
                " right: 10px;\n" +
                " opacity: 0;\n" +
                " min-width: 110px;\n" +
                " transition: 0.15s ease all;\n" +
                " pointer-events: none;\n" +
                "\n" +
                ".apexcharts-menu.apexcharts-menu-open {\n" +
                " opacity: 1;\n" +
                " pointer-events: all;\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                ".apexcharts-menu-item {\n" +
                " padding: 6px 7px;\n" +
                " font-size: 12px;\n" +
                " cursor: pointer;\n" +
                "\n" +
                ".apexcharts-theme-light .apexcharts-menu-item:hover {\n" +
                " background: #eee;\n" +
                "\n" +
                ".apexcharts-theme-dark .apexcharts-menu {\n" +
                " background: rgba(0, 0, 0, 0.7);\n" +
                " color: #fff;\n" +
                "\n" +
                "@media screen and (min-width: 768px) {\n" +
                " .apexcharts-canvas:hover .apexcharts-toolbar {\n" +
                "   opacity: 1;\n" +
                " }\n" +
                "\n" +
                ".apexcharts-datalabel.apexcharts-element-hidden {\n" +
                " opacity: 0;\n" +
                "\n" +
                ".apexcharts-pie-label,\n" +
                "apexcharts-datalabels,\n" +
                "apexcharts-datalabel,\n" +
                "apexcharts-datalabel-label,\n" +
                "apexcharts-datalabel-value {\n" +
                " cursor: default;\n" +
                " pointer-events: none;\n" +
                "\n" +
                ".apexcharts-pie-label-delay {\n" +
                " opacity: 0;\n" +
                " animation-name: opaque;\n" +
                " animation-duration: 0.3s;\n" +
                " animation-fill-mode: forwards;\n" +
                " animation-timing-function: ease;\n" +
                "\n" +
                ".apexcharts-canvas .apexcharts-element-hidden {\n" +
                " opacity: 0;\n" +
                "\n" +
                ".apexcharts-hide .apexcharts-series-points {\n" +
                " opacity: 0;\n" +
                "\n" +
                ".apexcharts-gridline,\n" +
                "apexcharts-annotation-rect,\n" +
                "apexcharts-tooltip .apexcharts-marker,\n" +
                "apexcharts-area-series .apexcharts-area,\n" +
                "apexcharts-line,\n" +
                "apexcharts-zoom-rect,\n" +
                "apexcharts-toolbar svg,\n" +
                "apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,\n" +
                "apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,\n" +
                "apexcharts-radar-series path,\n" +
                "apexcharts-radar-series polygon {\n" +
                " pointer-events: none;\n" +
                "\n" +
                "\n" +
                "* markers */\n" +
                ".apexcharts-marker {\n" +
                " transition: 0.15s ease all;\n" +
                "\n" +
                "@keyframes opaque {\n" +
                " 0% {\n" +
                "   opacity: 0;\n" +
                " }\n" +
                " 100% {\n" +
                "   opacity: 1;\n" +
                " }\n" +
                "\n" +
                "\n" +
                "* Resize generated styles */\n" +
                "@keyframes resizeanim {\n" +
                " from {\n" +
                "   opacity: 0;\n" +
                " }\n" +
                " to {\n" +
                "   opacity: 0;\n" +
                " }\n" +
                "\n" +
                ".resize-triggers {\n" +
                " animation: 1ms resizeanim;\n" +
                " visibility: hidden;\n" +
                " opacity: 0;\n" +
                "\n" +
                ".resize-triggers,\n" +
                "resize-triggers>div,\n" +
                "contract-trigger:before {\n" +
                " content: \" \";\n" +
                " display: block;\n" +
                " position: absolute;\n" +
                " top: 0;\n" +
                " left: 0;\n" +
                " height: 100%;\n" +
                " width: 100%;\n" +
                " overflow: hidden;\n" +
                "\n" +
                ".resize-triggers>div {\n" +
                " background: #eee;\n" +
                " overflow: auto;\n" +
                "\n" +
                ".contract-trigger:before {\n" +
                " width: 200%;\n" +
                " height: 200%;\n" +
                "</style><style type=\"text/css\">.apexcharts-canvas {\n" +
                "  position: relative;\n" +
                "  user-select: none;\n" +
                "  /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* scrollbar is not visible by default for legend, hence forcing the visibility */\n" +
                ".apexcharts-canvas ::-webkit-scrollbar {\n" +
                "  -webkit-appearance: none;\n" +
                "  width: 6px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-canvas ::-webkit-scrollbar-thumb {\n" +
                "  border-radius: 4px;\n" +
                "  background-color: rgba(0, 0, 0, .5);\n" +
                "  box-shadow: 0 0 1px rgba(255, 255, 255, .5);\n" +
                "  -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".apexcharts-inner {\n" +
                "  position: relative;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-text tspan {\n" +
                "  font-family: inherit;\n" +
                "}\n" +
                "\n" +
                ".legend-mouseover-inactive {\n" +
                "  transition: 0.15s ease all;\n" +
                "  opacity: 0.20;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-series-collapsed {\n" +
                "  opacity: 0;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip {\n" +
                "  border-radius: 5px;\n" +
                "  box-shadow: 2px 2px 6px -4px #999;\n" +
                "  cursor: default;\n" +
                "  font-size: 14px;\n" +
                "  left: 62px;\n" +
                "  opacity: 0;\n" +
                "  pointer-events: none;\n" +
                "  position: absolute;\n" +
                "  top: 20px;\n" +
                "  display: flex;\n" +
                "  flex-direction: column;\n" +
                "  overflow: hidden;\n" +
                "  white-space: nowrap;\n" +
                "  z-index: 12;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-active {\n" +
                "  opacity: 1;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-light {\n" +
                "  border: 1px solid #e3e3e3;\n" +
                "  background: rgba(255, 255, 255, 0.96);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-dark {\n" +
                "  color: #fff;\n" +
                "  background: rgba(30, 30, 30, 0.8);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip * {\n" +
                "  font-family: inherit;\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".apexcharts-tooltip-title {\n" +
                "  padding: 6px;\n" +
                "  font-size: 15px;\n" +
                "  margin-bottom: 4px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {\n" +
                "  background: #ECEFF1;\n" +
                "  border-bottom: 1px solid #ddd;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {\n" +
                "  background: rgba(0, 0, 0, 0.7);\n" +
                "  border-bottom: 1px solid #333;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-text-value,\n" +
                ".apexcharts-tooltip-text-z-value {\n" +
                "  display: inline-block;\n" +
                "  font-weight: 600;\n" +
                "  margin-left: 5px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-text-z-label:empty,\n" +
                ".apexcharts-tooltip-text-z-value:empty {\n" +
                "  display: none;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-text-value,\n" +
                ".apexcharts-tooltip-text-z-value {\n" +
                "  font-weight: 600;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-marker {\n" +
                "  width: 12px;\n" +
                "  height: 12px;\n" +
                "  position: relative;\n" +
                "  top: 0px;\n" +
                "  margin-right: 10px;\n" +
                "  border-radius: 50%;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-series-group {\n" +
                "  padding: 0 10px;\n" +
                "  display: none;\n" +
                "  text-align: left;\n" +
                "  justify-content: left;\n" +
                "  align-items: center;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {\n" +
                "  opacity: 1;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-series-group.apexcharts-active,\n" +
                ".apexcharts-tooltip-series-group:last-child {\n" +
                "  padding-bottom: 4px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-series-group-hidden {\n" +
                "  opacity: 0;\n" +
                "  height: 0;\n" +
                "  line-height: 0;\n" +
                "  padding: 0 !important;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-y-group {\n" +
                "  padding: 6px 0 5px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-candlestick {\n" +
                "  padding: 4px 8px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-candlestick>div {\n" +
                "  margin: 4px 0;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-candlestick span.value {\n" +
                "  font-weight: bold;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-rangebar {\n" +
                "  padding: 5px 8px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-rangebar .category {\n" +
                "  font-weight: 600;\n" +
                "  color: #777;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-tooltip-rangebar .series-name {\n" +
                "  font-weight: bold;\n" +
                "  display: block;\n" +
                "  margin-bottom: 5px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip {\n" +
                "  opacity: 0;\n" +
                "  padding: 9px 10px;\n" +
                "  pointer-events: none;\n" +
                "  color: #373d3f;\n" +
                "  font-size: 13px;\n" +
                "  text-align: center;\n" +
                "  border-radius: 2px;\n" +
                "  position: absolute;\n" +
                "  z-index: 10;\n" +
                "  background: #ECEFF1;\n" +
                "  border: 1px solid #90A4AE;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip.apexcharts-theme-dark {\n" +
                "  background: rgba(0, 0, 0, 0.7);\n" +
                "  border: 1px solid rgba(0, 0, 0, 0.5);\n" +
                "  color: #fff;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip:after,\n" +
                ".apexcharts-xaxistooltip:before {\n" +
                "  left: 50%;\n" +
                "  border: solid transparent;\n" +
                "  content: \" \";\n" +
                "  height: 0;\n" +
                "  width: 0;\n" +
                "  position: absolute;\n" +
                "  pointer-events: none;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip:after {\n" +
                "  border-color: rgba(236, 239, 241, 0);\n" +
                "  border-width: 6px;\n" +
                "  margin-left: -6px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip:before {\n" +
                "  border-color: rgba(144, 164, 174, 0);\n" +
                "  border-width: 7px;\n" +
                "  margin-left: -7px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom:after,\n" +
                ".apexcharts-xaxistooltip-bottom:before {\n" +
                "  bottom: 100%;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top:after,\n" +
                ".apexcharts-xaxistooltip-top:before {\n" +
                "  top: 100%;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom:after {\n" +
                "  border-bottom-color: #ECEFF1;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom:before {\n" +
                "  border-bottom-color: #90A4AE;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {\n" +
                "  border-bottom-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {\n" +
                "  border-bottom-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top:after {\n" +
                "  border-top-color: #ECEFF1\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top:before {\n" +
                "  border-top-color: #90A4AE;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {\n" +
                "  border-top-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {\n" +
                "  border-top-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xaxistooltip.apexcharts-active {\n" +
                "  opacity: 1;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip {\n" +
                "  opacity: 0;\n" +
                "  padding: 4px 10px;\n" +
                "  pointer-events: none;\n" +
                "  color: #373d3f;\n" +
                "  font-size: 13px;\n" +
                "  text-align: center;\n" +
                "  border-radius: 2px;\n" +
                "  position: absolute;\n" +
                "  z-index: 10;\n" +
                "  background: #ECEFF1;\n" +
                "  border: 1px solid #90A4AE;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip.apexcharts-theme-dark {\n" +
                "  background: rgba(0, 0, 0, 0.7);\n" +
                "  border: 1px solid rgba(0, 0, 0, 0.5);\n" +
                "  color: #fff;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip:after,\n" +
                ".apexcharts-yaxistooltip:before {\n" +
                "  top: 50%;\n" +
                "  border: solid transparent;\n" +
                "  content: \" \";\n" +
                "  height: 0;\n" +
                "  width: 0;\n" +
                "  position: absolute;\n" +
                "  pointer-events: none;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip:after {\n" +
                "  border-color: rgba(236, 239, 241, 0);\n" +
                "  border-width: 6px;\n" +
                "  margin-top: -6px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip:before {\n" +
                "  border-color: rgba(144, 164, 174, 0);\n" +
                "  border-width: 7px;\n" +
                "  margin-top: -7px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left:after,\n" +
                ".apexcharts-yaxistooltip-left:before {\n" +
                "  left: 100%;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right:after,\n" +
                ".apexcharts-yaxistooltip-right:before {\n" +
                "  right: 100%;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left:after {\n" +
                "  border-left-color: #ECEFF1;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left:before {\n" +
                "  border-left-color: #90A4AE;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {\n" +
                "  border-left-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {\n" +
                "  border-left-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right:after {\n" +
                "  border-right-color: #ECEFF1;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right:before {\n" +
                "  border-right-color: #90A4AE;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {\n" +
                "  border-right-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {\n" +
                "  border-right-color: rgba(0, 0, 0, 0.5);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip.apexcharts-active {\n" +
                "  opacity: 1;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-yaxistooltip-hidden {\n" +
                "  display: none;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xcrosshairs,\n" +
                ".apexcharts-ycrosshairs {\n" +
                "  pointer-events: none;\n" +
                "  opacity: 0;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-xcrosshairs.apexcharts-active,\n" +
                ".apexcharts-ycrosshairs.apexcharts-active {\n" +
                "  opacity: 1;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-ycrosshairs-hidden {\n" +
                "  opacity: 0;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-selection-rect {\n" +
                "  cursor: move;\n" +
                "}\n" +
                "\n" +
                ".svg_select_boundingRect, .svg_select_points_rot {\n" +
                "  pointer-events: none;\n" +
                "  opacity: 0;\n" +
                "  visibility: hidden;\n" +
                "}\n" +
                ".apexcharts-selection-rect + g .svg_select_boundingRect,\n" +
                ".apexcharts-selection-rect + g .svg_select_points_rot {\n" +
                "  opacity: 0;\n" +
                "  visibility: hidden;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-selection-rect + g .svg_select_points_l,\n" +
                ".apexcharts-selection-rect + g .svg_select_points_r {\n" +
                "  cursor: ew-resize;\n" +
                "  opacity: 1;\n" +
                "  visibility: visible;\n" +
                "}\n" +
                "\n" +
                ".svg_select_points {\n" +
                "  fill: #efefef;\n" +
                "  stroke: #333;\n" +
                "  rx: 2;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-svg.apexcharts-zoomable.hovering-zoom {\n" +
                "  cursor: crosshair\n" +
                "}\n" +
                "\n" +
                ".apexcharts-svg.apexcharts-zoomable.hovering-pan {\n" +
                "  cursor: move\n" +
                "}\n" +
                "\n" +
                ".apexcharts-zoom-icon,\n" +
                ".apexcharts-zoomin-icon,\n" +
                ".apexcharts-zoomout-icon,\n" +
                ".apexcharts-reset-icon,\n" +
                ".apexcharts-pan-icon,\n" +
                ".apexcharts-selection-icon,\n" +
                ".apexcharts-menu-icon,\n" +
                ".apexcharts-toolbar-custom-icon {\n" +
                "  cursor: pointer;\n" +
                "  width: 20px;\n" +
                "  height: 20px;\n" +
                "  line-height: 24px;\n" +
                "  color: #6E8192;\n" +
                "  text-align: center;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-zoom-icon svg,\n" +
                ".apexcharts-zoomin-icon svg,\n" +
                ".apexcharts-zoomout-icon svg,\n" +
                ".apexcharts-reset-icon svg,\n" +
                ".apexcharts-menu-icon svg {\n" +
                "  fill: #6E8192;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-selection-icon svg {\n" +
                "  fill: #444;\n" +
                "  transform: scale(0.76)\n" +
                "}\n" +
                "\n" +
                ".apexcharts-theme-dark .apexcharts-zoom-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-zoomin-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-zoomout-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-reset-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-pan-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-selection-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-menu-icon svg,\n" +
                ".apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {\n" +
                "  fill: #f3f4f5;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,\n" +
                ".apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,\n" +
                ".apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {\n" +
                "  fill: #008FFB;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,\n" +
                ".apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,\n" +
                ".apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,\n" +
                ".apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,\n" +
                ".apexcharts-theme-light .apexcharts-reset-icon:hover svg,\n" +
                ".apexcharts-theme-light .apexcharts-menu-icon:hover svg {\n" +
                "  fill: #333;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-selection-icon,\n" +
                ".apexcharts-menu-icon {\n" +
                "  position: relative;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-reset-icon {\n" +
                "  margin-left: 5px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-zoom-icon,\n" +
                ".apexcharts-reset-icon,\n" +
                ".apexcharts-menu-icon {\n" +
                "  transform: scale(0.85);\n" +
                "}\n" +
                "\n" +
                ".apexcharts-zoomin-icon,\n" +
                ".apexcharts-zoomout-icon {\n" +
                "  transform: scale(0.7)\n" +
                "}\n" +
                "\n" +
                ".apexcharts-zoomout-icon {\n" +
                "  margin-right: 3px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-pan-icon {\n" +
                "  transform: scale(0.62);\n" +
                "  position: relative;\n" +
                "  left: 1px;\n" +
                "  top: 0px;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-pan-icon svg {\n" +
                "  fill: #fff;\n" +
                "  stroke: #6E8192;\n" +
                "  stroke-width: 2;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-pan-icon.apexcharts-selected svg {\n" +
                "  stroke: #008FFB;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-pan-icon:not(.apexcharts-selected):hover svg {\n" +
                "  stroke: #333;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-toolbar {\n" +
                "  position: absolute;\n" +
                "  z-index: 11;\n" +
                "  max-width: 176px;\n" +
                "  text-align: right;\n" +
                "  border-radius: 3px;\n" +
                "  padding: 0px 6px 2px 6px;\n" +
                "  display: flex;\n" +
                "  justify-content: space-between;\n" +
                "  align-items: center;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-menu {\n" +
                "  background: #fff;\n" +
                "  position: absolute;\n" +
                "  top: 100%;\n" +
                "  border: 1px solid #ddd;\n" +
                "  border-radius: 3px;\n" +
                "  padding: 3px;\n" +
                "  right: 10px;\n" +
                "  opacity: 0;\n" +
                "  min-width: 110px;\n" +
                "  transition: 0.15s ease all;\n" +
                "  pointer-events: none;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-menu.apexcharts-menu-open {\n" +
                "  opacity: 1;\n" +
                "  pointer-events: all;\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-menu-item {\n" +
                "  padding: 6px 7px;\n" +
                "  font-size: 12px;\n" +
                "  cursor: pointer;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-theme-light .apexcharts-menu-item:hover {\n" +
                "  background: #eee;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-theme-dark .apexcharts-menu {\n" +
                "  background: rgba(0, 0, 0, 0.7);\n" +
                "  color: #fff;\n" +
                "}\n" +
                "\n" +
                "@media screen and (min-width: 768px) {\n" +
                "  .apexcharts-canvas:hover .apexcharts-toolbar {\n" +
                "    opacity: 1;\n" +
                "  }\n" +
                "}\n" +
                "\n" +
                ".apexcharts-datalabel.apexcharts-element-hidden {\n" +
                "  opacity: 0;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-pie-label,\n" +
                ".apexcharts-datalabels,\n" +
                ".apexcharts-datalabel,\n" +
                ".apexcharts-datalabel-label,\n" +
                ".apexcharts-datalabel-value {\n" +
                "  cursor: default;\n" +
                "  pointer-events: none;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-pie-label-delay {\n" +
                "  opacity: 0;\n" +
                "  animation-name: opaque;\n" +
                "  animation-duration: 0.3s;\n" +
                "  animation-fill-mode: forwards;\n" +
                "  animation-timing-function: ease;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-canvas .apexcharts-element-hidden {\n" +
                "  opacity: 0;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-hide .apexcharts-series-points {\n" +
                "  opacity: 0;\n" +
                "}\n" +
                "\n" +
                ".apexcharts-gridline,\n" +
                ".apexcharts-annotation-rect,\n" +
                ".apexcharts-tooltip .apexcharts-marker,\n" +
                ".apexcharts-area-series .apexcharts-area,\n" +
                ".apexcharts-line,\n" +
                ".apexcharts-zoom-rect,\n" +
                ".apexcharts-toolbar svg,\n" +
                ".apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,\n" +
                ".apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,\n" +
                ".apexcharts-radar-series path,\n" +
                ".apexcharts-radar-series polygon {\n" +
                "  pointer-events: none;\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* markers */\n" +
                "\n" +
                ".apexcharts-marker {\n" +
                "  transition: 0.15s ease all;\n" +
                "}\n" +
                "\n" +
                "@keyframes opaque {\n" +
                "  0% {\n" +
                "    opacity: 0;\n" +
                "  }\n" +
                "  100% {\n" +
                "    opacity: 1;\n" +
                "  }\n" +
                "}\n" +
                "\n" +
                "\n" +
                "/* Resize generated styles */\n" +
                "\n" +
                "@keyframes resizeanim {\n" +
                "  from {\n" +
                "    opacity: 0;\n" +
                "  }\n" +
                "  to {\n" +
                "    opacity: 0;\n" +
                "  }\n" +
                "}\n" +
                "\n" +
                ".resize-triggers {\n" +
                "  animation: 1ms resizeanim;\n" +
                "  visibility: hidden;\n" +
                "  opacity: 0;\n" +
                "}\n" +
                "\n" +
                ".resize-triggers,\n" +
                ".resize-triggers>div,\n" +
                ".contract-trigger:before {\n" +
                "  content: \" \";\n" +
                "  display: block;\n" +
                "  position: absolute;\n" +
                "  top: 0;\n" +
                "  left: 0;\n" +
                "  height: 100%;\n" +
                "  width: 100%;\n" +
                "  overflow: hidden;\n" +
                "}\n" +
                "\n" +
                ".resize-triggers>div {\n" +
                "  background: #eee;\n" +
                "  overflow: auto;\n" +
                "}\n" +
                "\n" +
                ".contract-trigger:before {\n" +
                "  width: 200%;\n" +
                "  height: 200%;\n" +
                "}</style></head>\n" +
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
                "\t\t\t\t\t\t\n<div class=\"notice d-flex bg-light-warning rounded border-warning border border-dashed mb-9 p-6\">\n" +
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
                "\t\t\t\t\t\t\t\t\t\t\t</div>" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\n" + wallet.getWalletAddress() +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t\n" +
                "\t\t\t\t\t\t<!--ADD CODE HERE-->\n" +
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
                "\n" +
                "\n" +
                "svg id=\"SvgjsSvg1001\" width=\"2\" height=\"0\" xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:svgjs=\"http://svgjs.com/svgjs\" style=\"overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;\"&gt;<defs id=\"SvgjsDefs1002\"></defs><polyline id=\"SvgjsPolyline1003\" points=\"0,0\"></polyline><path id=\"SvgjsPath1004\" d=\"M0 0 \"></path>\n" +
                "<svg id=\"SvgjsSvg1001\" width=\"2\" height=\"0\" xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:svgjs=\"http://svgjs.com/svgjs\" style=\"overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;\"><defs id=\"SvgjsDefs1002\"></defs><polyline id=\"SvgjsPolyline1003\" points=\"0,0\"></polyline><path id=\"SvgjsPath1004\" d=\"M0 0 \"></path></svg></body><!--end::Body--></html>");

        }
    }