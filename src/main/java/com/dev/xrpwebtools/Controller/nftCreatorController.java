package com.dev.xrpwebtools.Controller;

import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import com.dev.xrpwebtools.Model.BLL;
import org.apache.commons.io.IOUtils;


@MultipartConfig
public class nftCreatorController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(nftCreatorController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession(false);
        BLL bll = (BLL)session.getAttribute("dashboard");
        try {
            Part img = req.getPart("file");
            byte[] imageByte = IOUtils.toByteArray(img.getInputStream());
            String nftSeed = req.getParameter("nftSeed");
            String nftName = req.getParameter("nftName");
            String nftAuthor = req.getParameter("nftAuthor");
            String nftEmail = req.getParameter("nftEmail");
            String nftTwitter = req.getParameter("nftTwitter");
            String nftDescription = req.getParameter("nftDescription");

            nftSeed = bll.removeWhiteSpace(nftSeed);
            bll.createHTML(imageByte, nftSeed, nftName, nftAuthor, nftEmail, nftTwitter, nftDescription);
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/info.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 02-"+bll.getLocalDateTimeHEX());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
