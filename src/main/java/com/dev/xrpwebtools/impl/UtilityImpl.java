package com.dev.xrpwebtools.impl;

import org.owasp.html.Sanitizers;

import javax.xml.bind.DatatypeConverter;
import java.nio.charset.StandardCharsets;
import java.time.Clock;


public class UtilityImpl {
    public static String sanitizeInput(String string) {
        return Sanitizers.FORMATTING.and(Sanitizers.BLOCKS).sanitize(string);
    }

    public static String getLocalDateTime() {
        return DatatypeConverter.printHexBinary(String.valueOf(Clock.systemUTC().instant()).getBytes(StandardCharsets.UTF_8));
    }

    public static String removeWhiteSpace(String string) {
        return string.replaceAll("\\s+", "");
    }
}
