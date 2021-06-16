package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.ServletException;

import com.dev.xrpwebtools.Model.XRPConn;
import org.apache.commons.io.IOUtils;

@MultipartConfig
public class nftCreatorController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(nftCreatorController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        XRPConn cwallet = (XRPConn)session.getAttribute("dashboard");
        try {
            Part img = req.getPart("file");
            InputStream imgraw = img.getInputStream();
            byte[] fileAsByteArray = IOUtils.toByteArray(imgraw);
            String base64 = Base64.getEncoder().encodeToString(fileAsByteArray);
            System.out.println(base64);

            resp.sendRedirect("view/info.jsp");
        } catch (Exception e) {
            cwallet.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
