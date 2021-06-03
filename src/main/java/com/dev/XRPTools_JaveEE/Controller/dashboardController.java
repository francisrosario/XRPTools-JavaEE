package com.dev.XRPTools_JaveEE.Controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.XRPTools_JaveEE.Model.XRPConn;

public class dashboardController extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession();
            String walletseed = req.getParameter("walletseed");
            System.out.println(walletseed);
            XRPConn cwallet = new XRPConn();
            cwallet.setWalletseed(walletseed);
            cwallet.isActived();
            session.setAttribute("dashboard", cwallet);
            RequestDispatcher dispatcher = req.getRequestDispatcher("index-temp2.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    public void destroy() {
        System.out.println("servlet taken out of service.");
    }

}
