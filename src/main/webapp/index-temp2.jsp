<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.dev.xrpwebtools.Model.XRPConn" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
  ///request.getSession(false);
  XRPConn wallet = (XRPConn)session.getAttribute("dashboard");
%>
<html lang="en"><!--begin::Head--><head>
  <meta charset="utf-8">
  <title>XRP Wallet Tools</title>
  <meta name="description" content="Metronic admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets.">
  <meta name="keywords" content="Metronic, bootstrap, bootstrap 5, Angular 11, VueJs, React, Laravel, admin themes, web design, figma, web development, ree admin themes, bootstrap admin, bootstrap dashboard">
  <link rel="canonical" href="Https://preview.keenthemes.com/metronic8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="/metronic8/demo1/assets/media/logos/favicon.ico">
  <!--begin::Fonts-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
  <!--end::Fonts-->
  <!--begin::Global Stylesheets Bundle(used by all pages)-->
  <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css">
  <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css">
  <!--end::Global Stylesheets Bundle-->
  <!--begin:: Hotjar Tracking Code for keenthemes.com -->
  <script src="https://connect.facebook.net/signals/config/738802870177541?v=2.9.40&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5FS8GGP"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-CDVH4VH813&amp;l=dataLayer&amp;cx=c"></script><script src="https://connect.facebook.net/signals/config/738802870177541?v=2.9.40&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5FS8GGP"></script><script src="https://connect.facebook.net/signals/config/738802870177541?v=2.9.40&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5FS8GGP"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-CDVH4VH813&amp;l=dataLayer&amp;cx=c"></script><script src="https://connect.facebook.net/signals/config/738802870177541?v=2.9.40&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-CDVH4VH813&amp;l=dataLayer&amp;cx=c"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5FS8GGP"></script><script>(function(h,o,t,j,a,r){ h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)}; h._hjSettings={hjid:1070954,hjsv:6}; a=o.getElementsByTagName('head')[0]; r=o.createElement('script');r.async=1; r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv; a.appendChild(r); })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');</script><script async="" src="https://static.hotjar.com/c/hotjar-1070954.js?sv=6"></script><script async="" src="https://static.hotjar.com/c/hotjar-1070954.js?sv=6"></script><script async="" src="https://static.hotjar.com/c/hotjar-1070954.js?sv=6"></script><script async="" src="https://static.hotjar.com/c/hotjar-1070954.js?sv=6"></script>
  <!--end:: Hotjar Tracking Code for keenthemes.com -->
  <!--Begin::Google Tag Manager -->
  <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&amp;l='+l:'';j.async=true;j.src= 'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-5FS8GGP');</script>
  <!--End::Google Tag Manager -->
  <script async="" src="https://script.hotjar.com/modules.db29179a0bade389a8b8.js" charset="utf-8"></script><style type="text/css">iframe#_hjRemoteVarsFrame {display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;}</style><style type="text/css">.apexcharts-canvas {
  position: relative;
  user-select: none;
  /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
}


/* scrollbar is not visible by default for legend, hence forcing the visibility */
.apexcharts-canvas ::-webkit-scrollbar {
  -webkit-appearance: none;
  width: 6px;
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
  border-radius: 4px;
  background-color: rgba(0, 0, 0, .5);
  box-shadow: 0 0 1px rgba(255, 255, 255, .5);
  -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
}


.apexcharts-inner {
  position: relative;
}

.apexcharts-text tspan {
  font-family: inherit;
}

.legend-mouseover-inactive {
  transition: 0.15s ease all;
  opacity: 0.20;
}

.apexcharts-series-collapsed {
  opacity: 0;
}

