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
        HttpSession session = req.getSession();
        XRPConn cwallet = new XRPConn();
        try {
            session.setAttribute("dashboard", cwallet);
            String walletseed = req.getParameter("walletseed");
            walletseed = walletseed.replaceAll("\\s+","");
            cwallet.setWalletseed(walletseed);
            cwallet.isActive();
            RequestDispatcher dispatcher = req.getRequestDispatcher("index-temp2.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            session.setAttribute("error", cwallet);
            cwallet.setErrorString(e.getMessage());
            RequestDispatcher dispatcher = req.getRequestDispatcher("error.jsp");
            dispatcher.forward(req, resp);
        }
    }
    @Override
    public void destroy() {
        logger.info("servlet taken out of service.");
    }

}
