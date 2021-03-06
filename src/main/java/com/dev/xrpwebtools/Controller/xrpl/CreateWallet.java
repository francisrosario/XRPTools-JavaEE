package com.dev.xrpwebtools.controller.xrpl;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.impl.XRPLImpl;

public class CreateWallet extends HttpServlet{
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            HttpSession session = req.getSession();
            XRPLImpl bll = new XRPLImpl();

            session.setAttribute("xrpwallet", bll);
            resp.sendRedirect("view/createwallet.jsp");
        }
}
