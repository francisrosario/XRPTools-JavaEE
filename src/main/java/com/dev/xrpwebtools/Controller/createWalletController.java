package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.Model.xrp4j;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;

public class createWalletController extends HttpServlet{
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            HttpSession session = req.getSession();
            xrp4j bll = new xrp4j();

            session.setAttribute("xrpwallet", bll);
            resp.sendRedirect("view/createwallet.jsp");
        }
}
