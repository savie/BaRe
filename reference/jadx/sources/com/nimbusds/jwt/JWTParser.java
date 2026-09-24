package com.nimbusds.jwt;

import com.nimbusds.jose.Algorithm;
import com.nimbusds.jose.Header;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.JSONObjectUtils;
import defpackage.l0;
import defpackage.y5;
import java.text.ParseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class JWTParser {
    private JWTParser() {
    }

    public static JWT parse(String str) throws ParseException {
        int iIndexOf = str.indexOf(".");
        if (iIndexOf == -1) {
            y5.e(0, "Invalid JWT serialization: Missing dot delimiter(s)");
            return null;
        }
        try {
            Algorithm algorithm = Header.parseAlgorithm(JSONObjectUtils.parse(new Base64URL(str.substring(0, iIndexOf)).decodeToString()));
            if (algorithm.equals(Algorithm.NONE)) {
                return PlainJWT.parse(str);
            }
            if (algorithm instanceof JWSAlgorithm) {
                return SignedJWT.parse(str);
            }
            if (algorithm instanceof JWEAlgorithm) {
                return EncryptedJWT.parse(str);
            }
            throw new AssertionError("Unexpected algorithm type: " + algorithm);
        } catch (ParseException e) {
            l0.j(e.getMessage(), "Invalid unsecured/JWS/JWE header: ");
            return null;
        }
    }
}
