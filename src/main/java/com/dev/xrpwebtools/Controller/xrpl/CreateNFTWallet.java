package com.dev.xrpwebtools.controller.xrpl;

import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import com.dev.xrpwebtools.impl.HTMLImpl;
import com.dev.xrpwebtools.impl.UtilityImpl;
import com.dev.xrpwebtools.impl.XRPLImpl;
import org.apache.commons.io.IOUtils;

import static com.dev.xrpwebtools.impl.HTMLImpl.*;
import static com.dev.xrpwebtools.impl.UtilityImpl.*;
import static org.apache.commons.io.IOUtils.*;


@MultipartConfig
public class CreateNFTWallet extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(CreateNFTWallet.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession(false);
        XRPLImpl bll = (XRPLImpl)session.getAttribute("dashboard");

        try {
            Part img = req.getPart("file");
            String domain = createHTML(toByteArray(img.getInputStream()),
                    req.getParameter("nftName"),
                    req.getParameter("nftAuthor"),
                    req.getParameter("nftEmail"),
                    req.getParameter("nftTwitter"),
                    req.getParameter("nftDescription")
            );

            //bll.setDomain(domainValue, removeWhiteSpace(nftSeed));
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/info.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception err) {
            logger.log(Level.INFO, err.getMessage());
            bll.setErrorString("Error Code: 02-"+err.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
