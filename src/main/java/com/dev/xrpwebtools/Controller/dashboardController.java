package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.Model.XRPConn;

public class dashboardController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(dashboardController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        XRPConn cwallet = new XRPConn();
        session.setAttribute("dashboard", cwallet);
        try {
            String walletseed = req.getParameter("walletseed");
            walletseed = walletseed.replaceAll("\\s+","");
            cwallet.setWalletseed(walletseed);
            cwallet.isActive();
            resp.sendRedirect("dashboard.jsp");
        } catch (Exception e) {
            cwallet.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
