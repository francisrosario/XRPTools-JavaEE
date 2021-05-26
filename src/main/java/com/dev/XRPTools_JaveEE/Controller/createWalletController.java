package com.dev.XRPTools_JaveEE.Controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;

@WebServlet("/process")
public class createWalletController extends HttpServlet{
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            createXRPWallet wallet = new createXRPWallet();
            try {
                wallet.createXRPWallet();
            } catch (JsonRpcClientErrorException e) {
                e.printStackTrace();
            }

            req.setAttribute("54vc3r", wallet);
            req.getRequestDispatcher("display.jsp").forward(req, resp);
        }
    }
