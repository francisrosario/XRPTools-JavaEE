package com.dev.xrpwebtools.controller.xrpl;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.controller.Dashboard;
import com.dev.xrpwebtools.impl.Utility;
import com.dev.xrpwebtools.impl.xrp4j;

public class SendXRP extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(Dashboard.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        xrp4j bll = (xrp4j)session.getAttribute("dashboard");
        Utility.mainUtilities utlt = new Utility.mainUtilities();

        try {
            String transferAddress = req.getParameter("transferAddress");
            String transferAmount = req.getParameter("transferAmount");
            int transactionTag = Integer.parseInt(req.getParameter("transactionTag"));
            transferAddress = utlt.removeWhiteSpace(transferAddress);

            bll.sendXRP(transferAmount, transactionTag, transferAddress);
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/info.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 01-"+err.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
