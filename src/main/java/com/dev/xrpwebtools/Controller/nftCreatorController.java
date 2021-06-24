package com.dev.xrpwebtools.Controller;

import java.io.*;
import java.util.ArrayList;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import com.dev.xrpwebtools.Model.BLL;
import io.ipfs.multihash.Multihash;
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
            byte[] byteArray = IOUtils.toByteArray(img.getInputStream());
            System.out.println(bll.NFThtml(byteArray));
        } catch (Exception e) {
            bll.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
