package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import java.util.logging.Logger;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.Model.XRPConn;

public class nftCreatorController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(nftCreatorController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        XRPConn cwallet = (XRPConn)session.getAttribute("dashboard");
        try {
            ServletInputStream file = req.getInputStream();
            System.out.println(file.hashCode());
            resp.sendRedirect("view/info.jsp");
        } catch (Exception e) {
            cwallet.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
