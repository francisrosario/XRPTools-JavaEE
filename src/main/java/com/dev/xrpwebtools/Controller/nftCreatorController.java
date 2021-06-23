package com.dev.xrpwebtools.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.ServletException;

import com.dev.xrpwebtools.Model.BLL;
import io.ipfs.api.IPFS;
import io.ipfs.api.MerkleNode;
import io.ipfs.api.NamedStreamable;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;


@MultipartConfig
public class nftCreatorController extends HttpServlet{
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(nftCreatorController.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        BLL cwallet = (BLL)session.getAttribute("dashboard");
        try {
            Part img = req.getPart("file");
            InputStream imgraw = img.getInputStream();
            byte[] fileAsByteArray = IOUtils.toByteArray(imgraw);
            System.out.println("https://gateway.pinata.cloud/ipfs/"+cwallet.NFTHash(fileAsByteArray));
        } catch (Exception e) {
            cwallet.setErrorString(e.getMessage());
            resp.sendRedirect("view/error.jsp");
        }
    }
}
