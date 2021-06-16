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
            if(cwallet.isPhotoUploaded()){
                System.out.println(cwallet.getPhotobase64());
                //Set PhotoUploaded back to false
                cwallet.setPhotoUploaded(false);
                resp.sendRedirect("view/info.jsp");
            }else{
                Part img = req.getPart("file");
                InputStream imgraw = img.getInputStream();
                byte[] fileAsByteArray = IOUtils.toByteArray(imgraw);
                cwallet.setPhotobase64(Base64.getEncoder().encodeToString(fileAsByteArray));

                //Set PhotoUploaded to True
                cwallet.setPhotoUploaded(true);
            }
        } catch (Exception e) {
            cwallet.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
