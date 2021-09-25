package com.dev.xrpwebtools.controller.xrpl;

import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.dev.xrpwebtools.impl.Utility;
import com.dev.xrpwebtools.impl.xrp4j;
import org.apache.commons.io.IOUtils;


@MultipartConfig
public class CreateNFTWallet extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(CreateNFTWallet.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession(false);
        xrp4j bll = (xrp4j)session.getAttribute("dashboard");
        Utility.htmlBuilder utltHtml = new Utility.htmlBuilder();
        Utility.mainUtilities utlt = new Utility.mainUtilities();
        try {
            Part img = req.getPart("file");
            byte[] imageByte = IOUtils.toByteArray(img.getInputStream());
            String nftSeed = req.getParameter("nftSeed");
            String nftName = req.getParameter("nftName");
            String nftAuthor = req.getParameter("nftAuthor");
            String nftEmail = req.getParameter("nftEmail");
            String nftTwitter = req.getParameter("nftTwitter");
            String nftDescription = req.getParameter("nftDescription");
            nftSeed = utlt.removeWhiteSpace(nftSeed);

            String domainValue = utltHtml.createHTML(imageByte, nftName, nftAuthor, nftEmail, nftTwitter, nftDescription);
            bll.setDomain(domainValue,nftSeed);
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/info.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 02-"+err.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
