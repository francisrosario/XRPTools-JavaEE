package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.Model.BLL;

public class dashboardController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(dashboardController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        BLL bll = new BLL();
        session.setAttribute("dashboard", bll);
        try {
            String walletseed = req.getParameter("walletseed");
            walletseed = bll.removeWhiteSpace(walletseed);
            bll.setWalletseed(walletseed);
            if(!bll.isValidated()){
                bll.setErrorString("Account not found, Kindly activate your account...");
                resp.sendRedirect("view/error.jsp");
            }
            resp.sendRedirect("view/dashboard.jsp");
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 00-"+bll.getLocalDateTimeHEX());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
