package com.dev.xrpwebtools.controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.impl.UtilityImpl;
import com.dev.xrpwebtools.impl.XRPLImpl;

import static com.dev.xrpwebtools.impl.UtilityImpl.*;


public class Dashboard extends HttpServlet {
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(Dashboard.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);

        XRPLImpl bll = new XRPLImpl();
        session.setAttribute("dashboard", bll);
        try {
            String walletseed = req.getParameter("walletseed");

            bll.setWalletseed(removeWhiteSpace(walletseed));
            if(!bll.isValidated()){
                bll.setErrorString("Account not found, Kindly activate your account...");
                resp.sendRedirect("view/error.jsp");
            }
            resp.sendRedirect("view/dashboard.jsp");
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 00-"+err.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
