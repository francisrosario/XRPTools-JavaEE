package com.dev.XRPTools_JaveEE.View;

import com.dev.XRPTools_JaveEE.Model.createXRPWallet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class Display extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        createXRPWallet wallet = (createXRPWallet) request.getAttribute("54vc3r");

        System.out.println(wallet.getWalletAddress());
        StringBuilder myvar = new StringBuilder();
        myvar.append("<html>")
                .append("<head>")
                .append("    <title>MVC Model</title>")
                .append("</head>")
                .append("<body>")
                .append("<h2></h2>")
                .append("<p>Wallet Test Address:"+ wallet.getWalletAddress() + "</p>")
                .append("<p></p>")
                .append("<form action=\"index.jsp\">")
                .append("    <input type=\"submit\" value=\"GO BACK\">")
                .append("</form>")
                .append("</body>");
        out.println(myvar);
        }
    }