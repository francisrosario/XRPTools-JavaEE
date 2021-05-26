package com.dev.XRPTools_JaveEE.Controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;

public class createWalletController extends HttpServlet{
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            createXRPWallet wallet = new createXRPWallet();
            try {
                wallet.createXRPWalletX();
            } catch (JsonRpcClientErrorException e) {
                e.printStackTrace();
            }
            req.setAttribute("xrpwallet", wallet);
            RequestDispatcher dispatcher = req.getRequestDispatcher("display.jsp");
            dispatcher.forward(req, resp);
        }

    public void destroy() {
        System.out.println("servlet taken out of service.");
    }

}
