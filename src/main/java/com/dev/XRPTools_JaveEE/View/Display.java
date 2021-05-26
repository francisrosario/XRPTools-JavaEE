package com.dev.XRPTools_JaveEE.View;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class Display extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        createXRPWallet wallet = (createXRPWallet)
        req.getAttribute("xrpwallet");

        System.out.println(wallet.getWalletAddress());
        String myvar = "<html>" +
                "<head>" +
                "    <title>MVC Model</title>" +
                "</head>" +
                "<body>" +
                "<h2></h2>" +
                "<p>Wallet Test Address #:" + wallet.getWalletAddress() + "</p>" +
                "<p></p>" +
                "<form action=\"index.jsp\">" +
                "    <input type=\"submit\" value=\"GO BACK\">" +
                "</form>" +
                "</body>";
        out.println(myvar);
        }
    }