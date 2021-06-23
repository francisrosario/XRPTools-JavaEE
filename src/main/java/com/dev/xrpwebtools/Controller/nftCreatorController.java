package com.dev.xrpwebtools.Controller;

import java.io.*;
import java.util.ArrayList;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import com.dev.xrpwebtools.Model.BLL;
import org.apache.commons.io.IOUtils;


@MultipartConfig
public class nftCreatorController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(nftCreatorController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        BLL bll = (BLL)session.getAttribute("dashboard");
        try {
            Part img = req.getPart("file");
            InputStream imgraw = img.getInputStream();
            byte[] fileAsByteArray = IOUtils.toByteArray(imgraw);

            System.out.println("https://gateway.pinata.cloud/ipfs/"+bll.createIPFS(bll.NFThtml(bll.createIPFS(fileAsByteArray))));

        } catch (Exception e) {
            bll.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
