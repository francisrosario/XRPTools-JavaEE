package com.dev.XRPTools_JaveEE.Controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;

public class createWalletController extends HttpServlet{
    private int isGenerated = 0;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(true);
        if(!session.isNew() && isGenerated == 0 || session.isNew() && isGenerated == 1) {
            try {
                session.setMaxInactiveInterval(10);
                createXRPWallet wallet = new createXRPWallet();
                session.setAttribute("xrpwallet", wallet);
                if(session.isNew() && isGenerated == 1){
                    isGenerated = 0;
                }else{
                    isGenerated = 1;
                }
                wallet.createXRPWalletX();
            } catch (JsonRpcClientErrorException e) {
                e.printStackTrace();
            }
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("display_generated_wallet.jsp");
        dispatcher.forward(req, resp);
    }


    public void destroy() {
        System.out.println("servlet taken out of service.");
    }

}
