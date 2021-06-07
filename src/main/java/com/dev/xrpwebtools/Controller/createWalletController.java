package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.xrpwebtools.Model.createXRPWallet;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;

public class createWalletController extends HttpServlet{
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            HttpSession session = req.getSession();
                try {
                    createXRPWallet wallet = new createXRPWallet();
                    wallet.createXRPWalletX();
                    session.setAttribute("xrpwallet", wallet);
                    RequestDispatcher dispatcher = req.getRequestDispatcher("createwallet.jsp");
                    dispatcher.forward(req, resp);
                } catch (JsonRpcClientErrorException e) {
                    e.printStackTrace();
                }
        }
    @Override
    public void destroy() {
        System.out.println("servlet taken out of service.");
    }

}
