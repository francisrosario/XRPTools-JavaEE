package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.Model.BLL;

public class performXRPTransactionController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(dashboardController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        BLL bll = (BLL)session.getAttribute("dashboard");
        try {
            String transferAddress = req.getParameter("transferAddress");
            String transferAmount = req.getParameter("transferAmount");
            int transactionTag = Integer.parseInt(req.getParameter("transactionTag"));

            transferAddress = bll.removeWhiteSpace(transferAddress);
            bll.sendXRP(transferAmount, transactionTag, transferAddress);
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/info.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 01-"+bll.getLocalDateTimeHEX());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