.apexcharts-tooltip {
  border-radius: 5px;
  box-shadow: 2px 2px 6px -4px #999;
  cursor: default;
  font-size: 14px;
  left: 62px;
  opacity: 0;
  pointer-events: none;
  position: absolute;
  top: 20px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  white-space: nowrap;
  z-index: 12;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-theme-light {
  border: 1px solid #e3e3e3;
  background: rgba(255, 255, 255, 0.96);
}

.apexcharts-tooltip.apexcharts-theme-dark {
  color: #fff;
  background: rgba(30, 30, 30, 0.8);
}

.apexcharts-tooltip * {
  font-family: inherit;
}


.apexcharts-tooltip-title {
  padding: 6px;
  font-size: 15px;
  margin-bottom: 4px;
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
  background: #ECEFF1;
  border-bottom: 1px solid #ddd;
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
  background: rgba(0, 0, 0, 0.7);
  border-bottom: 1px solid #333;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  display: inline-block;
  font-weight: 600;
  margin-left: 5px;
}

.apexcharts-tooltip-text-z-label:empty,
.apexcharts-tooltip-text-z-value:empty {
  display: none;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  font-weight: 600;
}

.apexcharts-tooltip-marker {
  width: 12px;
  height: 12px;
  position: relative;
  top: 0px;
  margin-right: 10px;
  border-radius: 50%;
}

.apexcharts-tooltip-series-group {
  padding: 0 10px;
  display: none;
  text-align: left;
  justify-content: left;
  align-items: center;
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {
  opacity: 1;
}

.apexcharts-tooltip-series-group.apexcharts-active,
.apexcharts-tooltip-series-group:last-child {
  padding-bottom: 4px;
}

.apexcharts-tooltip-series-group-hidden {
  opacity: 0;
  height: 0;
  line-height: 0;
  padding: 0 !important;
}

.apexcharts-tooltip-y-group {
  padding: 6px 0 5px;
}

.apexcharts-tooltip-candlestick {
  padding: 4px 8px;
}

.apexcharts-tooltip-candlestick>div {
  margin: 4px 0;
}

.apexcharts-tooltip-candlestick span.value {
  font-weight: bold;
}

.apexcharts-tooltip-rangebar {
  padding: 5px 8px;
}

.apexcharts-tooltip-rangebar .category {
  font-weight: 600;
  color: #777;
}

.apexcharts-tooltip-rangebar .series-name {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}

.apexcharts-xaxistooltip {
  opacity: 0;
  padding: 9px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
  transition: 0.15s ease all;
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-xaxistooltip:after,
.apexcharts-xaxistooltip:before {
  left: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-xaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-left: -6px;
}

.apexcharts-xaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-left: -7px;
}

.apexcharts-xaxistooltip-bottom:after,
.apexcharts-xaxistooltip-bottom:before {
  bottom: 100%;
}

.apexcharts-xaxistooltip-top:after,
.apexcharts-xaxistooltip-top:before {
  top: 100%;
}

.apexcharts-xaxistooltip-bottom:after {
  border-bottom-color: #ECEFF1;
}

.apexcharts-xaxistooltip-bottom:before {
  border-bottom-color: #90A4AE;
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top:after {
  border-top-color: #ECEFF1
}

.apexcharts-xaxistooltip-top:before {
  border-top-color: #90A4AE;
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-yaxistooltip {
  opacity: 0;
  padding: 4px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-yaxistooltip:after,
.apexcharts-yaxistooltip:before {
  top: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-yaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-top: -6px;
}

.apexcharts-yaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-top: -7px;
}

.apexcharts-yaxistooltip-left:after,
.apexcharts-yaxistooltip-left:before {
  left: 100%;
}

.apexcharts-yaxistooltip-right:after,
.apexcharts-yaxistooltip-right:before {
  right: 100%;
}

.apexcharts-yaxistooltip-left:after {
  border-left-color: #ECEFF1;
}

.apexcharts-yaxistooltip-left:before {
  border-left-color: #90A4AE;
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right:after {
  border-right-color: #ECEFF1;
}

.apexcharts-yaxistooltip-right:before {
  border-right-color: #90A4AE;
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip.apexcharts-active {
  opacity: 1;
}

.apexcharts-yaxistooltip-hidden {
  display: none;
}

.apexcharts-xcrosshairs,
.apexcharts-ycrosshairs {
  pointer-events: none;
  opacity: 0;
  transition: 0.15s ease all;
}

.apexcharts-xcrosshairs.apexcharts-active,
.apexcharts-ycrosshairs.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-ycrosshairs-hidden {
  opacity: 0;
}

.apexcharts-selection-rect {
  cursor: move;
}

.svg_select_boundingRect, .svg_select_points_rot {
  pointer-events: none;
  opacity: 0;
  visibility: hidden;
}
.apexcharts-selection-rect + g .svg_select_boundingRect,
.apexcharts-selection-rect + g .svg_select_points_rot {
  opacity: 0;
  visibility: hidden;
}

.apexcharts-selection-rect + g .svg_select_points_l,
.apexcharts-selection-rect + g .svg_select_points_r {
  cursor: ew-resize;
  opacity: 1;
  visibility: visible;
}

.svg_select_points {
  fill: #efefef;
  stroke: #333;
  rx: 2;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
  cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
  cursor: move
}

.apexcharts-zoom-icon,
.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon,
.apexcharts-reset-icon,
.apexcharts-pan-icon,
.apexcharts-selection-icon,
.apexcharts-menu-icon,
.apexcharts-toolbar-custom-icon {
  cursor: pointer;
  width: 20px;
  height: 20px;
  line-height: 24px;
  color: #6E8192;
  text-align: center;
}

.apexcharts-zoom-icon svg,
.apexcharts-zoomin-icon svg,
.apexcharts-zoomout-icon svg,
.apexcharts-reset-icon svg,
.apexcharts-menu-icon svg {
  fill: #6E8192;
}

.apexcharts-selection-icon svg {
  fill: #444;
  transform: scale(0.76)
}

.apexcharts-theme-dark .apexcharts-zoom-icon svg,
.apexcharts-theme-dark .apexcharts-zoomin-icon svg,
.apexcharts-theme-dark .apexcharts-zoomout-icon svg,
.apexcharts-theme-dark .apexcharts-reset-icon svg,
.apexcharts-theme-dark .apexcharts-pan-icon svg,
.apexcharts-theme-dark .apexcharts-selection-icon svg,
.apexcharts-theme-dark .apexcharts-menu-icon svg,
.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
  fill: #f3f4f5;
}

.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {
  fill: #008FFB;
}

.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
.apexcharts-theme-light .apexcharts-menu-icon:hover svg {
  fill: #333;
}

.apexcharts-selection-icon,
.apexcharts-menu-icon {
  position: relative;
}

.apexcharts-reset-icon {
  margin-left: 5px;
}

.apexcharts-zoom-icon,
.apexcharts-reset-icon,
.apexcharts-menu-icon {
  transform: scale(0.85);
}

.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon {
  transform: scale(0.7)
}

.apexcharts-zoomout-icon {
  margin-right: 3px;
}

.apexcharts-pan-icon {
  transform: scale(0.62);
  position: relative;
  left: 1px;
  top: 0px;
}

.apexcharts-pan-icon svg {
  fill: #fff;
  stroke: #6E8192;
  stroke-width: 2;
}

.apexcharts-pan-icon.apexcharts-selected svg {
  stroke: #008FFB;
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
  stroke: #333;
}

.apexcharts-toolbar {
  position: absolute;
  z-index: 11;
  max-width: 176px;
  text-align: right;
  border-radius: 3px;
  padding: 0px 6px 2px 6px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.apexcharts-menu {
  background: #fff;
  position: absolute;
  top: 100%;
  border: 1px solid #ddd;
  border-radius: 3px;
  padding: 3px;
  right: 10px;
  opacity: 0;
  min-width: 110px;
  transition: 0.15s ease all;
  pointer-events: none;
}

.apexcharts-menu.apexcharts-menu-open {
  opacity: 1;
  pointer-events: all;
  transition: 0.15s ease all;
}

.apexcharts-menu-item {
  padding: 6px 7px;
  font-size: 12px;
  cursor: pointer;
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
  background: #eee;
}

.apexcharts-theme-dark .apexcharts-menu {
  background: rgba(0, 0, 0, 0.7);
  color: #fff;
}

@media screen and (min-width: 768px) {
  .apexcharts-canvas:hover .apexcharts-toolbar {
    opacity: 1;
  }
}

.apexcharts-datalabel.apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-pie-label,
.apexcharts-datalabels,
.apexcharts-datalabel,
.apexcharts-datalabel-label,
.apexcharts-datalabel-value {
  cursor: default;
  pointer-events: none;
}

.apexcharts-pie-label-delay {
  opacity: 0;
  animation-name: opaque;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
  animation-timing-function: ease;
}

.apexcharts-canvas .apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-hide .apexcharts-series-points {
  opacity: 0;
}

.apexcharts-gridline,
.apexcharts-annotation-rect,
.apexcharts-tooltip .apexcharts-marker,
.apexcharts-area-series .apexcharts-area,
.apexcharts-line,
.apexcharts-zoom-rect,
.apexcharts-toolbar svg,
.apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-radar-series path,
.apexcharts-radar-series polygon {
  pointer-events: none;
}


/* markers */

.apexcharts-marker {
  transition: 0.15s ease all;
}

@keyframes opaque {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


/* Resize generated styles */

@keyframes resizeanim {
  from {
    opacity: 0;
  }
  to {
    opacity: 0;
  }
}

.resize-triggers {
  animation: 1ms resizeanim;
  visibility: hidden;
  opacity: 0;
}

.resize-triggers,
.resize-triggers>div,
.contract-trigger:before {
  content: " ";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.resize-triggers>div {
  background: #eee;
  overflow: auto;
}

.contract-trigger:before {
  width: 200%;
  height: 200%;
}</style><script async="" src="https://script.hotjar.com/modules.db29179a0bade389a8b8.js" charset="utf-8"></script><style type="text/css">iframe#_hjRemoteVarsFrame {display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;}</style><style type="text/css">.apexcharts-canvas {
  position: relative;
  user-select: none;
  /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
}


/* scrollbar is not visible by default for legend, hence forcing the visibility */
.apexcharts-canvas ::-webkit-scrollbar {
  -webkit-appearance: none;
  width: 6px;
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
  border-radius: 4px;
  background-color: rgba(0, 0, 0, .5);
  box-shadow: 0 0 1px rgba(255, 255, 255, .5);
  -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
}


.apexcharts-inner {
  position: relative;
}

.apexcharts-text tspan {
  font-family: inherit;
}

.legend-mouseover-inactive {
  transition: 0.15s ease all;
  opacity: 0.20;
}

.apexcharts-series-collapsed {
  opacity: 0;
}

.apexcharts-tooltip {
  border-radius: 5px;
  box-shadow: 2px 2px 6px -4px #999;
  cursor: default;
  font-size: 14px;
  left: 62px;
  opacity: 0;
  pointer-events: none;
  position: absolute;
  top: 20px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  white-space: nowrap;
  z-index: 12;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-theme-light {
  border: 1px solid #e3e3e3;
  background: rgba(255, 255, 255, 0.96);
}

.apexcharts-tooltip.apexcharts-theme-dark {
  color: #fff;
  background: rgba(30, 30, 30, 0.8);
}

.apexcharts-tooltip * {
  font-family: inherit;
}


.apexcharts-tooltip-title {
  padding: 6px;
  font-size: 15px;
  margin-bottom: 4px;
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
  background: #ECEFF1;
  border-bottom: 1px solid #ddd;
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
  background: rgba(0, 0, 0, 0.7);
  border-bottom: 1px solid #333;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  display: inline-block;
  font-weight: 600;
  margin-left: 5px;
}

.apexcharts-tooltip-text-z-label:empty,
.apexcharts-tooltip-text-z-value:empty {
  display: none;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  font-weight: 600;
}

.apexcharts-tooltip-marker {
  width: 12px;
  height: 12px;
  position: relative;
  top: 0px;
  margin-right: 10px;
  border-radius: 50%;
}

.apexcharts-tooltip-series-group {
  padding: 0 10px;
  display: none;
  text-align: left;
  justify-content: left;
  align-items: center;
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {
  opacity: 1;
}

.apexcharts-tooltip-series-group.apexcharts-active,
.apexcharts-tooltip-series-group:last-child {
  padding-bottom: 4px;
}

.apexcharts-tooltip-series-group-hidden {
  opacity: 0;
  height: 0;
  line-height: 0;
  padding: 0 !important;
}

.apexcharts-tooltip-y-group {
  padding: 6px 0 5px;
}

.apexcharts-tooltip-candlestick {
  padding: 4px 8px;
}

.apexcharts-tooltip-candlestick>div {
  margin: 4px 0;
}

.apexcharts-tooltip-candlestick span.value {
  font-weight: bold;
}

.apexcharts-tooltip-rangebar {
  padding: 5px 8px;
}

.apexcharts-tooltip-rangebar .category {
  font-weight: 600;
  color: #777;
}

.apexcharts-tooltip-rangebar .series-name {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}

.apexcharts-xaxistooltip {
  opacity: 0;
  padding: 9px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
  transition: 0.15s ease all;
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-xaxistooltip:after,
.apexcharts-xaxistooltip:before {
  left: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-xaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-left: -6px;
}

.apexcharts-xaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-left: -7px;
}

.apexcharts-xaxistooltip-bottom:after,
.apexcharts-xaxistooltip-bottom:before {
  bottom: 100%;
}

.apexcharts-xaxistooltip-top:after,
.apexcharts-xaxistooltip-top:before {
  top: 100%;
}

.apexcharts-xaxistooltip-bottom:after {
  border-bottom-color: #ECEFF1;
}

.apexcharts-xaxistooltip-bottom:before {
  border-bottom-color: #90A4AE;
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top:after {
  border-top-color: #ECEFF1
}

.apexcharts-xaxistooltip-top:before {
  border-top-color: #90A4AE;
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-yaxistooltip {
  opacity: 0;
  padding: 4px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-yaxistooltip:after,
.apexcharts-yaxistooltip:before {
  top: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-yaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-top: -6px;
}

.apexcharts-yaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-top: -7px;
}

.apexcharts-yaxistooltip-left:after,
.apexcharts-yaxistooltip-left:before {
  left: 100%;
}

.apexcharts-yaxistooltip-right:after,
.apexcharts-yaxistooltip-right:before {
  right: 100%;
}

.apexcharts-yaxistooltip-left:after {
  border-left-color: #ECEFF1;
}

.apexcharts-yaxistooltip-left:before {
  border-left-color: #90A4AE;
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right:after {
  border-right-color: #ECEFF1;
}

.apexcharts-yaxistooltip-right:before {
  border-right-color: #90A4AE;
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip.apexcharts-active {
  opacity: 1;
}

.apexcharts-yaxistooltip-hidden {
  display: none;
}

.apexcharts-xcrosshairs,
.apexcharts-ycrosshairs {
  pointer-events: none;
  opacity: 0;
  transition: 0.15s ease all;
}

.apexcharts-xcrosshairs.apexcharts-active,
.apexcharts-ycrosshairs.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-ycrosshairs-hidden {
  opacity: 0;
}

.apexcharts-selection-rect {
  cursor: move;
}

.svg_select_boundingRect, .svg_select_points_rot {
  pointer-events: none;
  opacity: 0;
  visibility: hidden;
}
.apexcharts-selection-rect + g .svg_select_boundingRect,
.apexcharts-selection-rect + g .svg_select_points_rot {
  opacity: 0;
  visibility: hidden;
}

.apexcharts-selection-rect + g .svg_select_points_l,
.apexcharts-selection-rect + g .svg_select_points_r {
  cursor: ew-resize;
  opacity: 1;
  visibility: visible;
}

.svg_select_points {
  fill: #efefef;
  stroke: #333;
  rx: 2;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
  cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
  cursor: move
}

.apexcharts-zoom-icon,
.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon,
.apexcharts-reset-icon,
.apexcharts-pan-icon,
.apexcharts-selection-icon,
.apexcharts-menu-icon,
.apexcharts-toolbar-custom-icon {
  cursor: pointer;
  width: 20px;
  height: 20px;
  line-height: 24px;
  color: #6E8192;
  text-align: center;
}

.apexcharts-zoom-icon svg,
.apexcharts-zoomin-icon svg,
.apexcharts-zoomout-icon svg,
.apexcharts-reset-icon svg,
.apexcharts-menu-icon svg {
  fill: #6E8192;
}

.apexcharts-selection-icon svg {
  fill: #444;
  transform: scale(0.76)
}

.apexcharts-theme-dark .apexcharts-zoom-icon svg,
.apexcharts-theme-dark .apexcharts-zoomin-icon svg,
.apexcharts-theme-dark .apexcharts-zoomout-icon svg,
.apexcharts-theme-dark .apexcharts-reset-icon svg,
.apexcharts-theme-dark .apexcharts-pan-icon svg,
.apexcharts-theme-dark .apexcharts-selection-icon svg,
.apexcharts-theme-dark .apexcharts-menu-icon svg,
.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
  fill: #f3f4f5;
}

.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {
  fill: #008FFB;
}

.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
.apexcharts-theme-light .apexcharts-menu-icon:hover svg {
  fill: #333;
}

.apexcharts-selection-icon,
.apexcharts-menu-icon {
  position: relative;
}

.apexcharts-reset-icon {
  margin-left: 5px;
}

.apexcharts-zoom-icon,
.apexcharts-reset-icon,
.apexcharts-menu-icon {
  transform: scale(0.85);
}

.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon {
  transform: scale(0.7)
}

.apexcharts-zoomout-icon {
  margin-right: 3px;
}

.apexcharts-pan-icon {
  transform: scale(0.62);
  position: relative;
  left: 1px;
  top: 0px;
}

.apexcharts-pan-icon svg {
  fill: #fff;
  stroke: #6E8192;
  stroke-width: 2;
}

.apexcharts-pan-icon.apexcharts-selected svg {
  stroke: #008FFB;
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
  stroke: #333;
}

.apexcharts-toolbar {
  position: absolute;
  z-index: 11;
  max-width: 176px;
  text-align: right;
  border-radius: 3px;
  padding: 0px 6px 2px 6px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.apexcharts-menu {
  background: #fff;
  position: absolute;
  top: 100%;
  border: 1px solid #ddd;
  border-radius: 3px;
  padding: 3px;
  right: 10px;
  opacity: 0;
  min-width: 110px;
  transition: 0.15s ease all;
  pointer-events: none;
}

.apexcharts-menu.apexcharts-menu-open {
  opacity: 1;
  pointer-events: all;
  transition: 0.15s ease all;
}

.apexcharts-menu-item {
  padding: 6px 7px;
  font-size: 12px;
  cursor: pointer;
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
  background: #eee;
}

.apexcharts-theme-dark .apexcharts-menu {
  background: rgba(0, 0, 0, 0.7);
  color: #fff;
}

@media screen and (min-width: 768px) {
  .apexcharts-canvas:hover .apexcharts-toolbar {
    opacity: 1;
  }
}

.apexcharts-datalabel.apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-pie-label,
.apexcharts-datalabels,
.apexcharts-datalabel,
.apexcharts-datalabel-label,
.apexcharts-datalabel-value {
  cursor: default;
  pointer-events: none;
}

.apexcharts-pie-label-delay {
  opacity: 0;
  animation-name: opaque;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
  animation-timing-function: ease;
}

.apexcharts-canvas .apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-hide .apexcharts-series-points {
  opacity: 0;
}

.apexcharts-gridline,
.apexcharts-annotation-rect,
.apexcharts-tooltip .apexcharts-marker,
.apexcharts-area-series .apexcharts-area,
.apexcharts-line,
.apexcharts-zoom-rect,
.apexcharts-toolbar svg,
.apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-radar-series path,
.apexcharts-radar-series polygon {
  pointer-events: none;
}


/* markers */

.apexcharts-marker {
  transition: 0.15s ease all;
}

@keyframes opaque {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


/* Resize generated styles */

@keyframes resizeanim {
  from {
    opacity: 0;
  }
  to {
    opacity: 0;
  }
}

.resize-triggers {
  animation: 1ms resizeanim;
  visibility: hidden;
  opacity: 0;
}

.resize-triggers,
.resize-triggers>div,
.contract-trigger:before {
  content: " ";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.resize-triggers>div {
  background: #eee;
  overflow: auto;
}

.contract-trigger:before {
  width: 200%;
  height: 200%;
}</style><style type="text/css">.apexcharts-canvas {
  position: relative;
  user-select: none;
  /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
}


/* scrollbar is not visible by default for legend, hence forcing the visibility */
.apexcharts-canvas ::-webkit-scrollbar {
  -webkit-appearance: none;
  width: 6px;
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
  border-radius: 4px;
  background-color: rgba(0, 0, 0, .5);
  box-shadow: 0 0 1px rgba(255, 255, 255, .5);
  -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
}


.apexcharts-inner {
  position: relative;
}

.apexcharts-text tspan {
  font-family: inherit;
}

.legend-mouseover-inactive {
  transition: 0.15s ease all;
  opacity: 0.20;
}

.apexcharts-series-collapsed {
  opacity: 0;
}

.apexcharts-tooltip {
  border-radius: 5px;
  box-shadow: 2px 2px 6px -4px #999;
  cursor: default;
  font-size: 14px;
  left: 62px;
  opacity: 0;
  pointer-events: none;
  position: absolute;
  top: 20px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  white-space: nowrap;
  z-index: 12;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-theme-light {
  border: 1px solid #e3e3e3;
  background: rgba(255, 255, 255, 0.96);
}

.apexcharts-tooltip.apexcharts-theme-dark {
  color: #fff;
  background: rgba(30, 30, 30, 0.8);
}

.apexcharts-tooltip * {
  font-family: inherit;
}


.apexcharts-tooltip-title {
  padding: 6px;
  font-size: 15px;
  margin-bottom: 4px;
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
  background: #ECEFF1;
  border-bottom: 1px solid #ddd;
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
  background: rgba(0, 0, 0, 0.7);
  border-bottom: 1px solid #333;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  display: inline-block;
  font-weight: 600;
  margin-left: 5px;
}

.apexcharts-tooltip-text-z-label:empty,
.apexcharts-tooltip-text-z-value:empty {
  display: none;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  font-weight: 600;
}

.apexcharts-tooltip-marker {
  width: 12px;
  height: 12px;
  position: relative;
  top: 0px;
  margin-right: 10px;
  border-radius: 50%;
}

.apexcharts-tooltip-series-group {
  padding: 0 10px;
  display: none;
  text-align: left;
  justify-content: left;
  align-items: center;
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {
  opacity: 1;
}

.apexcharts-tooltip-series-group.apexcharts-active,
.apexcharts-tooltip-series-group:last-child {
  padding-bottom: 4px;
}

.apexcharts-tooltip-series-group-hidden {
  opacity: 0;
  height: 0;
  line-height: 0;
  padding: 0 !important;
}

.apexcharts-tooltip-y-group {
  padding: 6px 0 5px;
}

.apexcharts-tooltip-candlestick {
  padding: 4px 8px;
}

.apexcharts-tooltip-candlestick>div {
  margin: 4px 0;
}

.apexcharts-tooltip-candlestick span.value {
  font-weight: bold;
}

.apexcharts-tooltip-rangebar {
  padding: 5px 8px;
}

.apexcharts-tooltip-rangebar .category {
  font-weight: 600;
  color: #777;
}

.apexcharts-tooltip-rangebar .series-name {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}

.apexcharts-xaxistooltip {
  opacity: 0;
  padding: 9px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
  transition: 0.15s ease all;
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-xaxistooltip:after,
.apexcharts-xaxistooltip:before {
  left: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-xaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-left: -6px;
}

.apexcharts-xaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-left: -7px;
}

.apexcharts-xaxistooltip-bottom:after,
.apexcharts-xaxistooltip-bottom:before {
  bottom: 100%;
}

.apexcharts-xaxistooltip-top:after,
.apexcharts-xaxistooltip-top:before {
  top: 100%;
}

.apexcharts-xaxistooltip-bottom:after {
  border-bottom-color: #ECEFF1;
}

.apexcharts-xaxistooltip-bottom:before {
  border-bottom-color: #90A4AE;
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top:after {
  border-top-color: #ECEFF1
}

.apexcharts-xaxistooltip-top:before {
  border-top-color: #90A4AE;
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-yaxistooltip {
  opacity: 0;
  padding: 4px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-yaxistooltip:after,
.apexcharts-yaxistooltip:before {
  top: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-yaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-top: -6px;
}

.apexcharts-yaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-top: -7px;
}

.apexcharts-yaxistooltip-left:after,
.apexcharts-yaxistooltip-left:before {
  left: 100%;
}

.apexcharts-yaxistooltip-right:after,
.apexcharts-yaxistooltip-right:before {
  right: 100%;
}

.apexcharts-yaxistooltip-left:after {
  border-left-color: #ECEFF1;
}

.apexcharts-yaxistooltip-left:before {
  border-left-color: #90A4AE;
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right:after {
  border-right-color: #ECEFF1;
}

.apexcharts-yaxistooltip-right:before {
  border-right-color: #90A4AE;
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip.apexcharts-active {
  opacity: 1;
}

.apexcharts-yaxistooltip-hidden {
  display: none;
}

.apexcharts-xcrosshairs,
.apexcharts-ycrosshairs {
  pointer-events: none;
  opacity: 0;
  transition: 0.15s ease all;
}

.apexcharts-xcrosshairs.apexcharts-active,
.apexcharts-ycrosshairs.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-ycrosshairs-hidden {
  opacity: 0;
}

.apexcharts-selection-rect {
  cursor: move;
}

.svg_select_boundingRect, .svg_select_points_rot {
  pointer-events: none;
  opacity: 0;
  visibility: hidden;
}
.apexcharts-selection-rect + g .svg_select_boundingRect,
.apexcharts-selection-rect + g .svg_select_points_rot {
  opacity: 0;
  visibility: hidden;
}

.apexcharts-selection-rect + g .svg_select_points_l,
.apexcharts-selection-rect + g .svg_select_points_r {
  cursor: ew-resize;
  opacity: 1;
  visibility: visible;
}

.svg_select_points {
  fill: #efefef;
  stroke: #333;
  rx: 2;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
  cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
  cursor: move
}

.apexcharts-zoom-icon,
.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon,
.apexcharts-reset-icon,
.apexcharts-pan-icon,
.apexcharts-selection-icon,
.apexcharts-menu-icon,
.apexcharts-toolbar-custom-icon {
  cursor: pointer;
  width: 20px;
  height: 20px;
  line-height: 24px;
  color: #6E8192;
  text-align: center;
}

.apexcharts-zoom-icon svg,
.apexcharts-zoomin-icon svg,
.apexcharts-zoomout-icon svg,
.apexcharts-reset-icon svg,
.apexcharts-menu-icon svg {
  fill: #6E8192;
}

.apexcharts-selection-icon svg {
  fill: #444;
  transform: scale(0.76)
}

.apexcharts-theme-dark .apexcharts-zoom-icon svg,
.apexcharts-theme-dark .apexcharts-zoomin-icon svg,
.apexcharts-theme-dark .apexcharts-zoomout-icon svg,
.apexcharts-theme-dark .apexcharts-reset-icon svg,
.apexcharts-theme-dark .apexcharts-pan-icon svg,
.apexcharts-theme-dark .apexcharts-selection-icon svg,
.apexcharts-theme-dark .apexcharts-menu-icon svg,
.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
  fill: #f3f4f5;
}

.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {
  fill: #008FFB;
}

.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
.apexcharts-theme-light .apexcharts-menu-icon:hover svg {
  fill: #333;
}

.apexcharts-selection-icon,
.apexcharts-menu-icon {
  position: relative;
}

.apexcharts-reset-icon {
  margin-left: 5px;
}

.apexcharts-zoom-icon,
.apexcharts-reset-icon,
.apexcharts-menu-icon {
  transform: scale(0.85);
}

.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon {
  transform: scale(0.7)
}

.apexcharts-zoomout-icon {
  margin-right: 3px;
}

.apexcharts-pan-icon {
  transform: scale(0.62);
  position: relative;
  left: 1px;
  top: 0px;
}

.apexcharts-pan-icon svg {
  fill: #fff;
  stroke: #6E8192;
  stroke-width: 2;
}

.apexcharts-pan-icon.apexcharts-selected svg {
  stroke: #008FFB;
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
  stroke: #333;
}

.apexcharts-toolbar {
  position: absolute;
  z-index: 11;
  max-width: 176px;
  text-align: right;
  border-radius: 3px;
  padding: 0px 6px 2px 6px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.apexcharts-menu {
  background: #fff;
  position: absolute;
  top: 100%;
  border: 1px solid #ddd;
  border-radius: 3px;
  padding: 3px;
  right: 10px;
  opacity: 0;
  min-width: 110px;
  transition: 0.15s ease all;
  pointer-events: none;
}

.apexcharts-menu.apexcharts-menu-open {
  opacity: 1;
  pointer-events: all;
  transition: 0.15s ease all;
}

.apexcharts-menu-item {
  padding: 6px 7px;
  font-size: 12px;
  cursor: pointer;
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
  background: #eee;
}

.apexcharts-theme-dark .apexcharts-menu {
  background: rgba(0, 0, 0, 0.7);
  color: #fff;
}

@media screen and (min-width: 768px) {
  .apexcharts-canvas:hover .apexcharts-toolbar {
    opacity: 1;
  }
}

.apexcharts-datalabel.apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-pie-label,
.apexcharts-datalabels,
.apexcharts-datalabel,
.apexcharts-datalabel-label,
.apexcharts-datalabel-value {
  cursor: default;
  pointer-events: none;
}

.apexcharts-pie-label-delay {
  opacity: 0;
  animation-name: opaque;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
  animation-timing-function: ease;
}

.apexcharts-canvas .apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-hide .apexcharts-series-points {
  opacity: 0;
}

.apexcharts-gridline,
.apexcharts-annotation-rect,
.apexcharts-tooltip .apexcharts-marker,
.apexcharts-area-series .apexcharts-area,
.apexcharts-line,
.apexcharts-zoom-rect,
.apexcharts-toolbar svg,
.apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-radar-series path,
.apexcharts-radar-series polygon {
  pointer-events: none;
}


/* markers */

.apexcharts-marker {
  transition: 0.15s ease all;
}

@keyframes opaque {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


/* Resize generated styles */

@keyframes resizeanim {
  from {
    opacity: 0;
  }
  to {
    opacity: 0;
  }
}

.resize-triggers {
  animation: 1ms resizeanim;
  visibility: hidden;
  opacity: 0;
}

.resize-triggers,
.resize-triggers>div,
.contract-trigger:before {
  content: " ";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.resize-triggers>div {
  background: #eee;
  overflow: auto;
}

.contract-trigger:before {
  width: 200%;
  height: 200%;
}</style><script async="" src="https://script.hotjar.com/modules.db29179a0bade389a8b8.js" charset="utf-8"></script><style type="text/css">iframe#_hjRemoteVarsFrame {display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;}</style><style type="text/css">.apexcharts-canvas {
  position: relative;
  user-select: none;
  /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
}


/* scrollbar is not visible by default for legend, hence forcing the visibility */
.apexcharts-canvas ::-webkit-scrollbar {
  -webkit-appearance: none;
  width: 6px;
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
  border-radius: 4px;
  background-color: rgba(0, 0, 0, .5);
  box-shadow: 0 0 1px rgba(255, 255, 255, .5);
  -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
}


.apexcharts-inner {
  position: relative;
}

.apexcharts-text tspan {
  font-family: inherit;
}

.legend-mouseover-inactive {
  transition: 0.15s ease all;
  opacity: 0.20;
}

.apexcharts-series-collapsed {
  opacity: 0;
}

.apexcharts-tooltip {
  border-radius: 5px;
  box-shadow: 2px 2px 6px -4px #999;
  cursor: default;
  font-size: 14px;
  left: 62px;
  opacity: 0;
  pointer-events: none;
  position: absolute;
  top: 20px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  white-space: nowrap;
  z-index: 12;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-theme-light {
  border: 1px solid #e3e3e3;
  background: rgba(255, 255, 255, 0.96);
}

.apexcharts-tooltip.apexcharts-theme-dark {
  color: #fff;
  background: rgba(30, 30, 30, 0.8);
}

.apexcharts-tooltip * {
  font-family: inherit;
}


.apexcharts-tooltip-title {
  padding: 6px;
  font-size: 15px;
  margin-bottom: 4px;
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
  background: #ECEFF1;
  border-bottom: 1px solid #ddd;
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
  background: rgba(0, 0, 0, 0.7);
  border-bottom: 1px solid #333;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  display: inline-block;
  font-weight: 600;
  margin-left: 5px;
}

.apexcharts-tooltip-text-z-label:empty,
.apexcharts-tooltip-text-z-value:empty {
  display: none;
}

.apexcharts-tooltip-text-value,
.apexcharts-tooltip-text-z-value {
  font-weight: 600;
}

.apexcharts-tooltip-marker {
  width: 12px;
  height: 12px;
  position: relative;
  top: 0px;
  margin-right: 10px;
  border-radius: 50%;
}

.apexcharts-tooltip-series-group {
  padding: 0 10px;
  display: none;
  text-align: left;
  justify-content: left;
  align-items: center;
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {
  opacity: 1;
}

.apexcharts-tooltip-series-group.apexcharts-active,
.apexcharts-tooltip-series-group:last-child {
  padding-bottom: 4px;
}

.apexcharts-tooltip-series-group-hidden {
  opacity: 0;
  height: 0;
  line-height: 0;
  padding: 0 !important;
}

.apexcharts-tooltip-y-group {
  padding: 6px 0 5px;
}

.apexcharts-tooltip-candlestick {
  padding: 4px 8px;
}

.apexcharts-tooltip-candlestick>div {
  margin: 4px 0;
}

.apexcharts-tooltip-candlestick span.value {
  font-weight: bold;
}

.apexcharts-tooltip-rangebar {
  padding: 5px 8px;
}

.apexcharts-tooltip-rangebar .category {
  font-weight: 600;
  color: #777;
}

.apexcharts-tooltip-rangebar .series-name {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}

.apexcharts-xaxistooltip {
  opacity: 0;
  padding: 9px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
  transition: 0.15s ease all;
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-xaxistooltip:after,
.apexcharts-xaxistooltip:before {
  left: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-xaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-left: -6px;
}

.apexcharts-xaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-left: -7px;
}

.apexcharts-xaxistooltip-bottom:after,
.apexcharts-xaxistooltip-bottom:before {
  bottom: 100%;
}

.apexcharts-xaxistooltip-top:after,
.apexcharts-xaxistooltip-top:before {
  top: 100%;
}

.apexcharts-xaxistooltip-bottom:after {
  border-bottom-color: #ECEFF1;
}

.apexcharts-xaxistooltip-bottom:before {
  border-bottom-color: #90A4AE;
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top:after {
  border-top-color: #ECEFF1
}

.apexcharts-xaxistooltip-top:before {
  border-top-color: #90A4AE;
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-yaxistooltip {
  opacity: 0;
  padding: 4px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-yaxistooltip:after,
.apexcharts-yaxistooltip:before {
  top: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-yaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-top: -6px;
}

.apexcharts-yaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-top: -7px;
}

.apexcharts-yaxistooltip-left:after,
.apexcharts-yaxistooltip-left:before {
  left: 100%;
}

.apexcharts-yaxistooltip-right:after,
.apexcharts-yaxistooltip-right:before {
  right: 100%;
}

.apexcharts-yaxistooltip-left:after {
  border-left-color: #ECEFF1;
}

.apexcharts-yaxistooltip-left:before {
  border-left-color: #90A4AE;
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right:after {
  border-right-color: #ECEFF1;
}

.apexcharts-yaxistooltip-right:before {
  border-right-color: #90A4AE;
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip.apexcharts-active {
  opacity: 1;
}

.apexcharts-yaxistooltip-hidden {
  display: none;
}

.apexcharts-xcrosshairs,
.apexcharts-ycrosshairs {
  pointer-events: none;
  opacity: 0;
  transition: 0.15s ease all;
}

.apexcharts-xcrosshairs.apexcharts-active,
.apexcharts-ycrosshairs.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-ycrosshairs-hidden {
  opacity: 0;
}

.apexcharts-selection-rect {
  cursor: move;
}

.svg_select_boundingRect, .svg_select_points_rot {
  pointer-events: none;
  opacity: 0;
  visibility: hidden;
}
.apexcharts-selection-rect + g .svg_select_boundingRect,
.apexcharts-selection-rect + g .svg_select_points_rot {
  opacity: 0;
  visibility: hidden;
}

.apexcharts-selection-rect + g .svg_select_points_l,
.apexcharts-selection-rect + g .svg_select_points_r {
  cursor: ew-resize;
  opacity: 1;
  visibility: visible;
}

.svg_select_points {
  fill: #efefef;
  stroke: #333;
  rx: 2;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
  cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
  cursor: move
}

.apexcharts-zoom-icon,
.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon,
.apexcharts-reset-icon,
.apexcharts-pan-icon,
.apexcharts-selection-icon,
.apexcharts-menu-icon,
.apexcharts-toolbar-custom-icon {
  cursor: pointer;
  width: 20px;
  height: 20px;
  line-height: 24px;
  color: #6E8192;
  text-align: center;
}

.apexcharts-zoom-icon svg,
.apexcharts-zoomin-icon svg,
.apexcharts-zoomout-icon svg,
.apexcharts-reset-icon svg,
.apexcharts-menu-icon svg {
  fill: #6E8192;
}

.apexcharts-selection-icon svg {
  fill: #444;
  transform: scale(0.76)
}

.apexcharts-theme-dark .apexcharts-zoom-icon svg,
.apexcharts-theme-dark .apexcharts-zoomin-icon svg,
.apexcharts-theme-dark .apexcharts-zoomout-icon svg,
.apexcharts-theme-dark .apexcharts-reset-icon svg,
.apexcharts-theme-dark .apexcharts-pan-icon svg,
.apexcharts-theme-dark .apexcharts-selection-icon svg,
.apexcharts-theme-dark .apexcharts-menu-icon svg,
.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
  fill: #f3f4f5;
}

.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {
  fill: #008FFB;
}

.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
.apexcharts-theme-light .apexcharts-menu-icon:hover svg {
  fill: #333;
}

.apexcharts-selection-icon,
.apexcharts-menu-icon {
  position: relative;
}

.apexcharts-reset-icon {
  margin-left: 5px;
}

.apexcharts-zoom-icon,
.apexcharts-reset-icon,
.apexcharts-menu-icon {
  transform: scale(0.85);
}

.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon {
  transform: scale(0.7)
}

.apexcharts-zoomout-icon {
  margin-right: 3px;
}

.apexcharts-pan-icon {
  transform: scale(0.62);
  position: relative;
  left: 1px;
  top: 0px;
}

.apexcharts-pan-icon svg {
  fill: #fff;
  stroke: #6E8192;
  stroke-width: 2;
}

.apexcharts-pan-icon.apexcharts-selected svg {
  stroke: #008FFB;
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
  stroke: #333;
}

.apexcharts-toolbar {
  position: absolute;
  z-index: 11;
  max-width: 176px;
  text-align: right;
  border-radius: 3px;
  padding: 0px 6px 2px 6px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.apexcharts-menu {
  background: #fff;
  position: absolute;
  top: 100%;
  border: 1px solid #ddd;
  border-radius: 3px;
  padding: 3px;
  right: 10px;
  opacity: 0;
  min-width: 110px;
  transition: 0.15s ease all;
  pointer-events: none;
}

.apexcharts-menu.apexcharts-menu-open {
  opacity: 1;
  pointer-events: all;
  transition: 0.15s ease all;
}

.apexcharts-menu-item {
  padding: 6px 7px;
  font-size: 12px;
  cursor: pointer;
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
  background: #eee;
}

.apexcharts-theme-dark .apexcharts-menu {
  background: rgba(0, 0, 0, 0.7);
  color: #fff;
}

@media screen and (min-width: 768px) {
  .apexcharts-canvas:hover .apexcharts-toolbar {
    opacity: 1;
  }
}

.apexcharts-datalabel.apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-pie-label,
.apexcharts-datalabels,
.apexcharts-datalabel,
.apexcharts-datalabel-label,
.apexcharts-datalabel-value {
  cursor: default;
  pointer-events: none;
}

.apexcharts-pie-label-delay {
  opacity: 0;
  animation-name: opaque;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
  animation-timing-function: ease;
}

.apexcharts-canvas .apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-hide .apexcharts-series-points {
  opacity: 0;
}

.apexcharts-gridline,
.apexcharts-annotation-rect,
.apexcharts-tooltip .apexcharts-marker,
.apexcharts-area-series .apexcharts-area,
.apexcharts-line,
.apexcharts-zoom-rect,
.apexcharts-toolbar svg,
.apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-radar-series path,
.apexcharts-radar-series polygon {
  pointer-events: none;
}


/* markers */

.apexcharts-marker {
  transition: 0.15s ease all;
}

@keyframes opaque {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


/* Resize generated styles */

@keyframes resizeanim {
  from {
    opacity: 0;
  }
  to {
    opacity: 0;
  }
}

.resize-triggers {
  animation: 1ms resizeanim;
  visibility: hidden;
  opacity: 0;
}

.resize-triggers,
.resize-triggers>div,
.contract-trigger:before {
  content: " ";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.resize-triggers>div {
  background: #eee;
  overflow: auto;
}

.contract-trigger:before {
  width: 200%;
  height: 200%;
}</style><script async="" src="https://script.hotjar.com/modules.715e89fa79f5bcedbb15.js" charset="utf-8"></script><style type="text/css">iframe#_hjRemoteVarsFrame {display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;}</style></head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed toolbar-tablet-and-mobile-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px; --kt-toolbar-height-tablet-and-mobile:55px;" data-new-gr-c-s-check-loaded="8.876.0" data-gr-ext-installed="">
<!--begin::Main-->
<!--begin::Root-->
<div class="d-flex flex-column flex-root">
  <!--begin::Page-->
  <div class="page d-flex flex-row flex-column-fluid">
    <!--begin::Aside-->
    <div id="kt_aside" class="aside aside-dark aside-hoverable" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_mobile_toggle" style="">
      <!--begin::Brand-->
      <div class="aside-logo flex-column-auto" id="kt_aside_logo">
        <!--begin::Logo-->
        <a href="/metronic8/demo1/index.html">
          <img alt="Logo" src="/metronic8/demo1/assets/media/logos/logo-1.svg" class="h-15px logo">
        </a>
        <!--end::Logo-->
        <!--begin::Aside toggler-->
        <div id="kt_aside_toggle" class="btn btn-icon w-auto px-0 btn-active-color-primary aside-toggle" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="aside-minimize">
          <!--begin::Svg Icon | path: icons/duotone/Navigation/Angle-double-left.svg-->
          <span class="svg-icon svg-icon-1 rotate-180">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <polygon points="0 0 24 0 24 24 0 24"></polygon>
                    <path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999)"></path>
                    <path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.5" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999)"></path>
                  </g>
                </svg>
              </span>
          <!--end::Svg Icon-->
        </div>
        <!--end::Aside toggler-->
      </div>
      <!--end::Brand-->
      <!--begin::Aside menu-->
      <div class="aside-menu flex-column-fluid">
        <!--begin::Aside Menu-->
        <div class="hover-scroll-overlay-y my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-offset="0" style="height: 298px;">
          <!--begin::Menu-->
          <div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500" id="#kt_aside_menu" data-kt-menu="true">
            <div class="menu-item">
              <a class="menu-link active" href="/metronic8/demo1/index.html">
                    <span class="menu-icon">
                      <!--begin::Svg Icon | path: icons/duotone/Design/PenAndRuller.svg-->
                      <span class="svg-icon svg-icon-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3"></path>
                          <path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000"></path>
                        </svg>
                      </span>
                      <!--end::Svg Icon-->
                    </span>
                <span class="menu-title">Dashboard</span>
              </a>
            </div>
            <div class="menu-item">
              <a class="menu-link" href="/metronic8/demo1/landing.html">
                    <span class="menu-icon">
                      <!--begin::Svg Icon | path: icons/duotone/Design/Sketch.svg-->
                      <span class="svg-icon svg-icon-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <polygon fill="#000000" opacity="0.3" points="5 3 19 3 23 8 1 8"></polygon>
                          <polygon fill="#000000" points="23 8 12 20 1 8"></polygon>
                        </svg>
                      </span>
                      <!--end::Svg Icon-->
                    </span>
                <span class="menu-title">NFT One-Click Creator</span>
              </a>
            </div>
            <div class="menu-item">
              <div class="menu-content pt-8 pb-2">
                <span class="menu-section text-muted text-uppercase fs-8 ls-1">Crafted</span>
              </div>
            </div>
            <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                  <span class="menu-link">
                    <span class="menu-icon">
                      <!--begin::Svg Icon | path: icons/duotone/Code/Compiling.svg-->
                      <span class="svg-icon svg-icon-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <path d="M2.56066017,10.6819805 L4.68198052,8.56066017 C5.26776695,7.97487373 6.21751442,7.97487373 6.80330086,8.56066017 L8.9246212,10.6819805 C9.51040764,11.267767 9.51040764,12.2175144 8.9246212,12.8033009 L6.80330086,14.9246212 C6.21751442,15.5104076 5.26776695,15.5104076 4.68198052,14.9246212 L2.56066017,12.8033009 C1.97487373,12.2175144 1.97487373,11.267767 2.56066017,10.6819805 Z M14.5606602,10.6819805 L16.6819805,8.56066017 C17.267767,7.97487373 18.2175144,7.97487373 18.8033009,8.56066017 L20.9246212,10.6819805 C21.5104076,11.267767 21.5104076,12.2175144 20.9246212,12.8033009 L18.8033009,14.9246212 C18.2175144,15.5104076 17.267767,15.5104076 16.6819805,14.9246212 L14.5606602,12.8033009 C13.9748737,12.2175144 13.9748737,11.267767 14.5606602,10.6819805 Z" fill="#000000" opacity="0.3"></path>
                          <path d="M8.56066017,16.6819805 L10.6819805,14.5606602 C11.267767,13.9748737 12.2175144,13.9748737 12.8033009,14.5606602 L14.9246212,16.6819805 C15.5104076,17.267767 15.5104076,18.2175144 14.9246212,18.8033009 L12.8033009,20.9246212 C12.2175144,21.5104076 11.267767,21.5104076 10.6819805,20.9246212 L8.56066017,18.8033009 C7.97487373,18.2175144 7.97487373,17.267767 8.56066017,16.6819805 Z M8.56066017,4.68198052 L10.6819805,2.56066017 C11.267767,1.97487373 12.2175144,1.97487373 12.8033009,2.56066017 L14.9246212,4.68198052 C15.5104076,5.26776695 15.5104076,6.21751442 14.9246212,6.80330086 L12.8033009,8.9246212 C12.2175144,9.51040764 11.267767,9.51040764 10.6819805,8.9246212 L8.56066017,6.80330086 C7.97487373,6.21751442 7.97487373,5.26776695 8.56066017,4.68198052 Z" fill="#000000"></path>
                        </svg>
                      </span>
                      <!--end::Svg Icon-->
                    </span>
                    <span class="menu-title">Pages</span>
                    <span class="menu-arrow"></span>
                  </span>
              <div class="menu-sub menu-sub-accordion menu-active-bg">
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Profile</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/profile/overview.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Overview</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/profile/projects.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Projects</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/profile/campaigns.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Campaigns</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/profile/documents.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Documents</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/profile/connections.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Connections</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/profile/activity.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Activity</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Projects</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/list.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">My Projects</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/project.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">View Project</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/targets.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Targets</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/budget.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Budget</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/users.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Users</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/files.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Files</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/activity.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Activity</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/projects/settings.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Settings</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Wizards</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/wizards/horizontal.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Horizontal</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/wizards/vertical.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Vertical</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Search</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/search/horizontal.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Horizontal</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/search/vertical.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Vertical</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Blog</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/blog/home.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Blog Home</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/blog/post.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Blog Post</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Company</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/company/about.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">About Us</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/company/pricing.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Pricing</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/company/contact.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Contact Us</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/company/team.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Our Team</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/company/licenses.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Licenses</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/company/sitemap.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Sitemap</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">Careers</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/careers/list.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Careers List</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/careers/apply.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Careers Apply</span>
                      </a>
                    </div>
                  </div>
                </div>
                <div data-kt-menu-trigger="click" class="menu-item menu-accordion">
                      <span class="menu-link">
                        <span class="menu-bullet">
                          <span class="bullet bullet-dot"></span>
                        </span>
                        <span class="menu-title">FAQ</span>
                        <span class="menu-arrow"></span>
                      </span>
                  <div class="menu-sub menu-sub-accordion menu-active-bg">
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/faq/classic.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Classic</span>
                      </a>
                    </div>
                    <div class="menu-item">
                      <a class="menu-link" href="/metronic8/demo1/pages/faq/extended.html">
                            <span class="menu-bullet">
                              <span class="bullet bullet-dot"></span>
                            </span>
                        <span class="menu-title">Extended</span>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
















          </div>
          <!--end::Menu-->
        </div>
      </div>
      <!--end::Aside menu-->
      <!--begin::Footer-->
      <div class="aside-footer flex-column-auto pt-5 pb-7 px-5" id="kt_aside_footer">
        <a href="/metronic8/demo1/documentation/getting-started.html" class="btn btn-custom btn-primary w-100" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-delay-show="8000" title="" data-bs-original-title="Check out the complete documentation with over 100 components">
          <span class="btn-label">Docs &amp; Components</span>
          <!--begin::Svg Icon | path: icons/duotone/General/Clipboard.svg-->
          <span class="svg-icon btn-icon svg-icon-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <rect x="0" y="0" width="24" height="24"></rect>
                    <path d="M8,3 L8,3.5 C8,4.32842712 8.67157288,5 9.5,5 L14.5,5 C15.3284271,5 16,4.32842712 16,3.5 L16,3 L18,3 C19.1045695,3 20,3.8954305 20,5 L20,21 C20,22.1045695 19.1045695,23 18,23 L6,23 C4.8954305,23 4,22.1045695 4,21 L4,5 C4,3.8954305 4.8954305,3 6,3 L8,3 Z" fill="#000000" opacity="0.3"></path>
                    <path d="M11,2 C11,1.44771525 11.4477153,1 12,1 C12.5522847,1 13,1.44771525 13,2 L14.5,2 C14.7761424,2 15,2.22385763 15,2.5 L15,3.5 C15,3.77614237 14.7761424,4 14.5,4 L9.5,4 C9.22385763,4 9,3.77614237 9,3.5 L9,2.5 C9,2.22385763 9.22385763,2 9.5,2 L11,2 Z" fill="#000000"></path>
                    <rect fill="#000000" opacity="0.3" x="7" y="10" width="5" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.3" x="7" y="14" width="9" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
          <!--end::Svg Icon-->
        </a>
      </div>
      <!--end::Footer-->
    </div>
    <!--end::Aside-->
    <!--begin::Wrapper-->
    <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
      <!--begin::Header-->
      <div id="kt_header" style="" class="header align-items-stretch">
        <!--begin::Container-->
        <div class="container-fluid d-flex align-items-stretch justify-content-between">
          <!--begin::Aside mobile toggle-->
          <div class="d-flex align-items-center d-lg-none ms-n3 me-1" title="Show aside menu">
            <div class="btn btn-icon btn-active-light-primary" id="kt_aside_mobile_toggle">
              <!--begin::Svg Icon | path: icons/duotone/Text/Menu.svg-->
              <span class="svg-icon svg-icon-2x mt-1">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <rect x="0" y="0" width="24" height="24"></rect>
                        <rect fill="#000000" x="4" y="5" width="16" height="3" rx="1.5"></rect>
                        <path d="M5.5,15 L18.5,15 C19.3284271,15 20,15.6715729 20,16.5 C20,17.3284271 19.3284271,18 18.5,18 L5.5,18 C4.67157288,18 4,17.3284271 4,16.5 C4,15.6715729 4.67157288,15 5.5,15 Z M5.5,10 L18.5,10 C19.3284271,10 20,10.6715729 20,11.5 C20,12.3284271 19.3284271,13 18.5,13 L5.5,13 C4.67157288,13 4,12.3284271 4,11.5 C4,10.6715729 4.67157288,10 5.5,10 Z" fill="#000000" opacity="0.3"></path>
                      </g>
                    </svg>
                  </span>
              <!--end::Svg Icon-->
            </div>
          </div>
          <!--end::Aside mobile toggle-->
          <!--begin::Mobile logo-->
          <div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
            <a href="/metronic8/demo1/index.html" class="d-lg-none">
              <img alt="Logo" src="/metronic8/demo1/assets/media/logos/logo-3.svg" class="h-30px">
            </a>
          </div>
          <!--end::Mobile logo-->
          <!--begin::Wrapper-->
          <div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
            <!--begin::Navbar-->
            <div class="d-flex align-items-stretch" id="kt_header_nav"><div class="header-menu align-items-stretch" data-kt-drawer="true" data-kt-drawer-name="header-menu" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_header_menu_mobile_toggle" data-kt-place="true" data-kt-place-mode="prepend" data-kt-place-parent="{default: '#kt_body', lg: '#kt_header_nav'}" style="">
              <!--begin::Menu-->
              <div class="menu menu-lg-rounded menu-column menu-lg-row menu-state-bg menu-title-gray-700 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-400 fw-bold my-5 my-lg-0 align-items-stretch" id="#kt_header_menu" data-kt-menu="true">
                <div class="menu-item me-lg-1">
                  <a class="menu-link active py-3" href="/metronic8/demo1/index.html">
                    <span class="menu-title">Dashboard</span>
                  </a>
                </div>





              </div>
              <!--end::Menu-->
            </div>
              <!--begin::Menu wrapper-->

              <!--end::Menu wrapper-->
            </div>
            <!--end::Navbar-->
            <!--begin::Topbar-->
            <div class="d-flex align-items-stretch flex-shrink-0">
              <!--begin::Toolbar wrapper-->
              <div class="d-flex align-items-stretch flex-shrink-0">
                <!--begin::Search-->
                <div class="d-flex align-items-stretch ms-1 ms-lg-3">
                  <!--begin::Search-->
                  <div id="kt_header_search" class="d-flex align-items-stretch" data-kt-search-keypress="true" data-kt-search-min-length="2" data-kt-search-enter="enter" data-kt-search-layout="menu" data-kt-menu-trigger="auto" data-kt-menu-overflow="false" data-kt-menu-permanent="true" data-kt-menu-placement="bottom-end" data-kt-menu-flip="bottom">
                    <!--begin::Search toggle-->

                    <!--end::Search toggle-->
                    <!--begin::Menu-->
                    <div data-kt-search-element="content" class="menu menu-sub menu-sub-dropdown p-7 w-325px w-md-375px">
                      <!--begin::Wrapper-->
                      <div data-kt-search-element="wrapper">
                        <!--begin::Form-->
                        <form data-kt-search-element="form" class="w-100 position-relative mb-3" autocomplete="off">
                          <!--begin::Icon-->
                          <!--begin::Svg Icon | path: icons/duotone/General/Search.svg-->
                          <span class="svg-icon svg-icon-2 svg-icon-lg-1 svg-icon-gray-500 position-absolute top-50 translate-middle-y ms-0">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24"></rect>
                                    <path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                    <path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero"></path>
                                  </g>
                                </svg>
                              </span>
                          <!--end::Svg Icon-->
                          <!--end::Icon-->
                          <!--begin::Input-->
                          <input type="text" class="form-control form-control-flush ps-10" name="search" value="" placeholder="Search..." data-kt-search-element="input">
                          <!--end::Input-->
                          <!--begin::Spinner-->
                          <span class="position-absolute top-50 end-0 translate-middle-y lh-0 d-none me-1" data-kt-search-element="spinner">
                                <span class="spinner-border h-15px w-15px align-middle text-gray-400"></span>
                              </span>
                          <!--end::Spinner-->
                          <!--begin::Reset-->
                          <span class="btn btn-flush btn-active-color-primary position-absolute top-50 end-0 translate-middle-y lh-0 d-none" data-kt-search-element="clear">
                                <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
                                <span class="svg-icon svg-icon-2 svg-icon-lg-1 me-0">
                                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                                      <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                                      <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                                    </g>
                                  </svg>
                                </span>
                            <!--end::Svg Icon-->
                              </span>
                          <!--end::Reset-->
                          <!--begin::Toolbar-->
                          <div class="position-absolute top-50 end-0 translate-middle-y" data-kt-search-element="toolbar">
                            <!--begin::Preferences toggle-->
                            <div data-kt-search-element="preferences-show" class="btn btn-icon w-20px btn-sm btn-active-color-primary me-1" data-bs-toggle="tooltip" title="" data-bs-original-title="Show search preferences">
                              <!--begin::Svg Icon | path: icons/duotone/Code/Settings4.svg-->
                              <span class="svg-icon svg-icon-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                      <path d="M18.6225,9.75 L18.75,9.75 C19.9926407,9.75 21,10.7573593 21,12 C21,13.2426407 19.9926407,14.25 18.75,14.25 L18.6854912,14.249994 C18.4911876,14.250769 18.3158978,14.366855 18.2393549,14.5454486 C18.1556809,14.7351461 18.1942911,14.948087 18.3278301,15.0846699 L18.372535,15.129375 C18.7950334,15.5514036 19.03243,16.1240792 19.03243,16.72125 C19.03243,17.3184208 18.7950334,17.8910964 18.373125,18.312535 C17.9510964,18.7350334 17.3784208,18.97243 16.78125,18.97243 C16.1840792,18.97243 15.6114036,18.7350334 15.1896699,18.3128301 L15.1505513,18.2736469 C15.008087,18.1342911 14.7951461,18.0956809 14.6054486,18.1793549 C14.426855,18.2558978 14.310769,18.4311876 14.31,18.6225 L14.31,18.75 C14.31,19.9926407 13.3026407,21 12.06,21 C10.8173593,21 9.81,19.9926407 9.81,18.75 C9.80552409,18.4999185 9.67898539,18.3229986 9.44717599,18.2361469 C9.26485393,18.1556809 9.05191298,18.1942911 8.91533009,18.3278301 L8.870625,18.372535 C8.44859642,18.7950334 7.87592081,19.03243 7.27875,19.03243 C6.68157919,19.03243 6.10890358,18.7950334 5.68746499,18.373125 C5.26496665,17.9510964 5.02757002,17.3784208 5.02757002,16.78125 C5.02757002,16.1840792 5.26496665,15.6114036 5.68716991,15.1896699 L5.72635306,15.1505513 C5.86570889,15.008087 5.90431906,14.7951461 5.82064513,14.6054486 C5.74410223,14.426855 5.56881236,14.310769 5.3775,14.31 L5.25,14.31 C4.00735931,14.31 3,13.3026407 3,12.06 C3,10.8173593 4.00735931,9.81 5.25,9.81 C5.50008154,9.80552409 5.67700139,9.67898539 5.76385306,9.44717599 C5.84431906,9.26485393 5.80570889,9.05191298 5.67216991,8.91533009 L5.62746499,8.870625 C5.20496665,8.44859642 4.96757002,7.87592081 4.96757002,7.27875 C4.96757002,6.68157919 5.20496665,6.10890358 5.626875,5.68746499 C6.04890358,5.26496665 6.62157919,5.02757002 7.21875,5.02757002 C7.81592081,5.02757002 8.38859642,5.26496665 8.81033009,5.68716991 L8.84944872,5.72635306 C8.99191298,5.86570889 9.20485393,5.90431906 9.38717599,5.82385306 L9.49484664,5.80114977 C9.65041313,5.71688974 9.7492905,5.55401473 9.75,5.3775 L9.75,5.25 C9.75,4.00735931 10.7573593,3 12,3 C13.2426407,3 14.25,4.00735931 14.25,5.25 L14.249994,5.31450877 C14.250769,5.50881236 14.366855,5.68410223 14.552824,5.76385306 C14.7351461,5.84431906 14.948087,5.80570889 15.0846699,5.67216991 L15.129375,5.62746499 C15.5514036,5.20496665 16.1240792,4.96757002 16.72125,4.96757002 C17.3184208,4.96757002 17.8910964,5.20496665 18.312535,5.626875 C18.7350334,6.04890358 18.97243,6.62157919 18.97243,7.21875 C18.97243,7.81592081 18.7350334,8.38859642 18.3128301,8.81033009 L18.2736469,8.84944872 C18.1342911,8.99191298 18.0956809,9.20485393 18.1761469,9.38717599 L18.1988502,9.49484664 C18.2831103,9.65041313 18.4459853,9.7492905 18.6225,9.75 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                      <path d="M12,15 C13.6568542,15 15,13.6568542 15,12 C15,10.3431458 13.6568542,9 12,9 C10.3431458,9 9,10.3431458 9,12 C9,13.6568542 10.3431458,15 12,15 Z" fill="#000000"></path>
                                    </svg>
                                  </span>
                              <!--end::Svg Icon-->
                            </div>
                            <!--end::Preferences toggle-->
                            <!--begin::Advanced search toggle-->
                            <div data-kt-search-element="advanced-options-form-show" class="btn btn-icon w-20px btn-sm btn-active-color-primary" data-bs-toggle="tooltip" title="" data-bs-original-title="Show more search options">
                              <!--begin::Svg Icon | path: icons/duotone/Navigation/Angle-down.svg-->
                              <span class="svg-icon svg-icon-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                        <path d="M6.70710678,15.7071068 C6.31658249,16.0976311 5.68341751,16.0976311 5.29289322,15.7071068 C4.90236893,15.3165825 4.90236893,14.6834175 5.29289322,14.2928932 L11.2928932,8.29289322 C11.6714722,7.91431428 12.2810586,7.90106866 12.6757246,8.26284586 L18.6757246,13.7628459 C19.0828436,14.1360383 19.1103465,14.7686056 18.7371541,15.1757246 C18.3639617,15.5828436 17.7313944,15.6103465 17.3242754,15.2371541 L12.0300757,10.3841378 L6.70710678,15.7071068 Z" fill="#000000" fill-rule="nonzero" transform="translate(12.000003, 11.999999) rotate(-180.000000) translate(-12.000003, -11.999999)"></path>
                                      </g>
                                    </svg>
                                  </span>
                              <!--end::Svg Icon-->
                            </div>
                            <!--end::Advanced search toggle-->
                          </div>
                          <!--end::Toolbar-->
                        </form>
                        <!--end::Form-->
                        <!--begin::Separator-->
                        <div class="separator border-gray-200 mb-6"></div>
                        <!--end::Separator-->
                        <!--begin::Recently viewed-->
                        <div data-kt-search-element="results" class="d-none">
                          <!--begin::Items-->
                          <div class="scroll-y mh-200px mh-lg-325px">
                            <!--begin::Category title-->
                            <h3 class="fs-5 text-muted m-0 pb-5" data-kt-search-element="category-title">Users</h3>
                            <!--end::Category title-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                <img src="/metronic8/demo1/assets/media/avatars/150-1.jpg" alt="">
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Karina Clark</span>
                                <span class="fs-7 fw-bold text-muted">Marketing Manager</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                <img src="/metronic8/demo1/assets/media/avatars/150-3.jpg" alt="">
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Olivia Bold</span>
                                <span class="fs-7 fw-bold text-muted">Software Engineer</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                <img src="/metronic8/demo1/assets/media/avatars/150-8.jpg" alt="">
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Ana Clark</span>
                                <span class="fs-7 fw-bold text-muted">UI/UX Designer</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                <img src="/metronic8/demo1/assets/media/avatars/150-11.jpg" alt="">
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Nick Pitola</span>
                                <span class="fs-7 fw-bold text-muted">Art Director</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                <img src="/metronic8/demo1/assets/media/avatars/150-12.jpg" alt="">
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Edward Kulnic</span>
                                <span class="fs-7 fw-bold text-muted">System Administrator</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Category title-->
                            <h3 class="fs-5 text-muted m-0 pt-5 pb-5" data-kt-search-element="category-title">Customers</h3>
                            <!--end::Category title-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <img class="w-20px h-20px" src="/metronic8/demo1/assets/media/svg/brand-logos/volicity-9.svg" alt="">
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Company Rbranding</span>
                                <span class="fs-7 fw-bold text-muted">UI Design</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <img class="w-20px h-20px" src="/metronic8/demo1/assets/media/svg/brand-logos/tvit.svg" alt="">
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Company Re-branding</span>
                                <span class="fs-7 fw-bold text-muted">Web Development</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <img class="w-20px h-20px" src="/metronic8/demo1/assets/media/svg/misc/infography.svg" alt="">
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Business Analytics App</span>
                                <span class="fs-7 fw-bold text-muted">Administration</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <img class="w-20px h-20px" src="/metronic8/demo1/assets/media/svg/brand-logos/leaf.svg" alt="">
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">EcoLeaf App Launch</span>
                                <span class="fs-7 fw-bold text-muted">Marketing</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <img class="w-20px h-20px" src="/metronic8/demo1/assets/media/svg/brand-logos/tower.svg" alt="">
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column justify-content-start fw-bold">
                                <span class="fs-6 fw-bold">Tower Group Website</span>
                                <span class="fs-7 fw-bold text-muted">Google Adwords</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Category title-->
                            <h3 class="fs-5 text-muted m-0 pt-5 pb-5" data-kt-search-element="category-title">Projects</h3>
                            <!--end::Category title-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Communication/Clipboard-list.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                          <path d="M8,3 L8,3.5 C8,4.32842712 8.67157288,5 9.5,5 L14.5,5 C15.3284271,5 16,4.32842712 16,3.5 L16,3 L18,3 C19.1045695,3 20,3.8954305 20,5 L20,21 C20,22.1045695 19.1045695,23 18,23 L6,23 C4.8954305,23 4,22.1045695 4,21 L4,5 C4,3.8954305 4.8954305,3 6,3 L8,3 Z" fill="#000000" opacity="0.3"></path>
                                          <path d="M11,2 C11,1.44771525 11.4477153,1 12,1 C12.5522847,1 13,1.44771525 13,2 L14.5,2 C14.7761424,2 15,2.22385763 15,2.5 L15,3.5 C15,3.77614237 14.7761424,4 14.5,4 L9.5,4 C9.22385763,4 9,3.77614237 9,3.5 L9,2.5 C9,2.22385763 9.22385763,2 9.5,2 L11,2 Z" fill="#000000"></path>
                                          <rect fill="#000000" opacity="0.3" x="10" y="9" width="7" height="2" rx="1"></rect>
                                          <rect fill="#000000" opacity="0.3" x="7" y="9" width="2" height="2" rx="1"></rect>
                                          <rect fill="#000000" opacity="0.3" x="7" y="13" width="2" height="2" rx="1"></rect>
                                          <rect fill="#000000" opacity="0.3" x="10" y="13" width="7" height="2" rx="1"></rect>
                                          <rect fill="#000000" opacity="0.3" x="7" y="17" width="2" height="2" rx="1"></rect>
                                          <rect fill="#000000" opacity="0.3" x="10" y="17" width="7" height="2" rx="1"></rect>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <span class="fs-6 fw-bold">Si-Fi Project by AU Themes</span>
                                <span class="fs-7 fw-bold text-muted">#45670</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Media/Equalizer.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <rect x="0" y="0" width="24" height="24"></rect>
                                            <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                            <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                            <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                            <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                          </g>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <span class="fs-6 fw-bold">Shopix Mobile App Planning</span>
                                <span class="fs-7 fw-bold text-muted">#45690</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Communication/Group-chat.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                          <path d="M16,15.6315789 L16,12 C16,10.3431458 14.6568542,9 13,9 L6.16183229,9 L6.16183229,5.52631579 C6.16183229,4.13107011 7.29290239,3 8.68814808,3 L20.4776218,3 C21.8728674,3 23.0039375,4.13107011 23.0039375,5.52631579 L23.0039375,13.1052632 L23.0206157,17.786793 C23.0215995,18.0629336 22.7985408,18.2875874 22.5224001,18.2885711 C22.3891754,18.2890457 22.2612702,18.2363324 22.1670655,18.1421277 L19.6565168,15.6315789 L16,15.6315789 Z" fill="#000000"></path>
                                          <path d="M1.98505595,18 L1.98505595,13 C1.98505595,11.8954305 2.88048645,11 3.98505595,11 L11.9850559,11 C13.0896254,11 13.9850559,11.8954305 13.9850559,13 L13.9850559,18 C13.9850559,19.1045695 13.0896254,20 11.9850559,20 L4.10078614,20 L2.85693427,21.1905292 C2.65744295,21.3814685 2.34093638,21.3745358 2.14999706,21.1750444 C2.06092565,21.0819836 2.01120804,20.958136 2.01120804,20.8293182 L2.01120804,18.32426 C1.99400175,18.2187196 1.98505595,18.1104045 1.98505595,18 Z M6.5,14 C6.22385763,14 6,14.2238576 6,14.5 C6,14.7761424 6.22385763,15 6.5,15 L11.5,15 C11.7761424,15 12,14.7761424 12,14.5 C12,14.2238576 11.7761424,14 11.5,14 L6.5,14 Z M9.5,16 C9.22385763,16 9,16.2238576 9,16.5 C9,16.7761424 9.22385763,17 9.5,17 L11.5,17 C11.7761424,17 12,16.7761424 12,16.5 C12,16.2238576 11.7761424,16 11.5,16 L9.5,16 Z" fill="#000000" opacity="0.3"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <span class="fs-6 fw-bold">Finance Monitoring SAAS Discussion</span>
                                <span class="fs-7 fw-bold text-muted">#21090</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/General/User.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                            <path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                            <path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                          </g>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <span class="fs-6 fw-bold">Dashboard Analitics Launch</span>
                                <span class="fs-7 fw-bold text-muted">#34560</span>
                              </div>
                              <!--end::Title-->
                            </a>
                            <!--end::Item-->
                          </div>
                          <!--end::Items-->
                        </div>
                        <!--end::Recently viewed-->
                        <!--begin::Recently viewed-->
                        <div class="mb-4" data-kt-search-element="main">
                          <!--begin::Heading-->
                          <div class="d-flex flex-stack fw-bold mb-4">
                            <!--begin::Label-->
                            <span class="text-muted fs-6 me-2">Recently Searched:</span>
                            <!--end::Label-->
                          </div>
                          <!--end::Heading-->
                          <!--begin::Items-->
                          <div class="scroll-y mh-200px mh-lg-325px">
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Monitor.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <g opacity="0.25">
                                            <path d="M2 15C2 16.6569 3.34315 18 5 18L19 18C20.6569 18 22 16.6569 22 15V5C22 3.34315 20.6569 2 19 2H5C3.34315 2 2 3.34315 2 5V15Z" fill="#12131A"></path>
                                            <path d="M8 20C7.44772 20 7 20.4477 7 21C7 21.5523 7.44772 22 8 22H16C16.5523 22 17 21.5523 17 21C17 20.4477 16.5523 20 16 20H8Z" fill="#12131A"></path>
                                          </g>
                                          <path d="M7 6C6.44772 6 6 6.44772 6 7C6 7.55228 6.44772 8 7 8H14C14.5523 8 15 7.55228 15 7C15 6.44772 14.5523 6 14 6H7Z" fill="#12131A"></path>
                                          <path d="M7 10C6.44772 10 6 10.4477 6 11C6 11.5523 6.44772 12 7 12H9C9.55229 12 10 11.5523 10 11C10 10.4477 9.55229 10 9 10H7Z" fill="#12131A"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">BoomApp by Keenthemes</a>
                                <span class="fs-7 text-muted fw-bold">#45789</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Scatter-Up.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <g opacity="0.25">
                                            <path d="M20 13C20.5523 13 21 12.5523 21 12C21 11.4477 20.5523 11 20 11C19.4477 11 19 11.4477 19 12C19 12.5523 19.4477 13 20 13Z" fill="#12131A"></path>
                                            <path d="M20 17C20.5523 17 21 16.5523 21 16C21 15.4477 20.5523 15 20 15C19.4477 15 19 15.4477 19 16C19 16.5523 19.4477 17 20 17Z" fill="#12131A"></path>
                                            <path d="M20 21C20.5523 21 21 20.5523 21 20C21 19.4477 20.5523 19 20 19C19.4477 19 19 19.4477 19 20C19 20.5523 19.4477 21 20 21Z" fill="#12131A"></path>
                                            <path d="M12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="#12131A"></path>
                                            <path d="M12 21C12.5523 21 13 20.5523 13 20C13 19.4477 12.5523 19 12 19C11.4477 19 11 19.4477 11 20C11 20.5523 11.4477 21 12 21Z" fill="#12131A"></path>
                                            <path d="M4 21C4.55228 21 5 20.5523 5 20C5 19.4477 4.55228 19 4 19C3.44772 19 3 19.4477 3 20C3 20.5523 3.44772 21 4 21Z" fill="#12131A"></path>
                                          </g>
                                          <path d="M17 6C17 7.65685 18.3431 9 20 9C21.6569 9 23 7.65685 23 6C23 4.34315 21.6569 3 20 3C18.3431 3 17 4.34315 17 6Z" fill="#12131A"></path>
                                          <path d="M9 10C9 11.6569 10.3431 13 12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10Z" fill="#12131A"></path>
                                          <path d="M4 17C2.34315 17 1 15.6569 1 14C1 12.3431 2.34315 11 4 11C5.65685 11 7 12.3431 7 14C7 15.6569 5.65685 17 4 17Z" fill="#12131A"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">"Kept API Project Meeting</a>
                                <span class="fs-7 text-muted fw-bold">#84050</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Doughnut.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <path opacity="0.25" fill-rule="evenodd" clip-rule="evenodd" d="M11 4.25769C11 3.07501 9.9663 2.13515 8.84397 2.50814C4.86766 3.82961 2 7.57987 2 11.9999C2 13.6101 2.38057 15.1314 3.05667 16.4788C3.58731 17.5363 4.98303 17.6028 5.81966 16.7662L5.91302 16.6728C6.60358 15.9823 6.65613 14.9011 6.3341 13.9791C6.11766 13.3594 6 12.6934 6 11.9999C6 9.62064 7.38488 7.56483 9.39252 6.59458C10.2721 6.16952 11 5.36732 11 4.39046V4.25769ZM16.4787 20.9434C17.5362 20.4127 17.6027 19.017 16.7661 18.1804L16.6727 18.087C15.9822 17.3964 14.901 17.3439 13.979 17.6659C13.3594 17.8823 12.6934 17.9999 12 17.9999C11.3066 17.9999 10.6406 17.8823 10.021 17.6659C9.09899 17.3439 8.01784 17.3964 7.3273 18.087L7.23392 18.1804C6.39728 19.017 6.4638 20.4127 7.52133 20.9434C8.86866 21.6194 10.3899 21.9999 12 21.9999C13.6101 21.9999 15.1313 21.6194 16.4787 20.9434Z" fill="#12131A"></path>
                                          <path fill-rule="evenodd" clip-rule="evenodd" d="M13 4.39046C13 5.36732 13.7279 6.16952 14.6075 6.59458C16.6151 7.56483 18 9.62064 18 11.9999C18 12.6934 17.8823 13.3594 17.6659 13.9791C17.3439 14.9011 17.3964 15.9823 18.087 16.6728L18.1803 16.7662C19.017 17.6028 20.4127 17.5363 20.9433 16.4788C21.6194 15.1314 22 13.6101 22 11.9999C22 7.57987 19.1323 3.82961 15.156 2.50814C14.0337 2.13515 13 3.07501 13 4.25769V4.39046Z" fill="#12131A"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">"KPI Monitoring App Launch</a>
                                <span class="fs-7 text-muted fw-bold">#84250</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Stacked-Area-Down.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <path opacity="0.25" d="M2 13.8857C2 13.1875 2.69737 12.7042 3.35112 12.9493L8.14677 14.7477C8.64016 14.9327 9.17357 14.9845 9.69334 14.8979L14.6354 14.0742C14.8087 14.0453 14.9865 14.0626 15.151 14.1243L21.3511 16.4493C21.7414 16.5957 22 16.9688 22 17.3857V20C22 21.1046 21.1046 22 20 22H4C2.89543 22 2 21.1046 2 20V13.8857Z" fill="#12131A"></path>
                                          <path d="M2 4.13517C2 2.4395 3.97771 1.51318 5.28037 2.59873L8.93565 5.64479C9.1593 5.83117 9.45306 5.91083 9.74023 5.86296L14.0555 5.14376C14.8073 5.01846 15.5786 5.18401 16.2128 5.60679L20.6641 8.57435C21.4987 9.13074 22 10.0674 22 11.0705V13.1138C22 13.812 21.3026 14.2953 20.6489 14.0501L15.8532 12.2518C15.3598 12.0667 14.8264 12.0149 14.3067 12.1016L9.36454 12.9253C9.19129 12.9541 9.01348 12.9369 8.84902 12.8752L2.64888 10.5501C2.25857 10.4038 2 10.0307 2 9.61381V4.13517Z" fill="#12131A"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Project Reference FAQ</a>
                                <span class="fs-7 text-muted fw-bold">#67945</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Envelope.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <path opacity="0.25" d="M1 6C1 4.34315 2.34315 3 4 3H20C21.6569 3 23 4.34315 23 6V18C23 19.6569 21.6569 21 20 21H4C2.34315 21 1 19.6569 1 18V6Z" fill="#191213"></path>
                                          <path fill-rule="evenodd" clip-rule="evenodd" d="M5.23177 7.35984C5.58534 6.93556 6.2159 6.87824 6.64018 7.2318L11.3598 11.1648C11.7307 11.4739 12.2693 11.4739 12.6402 11.1648L17.3598 7.2318C17.7841 6.87824 18.4147 6.93556 18.7682 7.35984C19.1218 7.78412 19.0645 8.41468 18.6402 8.76825L13.9205 12.7013C12.808 13.6284 11.192 13.6284 10.0794 12.7013L5.35981 8.76825C4.93553 8.41468 4.87821 7.78412 5.23177 7.35984Z" fill="#121319"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">"FitPro App Development</a>
                                <span class="fs-7 text-muted fw-bold">#84250</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Bank.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <path opacity="0.25" d="M4 10H8V17H10V10H14V17H16V10H20V17C21.1046 17 22 17.8954 22 19V20C22 21.1046 21.1046 22 20 22H4C2.89543 22 2 21.1046 2 20V19C2 17.8954 2.89543 17 4 17V10Z" fill="#12131A"></path>
                                          <path d="M2 7.35405C2 6.53624 2.4979 5.80083 3.25722 5.4971L11.2572 2.2971C11.734 2.10637 12.266 2.10637 12.7428 2.2971L20.7428 5.4971C21.5021 5.80083 22 6.53624 22 7.35405V7.99999C22 9.10456 21.1046 9.99999 20 9.99999H4C2.89543 9.99999 2 9.10456 2 7.99999V7.35405Z" fill="#12131A"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">Shopix Mobile App</a>
                                <span class="fs-7 text-muted fw-bold">#45690</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                            <!--begin::Item-->
                            <div class="d-flex align-items-center mb-5">
                              <!--begin::Symbol-->
                              <div class="symbol symbol-40px me-4">
                                    <span class="symbol-label bg-light">
                                      <!--begin::Svg Icon | path: icons/duotone/Interface/Line-03-Up.svg-->
                                      <span class="svg-icon svg-icon-2 svg-icon-primary">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                          <path opacity="0.25" d="M1 5C1 3.89543 1.89543 3 3 3H21C22.1046 3 23 3.89543 23 5V19C23 20.1046 22.1046 21 21 21H3C1.89543 21 1 20.1046 1 19V5Z" fill="#12131A"></path>
                                          <path fill-rule="evenodd" clip-rule="evenodd" d="M20.8682 6.49631C21.1422 6.01679 20.9756 5.40594 20.4961 5.13193C20.0166 4.85792 19.4058 5.02451 19.1317 5.50403L15.8834 11.1886C15.6612 11.5775 15.2073 11.7712 14.7727 11.6626L9.71238 10.3975C8.40847 10.0715 7.04688 10.6526 6.38005 11.8195L3.13174 17.504C2.85773 17.9835 3.02433 18.5944 3.50385 18.8684C3.98337 19.1424 4.59422 18.9758 4.86823 18.4963L8.11653 12.8118C8.33881 12.4228 8.79268 12.2291 9.22731 12.3378L14.2876 13.6028C15.5915 13.9288 16.9531 13.3478 17.6199 12.1808L20.8682 6.49631Z" fill="#12131A"></path>
                                        </svg>
                                      </span>
                                      <!--end::Svg Icon-->
                                    </span>
                              </div>
                              <!--end::Symbol-->
                              <!--begin::Title-->
                              <div class="d-flex flex-column">
                                <a href="#" class="fs-6 text-gray-800 text-hover-primary fw-bold">"Landing UI Design" Launch</a>
                                <span class="fs-7 text-muted fw-bold">#24005</span>
                              </div>
                              <!--end::Title-->
                            </div>
                            <!--end::Item-->
                          </div>
                          <!--end::Items-->
                        </div>
                        <!--end::Recently viewed-->
                        <!--begin::Empty-->
                        <div data-kt-search-element="empty" class="text-center d-none">
                          <!--begin::Icon-->
                          <div class="pt-10 pb-10">
                            <!--begin::Svg Icon | path: icons/duotone/Interface/File-Search.svg-->
                            <span class="svg-icon svg-icon-4x opacity-50">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path opacity="0.25" d="M3 4C3 2.34315 4.34315 1 6 1H15.7574C16.553 1 17.3161 1.31607 17.8787 1.87868L20.1213 4.12132C20.6839 4.68393 21 5.44699 21 6.24264V20C21 21.6569 19.6569 23 18 23H6C4.34315 23 3 21.6569 3 20V4Z" fill="#12131A"></path>
                                    <path d="M15 1.89181C15 1.39927 15.3993 1 15.8918 1V1C16.6014 1 17.2819 1.28187 17.7836 1.78361L20.2164 4.21639C20.7181 4.71813 21 5.39863 21 6.10819V6.10819C21 6.60073 20.6007 7 20.1082 7H16C15.4477 7 15 6.55228 15 6V1.89181Z" fill="#12131A"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.032 15.4462C12.4365 15.7981 11.7418 16 11 16C8.79086 16 7 14.2091 7 12C7 9.79086 8.79086 8 11 8C13.2091 8 15 9.79086 15 12C15 12.7418 14.7981 13.4365 14.4462 14.032L16.7072 16.293C17.0977 16.6835 17.0977 17.3167 16.7072 17.7072C16.3167 18.0977 15.6835 18.0977 15.293 17.7072L13.032 15.4462ZM13 12C13 13.1046 12.1046 14 11 14C9.89543 14 9 13.1046 9 12C9 10.8954 9.89543 10 11 10C12.1046 10 13 10.8954 13 12Z" fill="#12131A"></path>
                                  </svg>
                                </span>
                            <!--end::Svg Icon-->
                          </div>
                          <!--end::Icon-->
                          <!--begin::Message-->
                          <div class="pb-15 fw-bold">
                            <h3 class="text-gray-600 fs-5 mb-2">No result found</h3>
                            <div class="text-muted fs-7">Please try again with a different query</div>
                          </div>
                          <!--end::Message-->
                        </div>
                        <!--end::Empty-->
                      </div>
                      <!--end::Wrapper-->
                      <!--begin::Preferences-->
                      <form data-kt-search-element="advanced-options-form" class="pt-1 d-none">
                        <!--begin::Heading-->
                        <h3 class="fw-bold text-dark mb-7">Advanced Search</h3>
                        <!--end::Heading-->
                        <!--begin::Input group-->
                        <div class="mb-5">
                          <input type="text" class="form-control form-control-sm form-control-solid" placeholder="Contains the word" name="query">
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="mb-5">
                          <!--begin::Radio group-->
                          <div class="nav-group nav-group-fluid">
                            <!--begin::Option-->
                            <label>
                              <input type="radio" class="btn-check" name="type" value="has" checked="checked">
                              <span class="btn btn-sm btn-color-muted btn-active btn-active-primary">All</span>
                            </label>
                            <!--end::Option-->
                            <!--begin::Option-->
                            <label>
                              <input type="radio" class="btn-check" name="type" value="users">
                              <span class="btn btn-sm btn-color-muted btn-active btn-active-primary px-4">Users</span>
                            </label>
                            <!--end::Option-->
                            <!--begin::Option-->
                            <label>
                              <input type="radio" class="btn-check" name="type" value="orders">
                              <span class="btn btn-sm btn-color-muted btn-active btn-active-primary px-4">Orders</span>
                            </label>
                            <!--end::Option-->
                            <!--begin::Option-->
                            <label>
                              <input type="radio" class="btn-check" name="type" value="projects">
                              <span class="btn btn-sm btn-color-muted btn-active btn-active-primary px-4">Projects</span>
                            </label>
                            <!--end::Option-->
                          </div>
                          <!--end::Radio group-->
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="mb-5">
                          <input type="text" name="assignedto" class="form-control form-control-sm form-control-solid" placeholder="Assigned to" value="">
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="mb-5">
                          <input type="text" name="collaborators" class="form-control form-control-sm form-control-solid" placeholder="Collaborators" value="">
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="mb-5">
                          <!--begin::Radio group-->
                          <div class="nav-group nav-group-fluid">
                            <!--begin::Option-->
                            <label>
                              <input type="radio" class="btn-check" name="attachment" value="has" checked="checked">
                              <span class="btn btn-sm btn-color-muted btn-active btn-active-primary">Has attachment</span>
                            </label>
                            <!--end::Option-->
                            <!--begin::Option-->
                            <label>
                              <input type="radio" class="btn-check" name="attachment" value="any">
                              <span class="btn btn-sm btn-color-muted btn-active btn-active-primary px-4">Any</span>
                            </label>
                            <!--end::Option-->
                          </div>
                          <!--end::Radio group-->
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="mb-5">
                          <select name="timezone" aria-label="Select a Timezone" data-control="select2" data-placeholder="date_period" class="form-select form-select-sm form-select-solid select2-hidden-accessible" data-select2-id="select2-data-1-pec5" tabindex="-1" aria-hidden="true">
                            <option value="next" data-select2-id="select2-data-3-n6ej">Within the next</option>
                            <option value="last">Within the last</option>
                            <option value="between">Between</option>
                            <option value="on">On</option>
                          </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-1-gd14" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-timezone-n9-container" aria-controls="select2-timezone-n9-container"><span class="select2-selection__rendered" id="select2-timezone-n9-container" role="textbox" aria-readonly="true" title="Within the next">Within the next</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-1-thz1" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-timezone-2f-container" aria-controls="select2-timezone-2f-container"><span class="select2-selection__rendered" id="select2-timezone-2f-container" role="textbox" aria-readonly="true" title="Within the next">Within the next</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-1-t9f1" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-timezone-t3-container" aria-controls="select2-timezone-t3-container"><span class="select2-selection__rendered" id="select2-timezone-t3-container" role="textbox" aria-readonly="true" title="Within the next">Within the next</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-2-19hk" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-timezone-u9-container" aria-controls="select2-timezone-u9-container"><span class="select2-selection__rendered" id="select2-timezone-u9-container" role="textbox" aria-readonly="true" title="Within the next">Within the next</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="row mb-8">
                          <!--begin::Col-->
                          <div class="col-6">
                            <input type="number" name="date_number" class="form-control form-control-sm form-control-solid" placeholder="Lenght" value="">
                          </div>
                          <!--end::Col-->
                          <!--begin::Col-->
                          <div class="col-6">
                            <select name="date_typer" aria-label="Select a Timezone" data-control="select2" data-placeholder="Period" class="form-select form-select-sm form-select-solid select2-hidden-accessible" data-select2-id="select2-data-4-ri84" tabindex="-1" aria-hidden="true">
                              <option value="days" data-select2-id="select2-data-6-c1hp">Days</option>
                              <option value="weeks">Weeks</option>
                              <option value="months">Months</option>
                              <option value="years">Years</option>
                            </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-2-2zcy" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-date_typer-6k-container" aria-controls="select2-date_typer-6k-container"><span class="select2-selection__rendered" id="select2-date_typer-6k-container" role="textbox" aria-readonly="true" title="Days">Days</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-2-6ip5" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-date_typer-0w-container" aria-controls="select2-date_typer-0w-container"><span class="select2-selection__rendered" id="select2-date_typer-0w-container" role="textbox" aria-readonly="true" title="Days">Days</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-2-dg8g" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-date_typer-7d-container" aria-controls="select2-date_typer-7d-container"><span class="select2-selection__rendered" id="select2-date_typer-7d-container" role="textbox" aria-readonly="true" title="Days">Days</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-5-j9wm" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-sm form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-date_typer-5e-container" aria-controls="select2-date_typer-5e-container"><span class="select2-selection__rendered" id="select2-date_typer-5e-container" role="textbox" aria-readonly="true" title="Days">Days</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                          </div>
                          <!--end::Col-->
                        </div>
                        <!--end::Input group-->
                        <!--begin::Actions-->
                        <div class="d-flex justify-content-end">
                          <button type="reset" class="btn btn-sm btn-white fw-bolder btn-active-light-primary me-2" data-kt-search-element="advanced-options-form-cancel">Cancel</button>
                          <a href="/metronic8/demo1/pages/search/horizontal.html" class="btn btn-sm fw-bolder btn-primary" data-kt-search-element="advanced-options-form-search">Search</a>
                        </div>
                        <!--end::Actions-->
                      </form>
                      <!--end::Preferences-->
                      <!--begin::Preferences-->
                      <form data-kt-search-element="preferences" class="pt-1 d-none">
                        <!--begin::Heading-->
                        <h3 class="fw-bold text-dark mb-7">Search Preferences</h3>
                        <!--end::Heading-->
                        <!--begin::Input group-->
                        <div class="pb-4 border-bottom">
                          <label class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack">
                            <span class="form-check-label text-gray-700 fs-6 fw-bold ms-0 me-2">Projects</span>
                            <input class="form-check-input" type="checkbox" value="1" checked="checked">
                          </label>
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="py-4 border-bottom">
                          <label class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack">
                            <span class="form-check-label text-gray-700 fs-6 fw-bold ms-0 me-2">Targets</span>
                            <input class="form-check-input" type="checkbox" value="1" checked="checked">
                          </label>
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="py-4 border-bottom">
                          <label class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack">
                            <span class="form-check-label text-gray-700 fs-6 fw-bold ms-0 me-2">Affiliate Programs</span>
                            <input class="form-check-input" type="checkbox" value="1">
                          </label>
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="py-4 border-bottom">
                          <label class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack">
                            <span class="form-check-label text-gray-700 fs-6 fw-bold ms-0 me-2">Referrals</span>
                            <input class="form-check-input" type="checkbox" value="1" checked="checked">
                          </label>
                        </div>
                        <!--end::Input group-->
                        <!--begin::Input group-->
                        <div class="py-4 border-bottom">
                          <label class="form-check form-switch form-switch-sm form-check-custom form-check-solid flex-stack">
                            <span class="form-check-label text-gray-700 fs-6 fw-bold ms-0 me-2">Users</span>
                            <input class="form-check-input" type="checkbox" value="1">
                          </label>
                        </div>
                        <!--end::Input group-->
                        <!--begin::Actions-->
                        <div class="d-flex justify-content-end pt-7">
                          <button type="reset" class="btn btn-sm btn-white fw-bolder btn-active-light-primary me-2" data-kt-search-element="preferences-dismiss">Cancel</button>
                          <button type="submit" class="btn btn-sm fw-bolder btn-primary">Save Changes</button>
                        </div>
                        <!--end::Actions-->
                      </form>
                      <!--end::Preferences-->
                    </div>
                    <!--end::Menu-->
                  </div>
                  <!--end::Search-->
                </div>
                <!--end::Search-->
                <!--begin::Activities-->

                <!--end::Activities-->
                <!--begin::Quick links-->

                <!--end::Quick links-->
                <!--begin::Chat-->


                <!--begin::Notifications-->

                <!--end::Notifications-->
                <!--begin::User-->

                <!--end::User -->
                <!--begin::Heaeder menu toggle-->
                <div class="d-flex align-items-center d-lg-none ms-2 me-n3" title="Show header menu">
                  <div class="btn btn-icon btn-active-light-primary" id="kt_header_menu_mobile_toggle">
                    <!--begin::Svg Icon | path: icons/duotone/Text/Toggle-Right.svg-->
                    <span class="svg-icon svg-icon-1">
                          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                              <rect x="0" y="0" width="24" height="24"></rect>
                              <path fill-rule="evenodd" clip-rule="evenodd" d="M22 11.5C22 12.3284 21.3284 13 20.5 13H3.5C2.6716 13 2 12.3284 2 11.5C2 10.6716 2.6716 10 3.5 10H20.5C21.3284 10 22 10.6716 22 11.5Z" fill="black"></path>
                              <path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M14.5 20C15.3284 20 16 19.3284 16 18.5C16 17.6716 15.3284 17 14.5 17H3.5C2.6716 17 2 17.6716 2 18.5C2 19.3284 2.6716 20 3.5 20H14.5ZM8.5 6C9.3284 6 10 5.32843 10 4.5C10 3.67157 9.3284 3 8.5 3H3.5C2.6716 3 2 3.67157 2 4.5C2 5.32843 2.6716 6 3.5 6H8.5Z" fill="black"></path>
                            </g>
                          </svg>
                        </span>
                    <!--end::Svg Icon-->
                  </div>
                </div>
                <!--end::Heaeder menu toggle-->
              </div>
              <!--end::Toolbar wrapper-->
            </div>
            <!--end::Topbar-->
          </div>
          <!--end::Wrapper-->
        </div>
        <!--end::Container-->
      </div>
      <!--end::Header-->
      <!--begin::Content-->
      <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Toolbar-->
        <div class="toolbar" id="kt_toolbar">
          <!--begin::Container-->
          <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack"><div data-kt-place="true" data-kt-place-mode="prepend" data-kt-place-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center me-3 flex-wrap mb-5 mb-lg-0 lh-1">
            <!--begin::Title-->
            <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">XRP Wallet Tools Dashboard WIP
              <!--begin::Separator-->
              <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
              <!--end::Separator-->
              <!--begin::Description-->
              <small class="text-muted fs-7 fw-bold my-1 ms-1">#<%=session.getCreationTime()%></small>
              <!--end::Description--></h1>
            <!--end::Title-->
          </div>
            <!--begin::Page title-->

            <!--end::Page title-->
            <!--begin::Actions-->
            <div class="d-flex align-items-center py-1">
              <!--begin::Wrapper-->
              <div class="me-4">
                <!--begin::Menu-->

                <!--begin::Menu 1-->
                <div class="menu menu-sub menu-sub-dropdown w-250px w-md-300px" data-kt-menu="true" style="">
                  <!--begin::Header-->
                  <div class="px-7 py-5">
                    <div class="fs-5 text-dark fw-bolder">Filter Options</div>
                  </div>
                  <!--end::Header-->
                  <!--begin::Menu separator-->
                  <div class="separator border-gray-200"></div>
                  <!--end::Menu separator-->
                  <!--begin::Form-->
                  <div class="px-7 py-5">
                    <!--begin::Input group-->
                    <div class="mb-10">
                      <!--begin::Label-->
                      <label class="form-label fw-bold">Status:</label>
                      <!--end::Label-->
                      <!--begin::Input-->
                      <div>
                        <select class="form-select form-select-solid select2-hidden-accessible" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-select2-id="select2-data-7-5ues" tabindex="-1" aria-hidden="true">
                          <option data-select2-id="select2-data-9-klha"></option>
                          <option value="1">Approved</option>
                          <option value="2">Pending</option>
                          <option value="2">In Process</option>
                          <option value="2">Rejected</option>
                        </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-3-w9y0" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-hwxv-container" aria-controls="select2-hwxv-container"><span class="select2-selection__rendered" id="select2-hwxv-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-3-gzdc" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-r2ff-container" aria-controls="select2-r2ff-container"><span class="select2-selection__rendered" id="select2-r2ff-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-3-9yuq" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-jiy7-container" aria-controls="select2-jiy7-container"><span class="select2-selection__rendered" id="select2-jiy7-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-8-wwbo" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-yh1k-container" aria-controls="select2-yh1k-container"><span class="select2-selection__rendered" id="select2-yh1k-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                      </div>
                      <!--end::Input-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="mb-10">
                      <!--begin::Label-->
                      <label class="form-label fw-bold">Member Type:</label>
                      <!--end::Label-->
                      <!--begin::Options-->
                      <div class="d-flex">
                        <!--begin::Options-->
                        <label class="form-check form-check-sm form-check-custom form-check-solid me-5">
                          <input class="form-check-input" type="checkbox" value="1">
                          <span class="form-check-label">Author</span>
                        </label>
                        <!--end::Options-->
                        <!--begin::Options-->
                        <label class="form-check form-check-sm form-check-custom form-check-solid">
                          <input class="form-check-input" type="checkbox" value="2" checked="checked">
                          <span class="form-check-label">Customer</span>
                        </label>
                        <!--end::Options-->
                      </div>
                      <!--end::Options-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="mb-10">
                      <!--begin::Label-->
                      <label class="form-label fw-bold">Notifications:</label>
                      <!--end::Label-->
                      <!--begin::Switch-->
                      <div class="form-check form-switch form-switch-sm form-check-custom form-check-solid">
                        <input class="form-check-input" type="checkbox" value="" name="notifications" checked="checked">
                        <label class="form-check-label">Enabled</label>
                      </div>
                      <!--end::Switch-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Actions-->
                    <div class="d-flex justify-content-end">
                      <button type="reset" class="btn btn-sm btn-white btn-active-light-primary me-2" data-kt-menu-dismiss="true">Reset</button>
                      <button type="submit" class="btn btn-sm btn-primary" data-kt-menu-dismiss="true">Apply</button>
                    </div>
                    <!--end::Actions-->
                  </div>
                  <!--end::Form-->
                </div>
                <!--end::Menu 1-->
                <!--end::Menu-->
              </div>
              <!--end::Wrapper-->
              <!--begin::Button-->
              <a href="#" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#kt_modal_create_app" id="kt_toolbar_primary_button" data-bs-original-title="" title="" aria-describedby="popover672186">Create</a>
              <!--end::Button-->
            </div>
            <!--end::Actions-->
          </div>
          <!--end::Container-->
        </div>
        <!--end::Toolbar-->
        <!--begin::Post-->
        <div class="post d-flex flex-column-fluid" id="kt_post">
          <!--begin::Container-->
          <div id="kt_content_container" class="container">
            <!--begin::Row-->
            <div class="row gy-5 g-xl-8">
              <!--begin::Col-->
              <div class="col-xxl-4">
                <!--begin::Mixed Widget 2-->
                <div class="card card-xxl-stretch">
                  <!--begin::Header-->
                  <div class="card-header border-0 bg-danger py-5">
                    <h3 class="card-title align-items-start flex-column">
                      <span class="fw-bolder mb-2 text-white">Your XRP Address :</span>
                      <span class="fw-bold fs-5 text-white"><%=wallet.classicAddress()%></span>
                      <p></p>
                      <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&amp;data=<%=wallet.classicAddress()%>&amp;bgcolor=f1416c&color=fff" alt="" title="">
                    </h3>


                  </div>

                  <!--end::Header-->
                  <!--begin::Body-->
                  <div class="card-body p-0" style="position: relative;">
                    <!--begin::Chart-->
                    <div class="mixed-widget-2-chart card-rounded-bottom bg-danger" data-kt-color="danger" style="height: 200px; min-height: 200px;"><div id="apexcharts0uxewn4w" class="apexcharts-canvas apexcharts0uxewn4w apexcharts-theme-light" style="width: 403px; height: 200px;"><svg id="SvgjsSvg3280" width="403" height="200" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent none repeat scroll 0% 0%;"><g id="SvgjsG3282" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs3281"><clipPath id="gridRectMask0uxewn4w"><rect id="SvgjsRect3285" width="410" height="203" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMask0uxewn4w"><rect id="SvgjsRect3286" width="407" height="204" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter3292" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood3293" flood-color="#cb1b46" flood-opacity="0.5" result="SvgjsFeFlood3293Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite3294" in="SvgjsFeFlood3293Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite3294Out"></feComposite><feOffset id="SvgjsFeOffset3295" dx="0" dy="5" result="SvgjsFeOffset3295Out" in="SvgjsFeComposite3294Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur3296" stdDeviation="3 " result="SvgjsFeGaussianBlur3296Out" in="SvgjsFeOffset3295Out"></feGaussianBlur><feBlend id="SvgjsFeBlend3297" in="SourceGraphic" in2="SvgjsFeGaussianBlur3296Out" mode="normal" result="SvgjsFeBlend3297Out"></feBlend></filter><filter id="SvgjsFilter3299" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood3300" flood-color="#cb1b46" flood-opacity="0.5" result="SvgjsFeFlood3300Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite3301" in="SvgjsFeFlood3300Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite3301Out"></feComposite><feOffset id="SvgjsFeOffset3302" dx="0" dy="5" result="SvgjsFeOffset3302Out" in="SvgjsFeComposite3301Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur3303" stdDeviation="3 " result="SvgjsFeGaussianBlur3303Out" in="SvgjsFeOffset3302Out"></feGaussianBlur><feBlend id="SvgjsFeBlend3304" in="SourceGraphic" in2="SvgjsFeGaussianBlur3303Out" mode="normal" result="SvgjsFeBlend3304Out"></feBlend></filter></defs><g id="SvgjsG3305" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3306" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG3315" class="apexcharts-grid"><g id="SvgjsG3316" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine3318" x1="0" y1="0" x2="403" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3319" x1="0" y1="20" x2="403" y2="20" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3320" x1="0" y1="40" x2="403" y2="40" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3321" x1="0" y1="60" x2="403" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3322" x1="0" y1="80" x2="403" y2="80" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3323" x1="0" y1="100" x2="403" y2="100" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3324" x1="0" y1="120" x2="403" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3325" x1="0" y1="140" x2="403" y2="140" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3326" x1="0" y1="160" x2="403" y2="160" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3327" x1="0" y1="180" x2="403" y2="180" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3328" x1="0" y1="200" x2="403" y2="200" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line></g><g id="SvgjsG3317" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine3330" x1="0" y1="200" x2="403" y2="200" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine3329" x1="0" y1="1" x2="0" y2="200" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG3287" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG3288" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath3291" d="M 0 200L 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100C 403 100 403 100 403 200M 403 100z" fill="transparent" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask0uxewn4w)" filter="url(#SvgjsFilter3292)" pathTo="M 0 200L 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100C 403 100 403 100 403 200M 403 100z" pathFrom="M -1 200L -1 200L 67.16666666666667 200L 134.33333333333334 200L 201.5 200L 268.6666666666667 200L 335.8333333333333 200L 403 200"></path><path id="SvgjsPath3298" d="M 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100" fill="none" fill-opacity="1" stroke="#cb1b46" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask0uxewn4w)" filter="url(#SvgjsFilter3299)" pathTo="M 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100" pathFrom="M -1 200L -1 200L 67.16666666666667 200L 134.33333333333334 200L 201.5 200L 268.6666666666667 200L 335.8333333333333 200L 403 200"></path><g id="SvgjsG3289" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle3336" r="0" cx="67.16666666666667" cy="87.5" class="apexcharts-marker wr4sf37jt no-pointer-events" stroke="#cb1b46" fill="#f1416c" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG3290" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3331" x1="0" y1="0" x2="403" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3332" x1="0" y1="0" x2="403" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3333" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3334" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3335" class="apexcharts-point-annotations"></g></g><g id="SvgjsG3314" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG3283" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 100px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 78.1667px; top: 90.5px;"><div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;">Mar</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: transparent; display: none;"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Net Profit: </span><span class="apexcharts-tooltip-text-value">$45 thousands</span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <!--end::Chart-->
                    <!--begin::Stats-->
                    <div class="card-p mt-n20 position-relative">
                      <!--begin::Row-->
                      <div class="row g-0">
                        <!--begin::Col-->
                        <div class="col bg-light-warning px-6 py-8 rounded-2 me-7 mb-7">
                          <!--begin::Svg Icon | path: icons/duotone/Media/Equalizer.svg-->
                          <span class="svg-icon svg-icon-3x svg-icon-warning d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24"></rect>
                                    <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                    <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                    <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                    <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                  </g>
                                </svg>
                              </span>
                          <!--end::Svg Icon-->
                          <a href="#" class="text-warning fw-bold fs-6">Transactions</a>
                        </div>
                        <!--end::Col-->
                        <!--begin::Col-->
                        <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                          <!--begin::Svg Icon | path: icons/duotone/Communication/Add-user.svg-->
                          <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <path d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                  <path d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                </svg>
                              </span>
                          <!--end::Svg Icon-->
                          <a href="#" class="text-primary fw-bold fs-6">NFT One-Click Creator</a>
                        </div>
                        <!--end::Col-->
                      </div>
                      <!--end::Row-->
                      <!--begin::Row-->
                      <div class="row g-0">
                        <!--begin::Col-->
                        <div class="col bg-light-danger px-6 py-8 rounded-2 me-7">
                          <!--begin::Svg Icon | path: icons/duotone/Design/Layers.svg-->
                          <span class="svg-icon svg-icon-3x svg-icon-danger d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" fill="#000000" fill-rule="nonzero"></path>
                                  <path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" fill="#000000" opacity="0.3"></path>
                                </svg>
                              </span>
                          <!--end::Svg Icon-->
                          <a href="#" class="text-danger fw-bold fs-6 mt-2">Perform XRP Transaction</a>
                        </div>
                        <!--end::Col-->
                        <!--begin::Col-->
                        <div class="col bg-light-success px-6 py-8 rounded-2">
                          <!--begin::Svg Icon | path: icons/duotone/Communication/Urgent-mail.svg-->
                          <span class="svg-icon svg-icon-3x svg-icon-success d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <path d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z" fill="#000000" opacity="0.3"></path>
                                  <path d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z" fill="#000000"></path>
                                </svg>
                              </span>
                          <!--end::Svg Icon-->
                          <a href="#" class="text-success fw-bold fs-6 mt-2">Bug Reports</a>
                        </div>
                        <!--end::Col-->
                      </div>
                      <!--end::Row-->
                    </div>
                    <!--end::Stats-->
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 462px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 477px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 503px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 503px;"></div></div><div class="contract-trigger"></div></div></div>
                  <!--end::Body-->
                </div>
                <!--end::Mixed Widget 2-->
              </div>
              <!--end::Col-->
              <!--begin::Col-->
              <div class="col-xxl-4">
                <!--begin::List Widget 5-->
                <div class="card card-xxl-stretch">
                  <!--begin::Header-->
                  <div class="card-header align-items-center border-0 mt-4">
                    <h3 class="card-title align-items-start flex-column">
                      <span class="fw-bolder mb-2 text-dark">Transactions</span>
                      <span class="text-muted fw-bold fs-7">654 Total Transactions</span>
                    </h3>
                    <div class="card-toolbar">
                      <!--begin::Menu-->
                      <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-flip="top-end">
                        <!--begin::Svg Icon | path: icons/duotone/Layout/Layout-4-blocks-2.svg-->
                        <span class="svg-icon svg-icon-2">
                              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                  <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                  <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                  <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                  <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                </g>
                              </svg>
                            </span>
                        <!--end::Svg Icon-->
                      </button>
                      <!--begin::Menu 1-->
                      <div class="menu menu-sub menu-sub-dropdown w-250px w-md-300px" data-kt-menu="true">
                        <!--begin::Header-->
                        <div class="px-7 py-5">
                          <div class="fs-5 text-dark fw-bolder">Filter Options</div>
                        </div>
                        <!--end::Header-->
                        <!--begin::Menu separator-->
                        <div class="separator border-gray-200"></div>
                        <!--end::Menu separator-->
                        <!--begin::Form-->
                        <div class="px-7 py-5">
                          <!--begin::Input group-->
                          <div class="mb-10">
                            <!--begin::Label-->
                            <label class="form-label fw-bold">Status:</label>
                            <!--end::Label-->
                            <!--begin::Input-->
                            <div>
                              <select class="form-select form-select-solid select2-hidden-accessible" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-select2-id="select2-data-10-d5le" tabindex="-1" aria-hidden="true">
                                <option data-select2-id="select2-data-12-8rsl"></option>
                                <option value="1">Approved</option>
                                <option value="2">Pending</option>
                                <option value="2">In Process</option>
                                <option value="2">Rejected</option>
                              </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-4-gsin" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-sfxs-container" aria-controls="select2-sfxs-container"><span class="select2-selection__rendered" id="select2-sfxs-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-4-6ygh" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-127d-container" aria-controls="select2-127d-container"><span class="select2-selection__rendered" id="select2-127d-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-4-w02z" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-urek-container" aria-controls="select2-urek-container"><span class="select2-selection__rendered" id="select2-urek-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-11-jfw8" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-jayr-container" aria-controls="select2-jayr-container"><span class="select2-selection__rendered" id="select2-jayr-container" role="textbox" aria-readonly="true" title="Select option"><span class="select2-selection__placeholder">Select option</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            </div>
                            <!--end::Input-->
                          </div>
                          <!--end::Input group-->
                          <!--begin::Input group-->
                          <div class="mb-10">
                            <!--begin::Label-->
                            <label class="form-label fw-bold">Member Type:</label>
                            <!--end::Label-->
                            <!--begin::Options-->
                            <div class="d-flex">
                              <!--begin::Options-->
                              <label class="form-check form-check-sm form-check-custom form-check-solid me-5">
                                <input class="form-check-input" type="checkbox" value="1">
                                <span class="form-check-label">Author</span>
                              </label>
                              <!--end::Options-->
                              <!--begin::Options-->
                              <label class="form-check form-check-sm form-check-custom form-check-solid">
                                <input class="form-check-input" type="checkbox" value="2" checked="checked">
                                <span class="form-check-label">Customer</span>
                              </label>
                              <!--end::Options-->
                            </div>
                            <!--end::Options-->
                          </div>
                          <!--end::Input group-->
                          <!--begin::Input group-->
                          <div class="mb-10">
                            <!--begin::Label-->
                            <label class="form-label fw-bold">Notifications:</label>
                            <!--end::Label-->
                            <!--begin::Switch-->
                            <div class="form-check form-switch form-switch-sm form-check-custom form-check-solid">
                              <input class="form-check-input" type="checkbox" value="" name="notifications" checked="checked">
                              <label class="form-check-label">Enabled</label>
                            </div>
                            <!--end::Switch-->
                          </div>
                          <!--end::Input group-->
                          <!--begin::Actions-->
                          <div class="d-flex justify-content-end">
                            <button type="reset" class="btn btn-sm btn-white btn-active-light-primary me-2" data-kt-menu-dismiss="true">Reset</button>
                            <button type="submit" class="btn btn-sm btn-primary" data-kt-menu-dismiss="true">Apply</button>
                          </div>
                          <!--end::Actions-->
                        </div>
                        <!--end::Form-->
                      </div>
                      <!--end::Menu 1-->
                      <!--end::Menu-->
                    </div>
                  </div>
                  <!--end::Header-->
                  <!--begin::Body-->
                  <div class="card-body pt-5">
                    <!--begin::Timeline-->
                    <div class="timeline-label">
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">08:42</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-warning fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Text-->
                        <div class="fw-mormal timeline-content text-muted ps-3">Outlines keep you honest. And keep structure</div>
                        <!--end::Text-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">10:00</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-success fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Content-->
                        <div class="timeline-content d-flex">
                          <span class="fw-bolder text-gray-800 ps-3">AEOL meeting</span>
                        </div>
                        <!--end::Content-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">14:37</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-danger fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Desc-->
                        <div class="timeline-content fw-bolder text-gray-800 ps-3">Make deposit
                          <a href="#" class="text-primary">USD 700</a>. to ESL</div>
                        <!--end::Desc-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">16:50</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-primary fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Text-->
                        <div class="timeline-content fw-mormal text-muted ps-3">Indulging in poorly driving and keep structure keep great</div>
                        <!--end::Text-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">21:03</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-danger fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Desc-->
                        <div class="timeline-content fw-bold text-gray-800 ps-3">New order placed
                          <a href="#" class="text-primary">#XF-2356</a>.</div>
                        <!--end::Desc-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">16:50</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-primary fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Text-->
                        <div class="timeline-content fw-mormal text-muted ps-3">Indulging in poorly driving and keep structure keep great</div>
                        <!--end::Text-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">21:03</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-danger fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Desc-->
                        <div class="timeline-content fw-bold text-gray-800 ps-3">New order placed
                          <a href="#" class="text-primary">#XF-2356</a>.</div>
                        <!--end::Desc-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="timeline-item">
                        <!--begin::Label-->
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">10:30</div>
                        <!--end::Label-->
                        <!--begin::Badge-->
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-success fs-1"></i>
                        </div>
                        <!--end::Badge-->
                        <!--begin::Text-->
                        <div class="timeline-content fw-mormal text-muted ps-3">Finance KPI Mobile app launch preparion meeting</div>
                        <!--end::Text-->
                      </div>
                      <!--end::Item-->
                    </div>
                    <!--end::Timeline-->
                  </div>
                  <!--end: Card Body-->
                </div>
                <!--end: List Widget 5-->
              </div>
              <!--end::Col-->
              <!--begin::Col-->
              <div class="col-xxl-4">
                <!--begin::Mixed Widget 7-->
                <div class="card card-xxl-stretch-50 mb-5 mb-xl-8">
                  <!--begin::Body-->
                  <div class="card-body d-flex flex-column p-0" style="position: relative;">
                    <!--begin::Stats-->
                    <div class="flex-grow-1 card-p pb-0">
                      <div class="d-flex flex-stack flex-wrap">
                        <div class="me-2">
                          <a href="#" class="text-dark text-hover-primary fw-bolder fs-3">Account Balance</a>
                          <div class="text-muted fs-7 fw-bold">Your XRP Balance</div>
                        </div>
                        <div class="fw-bolder fs-3 text-primary"><p><%=wallet.accountBalance()%> XRP</p></div>
                      </div>
                      <div class="d-flex flex-stack flex-wrap">
                        <div class="me-2">
                          <a href="#" class="text-dark text-hover-primary fw-bolder fs-3">NFT Coins</a>
                          <div class="text-bold fs-7 fw-bold">NFT Coins you own ( <%=wallet.nftCoins()%> ) </div>
                        </div>
                        <div class="fw-bolder fs-3 text-primary"><p><%=wallet.getNftcounter()%></p></div>
                      </div>
                    </div>
                    <!--end::Stats-->
                    <!--begin::Chart-->
                    <div class="mixed-widget-7-chart card-rounded-bottom" data-kt-chart-color="primary" style="height: 150px; min-height: 150px;"><div id="apexchartshr9u4mqr" class="apexcharts-canvas apexchartshr9u4mqr apexcharts-theme-light" style="width: 403px; height: 150px;"><svg id="SvgjsSvg2974" width="403" height="150" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent none repeat scroll 0% 0%;"><g id="SvgjsG2976" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs2975"><clipPath id="gridRectMaskhr9u4mqr"><rect id="SvgjsRect2979" width="410" height="153" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskhr9u4mqr"><rect id="SvgjsRect2980" width="407" height="154" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2987" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2988" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG2996" class="apexcharts-grid"><g id="SvgjsG2997" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2999" x1="0" y1="0" x2="403" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3000" x1="0" y1="15" x2="403" y2="15" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3001" x1="0" y1="30" x2="403" y2="30" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3002" x1="0" y1="45" x2="403" y2="45" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3003" x1="0" y1="60" x2="403" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3004" x1="0" y1="75" x2="403" y2="75" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3005" x1="0" y1="90" x2="403" y2="90" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3006" x1="0" y1="105" x2="403" y2="105" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3007" x1="0" y1="120" x2="403" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3008" x1="0" y1="135" x2="403" y2="135" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3009" x1="0" y1="150" x2="403" y2="150" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line></g><g id="SvgjsG2998" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine3011" x1="0" y1="150" x2="403" y2="150" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine3010" x1="0" y1="1" x2="0" y2="150" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG2981" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2982" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2985" d="M 0 150L 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25C 403 25 403 25 403 150M 403 25z" fill="rgba(236,248,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskhr9u4mqr)" pathTo="M 0 150L 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25C 403 25 403 25 403 150M 403 25z" pathFrom="M -1 150L -1 150L 80.6 150L 161.2 150L 241.79999999999998 150L 322.4 150L 403 150"></path><path id="SvgjsPath2986" d="M 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25" fill="none" fill-opacity="1" stroke="#009ef7" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskhr9u4mqr)" pathTo="M 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25" pathFrom="M -1 150L -1 150L 80.6 150L 161.2 150L 241.79999999999998 150L 322.4 150L 403 150"></path><g id="SvgjsG2983" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle3017" r="0" cx="0" cy="0" class="apexcharts-marker wv1xq3cie no-pointer-events" stroke="#009ef7" fill="#ecf8ff" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2984" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3012" x1="0" y1="0" x2="403" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3013" x1="0" y1="0" x2="403" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3014" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3015" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3016" class="apexcharts-point-annotations"></g></g><g id="SvgjsG2995" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2977" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 75px;"></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(236, 248, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: inherit; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <!--end::Chart-->
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 258px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 266px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 273px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 281px;"></div></div><div class="contract-trigger"></div></div></div>
                  <!--end::Body-->
                </div>
                <!--end::Mixed Widget 7-->
                <!--begin::Mixed Widget 10-->
                <div class="card card-xxl-stretch-50 mb-5 mb-xl-8">
                  <!--begin::Body-->
                  <div class="card-body p-0 d-flex justify-content-between flex-column overflow-hidden" style="position: relative;">
                    <div class="d-flex flex-stack flex-grow-1 px-9 pt-9 pb-3">
                      <!--begin::Icon-->
                      <div class="symbol symbol-45px">
                        <div class="symbol-label">
                          <!--begin::Svg Icon | path: icons/duotone/Shopping/Chart-line1.svg-->
                          <span class="svg-icon svg-icon-2x svg-icon-primary">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24"></rect>
                                    <path d="M5,19 L20,19 C20.5522847,19 21,19.4477153 21,20 C21,20.5522847 20.5522847,21 20,21 L4,21 C3.44771525,21 3,20.5522847 3,20 L3,4 C3,3.44771525 3.44771525,3 4,3 C4.55228475,3 5,3.44771525 5,4 L5,19 Z" fill="#000000" fill-rule="nonzero"></path>
                                    <path d="M8.7295372,14.6839411 C8.35180695,15.0868534 7.71897114,15.1072675 7.31605887,14.7295372 C6.9131466,14.3518069 6.89273254,13.7189711 7.2704628,13.3160589 L11.0204628,9.31605887 C11.3857725,8.92639521 11.9928179,8.89260288 12.3991193,9.23931335 L15.358855,11.7649545 L19.2151172,6.88035571 C19.5573373,6.44687693 20.1861655,6.37289714 20.6196443,6.71511723 C21.0531231,7.05733733 21.1271029,7.68616551 20.7848828,8.11964429 L16.2848828,13.8196443 C15.9333973,14.2648593 15.2823707,14.3288915 14.8508807,13.9606866 L11.8268294,11.3801628 L8.7295372,14.6839411 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                  </g>
                                </svg>
                              </span>
                          <!--end::Svg Icon-->
                        </div>
                      </div>
                      <!--end::Icon-->
                      <!--begin::Text-->
                      <div class="d-flex flex-column text-end">
                        <span class="fw-bolder text-gray-800 fs-3">XRP Transaction per Month</span>
                        <span class="text-gray-400 fw-bold">Oct 8 - Oct 26 21</span>
                      </div>
                      <!--end::Text-->
                    </div>
                    <!--begin::Chart-->
                    <div class="mixed-widget-10-chart" data-kt-color="primary" style="height: 175px; min-height: 228px;"><div id="apexchartsg5kekkbd" class="apexcharts-canvas apexchartsg5kekkbd apexcharts-theme-light" style="width: 403px; height: 213px;"><svg id="SvgjsSvg3018" width="403" height="213" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent none repeat scroll 0% 0%;"><g id="SvgjsG3020" class="apexcharts-inner apexcharts-graphical" transform="translate(44.10000038146973, 40)"><defs id="SvgjsDefs3019"><linearGradient id="SvgjsLinearGradient3024" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop3025" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop3026" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop3027" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMaskg5kekkbd"><rect id="SvgjsRect3029" width="354.8999996185303" height="130.876" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskg5kekkbd"><rect id="SvgjsRect3030" width="352.8999996185303" height="132.876" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect3028" width="10.903124988079071" height="128.876" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient3024)" class="apexcharts-xcrosshairs" y2="128.876" filter="none" fill-opacity="0.9"></rect><g id="SvgjsG3052" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3053" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText3055" font-family="inherit" x="21.806249976158142" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3056">Feb</tspan><title>Feb</title></text><text id="SvgjsText3058" font-family="inherit" x="65.41874992847443" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3059">Mar</tspan><title>Mar</title></text><text id="SvgjsText3061" font-family="inherit" x="109.03124988079071" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3062">Apr</tspan><title>Apr</title></text><text id="SvgjsText3064" font-family="inherit" x="152.643749833107" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3065">May</tspan><title>May</title></text><text id="SvgjsText3067" font-family="inherit" x="196.25624978542328" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3068">Jun</tspan><title>Jun</title></text><text id="SvgjsText3070" font-family="inherit" x="239.86874973773956" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3071">Jul</tspan><title>Jul</title></text><text id="SvgjsText3073" font-family="inherit" x="283.48124969005585" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3074">Aug</tspan><title>Aug</title></text><text id="SvgjsText3076" font-family="inherit" x="327.09374964237213" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3077">Sep</tspan><title>Sep</title></text></g></g><g id="SvgjsG3090" class="apexcharts-grid"><g id="SvgjsG3091" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine3093" x1="0" y1="0" x2="348.8999996185303" y2="0" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3094" x1="0" y1="32.219" x2="348.8999996185303" y2="32.219" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3095" x1="0" y1="64.438" x2="348.8999996185303" y2="64.438" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3096" x1="0" y1="96.65700000000001" x2="348.8999996185303" y2="96.65700000000001" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3097" x1="0" y1="128.876" x2="348.8999996185303" y2="128.876" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line></g><g id="SvgjsG3092" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine3099" x1="0" y1="128.876" x2="348.8999996185303" y2="128.876" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine3098" x1="0" y1="1" x2="0" y2="128.876" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG3031" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG3032" class="apexcharts-series" rel="1" seriesName="NetxProfit" data:realIndex="0"><path id="SvgjsPath3034" d="M 10.903124988079071 128.876L 10.903124988079071 50.05428124701976Q 15.354687482118607 46.60271875298022 19.806249976158142 50.05428124701976L 19.806249976158142 50.05428124701976L 19.806249976158142 128.876L 19.806249976158142 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 10.903124988079071 128.876L 10.903124988079071 50.05428124701976Q 15.354687482118607 46.60271875298022 19.806249976158142 50.05428124701976L 19.806249976158142 50.05428124701976L 19.806249976158142 128.876L 19.806249976158142 128.876z" pathFrom="M 10.903124988079071 128.876L 10.903124988079071 128.876L 19.806249976158142 128.876L 19.806249976158142 128.876L 19.806249976158142 128.876L 10.903124988079071 128.876" cy="48.32849999999999" cx="53.515624940395355" j="0" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3035" d="M 54.515624940395355 128.876L 54.515624940395355 33.94478124701976Q 58.96718743443489 30.493218752980226 63.418749928474426 33.94478124701976L 63.418749928474426 33.94478124701976L 63.418749928474426 128.876L 63.418749928474426 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 54.515624940395355 128.876L 54.515624940395355 33.94478124701976Q 58.96718743443489 30.493218752980226 63.418749928474426 33.94478124701976L 63.418749928474426 33.94478124701976L 63.418749928474426 128.876L 63.418749928474426 128.876z" pathFrom="M 54.515624940395355 128.876L 54.515624940395355 128.876L 63.418749928474426 128.876L 63.418749928474426 128.876L 63.418749928474426 128.876L 54.515624940395355 128.876" cy="32.218999999999994" cx="97.12812489271164" j="1" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3036" d="M 98.12812489271164 128.876L 98.12812489271164 17.835281247019765Q 102.57968738675117 14.38371875298023 107.03124988079071 17.835281247019765L 107.03124988079071 17.835281247019765L 107.03124988079071 128.876L 107.03124988079071 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 98.12812489271164 128.876L 98.12812489271164 17.835281247019765Q 102.57968738675117 14.38371875298023 107.03124988079071 17.835281247019765L 107.03124988079071 17.835281247019765L 107.03124988079071 128.876L 107.03124988079071 128.876z" pathFrom="M 98.12812489271164 128.876L 98.12812489271164 128.876L 107.03124988079071 128.876L 107.03124988079071 128.876L 107.03124988079071 128.876L 98.12812489271164 128.876" cy="16.109499999999997" cx="140.74062484502792" j="2" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3037" d="M 141.74062484502792 128.876L 141.74062484502792 1.7257812470197678Q 146.19218733906746 -1.7257812470197678 150.643749833107 1.7257812470197678L 150.643749833107 1.7257812470197678L 150.643749833107 128.876L 150.643749833107 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 141.74062484502792 128.876L 141.74062484502792 1.7257812470197678Q 146.19218733906746 -1.7257812470197678 150.643749833107 1.7257812470197678L 150.643749833107 1.7257812470197678L 150.643749833107 128.876L 150.643749833107 128.876z" pathFrom="M 141.74062484502792 128.876L 141.74062484502792 128.876L 150.643749833107 128.876L 150.643749833107 128.876L 150.643749833107 128.876L 141.74062484502792 128.876" cy="0" cx="184.3531247973442" j="3" val="80" barHeight="128.876" barWidth="10.903124988079071"></path><path id="SvgjsPath3038" d="M 185.3531247973442 128.876L 185.3531247973442 33.94478124701976Q 189.80468729138374 30.493218752980226 194.25624978542328 33.94478124701976L 194.25624978542328 33.94478124701976L 194.25624978542328 128.876L 194.25624978542328 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 185.3531247973442 128.876L 185.3531247973442 33.94478124701976Q 189.80468729138374 30.493218752980226 194.25624978542328 33.94478124701976L 194.25624978542328 33.94478124701976L 194.25624978542328 128.876L 194.25624978542328 128.876z" pathFrom="M 185.3531247973442 128.876L 185.3531247973442 128.876L 194.25624978542328 128.876L 194.25624978542328 128.876L 194.25624978542328 128.876L 185.3531247973442 128.876" cy="32.218999999999994" cx="227.9656247496605" j="4" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3039" d="M 228.9656247496605 128.876L 228.9656247496605 50.05428124701976Q 233.41718724370003 46.60271875298022 237.86874973773956 50.05428124701976L 237.86874973773956 50.05428124701976L 237.86874973773956 128.876L 237.86874973773956 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 228.9656247496605 128.876L 228.9656247496605 50.05428124701976Q 233.41718724370003 46.60271875298022 237.86874973773956 50.05428124701976L 237.86874973773956 50.05428124701976L 237.86874973773956 128.876L 237.86874973773956 128.876z" pathFrom="M 228.9656247496605 128.876L 228.9656247496605 128.876L 237.86874973773956 128.876L 237.86874973773956 128.876L 237.86874973773956 128.876L 228.9656247496605 128.876" cy="48.32849999999999" cx="271.5781247019768" j="5" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3040" d="M 272.5781247019768 128.876L 272.5781247019768 17.835281247019765Q 277.0296871960163 14.38371875298023 281.48124969005585 17.835281247019765L 281.48124969005585 17.835281247019765L 281.48124969005585 128.876L 281.48124969005585 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 272.5781247019768 128.876L 272.5781247019768 17.835281247019765Q 277.0296871960163 14.38371875298023 281.48124969005585 17.835281247019765L 281.48124969005585 17.835281247019765L 281.48124969005585 128.876L 281.48124969005585 128.876z" pathFrom="M 272.5781247019768 128.876L 272.5781247019768 128.876L 281.48124969005585 128.876L 281.48124969005585 128.876L 281.48124969005585 128.876L 272.5781247019768 128.876" cy="16.109499999999997" cx="315.19062465429306" j="6" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3041" d="M 316.19062465429306 128.876L 316.19062465429306 33.94478124701976Q 320.6421871483326 30.493218752980226 325.09374964237213 33.94478124701976L 325.09374964237213 33.94478124701976L 325.09374964237213 128.876L 325.09374964237213 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 316.19062465429306 128.876L 316.19062465429306 33.94478124701976Q 320.6421871483326 30.493218752980226 325.09374964237213 33.94478124701976L 325.09374964237213 33.94478124701976L 325.09374964237213 128.876L 325.09374964237213 128.876z" pathFrom="M 316.19062465429306 128.876L 316.19062465429306 128.876L 325.09374964237213 128.876L 325.09374964237213 128.876L 325.09374964237213 128.876L 316.19062465429306 128.876" cy="32.218999999999994" cx="358.80312460660934" j="7" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path></g><g id="SvgjsG3042" class="apexcharts-series" rel="2" seriesName="Revenue" data:realIndex="1"><path id="SvgjsPath3044" d="M 21.806249976158142 128.876L 21.806249976158142 50.05428124701976Q 26.257812470197678 46.60271875298022 30.709374964237213 50.05428124701976L 30.709374964237213 50.05428124701976L 30.709374964237213 128.876L 30.709374964237213 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 21.806249976158142 128.876L 21.806249976158142 50.05428124701976Q 26.257812470197678 46.60271875298022 30.709374964237213 50.05428124701976L 30.709374964237213 50.05428124701976L 30.709374964237213 128.876L 30.709374964237213 128.876z" pathFrom="M 21.806249976158142 128.876L 21.806249976158142 128.876L 30.709374964237213 128.876L 30.709374964237213 128.876L 30.709374964237213 128.876L 21.806249976158142 128.876" cy="48.32849999999999" cx="64.41874992847443" j="0" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3045" d="M 65.41874992847443 128.876L 65.41874992847443 33.94478124701976Q 69.87031242251396 30.493218752980226 74.3218749165535 33.94478124701976L 74.3218749165535 33.94478124701976L 74.3218749165535 128.876L 74.3218749165535 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 65.41874992847443 128.876L 65.41874992847443 33.94478124701976Q 69.87031242251396 30.493218752980226 74.3218749165535 33.94478124701976L 74.3218749165535 33.94478124701976L 74.3218749165535 128.876L 74.3218749165535 128.876z" pathFrom="M 65.41874992847443 128.876L 65.41874992847443 128.876L 74.3218749165535 128.876L 74.3218749165535 128.876L 74.3218749165535 128.876L 65.41874992847443 128.876" cy="32.218999999999994" cx="108.03124988079071" j="1" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3046" d="M 109.03124988079071 128.876L 109.03124988079071 17.835281247019765Q 113.48281237483025 14.38371875298023 117.93437486886978 17.835281247019765L 117.93437486886978 17.835281247019765L 117.93437486886978 128.876L 117.93437486886978 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 109.03124988079071 128.876L 109.03124988079071 17.835281247019765Q 113.48281237483025 14.38371875298023 117.93437486886978 17.835281247019765L 117.93437486886978 17.835281247019765L 117.93437486886978 128.876L 117.93437486886978 128.876z" pathFrom="M 109.03124988079071 128.876L 109.03124988079071 128.876L 117.93437486886978 128.876L 117.93437486886978 128.876L 117.93437486886978 128.876L 109.03124988079071 128.876" cy="16.109499999999997" cx="151.643749833107" j="2" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3047" d="M 152.643749833107 128.876L 152.643749833107 1.7257812470197678Q 157.09531232714653 -1.7257812470197678 161.54687482118607 1.7257812470197678L 161.54687482118607 1.7257812470197678L 161.54687482118607 128.876L 161.54687482118607 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 152.643749833107 128.876L 152.643749833107 1.7257812470197678Q 157.09531232714653 -1.7257812470197678 161.54687482118607 1.7257812470197678L 161.54687482118607 1.7257812470197678L 161.54687482118607 128.876L 161.54687482118607 128.876z" pathFrom="M 152.643749833107 128.876L 152.643749833107 128.876L 161.54687482118607 128.876L 161.54687482118607 128.876L 161.54687482118607 128.876L 152.643749833107 128.876" cy="0" cx="195.25624978542328" j="3" val="80" barHeight="128.876" barWidth="10.903124988079071"></path><path id="SvgjsPath3048" d="M 196.25624978542328 128.876L 196.25624978542328 33.94478124701976Q 200.70781227946281 30.493218752980226 205.15937477350235 33.94478124701976L 205.15937477350235 33.94478124701976L 205.15937477350235 128.876L 205.15937477350235 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 196.25624978542328 128.876L 196.25624978542328 33.94478124701976Q 200.70781227946281 30.493218752980226 205.15937477350235 33.94478124701976L 205.15937477350235 33.94478124701976L 205.15937477350235 128.876L 205.15937477350235 128.876z" pathFrom="M 196.25624978542328 128.876L 196.25624978542328 128.876L 205.15937477350235 128.876L 205.15937477350235 128.876L 205.15937477350235 128.876L 196.25624978542328 128.876" cy="32.218999999999994" cx="238.86874973773956" j="4" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3049" d="M 239.86874973773956 128.876L 239.86874973773956 50.05428124701976Q 244.3203122317791 46.60271875298022 248.77187472581863 50.05428124701976L 248.77187472581863 50.05428124701976L 248.77187472581863 128.876L 248.77187472581863 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 239.86874973773956 128.876L 239.86874973773956 50.05428124701976Q 244.3203122317791 46.60271875298022 248.77187472581863 50.05428124701976L 248.77187472581863 50.05428124701976L 248.77187472581863 128.876L 248.77187472581863 128.876z" pathFrom="M 239.86874973773956 128.876L 239.86874973773956 128.876L 248.77187472581863 128.876L 248.77187472581863 128.876L 248.77187472581863 128.876L 239.86874973773956 128.876" cy="48.32849999999999" cx="282.48124969005585" j="5" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3050" d="M 283.48124969005585 128.876L 283.48124969005585 17.835281247019765Q 287.9328121840954 14.38371875298023 292.3843746781349 17.835281247019765L 292.3843746781349 17.835281247019765L 292.3843746781349 128.876L 292.3843746781349 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 283.48124969005585 128.876L 283.48124969005585 17.835281247019765Q 287.9328121840954 14.38371875298023 292.3843746781349 17.835281247019765L 292.3843746781349 17.835281247019765L 292.3843746781349 128.876L 292.3843746781349 128.876z" pathFrom="M 283.48124969005585 128.876L 283.48124969005585 128.876L 292.3843746781349 128.876L 292.3843746781349 128.876L 292.3843746781349 128.876L 283.48124969005585 128.876" cy="16.109499999999997" cx="326.09374964237213" j="6" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3051" d="M 327.09374964237213 128.876L 327.09374964237213 33.94478124701976Q 331.54531213641167 30.493218752980226 335.9968746304512 33.94478124701976L 335.9968746304512 33.94478124701976L 335.9968746304512 128.876L 335.9968746304512 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 327.09374964237213 128.876L 327.09374964237213 33.94478124701976Q 331.54531213641167 30.493218752980226 335.9968746304512 33.94478124701976L 335.9968746304512 33.94478124701976L 335.9968746304512 128.876L 335.9968746304512 128.876z" pathFrom="M 327.09374964237213 128.876L 327.09374964237213 128.876L 335.9968746304512 128.876L 335.9968746304512 128.876L 335.9968746304512 128.876L 327.09374964237213 128.876" cy="32.218999999999994" cx="369.7062495946884" j="7" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path></g><g id="SvgjsG3033" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG3043" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine3100" x1="0" y1="0" x2="348.8999996185303" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3101" x1="0" y1="0" x2="348.8999996185303" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3102" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3103" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3104" class="apexcharts-point-annotations"></g></g><g id="SvgjsG3078" class="apexcharts-yaxis" rel="0" transform="translate(14.100000381469727, 0)"><g id="SvgjsG3079" class="apexcharts-yaxis-texts-g"><text id="SvgjsText3080" font-family="inherit" x="20" y="41.4" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3081">80</tspan></text><text id="SvgjsText3082" font-family="inherit" x="20" y="73.619" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3083">60</tspan></text><text id="SvgjsText3084" font-family="inherit" x="20" y="105.838" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3085">40</tspan></text><text id="SvgjsText3086" font-family="inherit" x="20" y="138.057" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3087">20</tspan></text><text id="SvgjsText3088" font-family="inherit" x="20" y="170.27599999999998" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3089">0</tspan></text></g></g><g id="SvgjsG3021" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 106.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 158, 247);"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(228, 230, 239);"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <!--end::Chart-->
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 258px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 266px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 273px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 281px;"></div></div><div class="contract-trigger"></div></div></div>
                </div>
                <!--end::Mixed Widget 10-->
              </div>
              <!--end::Col-->
            </div>
            <!--end::Row-->
            <!--begin::Row-->
            <div class="row gy-5 gx-xl-8">
              <!--begin::Col-->
              <div class="col-xxl-12">
                <!--begin::List Widget 3-->
                <div class="card card-xxl-stretch mb-xl-3">
                  <!--begin::Header-->
                  <div class="card-header border-0">
                    <h3 class="card-title fw-bolder text-dark">Perform XRP Transaction</h3>
                    <div class="card-toolbar">
                    </div>
                  </div>
                  <div class="card-body pt-2">
                    <form  action="process.xrptransaction" method="post" novalidate="novalidate">

                      <div class="mb-10">
                        <label class="form-label">Destination Address: </label>
                        <input class="form-control form-control-solid" name="transferaddress" placeholder="Classic Address">
                      </div>
                      <div class="mb-10">
                        <label class="form-label">Amount of XRP: </label>
                        <input name="transferamount" class="form-control form-control-solid" type="number" placeholder="1">
                      </div>
                      <div class="mb-10">
                      <label class="form-label">Destination Tag / Wallet Tag: </label>
                      <input class="form-control form-control-solid" type="number" placeholder="" name="transactiontag">
                    </div>
                      <button type="submit" class="btn btn-lg btn-primary w-100 mb-5">
                        Submit Transaction
                      </button>
                    </form>
                  </div>
                  <!--end::Body-->
                </div>
                <!--end::Col-->
                <!--begin::Col-->

                <!--end::Col-->
              </div>
              <!--end::Row-->
              <!--begin::Row-->

              <!--end::Row-->
              <!--begin::Row-->

              <!--end::Row-->
            </div>
            <!--end::Container-->
          </div>
          <!--end::Post-->
        </div>
        <!--end::Content-->
        <!--begin::Footer-->
        <div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
          <!--begin::Container-->
          <div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
            <!--begin::Copyright-->
            <div class="text-dark order-2 order-md-1">
              <span class="text-muted fw-bold me-1">2021Â©</span>
              <a href="" target="_blank" class="text-gray-800 text-hover-primary">Keenthemes</a>
            </div>
            <!--end::Copyright-->
            <!--begin::Menu-->
            <ul class="menu menu-gray-600 menu-hover-primary fw-bold order-1">
              <li class="menu-item">
                <a href="https://keenthemes.com/faqs" target="_blank" class="menu-link px-2">About</a>
              </li>
              <li class="menu-item">
                <a href="https://keenthemes.com/support" target="_blank" class="menu-link px-2">Support</a>
              </li>
              <li class="menu-item">
                <a href="https://1.envato.market/EA4JP" target="_blank" class="menu-link px-2">Purchase</a>
              </li>
            </ul>
            <!--end::Menu-->
          </div>
          <!--end::Container-->
        </div>
        <!--end::Footer-->
      </div>
      <!--end::Wrapper-->
    </div>
    <!--end::Page-->
  </div>
  <!--end::Root-->
  <!--begin::Drawers-->
  <!--begin::Activities drawer-->
  <div id="kt_activities" class="bg-white drawer drawer-end" data-kt-drawer="true" data-kt-drawer-name="activities" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'lg': '900px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_activities_toggle" data-kt-drawer-close="#kt_activities_close" style="width: 900px !important;">
    <div class="card shadow-none">
      <!--begin::Header-->
      <div class="card-header" id="kt_activities_header">
        <h3 class="card-title fw-bolder text-dark">Activity Logs</h3>
        <div class="card-toolbar">
          <button type="button" class="btn btn-sm btn-icon btn-active-light-primary me-n5" id="kt_activities_close">
            <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
            <span class="svg-icon svg-icon-1">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
            <!--end::Svg Icon-->
          </button>
        </div>
      </div>
      <!--end::Header-->
      <!--begin::Body-->
      <div class="card-body position-relative" id="kt_activities_body">
        <!--begin::Content-->
        <div id="kt_activities_scroll" class="position-relative scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_activities_body" data-kt-scroll-dependencies="#kt_activities_header, #kt_activities_footer" data-kt-scroll-offset="5px" style="height: 273px;">
          <!--begin::Timeline items-->
          <div class="timeline">
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px me-4">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Communication/Chat2.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <polygon fill="#000000" opacity="0.3" points="5 15 3 21.5 9.5 19.5"></polygon>
                        <path d="M13.5,21 C8.25329488,21 4,16.7467051 4,11.5 C4,6.25329488 8.25329488,2 13.5,2 C18.7467051,2 23,6.25329488 23,11.5 C23,16.7467051 18.7467051,21 13.5,21 Z M9,8 C8.44771525,8 8,8.44771525 8,9 C8,9.55228475 8.44771525,10 9,10 L18,10 C18.5522847,10 19,9.55228475 19,9 C19,8.44771525 18.5522847,8 18,8 L9,8 Z M9,12 C8.44771525,12 8,12.4477153 8,13 C8,13.5522847 8.44771525,14 9,14 L14,14 C14.5522847,14 15,13.5522847 15,13 C15,12.4477153 14.5522847,12 14,12 L9,12 Z" fill="#000000"></path>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n1">
                <!--begin::Timeline heading-->
                <div class="pe-3 mb-5">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">There are 2 new tasks for you in â€œAirPlus Mobile APpâ€ project:</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Added at 4:23 PM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="" data-bs-original-title="Nina Nilson">
                      <img src="/metronic8/demo1/assets/media/avatars/150-11.jpg" alt="img">
                    </div>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
                <!--begin::Timeline details-->
                <div class="overflow-auto pb-5">
                  <!--begin::Record-->
                  <div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-750px px-7 py-3 mb-5">
                    <!--begin::Title-->
                    <a href="#" class="fs-5 text-dark text-hover-primary fw-bold w-375px min-w-200px">Meeting with customer</a>
                    <!--end::Title-->
                    <!--begin::Label-->
                    <div class="min-w-175px pe-2">
                      <span class="badge badge-light text-muted">Application Design</span>
                    </div>
                    <!--end::Label-->
                    <!--begin::Users-->
                    <div class="symbol-group symbol-hover flex-nowrap flex-grow-1 min-w-100px pe-2">
                      <!--begin::User-->
                      <div class="symbol symbol-circle symbol-25px">
                        <img src="/metronic8/demo1/assets/media/avatars/150-3.jpg" alt="img">
                      </div>
                      <!--end::User-->
                      <!--begin::User-->
                      <div class="symbol symbol-circle symbol-25px">
                        <img src="/metronic8/demo1/assets/media/avatars/150-11.jpg" alt="img">
                      </div>
                      <!--end::User-->
                      <!--begin::User-->
                      <div class="symbol symbol-circle symbol-25px">
                        <div class="symbol-label fs-8 fw-bold bg-primary text-inverse-primary">A</div>
                      </div>
                      <!--end::User-->
                    </div>
                    <!--end::Users-->
                    <!--begin::Progress-->
                    <div class="min-w-125px pe-2">
                      <span class="badge badge-light-primary">In Progress</span>
                    </div>
                    <!--end::Progress-->
                    <!--begin::Action-->
                    <a href="#" class="btn btn-sm btn-light btn-active-light-primary">View</a>
                    <!--end::Action-->
                  </div>
                  <!--end::Record-->
                  <!--begin::Record-->
                  <div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-750px px-7 py-3 mb-0">
                    <!--begin::Title-->
                    <a href="#" class="fs-5 text-dark text-hover-primary fw-bold w-375px min-w-200px">Project Delivery Preparation</a>
                    <!--end::Title-->
                    <!--begin::Label-->
                    <div class="min-w-175px">
                      <span class="badge badge-light text-muted">CRM System Development</span>
                    </div>
                    <!--end::Label-->
                    <!--begin::Users-->
                    <div class="symbol-group symbol-hover flex-nowrap flex-grow-1 min-w-100px">
                      <!--begin::User-->
                      <div class="symbol symbol-circle symbol-25px">
                        <img src="/metronic8/demo1/assets/media/avatars/150-5.jpg" alt="img">
                      </div>
                      <!--end::User-->
                      <!--begin::User-->
                      <div class="symbol symbol-circle symbol-25px">
                        <div class="symbol-label fs-8 fw-bold bg-success text-inverse-primary">B</div>
                      </div>
                      <!--end::User-->
                    </div>
                    <!--end::Users-->
                    <!--begin::Progress-->
                    <div class="min-w-125px">
                      <span class="badge badge-light-success">Completed</span>
                    </div>
                    <!--end::Progress-->
                    <!--begin::Action-->
                    <a href="#" class="btn btn-sm btn-light btn-active-light-primary">View</a>
                    <!--end::Action-->
                  </div>
                  <!--end::Record-->
                </div>
                <!--end::Timeline details-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Communication/Thumbtack.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <path d="M11.6734943,8.3307728 L14.9993074,6.09979492 L14.1213255,5.22181303 C13.7308012,4.83128874 13.7308012,4.19812376 14.1213255,3.80759947 L15.535539,2.39338591 C15.9260633,2.00286161 16.5592283,2.00286161 16.9497526,2.39338591 L22.6066068,8.05024016 C22.9971311,8.44076445 22.9971311,9.07392943 22.6066068,9.46445372 L21.1923933,10.8786673 C20.801869,11.2691916 20.168704,11.2691916 19.7781797,10.8786673 L18.9002333,10.0007208 L16.6692373,13.3265608 C16.9264145,14.2523264 16.9984943,15.2320236 16.8664372,16.2092466 L16.4344698,19.4058049 C16.360509,19.9531149 15.8568695,20.3368403 15.3095595,20.2628795 C15.0925691,20.2335564 14.8912006,20.1338238 14.7363706,19.9789938 L5.02099894,10.2636221 C4.63047465,9.87309784 4.63047465,9.23993286 5.02099894,8.84940857 C5.17582897,8.69457854 5.37719743,8.59484594 5.59418783,8.56552292 L8.79074617,8.13355557 C9.76799113,8.00149544 10.7477104,8.0735815 11.6734943,8.3307728 Z" fill="#000000"></path>
                        <polygon fill="#000000" opacity="0.3" transform="translate(7.050253, 17.949747) rotate(-315.000000) translate(-7.050253, -17.949747)" points="5.55025253 13.9497475 5.55025253 19.6640332 7.05025253 21.9497475 8.55025253 19.6640332 8.55025253 13.9497475"></polygon>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n2">
                <!--begin::Timeline heading-->
                <div class="overflow-auto pe-3">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">Invitation for crafting engaging designs that speak human workshop</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Sent at 4:23 PM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="" data-bs-original-title="Alan Nilson">
                      <img src="/metronic8/demo1/assets/media/avatars/150-2.jpg" alt="img">
                    </div>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/General/Attachment2.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                          <rect x="0" y="0" width="24" height="24"></rect>
                          <path d="M11.7573593,15.2426407 L8.75735931,15.2426407 C8.20507456,15.2426407 7.75735931,15.6903559 7.75735931,16.2426407 C7.75735931,16.7949254 8.20507456,17.2426407 8.75735931,17.2426407 L11.7573593,17.2426407 L11.7573593,18.2426407 C11.7573593,19.3472102 10.8619288,20.2426407 9.75735931,20.2426407 L5.75735931,20.2426407 C4.65278981,20.2426407 3.75735931,19.3472102 3.75735931,18.2426407 L3.75735931,14.2426407 C3.75735931,13.1380712 4.65278981,12.2426407 5.75735931,12.2426407 L9.75735931,12.2426407 C10.8619288,12.2426407 11.7573593,13.1380712 11.7573593,14.2426407 L11.7573593,15.2426407 Z" fill="#000000" opacity="0.3" transform="translate(7.757359, 16.242641) rotate(-45.000000) translate(-7.757359, -16.242641)"></path>
                          <path d="M12.2426407,8.75735931 L15.2426407,8.75735931 C15.7949254,8.75735931 16.2426407,8.30964406 16.2426407,7.75735931 C16.2426407,7.20507456 15.7949254,6.75735931 15.2426407,6.75735931 L12.2426407,6.75735931 L12.2426407,5.75735931 C12.2426407,4.65278981 13.1380712,3.75735931 14.2426407,3.75735931 L18.2426407,3.75735931 C19.3472102,3.75735931 20.2426407,4.65278981 20.2426407,5.75735931 L20.2426407,9.75735931 C20.2426407,10.8619288 19.3472102,11.7573593 18.2426407,11.7573593 L14.2426407,11.7573593 C13.1380712,11.7573593 12.2426407,10.8619288 12.2426407,9.75735931 L12.2426407,8.75735931 Z" fill="#000000" transform="translate(16.242641, 7.757359) rotate(-45.000000) translate(-16.242641, -7.757359)"></path>
                          <path d="M5.89339828,3.42893219 C6.44568303,3.42893219 6.89339828,3.87664744 6.89339828,4.42893219 L6.89339828,6.42893219 C6.89339828,6.98121694 6.44568303,7.42893219 5.89339828,7.42893219 C5.34111353,7.42893219 4.89339828,6.98121694 4.89339828,6.42893219 L4.89339828,4.42893219 C4.89339828,3.87664744 5.34111353,3.42893219 5.89339828,3.42893219 Z M11.4289322,5.13603897 C11.8194565,5.52656326 11.8194565,6.15972824 11.4289322,6.55025253 L10.0147186,7.96446609 C9.62419433,8.35499039 8.99102936,8.35499039 8.60050506,7.96446609 C8.20998077,7.5739418 8.20998077,6.94077682 8.60050506,6.55025253 L10.0147186,5.13603897 C10.4052429,4.74551468 11.0384079,4.74551468 11.4289322,5.13603897 Z M0.600505063,5.13603897 C0.991029355,4.74551468 1.62419433,4.74551468 2.01471863,5.13603897 L3.42893219,6.55025253 C3.81945648,6.94077682 3.81945648,7.5739418 3.42893219,7.96446609 C3.0384079,8.35499039 2.40524292,8.35499039 2.01471863,7.96446609 L0.600505063,6.55025253 C0.209980772,6.15972824 0.209980772,5.52656326 0.600505063,5.13603897 Z" fill="#000000" opacity="0.3" transform="translate(6.014719, 5.843146) rotate(-45.000000) translate(-6.014719, -5.843146)"></path>
                          <path d="M17.9142136,15.4497475 C18.4664983,15.4497475 18.9142136,15.8974627 18.9142136,16.4497475 L18.9142136,18.4497475 C18.9142136,19.0020322 18.4664983,19.4497475 17.9142136,19.4497475 C17.3619288,19.4497475 16.9142136,19.0020322 16.9142136,18.4497475 L16.9142136,16.4497475 C16.9142136,15.8974627 17.3619288,15.4497475 17.9142136,15.4497475 Z M23.4497475,17.1568542 C23.8402718,17.5473785 23.8402718,18.1805435 23.4497475,18.5710678 L22.0355339,19.9852814 C21.6450096,20.3758057 21.0118446,20.3758057 20.6213203,19.9852814 C20.2307961,19.5947571 20.2307961,18.9615921 20.6213203,18.5710678 L22.0355339,17.1568542 C22.4260582,16.76633 23.0592232,16.76633 23.4497475,17.1568542 Z M12.6213203,17.1568542 C13.0118446,16.76633 13.6450096,16.76633 14.0355339,17.1568542 L15.4497475,18.5710678 C15.8402718,18.9615921 15.8402718,19.5947571 15.4497475,19.9852814 C15.0592232,20.3758057 14.4260582,20.3758057 14.0355339,19.9852814 L12.6213203,18.5710678 C12.2307961,18.1805435 12.2307961,17.5473785 12.6213203,17.1568542 Z" fill="#000000" opacity="0.3" transform="translate(18.035534, 17.863961) scale(1, -1) rotate(45.000000) translate(-18.035534, -17.863961)"></path>
                        </g>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n1">
                <!--begin::Timeline heading-->
                <div class="mb-5 pe-3">
                  <!--begin::Title-->
                  <a href="#" class="fs-5 fw-bold text-gray-800 text-hover-primary mb-2">3 New Incoming Project Files:</a>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Sent at 10:30 PM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="" data-bs-original-title="Jan Hummer">
                      <img src="/metronic8/demo1/assets/media/avatars/150-6.jpg" alt="img">
                    </div>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
                <!--begin::Timeline details-->
                <div class="overflow-auto pb-5">
                  <div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-700px p-5">
                    <!--begin::Item-->
                    <div class="d-flex flex-aligns-center pe-10 pe-lg-20">
                      <!--begin::Icon-->
                      <img alt="" class="w-30px me-3" src="/metronic8/demo1/assets/media/svg/files/pdf.svg">
                      <!--end::Icon-->
                      <!--begin::Info-->
                      <div class="ms-1 fw-bold">
                        <!--begin::Desc-->
                        <a href="#" class="fs-6 text-hover-primary fw-bolder">Finance KPI App Guidelines</a>
                        <!--end::Desc-->
                        <!--begin::Number-->
                        <div class="text-gray-400">1.9mb</div>
                        <!--end::Number-->
                      </div>
                      <!--begin::Info-->
                    </div>
                    <!--end::Item-->
                    <!--begin::Item-->
                    <div class="d-flex flex-aligns-center pe-10 pe-lg-20">
                      <!--begin::Icon-->
                      <img alt="" class="w-30px me-3" src="/metronic8/demo1/assets/media/svg/files/doc.svg">
                      <!--end::Icon-->
                      <!--begin::Info-->
                      <div class="ms-1 fw-bold">
                        <!--begin::Desc-->
                        <a href="#" class="fs-6 text-hover-primary fw-bolder">Client UAT Testing Results</a>
                        <!--end::Desc-->
                        <!--begin::Number-->
                        <div class="text-gray-400">18kb</div>
                        <!--end::Number-->
                      </div>
                      <!--end::Info-->
                    </div>
                    <!--end::Item-->
                    <!--begin::Item-->
                    <div class="d-flex flex-aligns-center">
                      <!--begin::Icon-->
                      <img alt="" class="w-30px me-3" src="/metronic8/demo1/assets/media/svg/files/css.svg">
                      <!--end::Icon-->
                      <!--begin::Info-->
                      <div class="ms-1 fw-bold">
                        <!--begin::Desc-->
                        <a href="#" class="fs-6 text-hover-primary fw-bolder">Finance Reports</a>
                        <!--end::Desc-->
                        <!--begin::Number-->
                        <div class="text-gray-400">20mb</div>
                        <!--end::Number-->
                      </div>
                      <!--end::Icon-->
                    </div>
                    <!--end::Item-->
                  </div>
                </div>
                <!--end::Timeline details-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Home/Library.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                          <rect x="0" y="0" width="24" height="24"></rect>
                          <path d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z" fill="#000000"></path>
                          <rect fill="#000000" opacity="0.3" transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519)" x="16.3255682" y="2.94551858" width="3" height="18" rx="1"></rect>
                        </g>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n1">
                <!--begin::Timeline heading-->
                <div class="pe-3 mb-5">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">Task
                    <a href="#" class="text-primary fw-bolder me-1">#45890</a>merged with
                    <a href="#" class="text-primary fw-bolder me-1">#45890</a>in â€œAds Pro Admin Dashboard project:</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Initiated at 4:23 PM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="" data-bs-original-title="Nina Nilson">
                      <img src="/metronic8/demo1/assets/media/avatars/150-11.jpg" alt="img">
                    </div>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Communication/Write.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953)"></path>
                        <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n1">
                <!--begin::Timeline heading-->
                <div class="pe-3 mb-5">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">3 new application design concepts added:</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Created at 4:23 PM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="" data-bs-original-title="Marcus Dotson">
                      <img src="/metronic8/demo1/assets/media/avatars/150-3.jpg" alt="img">
                    </div>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
                <!--begin::Timeline details-->
                <div class="overflow-auto pb-5">
                  <div class="d-flex align-items-center border border-dashed border-gray-300 rounded min-w-700px p-7">
                    <!--begin::Item-->
                    <div class="overlay me-10">
                      <!--begin::Image-->
                      <div class="overlay-wrapper">
                        <img alt="img" class="rounded w-200px" src="/metronic8/demo1/assets/media/demos/demo1.png">
                      </div>
                      <!--end::Image-->
                      <!--begin::Link-->
                      <div class="overlay-layer bg-dark bg-opacity-10 rounded">
                        <a href="#" class="btn btn-sm btn-primary btn-shadow">Explore</a>
                      </div>
                      <!--end::Link-->
                    </div>
                    <!--end::Item-->
                    <!--begin::Item-->
                    <div class="overlay me-10">
                      <!--begin::Image-->
                      <div class="overlay-wrapper">
                        <img alt="img" class="rounded w-200px" src="/metronic8/demo1/assets/media/demos/demo2.png">
                      </div>
                      <!--end::Image-->
                      <!--begin::Link-->
                      <div class="overlay-layer bg-dark bg-opacity-10 rounded">
                        <a href="#" class="btn btn-sm btn-primary btn-shadow">Explore</a>
                      </div>
                      <!--end::Link-->
                    </div>
                    <!--end::Item-->
                    <!--begin::Item-->
                    <div class="overlay">
                      <!--begin::Image-->
                      <div class="overlay-wrapper">
                        <img alt="img" class="rounded w-200px" src="/metronic8/demo1/assets/media/demos/demo3.png">
                      </div>
                      <!--end::Image-->
                      <!--begin::Link-->
                      <div class="overlay-layer bg-dark bg-opacity-10 rounded">
                        <a href="#" class="btn btn-sm btn-primary btn-shadow">Explore</a>
                      </div>
                      <!--end::Link-->
                    </div>
                    <!--end::Item-->
                  </div>
                </div>
                <!--end::Timeline details-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Communication/Urgent-mail.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <path d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z" fill="#000000" opacity="0.3"></path>
                        <path d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z" fill="#000000"></path>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n1">
                <!--begin::Timeline heading-->
                <div class="pe-3 mb-5">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">New case
                    <a href="#" class="text-primary fw-bolder me-1">#67890</a>is assigned to you in Multi-platform Database Design project</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="overflow-auto pb-5">
                    <!--begin::Wrapper-->
                    <div class="d-flex align-items-center mt-1 fs-6">
                      <!--begin::Info-->
                      <div class="text-muted me-2 fs-7">Added at 4:23 PM by</div>
                      <!--end::Info-->
                      <!--begin::User-->
                      <a href="#" class="text-primary fw-bolder me-1">Alice Tan</a>
                      <!--end::User-->
                    </div>
                    <!--end::Wrapper-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Communication/Write.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <path d="M12.2674799,18.2323597 L12.0084872,5.45852451 C12.0004303,5.06114792 12.1504154,4.6768183 12.4255037,4.38993949 L15.0030167,1.70195304 L17.5910752,4.40093695 C17.8599071,4.6812911 18.0095067,5.05499603 18.0083938,5.44341307 L17.9718262,18.2062508 C17.9694575,19.0329966 17.2985816,19.701953 16.4718324,19.701953 L13.7671717,19.701953 C12.9505952,19.701953 12.2840328,19.0487684 12.2674799,18.2323597 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.701953, 10.701953) rotate(-135.000000) translate(-14.701953, -10.701953)"></path>
                        <path d="M12.9,2 C13.4522847,2 13.9,2.44771525 13.9,3 C13.9,3.55228475 13.4522847,4 12.9,4 L6,4 C4.8954305,4 4,4.8954305 4,6 L4,18 C4,19.1045695 4.8954305,20 6,20 L18,20 C19.1045695,20 20,19.1045695 20,18 L20,13 C20,12.4477153 20.4477153,12 21,12 C21.5522847,12 22,12.4477153 22,13 L22,18 C22,20.209139 20.209139,22 18,22 L6,22 C3.790861,22 2,20.209139 2,18 L2,6 C2,3.790861 3.790861,2 6,2 L12.9,2 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mb-10 mt-n1">
                <!--begin::Timeline heading-->
                <div class="pe-3 mb-5">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">You have received a new order:</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Placed at 5:05 AM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <div class="symbol symbol-circle symbol-25px" data-bs-toggle="tooltip" data-bs-boundary="window" data-bs-placement="top" title="" data-bs-original-title="Robert Rich">
                      <img src="/metronic8/demo1/assets/media/avatars/150-14.jpg" alt="img">
                    </div>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
                <!--begin::Timeline details-->
                <div class="overflow-auto pb-5">
                  <!--begin::Notice-->
                  <div class="notice d-flex bg-light-primary rounded border-primary border border-dashed min-w-lg-600px flex-shrink-0 p-6">
                    <!--begin::Icon-->
                    <!--begin::Svg Icon | path: icons/duotone/Code/Git4.svg-->
                    <span class="svg-icon svg-icon-2tx svg-icon-primary me-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <path d="M6,7 C7.1045695,7 8,6.1045695 8,5 C8,3.8954305 7.1045695,3 6,3 C4.8954305,3 4,3.8954305 4,5 C4,6.1045695 4.8954305,7 6,7 Z M6,9 C3.790861,9 2,7.209139 2,5 C2,2.790861 3.790861,1 6,1 C8.209139,1 10,2.790861 10,5 C10,7.209139 8.209139,9 6,9 Z" fill="#000000" fill-rule="nonzero"></path>
                          <path d="M7,11.4648712 L7,17 C7,18.1045695 7.8954305,19 9,19 L15,19 L15,21 L9,21 C6.790861,21 5,19.209139 5,17 L5,8 L5,7 L7,7 L7,8 C7,9.1045695 7.8954305,10 9,10 L15,10 L15,12 L9,12 C8.27142571,12 7.58834673,11.8052114 7,11.4648712 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                          <path d="M18,22 C19.1045695,22 20,21.1045695 20,20 C20,18.8954305 19.1045695,18 18,18 C16.8954305,18 16,18.8954305 16,20 C16,21.1045695 16.8954305,22 18,22 Z M18,24 C15.790861,24 14,22.209139 14,20 C14,17.790861 15.790861,16 18,16 C20.209139,16 22,17.790861 22,20 C22,22.209139 20.209139,24 18,24 Z" fill="#000000" fill-rule="nonzero"></path>
                          <path d="M18,13 C19.1045695,13 20,12.1045695 20,11 C20,9.8954305 19.1045695,9 18,9 C16.8954305,9 16,9.8954305 16,11 C16,12.1045695 16.8954305,13 18,13 Z M18,15 C15.790861,15 14,13.209139 14,11 C14,8.790861 15.790861,7 18,7 C20.209139,7 22,8.790861 22,11 C22,13.209139 20.209139,15 18,15 Z" fill="#000000" fill-rule="nonzero"></path>
                        </svg>
                      </span>
                    <!--end::Svg Icon-->
                    <!--end::Icon-->
                    <!--begin::Wrapper-->
                    <div class="d-flex flex-stack flex-grow-1 flex-wrap flex-md-nowrap">
                      <!--begin::Content-->
                      <div class="mb-3 mb-md-0 fw-bold">
                        <h4 class="text-gray-800 fw-bolder">Database Backup Process Completed!</h4>
                        <div class="fs-6 text-gray-600 pe-7">Login into Metronic Admin Dashboard to make sure the data integrity is OK</div>
                      </div>
                      <!--end::Content-->
                      <!--begin::Action-->
                      <a href="#" class="btn btn-primary px-6 align-self-center text-nowrap">Proceed</a>
                      <!--end::Action-->
                    </div>
                    <!--end::Wrapper-->
                  </div>
                  <!--end::Notice-->
                </div>
                <!--end::Timeline details-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
            <!--begin::Timeline item-->
            <div class="timeline-item">
              <!--begin::Timeline line-->
              <div class="timeline-line w-40px"></div>
              <!--end::Timeline line-->
              <!--begin::Timeline icon-->
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <!--begin::Svg Icon | path: icons/duotone/Shopping/Cart4.svg-->
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <path opacity="0.25" d="M3.19406 11.1644C3.09247 10.5549 3.56251 10 4.18045 10H19.8195C20.4375 10 20.9075 10.5549 20.8059 11.1644L19.4178 19.4932C19.1767 20.9398 17.9251 22 16.4586 22H7.54138C6.07486 22 4.82329 20.9398 4.58219 19.4932L3.19406 11.1644Z" fill="#7E8299"></path>
                        <path d="M2 9.5C2 8.67157 2.67157 8 3.5 8H20.5C21.3284 8 22 8.67157 22 9.5C22 10.3284 21.3284 11 20.5 11H3.5C2.67157 11 2 10.3284 2 9.5Z" fill="#7E8299"></path>
                        <path d="M10 13C9.44772 13 9 13.4477 9 14V18C9 18.5523 9.44772 19 10 19C10.5523 19 11 18.5523 11 18V14C11 13.4477 10.5523 13 10 13Z" fill="#7E8299"></path>
                        <path d="M14 13C13.4477 13 13 13.4477 13 14V18C13 18.5523 13.4477 19 14 19C14.5523 19 15 18.5523 15 18V14C15 13.4477 14.5523 13 14 13Z" fill="#7E8299"></path>
                        <g opacity="0.25">
                          <path d="M10.7071 3.70711C11.0976 3.31658 11.0976 2.68342 10.7071 2.29289C10.3166 1.90237 9.68342 1.90237 9.29289 2.29289L4.29289 7.29289C3.90237 7.68342 3.90237 8.31658 4.29289 8.70711C4.68342 9.09763 5.31658 9.09763 5.70711 8.70711L10.7071 3.70711Z" fill="#7E8299"></path>
                          <path d="M13.2929 3.70711C12.9024 3.31658 12.9024 2.68342 13.2929 2.29289C13.6834 1.90237 14.3166 1.90237 14.7071 2.29289L19.7071 7.29289C20.0976 7.68342 20.0976 8.31658 19.7071 8.70711C19.3166 9.09763 18.6834 9.09763 18.2929 8.70711L13.2929 3.70711Z" fill="#7E8299"></path>
                        </g>
                      </svg>
                    </span>
                  <!--end::Svg Icon-->
                </div>
              </div>
              <!--end::Timeline icon-->
              <!--begin::Timeline content-->
              <div class="timeline-content mt-n1">
                <!--begin::Timeline heading-->
                <div class="pe-3 mb-5">
                  <!--begin::Title-->
                  <div class="fs-5 fw-bold mb-2">New order
                    <a href="#" class="text-primary fw-bolder me-1">#67890</a>is placed for Workshow Planning &amp; Budget Estimation</div>
                  <!--end::Title-->
                  <!--begin::Description-->
                  <div class="d-flex align-items-center mt-1 fs-6">
                    <!--begin::Info-->
                    <div class="text-muted me-2 fs-7">Placed at 4:23 PM by</div>
                    <!--end::Info-->
                    <!--begin::User-->
                    <a href="#" class="text-primary fw-bolder me-1">Jimmy Bold</a>
                    <!--end::User-->
                  </div>
                  <!--end::Description-->
                </div>
                <!--end::Timeline heading-->
              </div>
              <!--end::Timeline content-->
            </div>
            <!--end::Timeline item-->
          </div>
          <!--end::Timeline items-->
        </div>
        <!--end::Content-->
      </div>
      <!--end::Body-->
      <!--begin::Footer-->
      <div class="card-footer py-5 text-center" id="kt_activities_footer">
        <a href="/metronic8/demo1/pages/profile/activity.html" class="btn btn-bg-white text-primary">View All Activities
          <!--begin::Svg Icon | path: icons/duotone/Navigation/Right-2.svg-->
          <span class="svg-icon svg-icon-3 svg-icon-primary">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
              <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <polygon points="0 0 24 0 24 24 0 24"></polygon>
                <rect fill="#000000" opacity="0.5" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1"></rect>
                <path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)"></path>
              </g>
            </svg>
          </span>
          <!--end::Svg Icon--></a>
      </div>
      <!--end::Footer-->
    </div>
  </div>
  <!--end::Activities drawer-->
  <!--begin::Chat drawer-->
  <div id="kt_drawer_chat" class="bg-white drawer drawer-end" data-kt-drawer="true" data-kt-drawer-name="chat" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'md': '500px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_drawer_chat_toggle" data-kt-drawer-close="#kt_drawer_chat_close" style="width: 500px !important;">
    <!--begin::Messenger-->
    <div class="card w-100" id="kt_drawer_chat_messenger">
      <!--begin::Card header-->
      <div class="card-header pe-5" id="kt_drawer_chat_messenger_header">
        <!--begin::Title-->
        <div class="card-title">
          <!--begin::User-->
          <div class="d-flex justify-content-center flex-column me-3">
            <a href="#" class="fs-4 fw-bolder text-gray-900 text-hover-primary me-1 mb-2 lh-1">Brian Cox</a>
            <!--begin::Info-->
            <div class="mb-0 lh-1">
              <span class="badge badge-success badge-circle w-10px h-10px me-1"></span>
              <span class="fs-7 fw-bold text-gray-400">Active</span>
            </div>
            <!--end::Info-->
          </div>
          <!--end::User-->
        </div>
        <!--end::Title-->
        <!--begin::Card toolbar-->
        <div class="card-toolbar">
          <!--begin::Menu-->
          <div class="me-2">
            <button class="btn btn-sm btn-icon btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-flip="top-end">
              <i class="bi bi-three-dots fs-3"></i>
            </button>
            <!--begin::Menu 3-->
            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg-light-primary fw-bold w-200px py-3" data-kt-menu="true">
              <!--begin::Heading-->
              <div class="menu-item px-3">
                <div class="menu-content text-muted pb-2 px-3 fs-7 text-uppercase">Contacts</div>
              </div>
              <!--end::Heading-->
              <!--begin::Menu item-->
              <div class="menu-item px-3">
                <a href="#" class="menu-link px-3" data-bs-toggle="modal" data-bs-target="#kt_modal_users_search">Add Contact</a>
              </div>
              <!--end::Menu item-->
              <!--begin::Menu item-->
              <div class="menu-item px-3">
                <a href="#" class="menu-link flex-stack px-3" data-bs-toggle="modal" data-bs-target="#kt_modal_invite_friends">Invite Contacts
                  <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a contact email to send an invitation" aria-label="Specify a contact email to send an invitation"></i></a>
              </div>
              <!--end::Menu item-->
              <!--begin::Menu item-->
              <div class="menu-item px-3" data-kt-menu-trigger="hover" data-kt-menu-placement="right-start" data-kt-menu-flip="left, center, top">
                <a href="#" class="menu-link px-3">
                  <span class="menu-title">Groups</span>
                  <span class="menu-arrow"></span>
                </a>
                <!--begin::Menu sub-->
                <div class="menu-sub menu-sub-dropdown w-175px py-4">
                  <!--begin::Menu item-->
                  <div class="menu-item px-3">
                    <a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="" data-bs-original-title="Coming soon">Create Group</a>
                  </div>
                  <!--end::Menu item-->
                  <!--begin::Menu item-->
                  <div class="menu-item px-3">
                    <a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="" data-bs-original-title="Coming soon">Invite Members</a>
                  </div>
                  <!--end::Menu item-->
                  <!--begin::Menu item-->
                  <div class="menu-item px-3">
                    <a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="" data-bs-original-title="Coming soon">Settings</a>
                  </div>
                  <!--end::Menu item-->
                </div>
                <!--end::Menu sub-->
              </div>
              <!--end::Menu item-->
              <!--begin::Menu item-->
              <div class="menu-item px-3 my-1">
                <a href="#" class="menu-link px-3" data-bs-toggle="tooltip" title="" data-bs-original-title="Coming soon">Settings</a>
              </div>
              <!--end::Menu item-->
            </div>
            <!--end::Menu 3-->
          </div>
          <!--end::Menu-->
          <!--begin::Close-->
          <div class="btn btn-sm btn-icon btn-active-light-primary" id="kt_drawer_chat_close">
            <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
            <span class="svg-icon svg-icon-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Close-->
        </div>
        <!--end::Card toolbar-->
      </div>
      <!--end::Card header-->
      <!--begin::Card body-->
      <div class="card-body" id="kt_drawer_chat_messenger_body">
        <!--begin::Messages-->
        <div class="scroll-y me-n5 pe-5" data-kt-element="messages" data-kt-scroll="true" data-kt-scroll-activate="true" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_drawer_chat_messenger_header, #kt_drawer_chat_messenger_footer" data-kt-scroll-wrappers="#kt_drawer_chat_messenger_body" data-kt-scroll-offset="0px" style="height: 206px;">
          <!--begin::Message(in)-->
          <div class="d-flex justify-content-start mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-start">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                </div>
                <!--end::Avatar-->
                <!--begin::Details-->
                <div class="ms-3">
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary me-1">Brian Cox</a>
                  <span class="text-muted fs-7 mb-1">2 mins</span>
                </div>
                <!--end::Details-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">How likely are you to recommend our company to your friends and family ?</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(in)-->
          <!--begin::Message(out)-->
          <div class="d-flex justify-content-end mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-end">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Details-->
                <div class="me-3">
                  <span class="text-muted fs-7 mb-1">5 mins</span>
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary ms-1">You</a>
                </div>
                <!--end::Details-->
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-2.jpg">
                </div>
                <!--end::Avatar-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-primary text-dark fw-bold mw-lg-400px text-end" data-kt-element="message-text">Hey there, weâ€™re just writing to let you know that youâ€™ve been subscribed to a repository on GitHub.</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(out)-->
          <!--begin::Message(in)-->
          <div class="d-flex justify-content-start mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-start">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                </div>
                <!--end::Avatar-->
                <!--begin::Details-->
                <div class="ms-3">
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary me-1">Brian Cox</a>
                  <span class="text-muted fs-7 mb-1">1 Hour</span>
                </div>
                <!--end::Details-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">Ok, Understood!</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(in)-->
          <!--begin::Message(out)-->
          <div class="d-flex justify-content-end mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-end">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Details-->
                <div class="me-3">
                  <span class="text-muted fs-7 mb-1">2 Hours</span>
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary ms-1">You</a>
                </div>
                <!--end::Details-->
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-2.jpg">
                </div>
                <!--end::Avatar-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-primary text-dark fw-bold mw-lg-400px text-end" data-kt-element="message-text">Youâ€™ll receive notifications for all issues, pull requests!</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(out)-->
          <!--begin::Message(in)-->
          <div class="d-flex justify-content-start mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-start">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                </div>
                <!--end::Avatar-->
                <!--begin::Details-->
                <div class="ms-3">
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary me-1">Brian Cox</a>
                  <span class="text-muted fs-7 mb-1">3 Hours</span>
                </div>
                <!--end::Details-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">You can unwatch this repository immediately by clicking here:
                <a href="https://keenthemes.com">Keenthemes.com</a></div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(in)-->
          <!--begin::Message(out)-->
          <div class="d-flex justify-content-end mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-end">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Details-->
                <div class="me-3">
                  <span class="text-muted fs-7 mb-1">4 Hours</span>
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary ms-1">You</a>
                </div>
                <!--end::Details-->
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-2.jpg">
                </div>
                <!--end::Avatar-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-primary text-dark fw-bold mw-lg-400px text-end" data-kt-element="message-text">Most purchased Business courses during this sale!</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(out)-->
          <!--begin::Message(in)-->
          <div class="d-flex justify-content-start mb-10">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-start">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                </div>
                <!--end::Avatar-->
                <!--begin::Details-->
                <div class="ms-3">
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary me-1">Brian Cox</a>
                  <span class="text-muted fs-7 mb-1">5 Hours</span>
                </div>
                <!--end::Details-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">Company BBQ to celebrate the last quater achievements and goals. Food and drinks provided</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(in)-->
          <!--begin::Message(template for out)-->
          <div class="d-flex justify-content-end mb-10 d-none" data-kt-element="template-out">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-end">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Details-->
                <div class="me-3">
                  <span class="text-muted fs-7 mb-1">Just now</span>
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary ms-1">You</a>
                </div>
                <!--end::Details-->
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-2.jpg">
                </div>
                <!--end::Avatar-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-primary text-dark fw-bold mw-lg-400px text-end" data-kt-element="message-text"></div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(template for out)-->
          <!--begin::Message(template for in)-->
          <div class="d-flex justify-content-start mb-10 d-none" data-kt-element="template-in">
            <!--begin::Wrapper-->
            <div class="d-flex flex-column align-items-start">
              <!--begin::User-->
              <div class="d-flex align-items-center mb-2">
                <!--begin::Avatar-->
                <div class="symbol symbol-35px symbol-circle">
                  <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                </div>
                <!--end::Avatar-->
                <!--begin::Details-->
                <div class="ms-3">
                  <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary me-1">Brian Cox</a>
                  <span class="text-muted fs-7 mb-1">Just now</span>
                </div>
                <!--end::Details-->
              </div>
              <!--end::User-->
              <!--begin::Text-->
              <div class="p-5 rounded bg-light-info text-dark fw-bold mw-lg-400px text-start" data-kt-element="message-text">Right before vacation season we have the next Big Deal for you.</div>
              <!--end::Text-->
            </div>
            <!--end::Wrapper-->
          </div>
          <!--end::Message(template for in)-->
        </div>
        <!--end::Messages-->
      </div>
      <!--end::Card body-->
      <!--begin::Card footer-->
      <div class="card-footer pt-4" id="kt_drawer_chat_messenger_footer">
        <!--begin::Input-->
        <textarea class="form-control form-control-flush mb-3" rows="1" data-kt-element="input" placeholder="Type a message"></textarea>
        <!--end::Input-->
        <!--begin:Toolbar-->
        <div class="d-flex flex-stack">
          <!--begin::Actions-->
          <div class="d-flex align-items-center me-2">
            <button class="btn btn-sm btn-icon btn-active-light-primary me-1" type="button" data-bs-toggle="tooltip" title="" data-bs-original-title="Coming soon">
              <i class="bi bi-paperclip fs-3"></i>
            </button>
            <button class="btn btn-sm btn-icon btn-active-light-primary me-1" type="button" data-bs-toggle="tooltip" title="" data-bs-original-title="Coming soon">
              <i class="bi bi-upload fs-3"></i>
            </button>
          </div>
          <!--end::Actions-->
          <!--begin::Send-->
          <button class="btn btn-primary" type="button" data-kt-element="send">Send</button>
          <!--end::Send-->
        </div>
        <!--end::Toolbar-->
      </div>
      <!--end::Card footer-->
    </div>
    <!--end::Messenger-->
  </div>
  <!--end::Chat drawer-->
  <!--begin::Exolore drawer toggle-->
  <button id="kt_explore_toggle" class="btn btn-sm btn-white btn-active-primary shadow-sm position-fixed px-5 fw-bolder zindex-2 top-50 mt-10 end-0 transform-90 fs-6" title="" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-trigger="hover" data-bs-original-title="Explore Metronic">
    <span id="kt_explore_toggle_label">Explore</span>
  </button>
  <!--end::Exolore drawer toggle-->
  <!--begin::Exolore drawer-->
  <div id="kt_explore" class="bg-white drawer drawer-end" data-kt-drawer="true" data-kt-drawer-name="explore" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'lg': '375px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_explore_toggle" data-kt-drawer-close="#kt_explore_close" style="width: 375px !important;">
    <!--begin::Card-->
    <div class="card shadow-none w-100">
      <!--begin::Header-->
      <div class="card-header" id="kt_explore_header">
        <h3 class="card-title fw-bolder text-gray-700">Explore Metronic</h3>
        <div class="card-toolbar">
          <button type="button" class="btn btn-sm btn-icon btn-active-light-primary me-n5" id="kt_explore_close">
            <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
            <span class="svg-icon svg-icon-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
            <!--end::Svg Icon-->
          </button>
        </div>
      </div>
      <!--end::Header-->
      <!--begin::Body-->
      <div class="card-body" id="kt_explore_body">
        <!--begin::Content-->
        <div id="kt_explore_scroll" class="scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_explore_body" data-kt-scroll-dependencies="#kt_explore_header, #kt_explore_footer" data-kt-scroll-offset="5px" style="height: 273px;">
          <!--begin::Demos-->
          <div class="mb-0">
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo1</h3>
              <div class="overlay overflow-hidden border border-4 border-primary p-2 rounded">
                <div class="overlay-wrapper rounded">
                  <img src="/metronic8/demo1/assets/media/demos/demo1.png" alt="demo" class="w-100 rounded">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <a href="https://preview.keenthemes.com/metronic8/demo1" class="btn btn-primary shadow">Preview</a>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo2</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo2.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo3</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo3.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo4</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo4.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo5</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper rounded">
                  <img src="/metronic8/demo1/assets/media/demos/demo5.png" alt="demo" class="w-100 rounded">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <a href="https://preview.keenthemes.com/metronic8/demo5" class="btn btn-primary shadow">Preview</a>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo6</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo6.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo7</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo7.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo8</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo8.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo9</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo9.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo10</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo10.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo11</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo11.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo12</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo12.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo13</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo13.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo14</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo14.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
            <!--begin::Demo-->
            <div class="mb-7">
              <h3 class="fw-bold text-center mb-3">Demo15</h3>
              <div class="overlay overflow-hidden border border-4 p-2 rounded">
                <div class="overlay-wrapper">
                  <img src="/metronic8/demo1/assets/media/demos/demo15.png" alt="demo" class="w-100 rounded opacity-75">
                </div>
                <div class="overlay-layer bg-dark bg-opacity-10">
                  <div class="badge badge-light-primary px-6 py-4 fw-bold fs-base shadow">Coming soon</div>
                </div>
              </div>
            </div>
            <!--end::Demo-->
          </div>
          <!--end::Demos-->
        </div>
        <!--end::Content-->
      </div>
      <!--end::Body-->
      <!--begin::Footer-->
      <div class="card-footer py-5 text-center" id="kt_explore_footer">
        <a href="https://1.envato.market/EA4JP" class="btn btn-primary">Purchase Metronic</a>
      </div>
      <!--end::Footer-->
    </div>
    <!--end::Card-->
  </div>
  <!--end::Exolore drawer-->
  <!--end::Drawers-->
  <!--begin::Modals-->
  <!--begin::Modal - Invite Friends-->
  <div class="modal fade" id="kt_modal_invite_friends" tabindex="-1" aria-hidden="true">
    <!--begin::Modal dialog-->
    <div class="modal-dialog mw-650px">
      <!--begin::Modal content-->
      <div class="modal-content">
        <!--begin::Modal header-->
        <div class="modal-header pb-0 border-0 justify-content-end">
          <!--begin::Close-->
          <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
            <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
            <span class="svg-icon svg-icon-1">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Close-->
        </div>
        <!--begin::Modal header-->
        <!--begin::Modal body-->
        <div class="modal-body scroll-y mx-5 mx-xl-18 pt-0 pb-15">
          <!--begin::Heading-->
          <div class="text-center mb-13">
            <!--begin::Title-->
            <h1 class="mb-3">Invite a Friend</h1>
            <!--end::Title-->
            <!--begin::Description-->
            <div class="text-gray-400 fw-bold fs-5">If you need more info, please check out
              <a href="#" class="link-primary fw-bolder">FAQ Page</a>.</div>
            <!--end::Description-->
          </div>
          <!--end::Heading-->
          <!--begin::Google Contacts Invite-->
          <div class="btn btn-light-primary fw-bolder w-100 mb-8">
            <img alt="Logo" src="/metronic8/demo1/assets/media/svg/brand-logos/google-icon.svg" class="h-20px me-3">Invite Gmail Contacts</div>
          <!--end::Google Contacts Invite-->
          <!--begin::Separator-->
          <div class="separator d-flex flex-center mb-8">
            <span class="text-uppercase bg-white fs-7 fw-bold text-gray-400 px-3">or</span>
          </div>
          <!--end::Separator-->
          <!--begin::Textarea-->
          <textarea class="form-control form-control-solid mb-8" rows="3" placeholder="Type or paste emails here"></textarea>
          <!--end::Textarea-->
          <!--begin::Users-->
          <div class="mb-10">
            <!--begin::Heading-->
            <div class="fs-6 fw-bold mb-2">Your Invitations</div>
            <!--end::Heading-->
            <!--begin::List-->
            <div class="mh-300px scroll-y me-n7 pe-7">
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-1.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Emma Smith</a>
                    <div class="fw-bold text-gray-400">e.smith@kpmg.com.au</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-13-dkkl" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2" selected="selected" data-select2-id="select2-data-15-c288">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-5-y5nf" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-d4ix-container" aria-controls="select2-d4ix-container"><span class="select2-selection__rendered" id="select2-d4ix-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-5-t5xc" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-gk3j-container" aria-controls="select2-gk3j-container"><span class="select2-selection__rendered" id="select2-gk3j-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-5-00za" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-vuzz-container" aria-controls="select2-vuzz-container"><span class="select2-selection__rendered" id="select2-vuzz-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-14-fzcm" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-2i7l-container" aria-controls="select2-2i7l-container"><span class="select2-selection__rendered" id="select2-2i7l-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-danger text-danger fw-bold">M</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Melody Macy</a>
                    <div class="fw-bold text-gray-400">melody@altbox.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-16-nnmm" tabindex="-1" aria-hidden="true">
                    <option value="1" selected="selected" data-select2-id="select2-data-18-13jv">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-6-tj06" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-w5bt-container" aria-controls="select2-w5bt-container"><span class="select2-selection__rendered" id="select2-w5bt-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-6-br9l" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-hc2q-container" aria-controls="select2-hc2q-container"><span class="select2-selection__rendered" id="select2-hc2q-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-6-1tut" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-7hr6-container" aria-controls="select2-7hr6-container"><span class="select2-selection__rendered" id="select2-7hr6-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-17-lmue" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-9t61-container" aria-controls="select2-9t61-container"><span class="select2-selection__rendered" id="select2-9t61-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-2.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Max Smith</a>
                    <div class="fw-bold text-gray-400">max@kt.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-19-a7vq" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-21-834i">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-7-9skp" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-n1yv-container" aria-controls="select2-n1yv-container"><span class="select2-selection__rendered" id="select2-n1yv-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-7-b0uy" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-mp5i-container" aria-controls="select2-mp5i-container"><span class="select2-selection__rendered" id="select2-mp5i-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-7-mgoa" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-rwbw-container" aria-controls="select2-rwbw-container"><span class="select2-selection__rendered" id="select2-rwbw-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-20-s1ik" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-6t59-container" aria-controls="select2-6t59-container"><span class="select2-selection__rendered" id="select2-6t59-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-4.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Sean Bean</a>
                    <div class="fw-bold text-gray-400">sean@dellito.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-22-6pas" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2" selected="selected" data-select2-id="select2-data-24-0hcr">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-8-0fjp" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-vhkq-container" aria-controls="select2-vhkq-container"><span class="select2-selection__rendered" id="select2-vhkq-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-8-lcz8" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-z530-container" aria-controls="select2-z530-container"><span class="select2-selection__rendered" id="select2-z530-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-8-6uul" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-u5cu-container" aria-controls="select2-u5cu-container"><span class="select2-selection__rendered" id="select2-u5cu-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-23-kuxa" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-m21h-container" aria-controls="select2-m21h-container"><span class="select2-selection__rendered" id="select2-m21h-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Brian Cox</a>
                    <div class="fw-bold text-gray-400">brian@exchange.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-25-j5wy" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-27-km7i">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-9-598v" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-ksu1-container" aria-controls="select2-ksu1-container"><span class="select2-selection__rendered" id="select2-ksu1-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-9-npc9" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-aroi-container" aria-controls="select2-aroi-container"><span class="select2-selection__rendered" id="select2-aroi-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-9-qhv0" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-m8ja-container" aria-controls="select2-m8ja-container"><span class="select2-selection__rendered" id="select2-m8ja-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-26-kw5r" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-cjjv-container" aria-controls="select2-cjjv-container"><span class="select2-selection__rendered" id="select2-cjjv-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-warning text-warning fw-bold">M</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Mikaela Collins</a>
                    <div class="fw-bold text-gray-400">mikaela@pexcom.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-28-5b3s" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2" selected="selected" data-select2-id="select2-data-30-nyj6">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-10-7p6j" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-inoy-container" aria-controls="select2-inoy-container"><span class="select2-selection__rendered" id="select2-inoy-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-10-6lcr" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-01tj-container" aria-controls="select2-01tj-container"><span class="select2-selection__rendered" id="select2-01tj-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-10-gg0d" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-ptk4-container" aria-controls="select2-ptk4-container"><span class="select2-selection__rendered" id="select2-ptk4-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-29-l2lt" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-ymap-container" aria-controls="select2-ymap-container"><span class="select2-selection__rendered" id="select2-ymap-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-8.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Francis Mitcham</a>
                    <div class="fw-bold text-gray-400">f.mitcham@kpmg.com.au</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-31-7lpf" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-33-c7fr">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-11-mq8d" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-vim0-container" aria-controls="select2-vim0-container"><span class="select2-selection__rendered" id="select2-vim0-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-11-ciio" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-caeq-container" aria-controls="select2-caeq-container"><span class="select2-selection__rendered" id="select2-caeq-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-11-c1hg" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-9cf7-container" aria-controls="select2-9cf7-container"><span class="select2-selection__rendered" id="select2-9cf7-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-32-14mw" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-op1c-container" aria-controls="select2-op1c-container"><span class="select2-selection__rendered" id="select2-op1c-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-danger text-danger fw-bold">O</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Olivia Wild</a>
                    <div class="fw-bold text-gray-400">olivia@corpmail.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-34-ni4e" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2" selected="selected" data-select2-id="select2-data-36-r53s">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-12-tabm" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-3k5z-container" aria-controls="select2-3k5z-container"><span class="select2-selection__rendered" id="select2-3k5z-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-12-9krb" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-69vx-container" aria-controls="select2-69vx-container"><span class="select2-selection__rendered" id="select2-69vx-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-12-n9nv" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-t7op-container" aria-controls="select2-t7op-container"><span class="select2-selection__rendered" id="select2-t7op-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-35-j6wc" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-ojwv-container" aria-controls="select2-ojwv-container"><span class="select2-selection__rendered" id="select2-ojwv-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-primary text-primary fw-bold">N</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Neil Owen</a>
                    <div class="fw-bold text-gray-400">owen.neil@gmail.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-37-iu69" tabindex="-1" aria-hidden="true">
                    <option value="1" selected="selected" data-select2-id="select2-data-39-1xf1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-13-pfds" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-i2vy-container" aria-controls="select2-i2vy-container"><span class="select2-selection__rendered" id="select2-i2vy-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-13-d0ed" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-h7j1-container" aria-controls="select2-h7j1-container"><span class="select2-selection__rendered" id="select2-h7j1-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-13-656x" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-14bu-container" aria-controls="select2-14bu-container"><span class="select2-selection__rendered" id="select2-14bu-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-38-4xif" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-6zzu-container" aria-controls="select2-6zzu-container"><span class="select2-selection__rendered" id="select2-6zzu-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-6.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Dan Wilson</a>
                    <div class="fw-bold text-gray-400">dam@consilting.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-40-x13j" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-42-2jeq">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-14-ikiv" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-du7y-container" aria-controls="select2-du7y-container"><span class="select2-selection__rendered" id="select2-du7y-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-14-eodm" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-dnxw-container" aria-controls="select2-dnxw-container"><span class="select2-selection__rendered" id="select2-dnxw-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-14-6pf6" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-t5q1-container" aria-controls="select2-t5q1-container"><span class="select2-selection__rendered" id="select2-t5q1-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-41-f6qo" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-3lku-container" aria-controls="select2-3lku-container"><span class="select2-selection__rendered" id="select2-3lku-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-danger text-danger fw-bold">E</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Emma Bold</a>
                    <div class="fw-bold text-gray-400">emma@intenso.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-43-zyn3" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2" selected="selected" data-select2-id="select2-data-45-o7p1">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-15-l2hh" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-uf0l-container" aria-controls="select2-uf0l-container"><span class="select2-selection__rendered" id="select2-uf0l-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-15-v419" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-yl33-container" aria-controls="select2-yl33-container"><span class="select2-selection__rendered" id="select2-yl33-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-15-bx66" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-m35m-container" aria-controls="select2-m35m-container"><span class="select2-selection__rendered" id="select2-m35m-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-44-0x71" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-275o-container" aria-controls="select2-275o-container"><span class="select2-selection__rendered" id="select2-275o-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-7.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Ana Crown</a>
                    <div class="fw-bold text-gray-400">ana.cf@limtel.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-46-m167" tabindex="-1" aria-hidden="true">
                    <option value="1" selected="selected" data-select2-id="select2-data-48-l140">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-16-p49k" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-upxf-container" aria-controls="select2-upxf-container"><span class="select2-selection__rendered" id="select2-upxf-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-16-brjf" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-i79l-container" aria-controls="select2-i79l-container"><span class="select2-selection__rendered" id="select2-i79l-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-16-ltex" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-5i2t-container" aria-controls="select2-5i2t-container"><span class="select2-selection__rendered" id="select2-5i2t-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-47-j2x7" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-5wdu-container" aria-controls="select2-5wdu-container"><span class="select2-selection__rendered" id="select2-5wdu-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-info text-info fw-bold">A</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Robert Doe</a>
                    <div class="fw-bold text-gray-400">robert@benko.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-49-oh3p" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-51-i99w">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-17-mx1s" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-vmzo-container" aria-controls="select2-vmzo-container"><span class="select2-selection__rendered" id="select2-vmzo-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-17-wuxi" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-6wvt-container" aria-controls="select2-6wvt-container"><span class="select2-selection__rendered" id="select2-6wvt-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-17-z2qx" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-e3tl-container" aria-controls="select2-e3tl-container"><span class="select2-selection__rendered" id="select2-e3tl-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-50-ijzy" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-scx6-container" aria-controls="select2-scx6-container"><span class="select2-selection__rendered" id="select2-scx6-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-17.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">John Miller</a>
                    <div class="fw-bold text-gray-400">miller@mapple.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-52-cwt9" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-54-pasc">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-18-2w8a" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-iohj-container" aria-controls="select2-iohj-container"><span class="select2-selection__rendered" id="select2-iohj-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-18-0no2" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-9saj-container" aria-controls="select2-9saj-container"><span class="select2-selection__rendered" id="select2-9saj-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-18-i49x" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-qnxb-container" aria-controls="select2-qnxb-container"><span class="select2-selection__rendered" id="select2-qnxb-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-53-3gx8" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-qglq-container" aria-controls="select2-qglq-container"><span class="select2-selection__rendered" id="select2-qglq-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <span class="symbol-label bg-light-success text-success fw-bold">L</span>
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Lucy Kunic</a>
                    <div class="fw-bold text-gray-400">lucy.m@fentech.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-55-fob6" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2" selected="selected" data-select2-id="select2-data-57-iy19">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-19-95co" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-m13o-container" aria-controls="select2-m13o-container"><span class="select2-selection__rendered" id="select2-m13o-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-19-k3se" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-a73p-container" aria-controls="select2-a73p-container"><span class="select2-selection__rendered" id="select2-a73p-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-19-uk5s" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-reom-container" aria-controls="select2-reom-container"><span class="select2-selection__rendered" id="select2-reom-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-56-6hgh" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-xpjw-container" aria-controls="select2-xpjw-container"><span class="select2-selection__rendered" id="select2-xpjw-container" role="textbox" aria-readonly="true" title="Owner">Owner</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4 border-bottom border-gray-300 border-bottom-dashed">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-10.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Ethan Wilder</a>
                    <div class="fw-bold text-gray-400">ethan@loop.com.au</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-58-8m0r" tabindex="-1" aria-hidden="true">
                    <option value="1" selected="selected" data-select2-id="select2-data-60-eakl">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-20-l4bz" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-47ce-container" aria-controls="select2-47ce-container"><span class="select2-selection__rendered" id="select2-47ce-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-20-gefv" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-ucsg-container" aria-controls="select2-ucsg-container"><span class="select2-selection__rendered" id="select2-ucsg-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-20-mee0" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-tteg-container" aria-controls="select2-tteg-container"><span class="select2-selection__rendered" id="select2-tteg-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-59-jeqw" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-knk4-container" aria-controls="select2-knk4-container"><span class="select2-selection__rendered" id="select2-knk4-container" role="textbox" aria-readonly="true" title="Guest">Guest</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
              <!--begin::User-->
              <div class="d-flex flex-stack py-4">
                <!--begin::Details-->
                <div class="d-flex align-items-center">
                  <!--begin::Avatar-->
                  <div class="symbol symbol-35px symbol-circle">
                    <img alt="Pic" src="/metronic8/demo1/assets/media/avatars/150-15.jpg">
                  </div>
                  <!--end::Avatar-->
                  <!--begin::Details-->
                  <div class="ms-5">
                    <a href="#" class="fs-5 fw-bolder text-gray-900 text-hover-primary mb-2">Brian Cox</a>
                    <div class="fw-bold text-gray-400">brian@exchange.com</div>
                  </div>
                  <!--end::Details-->
                </div>
                <!--end::Details-->
                <!--begin::Access menu-->
                <div class="ms-2 w-100px">
                  <select class="form-select form-select-solid form-select-sm select2-hidden-accessible" data-control="select2" data-hide-search="true" data-select2-id="select2-data-61-0otb" tabindex="-1" aria-hidden="true">
                    <option value="1">Guest</option>
                    <option value="2">Owner</option>
                    <option value="3" selected="selected" data-select2-id="select2-data-63-ypjq">Can Edit</option>
                  </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-21-4lh8" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-kdy9-container" aria-controls="select2-kdy9-container"><span class="select2-selection__rendered" id="select2-kdy9-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-21-lsal" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-d577-container" aria-controls="select2-d577-container"><span class="select2-selection__rendered" id="select2-d577-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-21-swvj" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-2n6n-container" aria-controls="select2-2n6n-container"><span class="select2-selection__rendered" id="select2-2n6n-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-62-01da" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid form-select-sm" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-z7v3-container" aria-controls="select2-z7v3-container"><span class="select2-selection__rendered" id="select2-z7v3-container" role="textbox" aria-readonly="true" title="Can Edit">Can Edit</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                </div>
                <!--end::Access menu-->
              </div>
              <!--end::User-->
            </div>
            <!--end::List-->
          </div>
          <!--end::Users-->
          <!--begin::Notice-->
          <div class="d-flex flex-stack">
            <!--begin::Label-->
            <div class="me-5 fw-bold">
              <label class="fs-6">Adding Users by Team Members</label>
              <div class="fs-7 text-gray-400">If you need more info, please check budget planning</div>
            </div>
            <!--end::Label-->
            <!--begin::Switch-->
            <label class="form-check form-switch form-check-custom form-check-solid">
              <input class="form-check-input" type="checkbox" value="1" checked="checked">
              <span class="form-check-label fw-bold text-gray-400">Allowed</span>
            </label>
            <!--end::Switch-->
          </div>
          <!--end::Notice-->
        </div>
        <!--end::Modal body-->
      </div>
      <!--end::Modal content-->
    </div>
    <!--end::Modal dialog-->
  </div>
  <!--end::Modal - Invite Friend-->
  <!--begin::Modal - Create App-->
  <div class="modal fade" id="kt_modal_create_app" tabindex="-1" style="display: none;" aria-hidden="true">
    <!--begin::Modal dialog-->
    <div class="modal-dialog modal-dialog-centered mw-900px">
      <!--begin::Modal content-->
      <div class="modal-content">
        <!--begin::Modal header-->
        <div class="modal-header">
          <!--begin::Modal title-->
          <h2>Create App</h2>
          <!--end::Modal title-->
          <!--begin::Close-->
          <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
            <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
            <span class="svg-icon svg-icon-1">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Close-->
        </div>
        <!--end::Modal header-->
        <!--begin::Modal body-->
        <div class="modal-body py-lg-10 px-lg-10">
          <!--begin::Stepper-->
          <div class="stepper stepper-pills stepper-column d-flex flex-column flex-xl-row flex-row-fluid" id="kt_modal_create_app_stepper">
            <!--begin::Aside-->
            <div class="d-flex justify-content-center justify-content-xl-start flex-row-auto w-100 w-xl-300px">
              <!--begin::Nav-->
              <div class="stepper-nav ps-lg-10">
                <!--begin::Step 1-->
                <div class="stepper-item current" data-kt-stepper-element="nav">
                  <!--begin::Line-->
                  <div class="stepper-line w-40px"></div>
                  <!--end::Line-->
                  <!--begin::Icon-->
                  <div class="stepper-icon w-40px h-40px">
                    <i class="stepper-check fas fa-check"></i>
                    <span class="stepper-number">1</span>
                  </div>
                  <!--end::Icon-->
                  <!--begin::Label-->
                  <div class="stepper-label">
                    <h3 class="stepper-title">Details</h3>
                    <div class="stepper-desc">Name your App</div>
                  </div>
                  <!--end::Label-->
                </div>
                <!--end::Step 1-->
                <!--begin::Step 2-->
                <div class="stepper-item" data-kt-stepper-element="nav">
                  <!--begin::Line-->
                  <div class="stepper-line w-40px"></div>
                  <!--end::Line-->
                  <!--begin::Icon-->
                  <div class="stepper-icon w-40px h-40px">
                    <i class="stepper-check fas fa-check"></i>
                    <span class="stepper-number">2</span>
                  </div>
                  <!--begin::Icon-->
                  <!--begin::Label-->
                  <div class="stepper-label">
                    <h3 class="stepper-title">Frameworks</h3>
                    <div class="stepper-desc">Define your app framework</div>
                  </div>
                  <!--begin::Label-->
                </div>
                <!--end::Step 2-->
                <!--begin::Step 3-->
                <div class="stepper-item" data-kt-stepper-element="nav">
                  <!--begin::Line-->
                  <div class="stepper-line w-40px"></div>
                  <!--end::Line-->
                  <!--begin::Icon-->
                  <div class="stepper-icon w-40px h-40px">
                    <i class="stepper-check fas fa-check"></i>
                    <span class="stepper-number">3</span>
                  </div>
                  <!--end::Icon-->
                  <!--begin::Label-->
                  <div class="stepper-label">
                    <h3 class="stepper-title">Database</h3>
                    <div class="stepper-desc">Select the app database type</div>
                  </div>
                  <!--end::Label-->
                </div>
                <!--end::Step 3-->
                <!--begin::Step 4-->
                <div class="stepper-item" data-kt-stepper-element="nav">
                  <!--begin::Line-->
                  <div class="stepper-line w-40px"></div>
                  <!--end::Line-->
                  <!--begin::Icon-->
                  <div class="stepper-icon w-40px h-40px">
                    <i class="stepper-check fas fa-check"></i>
                    <span class="stepper-number">4</span>
                  </div>
                  <!--end::Icon-->
                  <!--begin::Label-->
                  <div class="stepper-label">
                    <h3 class="stepper-title">Billing</h3>
                    <div class="stepper-desc">Provide payment details</div>
                  </div>
                  <!--end::Label-->
                </div>
                <!--end::Step 4-->
                <!--begin::Step 5-->
                <div class="stepper-item" data-kt-stepper-element="nav">
                  <!--begin::Line-->
                  <div class="stepper-line w-40px"></div>
                  <!--end::Line-->
                  <!--begin::Icon-->
                  <div class="stepper-icon w-40px h-40px">
                    <i class="stepper-check fas fa-check"></i>
                    <span class="stepper-number">5</span>
                  </div>
                  <!--end::Icon-->
                  <!--begin::Label-->
                  <div class="stepper-label">
                    <h3 class="stepper-title">Release</h3>
                    <div class="stepper-desc">Review and Submit</div>
                  </div>
                  <!--end::Label-->
                </div>
                <!--end::Step 5-->
              </div>
              <!--end::Nav-->
            </div>
            <!--begin::Aside-->
            <!--begin::Content-->
            <div class="flex-row-fluid py-lg-5 px-lg-15">
              <!--begin::Form-->
              <form class="form fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate" id="kt_modal_create_app_form">
                <!--begin::Step 1-->
                <div class="current" data-kt-stepper-element="content">
                  <div class="w-100">
                    <!--begin::Input group-->
                    <div class="fv-row mb-10 fv-plugins-icon-container">
                      <!--begin::Label-->
                      <label class="d-flex align-items-center fs-5 fw-bold mb-2">
                        <span class="required">App Name</span>
                        <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify your unique app name" aria-label="Specify your unique app name"></i>
                      </label>
                      <!--end::Label-->
                      <!--begin::Input-->
                      <input type="text" class="form-control form-control-lg form-control-solid" name="name" placeholder="" value="">
                      <!--end::Input-->
                      <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="fv-row">
                      <!--begin::Label-->
                      <label class="d-flex align-items-center fs-5 fw-bold mb-4">
                        <span class="required">Category</span>
                        <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Select your app category" aria-label="Select your app category"></i>
                      </label>
                      <!--end::Label-->
                      <!--begin:Options-->
                      <div class="fv-row fv-plugins-icon-container">
                        <!--begin:Option-->
                        <label class="d-flex flex-stack mb-5 cursor-pointer">
                          <!--begin:Label-->
                          <span class="d-flex align-items-center me-2">
                              <!--begin:Icon-->
                              <span class="symbol symbol-50px me-6">
                                <span class="symbol-label bg-light-primary">
                                  <!--begin::Svg Icon | path: icons/duotone/Home/Globe.svg-->
                                  <span class="svg-icon svg-icon-1 svg-icon-primary">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"></rect>
                                        <path d="M13,18.9450712 L13,20 L14,20 C15.1045695,20 16,20.8954305 16,22 L8,22 C8,20.8954305 8.8954305,20 10,20 L11,20 L11,18.9448245 C9.02872877,18.7261967 7.20827378,17.866394 5.79372555,16.5182701 L4.73856106,17.6741866 C4.36621808,18.0820826 3.73370941,18.110904 3.32581341,17.7385611 C2.9179174,17.3662181 2.88909597,16.7337094 3.26143894,16.3258134 L5.04940685,14.367122 C5.46150313,13.9156769 6.17860937,13.9363085 6.56406875,14.4106998 C7.88623094,16.037907 9.86320756,17 12,17 C15.8659932,17 19,13.8659932 19,10 C19,7.73468744 17.9175842,5.65198725 16.1214335,4.34123851 C15.6753081,4.01567657 15.5775721,3.39010038 15.903134,2.94397499 C16.228696,2.49784959 16.8542722,2.4001136 17.3003976,2.72567554 C19.6071362,4.40902808 21,7.08906798 21,10 C21,14.6325537 17.4999505,18.4476269 13,18.9450712 Z" fill="#000000" fill-rule="nonzero"></path>
                                        <circle fill="#000000" opacity="0.3" cx="12" cy="10" r="6"></circle>
                                      </g>
                                    </svg>
                                  </span>
                                  <!--end::Svg Icon-->
                                </span>
                              </span>
                            <!--end:Icon-->
                            <!--begin:Info-->
                              <span class="d-flex flex-column">
                                <span class="fw-bolder fs-6">Quick Online Courses</span>
                                <span class="fs-7 text-muted">Creating a clear text structure is just one SEO</span>
                              </span>
                            <!--end:Info-->
                            </span>
                          <!--end:Label-->
                          <!--begin:Input-->
                          <span class="form-check form-check-custom form-check-solid">
                              <input class="form-check-input" type="radio" name="category" value="1">
                            </span>
                          <!--end:Input-->
                        </label>
                        <!--end::Option-->
                        <!--begin:Option-->
                        <label class="d-flex flex-stack mb-5 cursor-pointer">
                          <!--begin:Label-->
                          <span class="d-flex align-items-center me-2">
                              <!--begin:Icon-->
                              <span class="symbol symbol-50px me-6">
                                <span class="symbol-label bg-light-danger">
                                  <!--begin::Svg Icon | path: icons/duotone/Layout/Layout-4-blocks-2.svg-->
                                  <span class="svg-icon svg-icon-1 svg-icon-danger">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="5" y="5" width="5" height="5" rx="1" fill="#000000"></rect>
                                        <rect x="14" y="5" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                        <rect x="5" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                        <rect x="14" y="14" width="5" height="5" rx="1" fill="#000000" opacity="0.3"></rect>
                                      </g>
                                    </svg>
                                  </span>
                                  <!--end::Svg Icon-->
                                </span>
                              </span>
                            <!--end:Icon-->
                            <!--begin:Info-->
                              <span class="d-flex flex-column">
                                <span class="fw-bolder fs-6">Face to Face Discussions</span>
                                <span class="fs-7 text-muted">Creating a clear text structure is just one aspect</span>
                              </span>
                            <!--end:Info-->
                            </span>
                          <!--end:Label-->
                          <!--begin:Input-->
                          <span class="form-check form-check-custom form-check-solid">
                              <input class="form-check-input" type="radio" name="category" value="2">
                            </span>
                          <!--end:Input-->
                        </label>
                        <!--end::Option-->
                        <!--begin:Option-->
                        <label class="d-flex flex-stack cursor-pointer">
                          <!--begin:Label-->
                          <span class="d-flex align-items-center me-2">
                              <!--begin:Icon-->
                              <span class="symbol symbol-50px me-6">
                                <span class="symbol-label bg-light-success">
                                  <!--begin::Svg Icon | path: icons/duotone/Devices/Watch1.svg-->
                                  <span class="svg-icon svg-icon-1 svg-icon-success">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                      <path d="M9,8 C8.44771525,8 8,8.44771525 8,9 L8,15 C8,15.5522847 8.44771525,16 9,16 L15,16 C15.5522847,16 16,15.5522847 16,15 L16,9 C16,8.44771525 15.5522847,8 15,8 L9,8 Z M9,6 L15,6 C16.6568542,6 18,7.34314575 18,9 L18,15 C18,16.6568542 16.6568542,18 15,18 L9,18 C7.34314575,18 6,16.6568542 6,15 L6,9 C6,7.34314575 7.34314575,6 9,6 Z" fill="#000000" fill-rule="nonzero"></path>
                                      <path d="M9,8 C8.44771525,8 8,8.44771525 8,9 L8,15 C8,15.5522847 8.44771525,16 9,16 L15,16 C15.5522847,16 16,15.5522847 16,15 L16,9 C16,8.44771525 15.5522847,8 15,8 L9,8 Z" fill="#000000" opacity="0.3"></path>
                                      <path d="M9,18 L15,18 L15,20.5 C15,21.3284271 14.3284271,22 13.5,22 L10.5,22 C9.67157288,22 9,21.3284271 9,20.5 L9,18 Z" fill="#000000" opacity="0.3"></path>
                                      <path d="M10.5,2 L13.5,2 C14.3284271,2 15,2.67157288 15,3.5 L15,6 L9,6 L9,3.5 C9,2.67157288 9.67157288,2 10.5,2 Z" fill="#000000" opacity="0.3"></path>
                                    </svg>
                                  </span>
                                  <!--end::Svg Icon-->
                                </span>
                              </span>
                            <!--end:Icon-->
                            <!--begin:Info-->
                              <span class="d-flex flex-column">
                                <span class="fw-bolder fs-6">Full Intro Training</span>
                                <span class="fs-7 text-muted">Creating a clear text structure copywriting</span>
                              </span>
                            <!--end:Info-->
                            </span>
                          <!--end:Label-->
                          <!--begin:Input-->
                          <span class="form-check form-check-custom form-check-solid">
                              <input class="form-check-input" type="radio" name="category" value="3">
                            <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></span>
                          <!--end:Input-->
                        </label>
                        <!--end::Option-->
                      </div>
                      <!--end:Options-->
                    </div>
                    <!--end::Input group-->
                  </div>
                </div>
                <!--end::Step 1-->
                <!--begin::Step 2-->
                <div data-kt-stepper-element="content">
                  <div class="w-100">
                    <!--begin::Input group-->
                    <div class="fv-row fv-plugins-icon-container">
                      <!--begin::Label-->
                      <label class="d-flex align-items-center fs-5 fw-bold mb-4">
                        <span class="required">Select Framework</span>
                        <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify your apps framework" aria-label="Specify your apps framework"></i>
                      </label>
                      <!--end::Label-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer mb-5">
                        <!--begin:Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin:Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-warning">
                                <i class="fab fa-html5 text-warning fs-2x"></i>
                              </span>
                            </span>
                          <!--end:Icon-->
                          <!--begin:Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">HTML5</span>
                              <span class="fs-7 text-muted">Base Web Projec</span>
                            </span>
                          <!--end:Info-->
                          </span>
                        <!--end:Label-->
                        <!--begin:Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" checked="checked" name="framework" value="1">
                          </span>
                        <!--end:Input-->
                      </label>
                      <!--end::Option-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer mb-5">
                        <!--begin:Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin:Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-success">
                                <i class="fab fa-react text-success fs-2x"></i>
                              </span>
                            </span>
                          <!--end:Icon-->
                          <!--begin:Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">ReactJS</span>
                              <span class="fs-7 text-muted">Robust and flexible app framework</span>
                            </span>
                          <!--end:Info-->
                          </span>
                        <!--end:Label-->
                        <!--begin:Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" name="framework" value="2">
                          </span>
                        <!--end:Input-->
                      </label>
                      <!--end::Option-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer mb-5">
                        <!--begin:Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin:Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-danger">
                                <i class="fab fa-angular text-danger fs-2x"></i>
                              </span>
                            </span>
                          <!--end:Icon-->
                          <!--begin:Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">Angular</span>
                              <span class="fs-7 text-muted">Powerful data mangement</span>
                            </span>
                          <!--end:Info-->
                          </span>
                        <!--end:Label-->
                        <!--begin:Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" name="framework" value="3">
                          </span>
                        <!--end:Input-->
                      </label>
                      <!--end::Option-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer">
                        <!--begin:Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin:Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-primary">
                                <i class="fab fa-vuejs text-primary fs-2x"></i>
                              </span>
                            </span>
                          <!--end:Icon-->
                          <!--begin:Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">Vue</span>
                              <span class="fs-7 text-muted">Lightweight and responsive framework</span>
                            </span>
                          <!--end:Info-->
                          </span>
                        <!--end:Label-->
                        <!--begin:Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" name="framework" value="4">
                          <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></span>
                        <!--end:Input-->
                      </label>
                      <!--end::Option-->
                    </div>
                    <!--end::Input group-->
                  </div>
                </div>
                <!--end::Step 2-->
                <!--begin::Step 3-->
                <div data-kt-stepper-element="content">
                  <div class="w-100">
                    <!--begin::Input group-->
                    <div class="fv-row mb-10 fv-plugins-icon-container">
                      <!--begin::Label-->
                      <label class="required fs-5 fw-bold mb-2">Database Name</label>
                      <!--end::Label-->
                      <!--begin::Input-->
                      <input type="text" class="form-control form-control-lg form-control-solid" name="dbname" placeholder="" value="master_db">
                      <!--end::Input-->
                      <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="fv-row fv-plugins-icon-container">
                      <!--begin::Label-->
                      <label class="d-flex align-items-center fs-5 fw-bold mb-4">
                        <span class="required">Select Database Engine</span>
                        <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Select your app database engine" aria-label="Select your app database engine"></i>
                      </label>
                      <!--end::Label-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer mb-5">
                        <!--begin::Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin::Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-success">
                                <i class="fas fa-database text-success fs-2x"></i>
                              </span>
                            </span>
                          <!--end::Icon-->
                          <!--begin::Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">MySQL</span>
                              <span class="fs-7 text-muted">Basic MySQL database</span>
                            </span>
                          <!--end::Info-->
                          </span>
                        <!--end::Label-->
                        <!--begin::Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" name="dbengine" checked="checked" value="1">
                          </span>
                        <!--end::Input-->
                      </label>
                      <!--end::Option-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer mb-5">
                        <!--begin::Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin::Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-danger">
                                <i class="fab fa-google text-danger fs-2x"></i>
                              </span>
                            </span>
                          <!--end::Icon-->
                          <!--begin::Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">Firebase</span>
                              <span class="fs-7 text-muted">Google based app data management</span>
                            </span>
                          <!--end::Info-->
                          </span>
                        <!--end::Label-->
                        <!--begin::Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" name="dbengine" value="2">
                          </span>
                        <!--end::Input-->
                      </label>
                      <!--end::Option-->
                      <!--begin:Option-->
                      <label class="d-flex flex-stack cursor-pointer">
                        <!--begin::Label-->
                        <span class="d-flex align-items-center me-2">
                            <!--begin::Icon-->
                            <span class="symbol symbol-50px me-6">
                              <span class="symbol-label bg-light-warning">
                                <i class="fab fa-amazon text-warning fs-2x"></i>
                              </span>
                            </span>
                          <!--end::Icon-->
                          <!--begin::Info-->
                            <span class="d-flex flex-column">
                              <span class="fw-bolder fs-6">DynamoDB</span>
                              <span class="fs-7 text-muted">Amazon Fast NoSQL Database</span>
                            </span>
                          <!--end::Info-->
                          </span>
                        <!--end::Label-->
                        <!--begin::Input-->
                        <span class="form-check form-check-custom form-check-solid">
                            <input class="form-check-input" type="radio" name="dbengine" value="3">
                          <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></span>
                        <!--end::Input-->
                      </label>
                      <!--end::Option-->
                    </div>
                    <!--end::Input group-->
                  </div>
                </div>
                <!--end::Step 3-->
                <!--begin::Step 4-->
                <div data-kt-stepper-element="content">
                  <div class="w-100">
                    <!--begin::Input group-->
                    <div class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
                      <!--begin::Label-->
                      <label class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                        <span class="required">Name On Card</span>
                        <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Specify a card holder's name" aria-label="Specify a card holder's name"></i>
                      </label>
                      <!--end::Label-->
                      <input type="text" class="form-control form-control-solid" placeholder="" name="card_name" value="Max Doe">
                      <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="d-flex flex-column mb-7 fv-row fv-plugins-icon-container">
                      <!--begin::Label-->
                      <label class="required fs-6 fw-bold form-label mb-2">Card Number</label>
                      <!--end::Label-->
                      <!--begin::Input wrapper-->
                      <div class="position-relative">
                        <!--begin::Input-->
                        <input type="text" class="form-control form-control-solid" placeholder="Enter card number" name="card_number" value="4111 1111 1111 1111">
                        <!--end::Input-->
                        <!--begin::Card logos-->
                        <div class="position-absolute translate-middle-y top-50 end-0 me-5">
                          <img src="/metronic8/demo1/assets/media/svg/card-logos/visa.svg" alt="" class="h-25px">
                          <img src="/metronic8/demo1/assets/media/svg/card-logos/mastercard.svg" alt="" class="h-25px">
                          <img src="/metronic8/demo1/assets/media/svg/card-logos/american-express.svg" alt="" class="h-25px">
                        </div>
                        <!--end::Card logos-->
                      </div>
                      <!--end::Input wrapper-->
                      <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="row mb-10">
                      <!--begin::Col-->
                      <div class="col-md-8 fv-row">
                        <!--begin::Label-->
                        <label class="required fs-6 fw-bold form-label mb-2">Expiration Date</label>
                        <!--end::Label-->
                        <!--begin::Row-->
                        <div class="row fv-row fv-plugins-icon-container">
                          <!--begin::Col-->
                          <div class="col-6">
                            <select name="card_expiry_month" class="form-select form-select-solid select2-hidden-accessible" data-control="select2" data-hide-search="true" data-placeholder="Month" data-select2-id="select2-data-64-cohj" tabindex="-1" aria-hidden="true">
                              <option data-select2-id="select2-data-66-yel9"></option>
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                              <option value="9">9</option>
                              <option value="10">10</option>
                              <option value="11">11</option>
                              <option value="12">12</option>
                            </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-22-ct85" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-card_expiry_month-x6-container" aria-controls="select2-card_expiry_month-x6-container"><span class="select2-selection__rendered" id="select2-card_expiry_month-x6-container" role="textbox" aria-readonly="true" title="Month"><span class="select2-selection__placeholder">Month</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-22-5sk6" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-card_expiry_month-r1-container" aria-controls="select2-card_expiry_month-r1-container"><span class="select2-selection__rendered" id="select2-card_expiry_month-r1-container" role="textbox" aria-readonly="true" title="Month"><span class="select2-selection__placeholder">Month</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-22-1c04" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-card_expiry_month-py-container" aria-controls="select2-card_expiry_month-py-container"><span class="select2-selection__rendered" id="select2-card_expiry_month-py-container" role="textbox" aria-readonly="true" title="Month"><span class="select2-selection__placeholder">Month</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-65-5ve5" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-card_expiry_month-97-container" aria-controls="select2-card_expiry_month-97-container"><span class="select2-selection__rendered" id="select2-card_expiry_month-97-container" role="textbox" aria-readonly="true" title="Month"><span class="select2-selection__placeholder">Month</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                          <!--end::Col-->
                          <!--begin::Col-->
                          <div class="col-6">
                            <select name="card_expiry_year" class="form-select form-select-solid select2-hidden-accessible" data-control="select2" data-hide-search="true" data-placeholder="Year" data-select2-id="select2-data-67-qeg0" tabindex="-1" aria-hidden="true">
                              <option data-select2-id="select2-data-69-5h6e"></option>
                              <option value="2021">2021</option>
                              <option value="2022">2022</option>
                              <option value="2023">2023</option>
                              <option value="2024">2024</option>
                              <option value="2025">2025</option>
                              <option value="2026">2026</option>
                              <option value="2027">2027</option>
                              <option value="2028">2028</option>
                              <option value="2029">2029</option>
                              <option value="2030">2030</option>
                              <option value="2031">2031</option>
                            </select><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-23-7liq" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-card_expiry_year-nu-container" aria-controls="select2-card_expiry_year-nu-container"><span class="select2-selection__rendered" id="select2-card_expiry_year-nu-container" role="textbox" aria-readonly="true" title="Year"><span class="select2-selection__placeholder">Year</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-23-yy64" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-card_expiry_year-rq-container" aria-controls="select2-card_expiry_year-rq-container"><span class="select2-selection__rendered" id="select2-card_expiry_year-rq-container" role="textbox" aria-readonly="true" title="Year"><span class="select2-selection__placeholder">Year</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-23-yrvw" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false" aria-labelledby="select2-card_expiry_year-xk-container" aria-controls="select2-card_expiry_year-xk-container"><span class="select2-selection__rendered" id="select2-card_expiry_year-xk-container" role="textbox" aria-readonly="true" title="Year"><span class="select2-selection__placeholder">Year</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span><span class="select2 select2-container select2-container--bootstrap5" dir="ltr" data-select2-id="select2-data-68-zvzj" style="width: 100%;"><span class="selection"><span class="select2-selection select2-selection--single form-select form-select-solid" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-card_expiry_year-bl-container" aria-controls="select2-card_expiry_year-bl-container"><span class="select2-selection__rendered" id="select2-card_expiry_year-bl-container" role="textbox" aria-readonly="true" title="Year"><span class="select2-selection__placeholder">Year</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                            <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                          <!--end::Col-->
                        </div>
                        <!--end::Row-->
                      </div>
                      <!--end::Col-->
                      <!--begin::Col-->
                      <div class="col-md-4 fv-row fv-plugins-icon-container">
                        <!--begin::Label-->
                        <label class="d-flex align-items-center fs-6 fw-bold form-label mb-2">
                          <span class="required">CVV</span>
                          <i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="" data-bs-original-title="Enter a card CVV code" aria-label="Enter a card CVV code"></i>
                        </label>
                        <!--end::Label-->
                        <!--begin::Input wrapper-->
                        <div class="position-relative">
                          <!--begin::Input-->
                          <input type="text" class="form-control form-control-solid" minlength="3" maxlength="4" placeholder="CVV" name="card_cvv">
                          <!--end::Input-->
                          <!--begin::CVV icon-->
                          <div class="position-absolute translate-middle-y top-50 end-0 me-3">
                            <!--begin::Svg Icon | path: icons/duotone/Shopping/Credit-card.svg-->
                            <span class="svg-icon svg-icon-2hx">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24"></rect>
                                    <rect fill="#000000" opacity="0.3" x="2" y="5" width="20" height="14" rx="2"></rect>
                                    <rect fill="#000000" x="2" y="8" width="20" height="3"></rect>
                                    <rect fill="#000000" opacity="0.3" x="16" y="14" width="4" height="2" rx="1"></rect>
                                  </g>
                                </svg>
                              </span>
                            <!--end::Svg Icon-->
                          </div>
                          <!--end::CVV icon-->
                        </div>
                        <!--end::Input wrapper-->
                        <div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div><div class="fv-plugins-message-container invalid-feedback"></div></div>
                      <!--end::Col-->
                    </div>
                    <!--end::Input group-->
                    <!--begin::Input group-->
                    <div class="d-flex flex-stack">
                      <!--begin::Label-->
                      <div class="me-5">
                        <label class="fs-6 fw-bold form-label">Save Card for further billing?</label>
                        <div class="fs-7 fw-bold text-gray-400">If you need more info, please check budget planning</div>
                      </div>
                      <!--end::Label-->
                      <!--begin::Switch-->
                      <label class="form-check form-switch form-check-custom form-check-solid">
                        <input class="form-check-input" type="checkbox" value="1" checked="checked">
                        <span class="form-check-label fw-bold text-gray-400">Save Card</span>
                      </label>
                      <!--end::Switch-->
                    </div>
                    <!--end::Input group-->
                  </div>
                </div>
                <!--end::Step 4-->
                <!--begin::Step 5-->
                <div data-kt-stepper-element="content">
                  <div class="w-100 text-center">
                    <!--begin::Heading-->
                    <h1 class="fw-bolder text-dark mb-3">Release!</h1>
                    <!--end::Heading-->
                    <!--begin::Description-->
                    <div class="text-muted fw-bold fs-3">Submit your app to kickstart your project.</div>
                    <!--end::Description-->
                    <!--begin::Illustration-->
                    <div class="text-center px-4 py-15">
                      <img src="/metronic8/demo1/assets/media/illustrations/todo.png" alt="" class="mw-100 mh-150px">
                    </div>
                    <!--end::Illustration-->
                  </div>
                </div>
                <!--end::Step 5-->
                <!--begin::Actions-->
                <div class="d-flex flex-stack pt-10">
                  <!--begin::Wrapper-->
                  <div class="me-2">
                    <button type="button" class="btn btn-lg btn-light-primary me-3" data-kt-stepper-action="previous">
                      <!--begin::Svg Icon | path: icons/duotone/Navigation/Left-2.svg-->
                      <span class="svg-icon svg-icon-3 me-1">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <polygon points="0 0 24 0 24 24 0 24"></polygon>
                            <rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000)" x="14" y="7" width="2" height="10" rx="1"></rect>
                            <path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997)"></path>
                          </g>
                        </svg>
                      </span>
                      <!--end::Svg Icon-->Back</button>
                  </div>
                  <!--end::Wrapper-->
                  <!--begin::Wrapper-->
                  <div>
                    <button type="button" class="btn btn-lg btn-primary" data-kt-stepper-action="submit">
                        <span class="indicator-label">Submit
                          <!--begin::Svg Icon | path: icons/duotone/Navigation/Right-2.svg-->
                        <span class="svg-icon svg-icon-3 ms-2 me-0">
                          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                              <polygon points="0 0 24 0 24 24 0 24"></polygon>
                              <rect fill="#000000" opacity="0.5" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1"></rect>
                              <path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)"></path>
                            </g>
                          </svg>
                        </span>
                          <!--end::Svg Icon--></span>
                      <span class="indicator-progress">Please wait...
                        <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                    </button>
                    <button type="button" class="btn btn-lg btn-primary" data-kt-stepper-action="next">Continue
                      <!--begin::Svg Icon | path: icons/duotone/Navigation/Right-2.svg-->
                      <span class="svg-icon svg-icon-3 ms-1 me-0">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <polygon points="0 0 24 0 24 24 0 24"></polygon>
                            <rect fill="#000000" opacity="0.5" transform="translate(8.500000, 12.000000) rotate(-90.000000) translate(-8.500000, -12.000000)" x="7.5" y="7.5" width="2" height="9" rx="1"></rect>
                            <path d="M9.70710318,15.7071045 C9.31657888,16.0976288 8.68341391,16.0976288 8.29288961,15.7071045 C7.90236532,15.3165802 7.90236532,14.6834152 8.29288961,14.2928909 L14.2928896,8.29289093 C14.6714686,7.914312 15.281055,7.90106637 15.675721,8.26284357 L21.675721,13.7628436 C22.08284,14.136036 22.1103429,14.7686034 21.7371505,15.1757223 C21.3639581,15.5828413 20.7313908,15.6103443 20.3242718,15.2371519 L15.0300721,10.3841355 L9.70710318,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(14.999999, 11.999997) scale(1, -1) rotate(90.000000) translate(-14.999999, -11.999997)"></path>
                          </g>
                        </svg>
                      </span>
                      <!--end::Svg Icon--></button>
                  </div>
                  <!--end::Wrapper-->
                </div>
                <!--end::Actions-->
                <div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></form>
              <!--end::Form-->
            </div>
            <!--end::Content-->
          </div>
          <!--end::Stepper-->
        </div>
        <!--end::Modal body-->
      </div>
      <!--end::Modal content-->
    </div>
    <!--end::Modal dialog-->
  </div>
  <!--end::Modal - Create App-->
  <!--begin::Modal - Upgrade plan-->
  <div class="modal fade" id="kt_modal_upgrade_plan" tabindex="-1" aria-hidden="true">
    <!--begin::Modal dialog-->
    <div class="modal-dialog modal-xl">
      <!--begin::Modal content-->
      <div class="modal-content rounded">
        <!--begin::Modal header-->
        <div class="modal-header justify-content-end border-0 pb-0">
          <!--begin::Close-->
          <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
            <!--begin::Svg Icon | path: icons/duotone/Navigation/Close.svg-->
            <span class="svg-icon svg-icon-1">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
            <!--end::Svg Icon-->
          </div>
          <!--end::Close-->
        </div>
        <!--end::Modal header-->
        <!--begin::Modal body-->
        <div class="modal-body pt-0 pb-15 px-5 px-xl-20">
          <!--begin::Heading-->
          <div class="mb-13 text-center">
            <h1 class="mb-3">Upgrade a Plan</h1>
            <div class="text-gray-400 fw-bold fs-5">If you need more info, please check
              <a href="#" class="link-primary fw-bolder">Pricing Guidelines</a>.</div>
          </div>
          <!--end::Heading-->
          <!--begin::Plans-->
          <div class="d-flex flex-column">
            <!--begin::Nav group-->
            <div class="nav-group nav-group-outline mx-auto" data-kt-buttons="true">
              <a href="#" class="btn btn-color-gray-400 btn-active btn-active-secondary px-6 py-3 me-2 active" data-kt-plan="month">Monthly</a>
              <a href="#" class="btn btn-color-gray-400 btn-active btn-active-secondary px-6 py-3" data-kt-plan="annual">Annual</a>
            </div>
            <!--end::Nav group-->
            <!--begin::Row-->
            <div class="row mt-10">
              <!--begin::Col-->
              <div class="col-lg-6 mb-10 mb-lg-0">
                <!--begin::Tabs-->
                <div class="nav flex-column">
                  <!--begin::Tab link-->
                  <div class="nav-link btn btn-outline btn-outline-dashed btn-color-dark btn-active btn-active-primary d-flex flex-stack text-start p-6 active mb-6" data-bs-toggle="tab" data-bs-target="#kt_upgrade_plan_startup">
                    <!--end::Description-->
                    <div class="d-flex align-items-center me-2">
                      <!--begin::Radio-->
                      <div class="form-check form-check-custom form-check-solid form-check-success me-6">
                        <input class="form-check-input" type="radio" name="plan" checked="checked" value="startup">
                      </div>
                      <!--end::Radio-->
                      <!--begin::Info-->
                      <div class="flex-grow-1">
                        <h2 class="d-flex align-items-center fs-2 fw-bolder flex-wrap">Startup</h2>
                        <div class="fw-bold opacity-50">Best for startups</div>
                      </div>
                      <!--end::Info-->
                    </div>
                    <!--end::Description-->
                    <!--begin::Price-->
                    <div class="ms-5">
                      <span class="mb-2">$</span>
                      <span class="fs-3x fw-bolder" data-kt-plan-price-month="39" data-kt-plan-price-annual="399">39</span>
                      <span class="fs-7 opacity-50">/
                        <span data-kt-element="period">Mon</span></span>
                    </div>
                    <!--end::Price-->
                  </div>
                  <!--end::Tab link-->
                  <!--begin::Tab link-->
                  <div class="nav-link btn btn-outline btn-outline-dashed btn-color-dark btn-active btn-active-primary d-flex flex-stack text-start p-6 mb-6" data-bs-toggle="tab" data-bs-target="#kt_upgrade_plan_advanced">
                    <!--end::Description-->
                    <div class="d-flex align-items-center me-2">
                      <!--begin::Radio-->
                      <div class="form-check form-check-custom form-check-solid form-check-success me-6">
                        <input class="form-check-input" type="radio" name="plan" value="advanced">
                      </div>
                      <!--end::Radio-->
                      <!--begin::Info-->
                      <div class="flex-grow-1">
                        <h2 class="d-flex align-items-center fs-2 fw-bolder flex-wrap">Advanced</h2>
                        <div class="fw-bold opacity-50">Best for 100+ team size</div>
                      </div>
                      <!--end::Info-->
                    </div>
                    <!--end::Description-->
                    <!--begin::Price-->
                    <div class="ms-5">
                      <span class="mb-2">$</span>
                      <span class="fs-3x fw-bolder" data-kt-plan-price-month="339" data-kt-plan-price-annual="3399">339</span>
                      <span class="fs-7 opacity-50">/
                        <span data-kt-element="period">Mon</span></span>
                    </div>
                    <!--end::Price-->
                  </div>
                  <!--end::Tab link-->
                  <!--begin::Tab link-->
                  <div class="nav-link btn btn-outline btn-outline-dashed btn-color-dark btn-active btn-active-primary d-flex flex-stack text-start p-6 mb-6" data-bs-toggle="tab" data-bs-target="#kt_upgrade_plan_enterprise">
                    <!--end::Description-->
                    <div class="d-flex align-items-center me-2">
                      <!--begin::Radio-->
                      <div class="form-check form-check-custom form-check-solid form-check-success me-6">
                        <input class="form-check-input" type="radio" name="plan" value="enterprise">
                      </div>
                      <!--end::Radio-->
                      <!--begin::Info-->
                      <div class="flex-grow-1">
                        <h2 class="d-flex align-items-center fs-2 fw-bolder flex-wrap">Enterprise
                          <span class="badge badge-light-success ms-2 fs-7">Most popular</span></h2>
                        <div class="fw-bold opacity-50">Best value for 1000+ team</div>
                      </div>
                      <!--end::Info-->
                    </div>
                    <!--end::Description-->
                    <!--begin::Price-->
                    <div class="ms-5">
                      <span class="mb-2">$</span>
                      <span class="fs-3x fw-bolder" data-kt-plan-price-month="999" data-kt-plan-price-annual="9999">999</span>
                      <span class="fs-7 opacity-50">/
                        <span data-kt-element="period">Mon</span></span>
                    </div>
                    <!--end::Price-->
                  </div>
                  <!--end::Tab link-->
                  <!--begin::Tab link-->
                  <div class="nav-link btn btn-outline btn-outline-dashed btn-color-dark d-flex flex-stack text-start p-6">
                    <!--end::Description-->
                    <div class="d-flex align-items-center me-2">
                      <!--begin::Radio-->
                      <div class="form-check form-check-custom form-check-solid form-check-success me-6">
                        <input class="form-check-input" type="radio" name="plan" value="custom">
                      </div>
                      <!--end::Radio-->
                      <!--begin::Info-->
                      <div class="flex-grow-1">
                        <h2 class="d-flex align-items-center fs-2 fw-bolder flex-wrap">Custom</h2>
                        <div class="fw-bold opacity-50">Requet a custom license</div>
                      </div>
                      <!--end::Info-->
                    </div>
                    <!--end::Description-->
                    <!--begin::Price-->
                    <div class="ms-5">
                      <a href="#" class="btn btn-sm btn-primary">Contact Us</a>
                    </div>
                    <!--end::Price-->
                  </div>
                  <!--end::Tab link-->
                </div>
                <!--end::Tabs-->
              </div>
              <!--end::Col-->
              <!--begin::Col-->
              <div class="col-lg-6">
                <!--begin::Tab content-->
                <div class="tab-content rounded h-100 bg-light p-10">
                  <!--begin::Tab Pane-->
                  <div class="tab-pane fade show active" id="kt_upgrade_plan_startup">
                    <!--begin::Heading-->
                    <div class="pb-5">
                      <h2 class="fw-bolder text-dark">Whatâ€™s in Startup Plan?</h2>
                      <div class="text-gray-400 fw-bold">Optimal for 10+ team size and new startup</div>
                    </div>
                    <!--end::Heading-->
                    <!--begin::Body-->
                    <div class="pt-1">
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Up to 10 Active Users</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Up to 30 Project Integrations</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Analytics Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-400 flex-grow-1">Finance Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Error-circle.svg-->
                        <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M12.0355339,10.6213203 L14.863961,7.79289322 C15.2544853,7.40236893 15.8876503,7.40236893 16.2781746,7.79289322 C16.6686989,8.18341751 16.6686989,8.81658249 16.2781746,9.20710678 L13.4497475,12.0355339 L16.2781746,14.863961 C16.6686989,15.2544853 16.6686989,15.8876503 16.2781746,16.2781746 C15.8876503,16.6686989 15.2544853,16.6686989 14.863961,16.2781746 L12.0355339,13.4497475 L9.20710678,16.2781746 C8.81658249,16.6686989 8.18341751,16.6686989 7.79289322,16.2781746 C7.40236893,15.8876503 7.40236893,15.2544853 7.79289322,14.863961 L10.6213203,12.0355339 L7.79289322,9.20710678 C7.40236893,8.81658249 7.40236893,8.18341751 7.79289322,7.79289322 C8.18341751,7.40236893 8.81658249,7.40236893 9.20710678,7.79289322 L12.0355339,10.6213203 Z" fill="#000000"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-400 flex-grow-1">Accounting Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Error-circle.svg-->
                        <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M12.0355339,10.6213203 L14.863961,7.79289322 C15.2544853,7.40236893 15.8876503,7.40236893 16.2781746,7.79289322 C16.6686989,8.18341751 16.6686989,8.81658249 16.2781746,9.20710678 L13.4497475,12.0355339 L16.2781746,14.863961 C16.6686989,15.2544853 16.6686989,15.8876503 16.2781746,16.2781746 C15.8876503,16.6686989 15.2544853,16.6686989 14.863961,16.2781746 L12.0355339,13.4497475 L9.20710678,16.2781746 C8.81658249,16.6686989 8.18341751,16.6686989 7.79289322,16.2781746 C7.40236893,15.8876503 7.40236893,15.2544853 7.79289322,14.863961 L10.6213203,12.0355339 L7.79289322,9.20710678 C7.40236893,8.81658249 7.40236893,8.18341751 7.79289322,7.79289322 C8.18341751,7.40236893 8.81658249,7.40236893 9.20710678,7.79289322 L12.0355339,10.6213203 Z" fill="#000000"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-400 flex-grow-1">Network Platform</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Error-circle.svg-->
                        <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M12.0355339,10.6213203 L14.863961,7.79289322 C15.2544853,7.40236893 15.8876503,7.40236893 16.2781746,7.79289322 C16.6686989,8.18341751 16.6686989,8.81658249 16.2781746,9.20710678 L13.4497475,12.0355339 L16.2781746,14.863961 C16.6686989,15.2544853 16.6686989,15.8876503 16.2781746,16.2781746 C15.8876503,16.6686989 15.2544853,16.6686989 14.863961,16.2781746 L12.0355339,13.4497475 L9.20710678,16.2781746 C8.81658249,16.6686989 8.18341751,16.6686989 7.79289322,16.2781746 C7.40236893,15.8876503 7.40236893,15.2544853 7.79289322,14.863961 L10.6213203,12.0355339 L7.79289322,9.20710678 C7.40236893,8.81658249 7.40236893,8.18341751 7.79289322,7.79289322 C8.18341751,7.40236893 8.81658249,7.40236893 9.20710678,7.79289322 L12.0355339,10.6213203 Z" fill="#000000"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center">
                        <span class="fw-bold fs-5 text-gray-400 flex-grow-1">Unlimited Cloud Space</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Error-circle.svg-->
                        <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M12.0355339,10.6213203 L14.863961,7.79289322 C15.2544853,7.40236893 15.8876503,7.40236893 16.2781746,7.79289322 C16.6686989,8.18341751 16.6686989,8.81658249 16.2781746,9.20710678 L13.4497475,12.0355339 L16.2781746,14.863961 C16.6686989,15.2544853 16.6686989,15.8876503 16.2781746,16.2781746 C15.8876503,16.6686989 15.2544853,16.6686989 14.863961,16.2781746 L12.0355339,13.4497475 L9.20710678,16.2781746 C8.81658249,16.6686989 8.18341751,16.6686989 7.79289322,16.2781746 C7.40236893,15.8876503 7.40236893,15.2544853 7.79289322,14.863961 L10.6213203,12.0355339 L7.79289322,9.20710678 C7.40236893,8.81658249 7.40236893,8.18341751 7.79289322,7.79289322 C8.18341751,7.40236893 8.81658249,7.40236893 9.20710678,7.79289322 L12.0355339,10.6213203 Z" fill="#000000"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                    </div>
                    <!--end::Body-->
                  </div>
                  <!--end::Tab Pane-->
                  <!--begin::Tab Pane-->
                  <div class="tab-pane fade" id="kt_upgrade_plan_advanced">
                    <!--begin::Heading-->
                    <div class="pb-5">
                      <h2 class="fw-bolder text-dark">Whatâ€™s in Startup Plan?</h2>
                      <div class="text-gray-400 fw-bold">Optimal for 100+ team size and grown company</div>
                    </div>
                    <!--end::Heading-->
                    <!--begin::Body-->
                    <div class="pt-1">
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Up to 10 Active Users</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Up to 30 Project Integrations</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Analytics Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Finance Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Accounting Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-400 flex-grow-1">Network Platform</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Error-circle.svg-->
                        <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M12.0355339,10.6213203 L14.863961,7.79289322 C15.2544853,7.40236893 15.8876503,7.40236893 16.2781746,7.79289322 C16.6686989,8.18341751 16.6686989,8.81658249 16.2781746,9.20710678 L13.4497475,12.0355339 L16.2781746,14.863961 C16.6686989,15.2544853 16.6686989,15.8876503 16.2781746,16.2781746 C15.8876503,16.6686989 15.2544853,16.6686989 14.863961,16.2781746 L12.0355339,13.4497475 L9.20710678,16.2781746 C8.81658249,16.6686989 8.18341751,16.6686989 7.79289322,16.2781746 C7.40236893,15.8876503 7.40236893,15.2544853 7.79289322,14.863961 L10.6213203,12.0355339 L7.79289322,9.20710678 C7.40236893,8.81658249 7.40236893,8.18341751 7.79289322,7.79289322 C8.18341751,7.40236893 8.81658249,7.40236893 9.20710678,7.79289322 L12.0355339,10.6213203 Z" fill="#000000"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center">
                        <span class="fw-bold fs-5 text-gray-400 flex-grow-1">Unlimited Cloud Space</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Error-circle.svg-->
                        <span class="svg-icon svg-icon-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M12.0355339,10.6213203 L14.863961,7.79289322 C15.2544853,7.40236893 15.8876503,7.40236893 16.2781746,7.79289322 C16.6686989,8.18341751 16.6686989,8.81658249 16.2781746,9.20710678 L13.4497475,12.0355339 L16.2781746,14.863961 C16.6686989,15.2544853 16.6686989,15.8876503 16.2781746,16.2781746 C15.8876503,16.6686989 15.2544853,16.6686989 14.863961,16.2781746 L12.0355339,13.4497475 L9.20710678,16.2781746 C8.81658249,16.6686989 8.18341751,16.6686989 7.79289322,16.2781746 C7.40236893,15.8876503 7.40236893,15.2544853 7.79289322,14.863961 L10.6213203,12.0355339 L7.79289322,9.20710678 C7.40236893,8.81658249 7.40236893,8.18341751 7.79289322,7.79289322 C8.18341751,7.40236893 8.81658249,7.40236893 9.20710678,7.79289322 L12.0355339,10.6213203 Z" fill="#000000"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                    </div>
                    <!--end::Body-->
                  </div>
                  <!--end::Tab Pane-->
                  <!--begin::Tab Pane-->
                  <div class="tab-pane fade" id="kt_upgrade_plan_enterprise">
                    <!--begin::Heading-->
                    <div class="pb-5">
                      <h2 class="fw-bolder text-dark">Whatâ€™s in Startup Plan?</h2>
                      <div class="text-gray-400 fw-bold">Optimal for 1000+ team and enterpise</div>
                    </div>
                    <!--end::Heading-->
                    <!--begin::Body-->
                    <div class="pt-1">
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Up to 10 Active Users</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Up to 30 Project Integrations</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Analytics Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Finance Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Accounting Module</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center mb-7">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Network Platform</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                      <!--begin::Item-->
                      <div class="d-flex align-items-center">
                        <span class="fw-bold fs-5 text-gray-700 flex-grow-1">Unlimited Cloud Space</span>
                        <!--begin::Svg Icon | path: icons/duotone/Code/Done-circle.svg-->
                        <span class="svg-icon svg-icon-1 svg-icon-success">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                              <circle fill="#000000" opacity="0.3" cx="12" cy="12" r="10"></circle>
                              <path d="M16.7689447,7.81768175 C17.1457787,7.41393107 17.7785676,7.39211077 18.1823183,7.76894473 C18.5860689,8.1457787 18.6078892,8.77856757 18.2310553,9.18231825 L11.2310553,16.6823183 C10.8654446,17.0740439 10.2560456,17.107974 9.84920863,16.7592566 L6.34920863,13.7592566 C5.92988278,13.3998345 5.88132125,12.7685345 6.2407434,12.3492086 C6.60016555,11.9298828 7.23146553,11.8813212 7.65079137,12.2407434 L10.4229928,14.616916 L16.7689447,7.81768175 Z" fill="#000000" fill-rule="nonzero"></path>
                            </svg>
                          </span>
                        <!--end::Svg Icon-->
                      </div>
                      <!--end::Item-->
                    </div>
                    <!--end::Body-->
                  </div>
                  <!--end::Tab Pane-->
                </div>
                <!--end::Tab content-->
              </div>
              <!--end::Col-->
            </div>
            <!--end::Row-->
          </div>
          <!--end::Plans-->
          <!--begin::Actions-->
          <div class="d-flex flex-center flex-row-fluid pt-12">
            <button type="reset" class="btn btn-white me-3" data-bs-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Upgrade Plan</button>
          </div>
          <!--end::Actions-->
        </div>
        <!--end::Modal body-->
      </div>
      <!--end::Modal content-->
    </div>
    <!--end::Modal dialog-->
  </div>
  <!--end::Modal - Upgrade plan-->
  <!--end::Modals-->
  <!--begin::Scrolltop-->
  <div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
    <!--begin::Svg Icon | path: icons/duotone/Navigation/Up-2.svg-->
    <span class="svg-icon">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
            <polygon points="0 0 24 0 24 24 0 24"></polygon>
            <rect fill="#000000" opacity="0.5" x="11" y="10" width="2" height="10" rx="1"></rect>
            <path d="M6.70710678,12.7071068 C6.31658249,13.0976311 5.68341751,13.0976311 5.29289322,12.7071068 C4.90236893,12.3165825 4.90236893,11.6834175 5.29289322,11.2928932 L11.2928932,5.29289322 C11.6714722,4.91431428 12.2810586,4.90106866 12.6757246,5.26284586 L18.6757246,10.7628459 C19.0828436,11.1360383 19.1103465,11.7686056 18.7371541,12.1757246 C18.3639617,12.5828436 17.7313944,12.6103465 17.3242754,12.2371541 L12.0300757,7.38413782 L6.70710678,12.7071068 Z" fill="#000000" fill-rule="nonzero"></path>
          </g>
        </svg>
      </span>
    <!--end::Svg Icon-->
  </div>
  <!--end::Scrolltop-->
  <!--end::Main-->
  <!--begin::Javascript-->
  <!--begin::Global Javascript Bundle(used by all pages)-->
  <script src="assets/plugins/global/plugins.bundle.js"></script>
  <script src="assets/js/scripts.bundle.js"></script>
  <!--end::Global Javascript Bundle-->
  <!--begin::Page Custom Javascript(used by this page)-->
  <script src="assets/js/custom/widgets.js"></script>
  <script src="assets/js/custom/apps/chat/chat.js"></script>
  <script src="assets/js/custom/modals/create-app.js"></script>
  <script src="assets/js/custom/modals/upgrade-plan.js"></script>
  <script src="assets/js/custom/intro.js"></script>
  <!--end::Page Custom Javascript-->
  <!--end::Javascript-->
  <!--Begin::Google Tag Manager (noscript) -->
  <noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5FS8GGP" height="0" width="0" style="display:none;visibility:hidden"></iframe>
  </noscript>
  <!--End::Google Tag Manager (noscript) -->
</div>
<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","738802870177541");fbq("track","PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=738802870177541&amp;ev=PageView&amp;noscript=1"></noscript>
</body><!--end::Body--></html>