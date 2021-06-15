<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.dev.xrpwebtools.Model.XRPConn" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
  ///request.getSession(false);
  XRPConn wallet = (XRPConn)session.getAttribute("dashboard");
%>
<html lang="en"><head><base href="../">
  <meta charset="utf-8">
  <title>XRP Wallet Tools</title>
  <meta name="description" content="XRP Wallet Tools, All in one platform manage XRP Wallet, Mint NFT and Sell/Buy NFT.">
  <meta name="keywords" content="XRP Wallet Tools">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="/metronic8/demo1/assets/media/logos/favicon.ico">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
  <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css">
  <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css">
  <style type="text/css">iframe#_hjRemoteVarsFrame {display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;}</style><style type="text/css">.apexcharts-canvas {
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
<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed toolbar-tablet-and-mobile-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px; --kt-toolbar-height-tablet-and-mobile:55px;" data-new-gr-c-s-check-loaded="8.876.0" data-gr-ext-installed="">
<div class="d-flex flex-column flex-root">
  <div class="page d-flex flex-row flex-column-fluid">
    <div id="kt_aside" class="aside aside-dark aside-hoverable" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_mobile_toggle" style="">
      <div class="aside-logo flex-column-auto" id="kt_aside_logo">
        <a href="/metronic8/demo1/index.html">
          <img alt="Logo" src="/metronic8/demo1/assets/media/logos/logo-1.svg" class="h-15px logo">
        </a>
        <div id="kt_aside_toggle" class="btn btn-icon w-auto px-0 btn-active-color-primary aside-toggle" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="aside-minimize">
          <span class="svg-icon svg-icon-1 rotate-180">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <polygon points="0 0 24 0 24 24 0 24"></polygon>
                    <path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999)"></path>
                    <path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.5" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999)"></path>
                  </g>
                </svg>
              </span>
        </div>
      </div>
      <div class="aside-menu flex-column-fluid">
        <div class="hover-scroll-overlay-y my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-offset="0" style="height: 298px;">
          <div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500" id="#kt_aside_menu" data-kt-menu="true">
            <div class="menu-item">
              <a class="menu-link active" href="/metronic8/demo1/index.html">
                    <span class="menu-icon">
                      <span class="svg-icon svg-icon-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3"></path>
                          <path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000"></path>
                        </svg>
                      </span>
                    </span>
                <span class="menu-title">Dashboard</span>
              </a>
            </div>
            <div class="menu-item">
              <a class="menu-link" href="/metronic8/demo1/landing.html">
                    <span class="menu-icon">
                      <span class="svg-icon svg-icon-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                          <polygon fill="#000000" opacity="0.3" points="5 3 19 3 23 8 1 8"></polygon>
                          <polygon fill="#000000" points="23 8 12 20 1 8"></polygon>
                        </svg>
                      </span>
                    </span>
                <span class="menu-title">NFT One-Click Creator</span>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="aside-footer flex-column-auto pt-5 pb-7 px-5" id="kt_aside_footer">
        <a href="/metronic8/demo1/documentation/getting-started.html" class="btn btn-custom btn-primary w-100" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-delay-show="8000" title="" data-bs-original-title="Check out the complete documentation with over 100 components">
          <span class="btn-label">Docs &amp; Components</span>
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
        </a>
      </div>
    </div>
    <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
      <div id="kt_header" style="" class="header align-items-stretch">
        <div class="container-fluid d-flex align-items-stretch justify-content-between">
          <div class="d-flex align-items-center d-lg-none ms-n3 me-1" title="Show aside menu">
            <div class="btn btn-icon btn-active-light-primary" id="kt_aside_mobile_toggle">
              <span class="svg-icon svg-icon-2x mt-1">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <rect x="0" y="0" width="24" height="24"></rect>
                        <rect fill="#000000" x="4" y="5" width="16" height="3" rx="1.5"></rect>
                        <path d="M5.5,15 L18.5,15 C19.3284271,15 20,15.6715729 20,16.5 C20,17.3284271 19.3284271,18 18.5,18 L5.5,18 C4.67157288,18 4,17.3284271 4,16.5 C4,15.6715729 4.67157288,15 5.5,15 Z M5.5,10 L18.5,10 C19.3284271,10 20,10.6715729 20,11.5 C20,12.3284271 19.3284271,13 18.5,13 L5.5,13 C4.67157288,13 4,12.3284271 4,11.5 C4,10.6715729 4.67157288,10 5.5,10 Z" fill="#000000" opacity="0.3"></path>
                      </g>
                    </svg>
                  </span>
            </div>
          </div>
          <div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
            <a href="/metronic8/demo1/index.html" class="d-lg-none">
              <img alt="Logo" src="/metronic8/demo1/assets/media/logos/logo-3.svg" class="h-30px">
            </a>
          </div>
          <div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
            <div class="d-flex align-items-stretch" id="kt_header_nav"><div class="header-menu align-items-stretch" data-kt-drawer="true" data-kt-drawer-name="header-menu" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_header_menu_mobile_toggle" data-kt-place="true" data-kt-place-mode="prepend" data-kt-place-parent="{default: '#kt_body', lg: '#kt_header_nav'}" style="">
              <div class="menu menu-lg-rounded menu-column menu-lg-row menu-state-bg menu-title-gray-700 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-400 fw-bold my-5 my-lg-0 align-items-stretch" id="#kt_header_menu" data-kt-menu="true">
                <div class="menu-item me-lg-1">
                  <a class="menu-link active py-3" href="/metronic8/demo1/index.html">
                    <span class="menu-title">Dashboard</span>
                  </a>
                </div>
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
      <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <div class="toolbar" id="kt_toolbar">
          <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack"><div data-kt-place="true" data-kt-place-mode="prepend" data-kt-place-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center me-3 flex-wrap mb-5 mb-lg-0 lh-1">
            <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">XRP Wallet Tools Dashboard WIP
              <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
              <small class="text-muted fs-7 fw-bold my-1 ms-1">#<%=session.getCreationTime()%></small>
              </h1>
          </div>
          </div>
        </div>
        <div class="post d-flex flex-column-fluid" id="kt_post">
          <div id="kt_content_container" class="container">
            <div class="row gy-5 g-xl-8">
              <div class="col-xxl-4">
                <div class="card card-xxl-stretch">
                  <div class="card-header border-0 bg-danger py-5">
                    <h3 class="card-title align-items-start flex-column">
                      <span class="fw-bolder mb-2 text-white">Your XRP Address :</span>
                      <span class="fw-bold fs-5 text-white"><%=wallet.classicAddress()%></span>
                      <p></p>
                      <img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&amp;data=<%=wallet.classicAddress()%>&amp;bgcolor=f1416c&color=fff" alt="" title="">
                    </h3>
                  </div>
                  <div class="card-body p-0" style="position: relative;">
                    <div class="mixed-widget-2-chart card-rounded-bottom bg-danger" data-kt-color="danger" style="height: 200px; min-height: 200px;"><div id="apexcharts0uxewn4w" class="apexcharts-canvas apexcharts0uxewn4w apexcharts-theme-light" style="width: 403px; height: 200px;"><svg id="SvgjsSvg3280" width="403" height="200" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent none repeat scroll 0% 0%;"><g id="SvgjsG3282" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs3281"><clipPath id="gridRectMask0uxewn4w"><rect id="SvgjsRect3285" width="410" height="203" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMask0uxewn4w"><rect id="SvgjsRect3286" width="407" height="204" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter3292" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood3293" flood-color="#cb1b46" flood-opacity="0.5" result="SvgjsFeFlood3293Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite3294" in="SvgjsFeFlood3293Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite3294Out"></feComposite><feOffset id="SvgjsFeOffset3295" dx="0" dy="5" result="SvgjsFeOffset3295Out" in="SvgjsFeComposite3294Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur3296" stdDeviation="3 " result="SvgjsFeGaussianBlur3296Out" in="SvgjsFeOffset3295Out"></feGaussianBlur><feBlend id="SvgjsFeBlend3297" in="SourceGraphic" in2="SvgjsFeGaussianBlur3296Out" mode="normal" result="SvgjsFeBlend3297Out"></feBlend></filter><filter id="SvgjsFilter3299" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood3300" flood-color="#cb1b46" flood-opacity="0.5" result="SvgjsFeFlood3300Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite3301" in="SvgjsFeFlood3300Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite3301Out"></feComposite><feOffset id="SvgjsFeOffset3302" dx="0" dy="5" result="SvgjsFeOffset3302Out" in="SvgjsFeComposite3301Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur3303" stdDeviation="3 " result="SvgjsFeGaussianBlur3303Out" in="SvgjsFeOffset3302Out"></feGaussianBlur><feBlend id="SvgjsFeBlend3304" in="SourceGraphic" in2="SvgjsFeGaussianBlur3303Out" mode="normal" result="SvgjsFeBlend3304Out"></feBlend></filter></defs><g id="SvgjsG3305" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3306" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG3315" class="apexcharts-grid"><g id="SvgjsG3316" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine3318" x1="0" y1="0" x2="403" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3319" x1="0" y1="20" x2="403" y2="20" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3320" x1="0" y1="40" x2="403" y2="40" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3321" x1="0" y1="60" x2="403" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3322" x1="0" y1="80" x2="403" y2="80" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3323" x1="0" y1="100" x2="403" y2="100" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3324" x1="0" y1="120" x2="403" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3325" x1="0" y1="140" x2="403" y2="140" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3326" x1="0" y1="160" x2="403" y2="160" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3327" x1="0" y1="180" x2="403" y2="180" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3328" x1="0" y1="200" x2="403" y2="200" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line></g><g id="SvgjsG3317" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine3330" x1="0" y1="200" x2="403" y2="200" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine3329" x1="0" y1="1" x2="0" y2="200" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG3287" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG3288" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath3291" d="M 0 200L 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100C 403 100 403 100 403 200M 403 100z" fill="transparent" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask0uxewn4w)" filter="url(#SvgjsFilter3292)" pathTo="M 0 200L 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100C 403 100 403 100 403 200M 403 100z" pathFrom="M -1 200L -1 200L 67.16666666666667 200L 134.33333333333334 200L 201.5 200L 268.6666666666667 200L 335.8333333333333 200L 403 200"></path><path id="SvgjsPath3298" d="M 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100" fill="none" fill-opacity="1" stroke="#cb1b46" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask0uxewn4w)" filter="url(#SvgjsFilter3299)" pathTo="M 0 125C 23.508333333333333 125 43.65833333333334 87.5 67.16666666666667 87.5C 90.67500000000001 87.5 110.82500000000002 120 134.33333333333334 120C 157.84166666666667 120 177.99166666666667 25 201.5 25C 225.00833333333333 25 245.15833333333336 100 268.6666666666667 100C 292.175 100 312.325 100 335.8333333333333 100C 359.34166666666664 100 379.4916666666667 100 403 100" pathFrom="M -1 200L -1 200L 67.16666666666667 200L 134.33333333333334 200L 201.5 200L 268.6666666666667 200L 335.8333333333333 200L 403 200"></path><g id="SvgjsG3289" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle3336" r="0" cx="67.16666666666667" cy="87.5" class="apexcharts-marker wr4sf37jt no-pointer-events" stroke="#cb1b46" fill="#f1416c" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG3290" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3331" x1="0" y1="0" x2="403" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3332" x1="0" y1="0" x2="403" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3333" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3334" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3335" class="apexcharts-point-annotations"></g></g><g id="SvgjsG3314" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG3283" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 100px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 78.1667px; top: 90.5px;"><div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;">Mar</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: transparent; display: none;"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label">Net Profit: </span><span class="apexcharts-tooltip-text-value">$45 thousands</span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <div class="card-p mt-n20 position-relative">
                      <div class="row g-0">
                        <div class="col bg-light-warning px-6 py-8 rounded-2 me-7 mb-7">
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
                          <a href="#" class="text-warning fw-bold fs-6">Transactions</a>
                        </div>
                        <div class="col bg-light-primary px-6 py-8 rounded-2 mb-7">
                          <span class="svg-icon svg-icon-3x svg-icon-primary d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <path d="M18,8 L16,8 C15.4477153,8 15,7.55228475 15,7 C15,6.44771525 15.4477153,6 16,6 L18,6 L18,4 C18,3.44771525 18.4477153,3 19,3 C19.5522847,3 20,3.44771525 20,4 L20,6 L22,6 C22.5522847,6 23,6.44771525 23,7 C23,7.55228475 22.5522847,8 22,8 L20,8 L20,10 C20,10.5522847 19.5522847,11 19,11 C18.4477153,11 18,10.5522847 18,10 L18,8 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                  <path d="M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                </svg>
                              </span>
                          <a href="#" class="text-primary fw-bold fs-6">NFT One-Click Creator</a>
                        </div>
                      </div>
                      <div class="row g-0">
                        <div class="col bg-light-danger px-6 py-8 rounded-2 me-7">
                          <span class="svg-icon svg-icon-3x svg-icon-danger d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" fill="#000000" fill-rule="nonzero"></path>
                                  <path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" fill="#000000" opacity="0.3"></path>
                                </svg>
                              </span>
                          <a href="#" class="text-danger fw-bold fs-6 mt-2">Perform XRP Transaction</a>
                        </div>
                        <div class="col bg-light-success px-6 py-8 rounded-2">
                          <span class="svg-icon svg-icon-3x svg-icon-success d-block my-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <path d="M12.7037037,14 L15.6666667,10 L13.4444444,10 L13.4444444,6 L9,12 L11.2222222,12 L11.2222222,14 L6,14 C5.44771525,14 5,13.5522847 5,13 L5,3 C5,2.44771525 5.44771525,2 6,2 L18,2 C18.5522847,2 19,2.44771525 19,3 L19,13 C19,13.5522847 18.5522847,14 18,14 L12.7037037,14 Z" fill="#000000" opacity="0.3"></path>
                                  <path d="M9.80428954,10.9142091 L9,12 L11.2222222,12 L11.2222222,16 L15.6666667,10 L15.4615385,10 L20.2072547,6.57253826 C20.4311176,6.4108595 20.7436609,6.46126971 20.9053396,6.68513259 C20.9668779,6.77033951 21,6.87277228 21,6.97787787 L21,17 C21,18.1045695 20.1045695,19 19,19 L5,19 C3.8954305,19 3,18.1045695 3,17 L3,6.97787787 C3,6.70173549 3.22385763,6.47787787 3.5,6.47787787 C3.60510559,6.47787787 3.70753836,6.51099993 3.79274528,6.57253826 L9.80428954,10.9142091 Z" fill="#000000"></path>
                                </svg>
                              </span>
                          <a href="#" class="text-success fw-bold fs-6 mt-2">Bug Reports</a>
                        </div>
                      </div>
                    </div>
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 462px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 477px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 503px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 503px;"></div></div><div class="contract-trigger"></div></div></div>
                </div>
              </div>
              <div class="col-xxl-4">
                <div class="card card-xxl-stretch">
                  <div class="card-header align-items-center border-0 mt-4">
                    <h3 class="card-title align-items-start flex-column">
                      <span class="fw-bolder mb-2 text-dark">Transactions</span>
                      <span class="text-muted fw-bold fs-7">654 Total Transactions</span>
                    </h3>
                    <div class="card-toolbar">
                      <button type="button" class="btn btn-sm btn-icon btn-color-primary btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end" data-kt-menu-flip="top-end">
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
                      </button>
                    </div>
                  </div>
                  <div class="card-body pt-5">
                    <div class="timeline-label">
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">08:42</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-warning fs-1"></i>
                        </div>
                        <div class="fw-mormal timeline-content text-muted ps-3">Outlines keep you honest. And keep structure</div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">10:00</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-success fs-1"></i>
                        </div>
                        <div class="timeline-content d-flex">
                          <span class="fw-bolder text-gray-800 ps-3">AEOL meeting</span>
                        </div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">14:37</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-danger fs-1"></i>
                        </div>
                        <div class="timeline-content fw-bolder text-gray-800 ps-3">Make deposit
                          <a href="#" class="text-primary">USD 700</a>. to ESL</div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">16:50</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-primary fs-1"></i>
                        </div>
                        <div class="timeline-content fw-mormal text-muted ps-3">Indulging in poorly driving and keep structure keep great</div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">21:03</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-danger fs-1"></i>
                        </div>
                        <div class="timeline-content fw-bold text-gray-800 ps-3">New order placed
                          <a href="#" class="text-primary">#XF-2356</a>.</div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">16:50</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-primary fs-1"></i>
                        </div>
                        <div class="timeline-content fw-mormal text-muted ps-3">Indulging in poorly driving and keep structure keep great</div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">21:03</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-danger fs-1"></i>
                        </div>
                        <div class="timeline-content fw-bold text-gray-800 ps-3">New order placed
                          <a href="#" class="text-primary">#XF-2356</a>.</div>
                      </div>
                      <div class="timeline-item">
                        <div class="timeline-label fw-bolder text-gray-800 fs-6">10:30</div>
                        <div class="timeline-badge">
                          <i class="fa fa-genderless text-success fs-1"></i>
                        </div>
                        <div class="timeline-content fw-mormal text-muted ps-3">Finance KPI Mobile app launch preparion meeting</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xxl-4">
                <div class="card card-xxl-stretch-50 mb-5 mb-xl-8">
                  <div class="card-body d-flex flex-column p-0" style="position: relative;">
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
                    <div class="mixed-widget-7-chart card-rounded-bottom" data-kt-chart-color="primary" style="height: 150px; min-height: 150px;"><div id="apexchartshr9u4mqr" class="apexcharts-canvas apexchartshr9u4mqr apexcharts-theme-light" style="width: 403px; height: 150px;"><svg id="SvgjsSvg2974" width="403" height="150" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent none repeat scroll 0% 0%;"><g id="SvgjsG2976" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs2975"><clipPath id="gridRectMaskhr9u4mqr"><rect id="SvgjsRect2979" width="410" height="153" x="-3.5" y="-1.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskhr9u4mqr"><rect id="SvgjsRect2980" width="407" height="154" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2987" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2988" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG2996" class="apexcharts-grid"><g id="SvgjsG2997" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2999" x1="0" y1="0" x2="403" y2="0" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3000" x1="0" y1="15" x2="403" y2="15" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3001" x1="0" y1="30" x2="403" y2="30" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3002" x1="0" y1="45" x2="403" y2="45" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3003" x1="0" y1="60" x2="403" y2="60" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3004" x1="0" y1="75" x2="403" y2="75" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3005" x1="0" y1="90" x2="403" y2="90" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3006" x1="0" y1="105" x2="403" y2="105" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3007" x1="0" y1="120" x2="403" y2="120" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3008" x1="0" y1="135" x2="403" y2="135" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line><line id="SvgjsLine3009" x1="0" y1="150" x2="403" y2="150" stroke="#e0e0e0" stroke-dasharray="0" class="apexcharts-gridline"></line></g><g id="SvgjsG2998" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine3011" x1="0" y1="150" x2="403" y2="150" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine3010" x1="0" y1="1" x2="0" y2="150" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG2981" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2982" class="apexcharts-series" seriesName="NetxProfit" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2985" d="M 0 150L 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25C 403 25 403 25 403 150M 403 25z" fill="rgba(236,248,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskhr9u4mqr)" pathTo="M 0 150L 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25C 403 25 403 25 403 150M 403 25z" pathFrom="M -1 150L -1 150L 80.6 150L 161.2 150L 241.79999999999998 150L 322.4 150L 403 150"></path><path id="SvgjsPath2986" d="M 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25" fill="none" fill-opacity="1" stroke="#009ef7" stroke-opacity="1" stroke-linecap="butt" stroke-width="3" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskhr9u4mqr)" pathTo="M 0 112.5C 28.209999999999997 112.5 52.39 87.5 80.6 87.5C 108.80999999999999 87.5 132.98999999999998 112.5 161.2 112.5C 189.41 112.5 213.58999999999997 50 241.79999999999998 50C 270.01 50 294.19 100 322.4 100C 350.60999999999996 100 374.79 25 403 25" pathFrom="M -1 150L -1 150L 80.6 150L 161.2 150L 241.79999999999998 150L 322.4 150L 403 150"></path><g id="SvgjsG2983" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle3017" r="0" cx="0" cy="0" class="apexcharts-marker wv1xq3cie no-pointer-events" stroke="#009ef7" fill="#ecf8ff" fill-opacity="1" stroke-width="3" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2984" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3012" x1="0" y1="0" x2="403" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3013" x1="0" y1="0" x2="403" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3014" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3015" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3016" class="apexcharts-point-annotations"></g></g><g id="SvgjsG2995" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2977" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 75px;"></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(236, 248, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: inherit; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 258px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 266px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 273px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 281px;"></div></div><div class="contract-trigger"></div></div></div>
                </div>
                <div class="card card-xxl-stretch-50 mb-5 mb-xl-8">
                  <div class="card-body p-0 d-flex justify-content-between flex-column overflow-hidden" style="position: relative;">
                    <div class="d-flex flex-stack flex-grow-1 px-9 pt-9 pb-3">
                      <div class="symbol symbol-45px">
                        <div class="symbol-label">
                          <span class="svg-icon svg-icon-2x svg-icon-primary">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                  <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <rect x="0" y="0" width="24" height="24"></rect>
                                    <path d="M5,19 L20,19 C20.5522847,19 21,19.4477153 21,20 C21,20.5522847 20.5522847,21 20,21 L4,21 C3.44771525,21 3,20.5522847 3,20 L3,4 C3,3.44771525 3.44771525,3 4,3 C4.55228475,3 5,3.44771525 5,4 L5,19 Z" fill="#000000" fill-rule="nonzero"></path>
                                    <path d="M8.7295372,14.6839411 C8.35180695,15.0868534 7.71897114,15.1072675 7.31605887,14.7295372 C6.9131466,14.3518069 6.89273254,13.7189711 7.2704628,13.3160589 L11.0204628,9.31605887 C11.3857725,8.92639521 11.9928179,8.89260288 12.3991193,9.23931335 L15.358855,11.7649545 L19.2151172,6.88035571 C19.5573373,6.44687693 20.1861655,6.37289714 20.6196443,6.71511723 C21.0531231,7.05733733 21.1271029,7.68616551 20.7848828,8.11964429 L16.2848828,13.8196443 C15.9333973,14.2648593 15.2823707,14.3288915 14.8508807,13.9606866 L11.8268294,11.3801628 L8.7295372,14.6839411 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                  </g>
                                </svg>
                              </span>
                        </div>
                      </div>
                      <div class="d-flex flex-column text-end">
                        <span class="fw-bolder text-gray-800 fs-3">XRP Transaction per Month</span>
                        <span class="text-gray-400 fw-bold">Oct 8 - Oct 26 21</span>
                      </div>
                    </div>
                    <div class="mixed-widget-10-chart" data-kt-color="primary" style="height: 175px; min-height: 228px;"><div id="apexchartsg5kekkbd" class="apexcharts-canvas apexchartsg5kekkbd apexcharts-theme-light" style="width: 403px; height: 213px;"><svg id="SvgjsSvg3018" width="403" height="213" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent none repeat scroll 0% 0%;"><g id="SvgjsG3020" class="apexcharts-inner apexcharts-graphical" transform="translate(44.10000038146973, 40)"><defs id="SvgjsDefs3019"><linearGradient id="SvgjsLinearGradient3024" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop3025" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop3026" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop3027" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMaskg5kekkbd"><rect id="SvgjsRect3029" width="354.8999996185303" height="130.876" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMaskg5kekkbd"><rect id="SvgjsRect3030" width="352.8999996185303" height="132.876" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect3028" width="10.903124988079071" height="128.876" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient3024)" class="apexcharts-xcrosshairs" y2="128.876" filter="none" fill-opacity="0.9"></rect><g id="SvgjsG3052" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3053" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText3055" font-family="inherit" x="21.806249976158142" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3056">Feb</tspan><title>Feb</title></text><text id="SvgjsText3058" font-family="inherit" x="65.41874992847443" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3059">Mar</tspan><title>Mar</title></text><text id="SvgjsText3061" font-family="inherit" x="109.03124988079071" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3062">Apr</tspan><title>Apr</title></text><text id="SvgjsText3064" font-family="inherit" x="152.643749833107" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3065">May</tspan><title>May</title></text><text id="SvgjsText3067" font-family="inherit" x="196.25624978542328" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3068">Jun</tspan><title>Jun</title></text><text id="SvgjsText3070" font-family="inherit" x="239.86874973773956" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3071">Jul</tspan><title>Jul</title></text><text id="SvgjsText3073" font-family="inherit" x="283.48124969005585" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3074">Aug</tspan><title>Aug</title></text><text id="SvgjsText3076" font-family="inherit" x="327.09374964237213" y="157.876" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-xaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3077">Sep</tspan><title>Sep</title></text></g></g><g id="SvgjsG3090" class="apexcharts-grid"><g id="SvgjsG3091" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine3093" x1="0" y1="0" x2="348.8999996185303" y2="0" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3094" x1="0" y1="32.219" x2="348.8999996185303" y2="32.219" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3095" x1="0" y1="64.438" x2="348.8999996185303" y2="64.438" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3096" x1="0" y1="96.65700000000001" x2="348.8999996185303" y2="96.65700000000001" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line><line id="SvgjsLine3097" x1="0" y1="128.876" x2="348.8999996185303" y2="128.876" stroke="#eff2f5" stroke-dasharray="4" class="apexcharts-gridline"></line></g><g id="SvgjsG3092" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine3099" x1="0" y1="128.876" x2="348.8999996185303" y2="128.876" stroke="transparent" stroke-dasharray="0"></line><line id="SvgjsLine3098" x1="0" y1="1" x2="0" y2="128.876" stroke="transparent" stroke-dasharray="0"></line></g><g id="SvgjsG3031" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG3032" class="apexcharts-series" rel="1" seriesName="NetxProfit" data:realIndex="0"><path id="SvgjsPath3034" d="M 10.903124988079071 128.876L 10.903124988079071 50.05428124701976Q 15.354687482118607 46.60271875298022 19.806249976158142 50.05428124701976L 19.806249976158142 50.05428124701976L 19.806249976158142 128.876L 19.806249976158142 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 10.903124988079071 128.876L 10.903124988079071 50.05428124701976Q 15.354687482118607 46.60271875298022 19.806249976158142 50.05428124701976L 19.806249976158142 50.05428124701976L 19.806249976158142 128.876L 19.806249976158142 128.876z" pathFrom="M 10.903124988079071 128.876L 10.903124988079071 128.876L 19.806249976158142 128.876L 19.806249976158142 128.876L 19.806249976158142 128.876L 10.903124988079071 128.876" cy="48.32849999999999" cx="53.515624940395355" j="0" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3035" d="M 54.515624940395355 128.876L 54.515624940395355 33.94478124701976Q 58.96718743443489 30.493218752980226 63.418749928474426 33.94478124701976L 63.418749928474426 33.94478124701976L 63.418749928474426 128.876L 63.418749928474426 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 54.515624940395355 128.876L 54.515624940395355 33.94478124701976Q 58.96718743443489 30.493218752980226 63.418749928474426 33.94478124701976L 63.418749928474426 33.94478124701976L 63.418749928474426 128.876L 63.418749928474426 128.876z" pathFrom="M 54.515624940395355 128.876L 54.515624940395355 128.876L 63.418749928474426 128.876L 63.418749928474426 128.876L 63.418749928474426 128.876L 54.515624940395355 128.876" cy="32.218999999999994" cx="97.12812489271164" j="1" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3036" d="M 98.12812489271164 128.876L 98.12812489271164 17.835281247019765Q 102.57968738675117 14.38371875298023 107.03124988079071 17.835281247019765L 107.03124988079071 17.835281247019765L 107.03124988079071 128.876L 107.03124988079071 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 98.12812489271164 128.876L 98.12812489271164 17.835281247019765Q 102.57968738675117 14.38371875298023 107.03124988079071 17.835281247019765L 107.03124988079071 17.835281247019765L 107.03124988079071 128.876L 107.03124988079071 128.876z" pathFrom="M 98.12812489271164 128.876L 98.12812489271164 128.876L 107.03124988079071 128.876L 107.03124988079071 128.876L 107.03124988079071 128.876L 98.12812489271164 128.876" cy="16.109499999999997" cx="140.74062484502792" j="2" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3037" d="M 141.74062484502792 128.876L 141.74062484502792 1.7257812470197678Q 146.19218733906746 -1.7257812470197678 150.643749833107 1.7257812470197678L 150.643749833107 1.7257812470197678L 150.643749833107 128.876L 150.643749833107 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 141.74062484502792 128.876L 141.74062484502792 1.7257812470197678Q 146.19218733906746 -1.7257812470197678 150.643749833107 1.7257812470197678L 150.643749833107 1.7257812470197678L 150.643749833107 128.876L 150.643749833107 128.876z" pathFrom="M 141.74062484502792 128.876L 141.74062484502792 128.876L 150.643749833107 128.876L 150.643749833107 128.876L 150.643749833107 128.876L 141.74062484502792 128.876" cy="0" cx="184.3531247973442" j="3" val="80" barHeight="128.876" barWidth="10.903124988079071"></path><path id="SvgjsPath3038" d="M 185.3531247973442 128.876L 185.3531247973442 33.94478124701976Q 189.80468729138374 30.493218752980226 194.25624978542328 33.94478124701976L 194.25624978542328 33.94478124701976L 194.25624978542328 128.876L 194.25624978542328 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 185.3531247973442 128.876L 185.3531247973442 33.94478124701976Q 189.80468729138374 30.493218752980226 194.25624978542328 33.94478124701976L 194.25624978542328 33.94478124701976L 194.25624978542328 128.876L 194.25624978542328 128.876z" pathFrom="M 185.3531247973442 128.876L 185.3531247973442 128.876L 194.25624978542328 128.876L 194.25624978542328 128.876L 194.25624978542328 128.876L 185.3531247973442 128.876" cy="32.218999999999994" cx="227.9656247496605" j="4" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3039" d="M 228.9656247496605 128.876L 228.9656247496605 50.05428124701976Q 233.41718724370003 46.60271875298022 237.86874973773956 50.05428124701976L 237.86874973773956 50.05428124701976L 237.86874973773956 128.876L 237.86874973773956 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 228.9656247496605 128.876L 228.9656247496605 50.05428124701976Q 233.41718724370003 46.60271875298022 237.86874973773956 50.05428124701976L 237.86874973773956 50.05428124701976L 237.86874973773956 128.876L 237.86874973773956 128.876z" pathFrom="M 228.9656247496605 128.876L 228.9656247496605 128.876L 237.86874973773956 128.876L 237.86874973773956 128.876L 237.86874973773956 128.876L 228.9656247496605 128.876" cy="48.32849999999999" cx="271.5781247019768" j="5" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3040" d="M 272.5781247019768 128.876L 272.5781247019768 17.835281247019765Q 277.0296871960163 14.38371875298023 281.48124969005585 17.835281247019765L 281.48124969005585 17.835281247019765L 281.48124969005585 128.876L 281.48124969005585 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 272.5781247019768 128.876L 272.5781247019768 17.835281247019765Q 277.0296871960163 14.38371875298023 281.48124969005585 17.835281247019765L 281.48124969005585 17.835281247019765L 281.48124969005585 128.876L 281.48124969005585 128.876z" pathFrom="M 272.5781247019768 128.876L 272.5781247019768 128.876L 281.48124969005585 128.876L 281.48124969005585 128.876L 281.48124969005585 128.876L 272.5781247019768 128.876" cy="16.109499999999997" cx="315.19062465429306" j="6" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3041" d="M 316.19062465429306 128.876L 316.19062465429306 33.94478124701976Q 320.6421871483326 30.493218752980226 325.09374964237213 33.94478124701976L 325.09374964237213 33.94478124701976L 325.09374964237213 128.876L 325.09374964237213 128.876z" fill="rgba(0,158,247,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 316.19062465429306 128.876L 316.19062465429306 33.94478124701976Q 320.6421871483326 30.493218752980226 325.09374964237213 33.94478124701976L 325.09374964237213 33.94478124701976L 325.09374964237213 128.876L 325.09374964237213 128.876z" pathFrom="M 316.19062465429306 128.876L 316.19062465429306 128.876L 325.09374964237213 128.876L 325.09374964237213 128.876L 325.09374964237213 128.876L 316.19062465429306 128.876" cy="32.218999999999994" cx="358.80312460660934" j="7" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path></g><g id="SvgjsG3042" class="apexcharts-series" rel="2" seriesName="Revenue" data:realIndex="1"><path id="SvgjsPath3044" d="M 21.806249976158142 128.876L 21.806249976158142 50.05428124701976Q 26.257812470197678 46.60271875298022 30.709374964237213 50.05428124701976L 30.709374964237213 50.05428124701976L 30.709374964237213 128.876L 30.709374964237213 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 21.806249976158142 128.876L 21.806249976158142 50.05428124701976Q 26.257812470197678 46.60271875298022 30.709374964237213 50.05428124701976L 30.709374964237213 50.05428124701976L 30.709374964237213 128.876L 30.709374964237213 128.876z" pathFrom="M 21.806249976158142 128.876L 21.806249976158142 128.876L 30.709374964237213 128.876L 30.709374964237213 128.876L 30.709374964237213 128.876L 21.806249976158142 128.876" cy="48.32849999999999" cx="64.41874992847443" j="0" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3045" d="M 65.41874992847443 128.876L 65.41874992847443 33.94478124701976Q 69.87031242251396 30.493218752980226 74.3218749165535 33.94478124701976L 74.3218749165535 33.94478124701976L 74.3218749165535 128.876L 74.3218749165535 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 65.41874992847443 128.876L 65.41874992847443 33.94478124701976Q 69.87031242251396 30.493218752980226 74.3218749165535 33.94478124701976L 74.3218749165535 33.94478124701976L 74.3218749165535 128.876L 74.3218749165535 128.876z" pathFrom="M 65.41874992847443 128.876L 65.41874992847443 128.876L 74.3218749165535 128.876L 74.3218749165535 128.876L 74.3218749165535 128.876L 65.41874992847443 128.876" cy="32.218999999999994" cx="108.03124988079071" j="1" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3046" d="M 109.03124988079071 128.876L 109.03124988079071 17.835281247019765Q 113.48281237483025 14.38371875298023 117.93437486886978 17.835281247019765L 117.93437486886978 17.835281247019765L 117.93437486886978 128.876L 117.93437486886978 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 109.03124988079071 128.876L 109.03124988079071 17.835281247019765Q 113.48281237483025 14.38371875298023 117.93437486886978 17.835281247019765L 117.93437486886978 17.835281247019765L 117.93437486886978 128.876L 117.93437486886978 128.876z" pathFrom="M 109.03124988079071 128.876L 109.03124988079071 128.876L 117.93437486886978 128.876L 117.93437486886978 128.876L 117.93437486886978 128.876L 109.03124988079071 128.876" cy="16.109499999999997" cx="151.643749833107" j="2" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3047" d="M 152.643749833107 128.876L 152.643749833107 1.7257812470197678Q 157.09531232714653 -1.7257812470197678 161.54687482118607 1.7257812470197678L 161.54687482118607 1.7257812470197678L 161.54687482118607 128.876L 161.54687482118607 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 152.643749833107 128.876L 152.643749833107 1.7257812470197678Q 157.09531232714653 -1.7257812470197678 161.54687482118607 1.7257812470197678L 161.54687482118607 1.7257812470197678L 161.54687482118607 128.876L 161.54687482118607 128.876z" pathFrom="M 152.643749833107 128.876L 152.643749833107 128.876L 161.54687482118607 128.876L 161.54687482118607 128.876L 161.54687482118607 128.876L 152.643749833107 128.876" cy="0" cx="195.25624978542328" j="3" val="80" barHeight="128.876" barWidth="10.903124988079071"></path><path id="SvgjsPath3048" d="M 196.25624978542328 128.876L 196.25624978542328 33.94478124701976Q 200.70781227946281 30.493218752980226 205.15937477350235 33.94478124701976L 205.15937477350235 33.94478124701976L 205.15937477350235 128.876L 205.15937477350235 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 196.25624978542328 128.876L 196.25624978542328 33.94478124701976Q 200.70781227946281 30.493218752980226 205.15937477350235 33.94478124701976L 205.15937477350235 33.94478124701976L 205.15937477350235 128.876L 205.15937477350235 128.876z" pathFrom="M 196.25624978542328 128.876L 196.25624978542328 128.876L 205.15937477350235 128.876L 205.15937477350235 128.876L 205.15937477350235 128.876L 196.25624978542328 128.876" cy="32.218999999999994" cx="238.86874973773956" j="4" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3049" d="M 239.86874973773956 128.876L 239.86874973773956 50.05428124701976Q 244.3203122317791 46.60271875298022 248.77187472581863 50.05428124701976L 248.77187472581863 50.05428124701976L 248.77187472581863 128.876L 248.77187472581863 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 239.86874973773956 128.876L 239.86874973773956 50.05428124701976Q 244.3203122317791 46.60271875298022 248.77187472581863 50.05428124701976L 248.77187472581863 50.05428124701976L 248.77187472581863 128.876L 248.77187472581863 128.876z" pathFrom="M 239.86874973773956 128.876L 239.86874973773956 128.876L 248.77187472581863 128.876L 248.77187472581863 128.876L 248.77187472581863 128.876L 239.86874973773956 128.876" cy="48.32849999999999" cx="282.48124969005585" j="5" val="50" barHeight="80.54750000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3050" d="M 283.48124969005585 128.876L 283.48124969005585 17.835281247019765Q 287.9328121840954 14.38371875298023 292.3843746781349 17.835281247019765L 292.3843746781349 17.835281247019765L 292.3843746781349 128.876L 292.3843746781349 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 283.48124969005585 128.876L 283.48124969005585 17.835281247019765Q 287.9328121840954 14.38371875298023 292.3843746781349 17.835281247019765L 292.3843746781349 17.835281247019765L 292.3843746781349 128.876L 292.3843746781349 128.876z" pathFrom="M 283.48124969005585 128.876L 283.48124969005585 128.876L 292.3843746781349 128.876L 292.3843746781349 128.876L 292.3843746781349 128.876L 283.48124969005585 128.876" cy="16.109499999999997" cx="326.09374964237213" j="6" val="70" barHeight="112.76650000000001" barWidth="10.903124988079071"></path><path id="SvgjsPath3051" d="M 327.09374964237213 128.876L 327.09374964237213 33.94478124701976Q 331.54531213641167 30.493218752980226 335.9968746304512 33.94478124701976L 335.9968746304512 33.94478124701976L 335.9968746304512 128.876L 335.9968746304512 128.876z" fill="rgba(228,230,239,0.85)" fill-opacity="1" stroke="transparent" stroke-opacity="1" stroke-linecap="square" stroke-width="2" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMaskg5kekkbd)" pathTo="M 327.09374964237213 128.876L 327.09374964237213 33.94478124701976Q 331.54531213641167 30.493218752980226 335.9968746304512 33.94478124701976L 335.9968746304512 33.94478124701976L 335.9968746304512 128.876L 335.9968746304512 128.876z" pathFrom="M 327.09374964237213 128.876L 327.09374964237213 128.876L 335.9968746304512 128.876L 335.9968746304512 128.876L 335.9968746304512 128.876L 327.09374964237213 128.876" cy="32.218999999999994" cx="369.7062495946884" j="7" val="60" barHeight="96.65700000000001" barWidth="10.903124988079071"></path></g><g id="SvgjsG3033" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG3043" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine3100" x1="0" y1="0" x2="348.8999996185303" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3101" x1="0" y1="0" x2="348.8999996185303" y2="0" stroke-dasharray="0" stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3102" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3103" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3104" class="apexcharts-point-annotations"></g></g><g id="SvgjsG3078" class="apexcharts-yaxis" rel="0" transform="translate(14.100000381469727, 0)"><g id="SvgjsG3079" class="apexcharts-yaxis-texts-g"><text id="SvgjsText3080" font-family="inherit" x="20" y="41.4" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3081">80</tspan></text><text id="SvgjsText3082" font-family="inherit" x="20" y="73.619" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3083">60</tspan></text><text id="SvgjsText3084" font-family="inherit" x="20" y="105.838" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3085">40</tspan></text><text id="SvgjsText3086" font-family="inherit" x="20" y="138.057" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3087">20</tspan></text><text id="SvgjsText3088" font-family="inherit" x="20" y="170.27599999999998" text-anchor="end" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#a1a5b7" class="apexcharts-text apexcharts-yaxis-label " style="font-family: inherit;"><tspan id="SvgjsTspan3089">0</tspan></text></g></g><g id="SvgjsG3021" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 106.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: inherit; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(0, 158, 247);"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(228, 230, 239);"></span><div class="apexcharts-tooltip-text" style="font-family: inherit; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-label"></span><span class="apexcharts-tooltip-text-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                    <div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 258px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 266px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 273px;"></div></div><div class="contract-trigger"></div></div><div class="resize-triggers"><div class="expand-trigger"><div style="width: 404px; height: 281px;"></div></div><div class="contract-trigger"></div></div></div>
                </div>
              </div>
            </div>
            <div class="row gy-5 gx-xl-8">
              <div class="col-xxl-12">
                <div class="card card-xxl-stretch mb-xl-3">
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
                      <input class="form-control form-control-solid" type="number" placeholder="" value="0" name="transactiontag">
                    </div>
                      <button type="submit" class="btn btn-lg btn-primary w-100 mb-5">
                        Submit Transaction
                      </button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
          <div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
            <div class="text-dark order-2 order-md-1">
              <span class="text-muted fw-bold me-1">2021Â©</span>
              <a href="" target="_blank" class="text-gray-800 text-hover-primary">Keenthemes</a>
            </div>
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
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="kt_activities" class="bg-white drawer drawer-end" data-kt-drawer="true" data-kt-drawer-name="activities" data-kt-drawer-activate="true" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'300px', 'lg': '900px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_activities_toggle" data-kt-drawer-close="#kt_activities_close" style="width: 900px !important;">
    <div class="card shadow-none">
      <div class="card-header" id="kt_activities_header">
        <h3 class="card-title fw-bolder text-dark">Activity Logs</h3>
        <div class="card-toolbar">
          <button type="button" class="btn btn-sm btn-icon btn-active-light-primary me-n5" id="kt_activities_close">
            <span class="svg-icon svg-icon-1">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                  <g transform="translate(12.000000, 12.000000) rotate(-45.000000) translate(-12.000000, -12.000000) translate(4.000000, 4.000000)" fill="#000000">
                    <rect fill="#000000" x="0" y="7" width="16" height="2" rx="1"></rect>
                    <rect fill="#000000" opacity="0.5" transform="translate(8.000000, 8.000000) rotate(-270.000000) translate(-8.000000, -8.000000)" x="0" y="7" width="16" height="2" rx="1"></rect>
                  </g>
                </svg>
              </span>
          </button>
        </div>
      </div>
      <div class="card-body position-relative" id="kt_activities_body">
        <div id="kt_activities_scroll" class="position-relative scroll-y me-n5 pe-5" data-kt-scroll="true" data-kt-scroll-height="auto" data-kt-scroll-wrappers="#kt_activities_body" data-kt-scroll-dependencies="#kt_activities_header, #kt_activities_footer" data-kt-scroll-offset="5px" style="height: 273px;">
          <div class="timeline">
            <div class="timeline-item">
              <div class="timeline-line w-40px"></div>
              <div class="timeline-icon symbol symbol-circle symbol-40px me-4">
                <div class="symbol-label bg-light">
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <polygon fill="#000000" opacity="0.3" points="5 15 3 21.5 9.5 19.5"></polygon>
                        <path d="M13.5,21 C8.25329488,21 4,16.7467051 4,11.5 C4,6.25329488 8.25329488,2 13.5,2 C18.7467051,2 23,6.25329488 23,11.5 C23,16.7467051 18.7467051,21 13.5,21 Z M9,8 C8.44771525,8 8,8.44771525 8,9 C8,9.55228475 8.44771525,10 9,10 L18,10 C18.5522847,10 19,9.55228475 19,9 C19,8.44771525 18.5522847,8 18,8 L9,8 Z M9,12 C8.44771525,12 8,12.4477153 8,13 C8,13.5522847 8.44771525,14 9,14 L14,14 C14.5522847,14 15,13.5522847 15,13 C15,12.4477153 14.5522847,12 14,12 L9,12 Z" fill="#000000"></path>
                      </svg>
                    </span>
                </div>
              </div>
            </div>
            <div class="timeline-item">
              <div class="timeline-line w-40px"></div>
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
                  <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                        <path d="M11.6734943,8.3307728 L14.9993074,6.09979492 L14.1213255,5.22181303 C13.7308012,4.83128874 13.7308012,4.19812376 14.1213255,3.80759947 L15.535539,2.39338591 C15.9260633,2.00286161 16.5592283,2.00286161 16.9497526,2.39338591 L22.6066068,8.05024016 C22.9971311,8.44076445 22.9971311,9.07392943 22.6066068,9.46445372 L21.1923933,10.8786673 C20.801869,11.2691916 20.168704,11.2691916 19.7781797,10.8786673 L18.9002333,10.0007208 L16.6692373,13.3265608 C16.9264145,14.2523264 16.9984943,15.2320236 16.8664372,16.2092466 L16.4344698,19.4058049 C16.360509,19.9531149 15.8568695,20.3368403 15.3095595,20.2628795 C15.0925691,20.2335564 14.8912006,20.1338238 14.7363706,19.9789938 L5.02099894,10.2636221 C4.63047465,9.87309784 4.63047465,9.23993286 5.02099894,8.84940857 C5.17582897,8.69457854 5.37719743,8.59484594 5.59418783,8.56552292 L8.79074617,8.13355557 C9.76799113,8.00149544 10.7477104,8.0735815 11.6734943,8.3307728 Z" fill="#000000"></path>
                        <polygon fill="#000000" opacity="0.3" transform="translate(7.050253, 17.949747) rotate(-315.000000) translate(-7.050253, -17.949747)" points="5.55025253 13.9497475 5.55025253 19.6640332 7.05025253 21.9497475 8.55025253 19.6640332 8.55025253 13.9497475"></polygon>
                      </svg>
                    </span>
                </div>
              </div>
            </div>
            <div class="timeline-item">
              <div class="timeline-line w-40px"></div>
              <div class="timeline-icon symbol symbol-circle symbol-40px">
                <div class="symbol-label bg-light">
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
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
    <span class="svg-icon">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
          <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
            <polygon points="0 0 24 0 24 24 0 24"></polygon>
            <rect fill="#000000" opacity="0.5" x="11" y="10" width="2" height="10" rx="1"></rect>
            <path d="M6.70710678,12.7071068 C6.31658249,13.0976311 5.68341751,13.0976311 5.29289322,12.7071068 C4.90236893,12.3165825 4.90236893,11.6834175 5.29289322,11.2928932 L11.2928932,5.29289322 C11.6714722,4.91431428 12.2810586,4.90106866 12.6757246,5.26284586 L18.6757246,10.7628459 C19.0828436,11.1360383 19.1103465,11.7686056 18.7371541,12.1757246 C18.3639617,12.5828436 17.7313944,12.6103465 17.3242754,12.2371541 L12.0300757,7.38413782 L6.70710678,12.7071068 Z" fill="#000000" fill-rule="nonzero"></path>
          </g>
        </svg>
      </span>
  </div>
  <script src="assets/plugins/global/plugins.bundle.js"></script>
  <script src="assets/js/scripts.bundle.js"></script>
  <script src="assets/js/custom/widgets.js"></script>
  <script src="assets/js/custom/intro.js"></script>
</div>
</body></html>