package com.nimbusds.jose.jwk;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.shaded.jcip.Immutable;
import com.nimbusds.jose.util.Base64URL;
import defpackage.c6;
import defpackage.y5;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class ThumbprintURI {
    public static final String PREFIX = "urn:ietf:params:oauth:jwk-thumbprint:";
    private final String hashAlg;
    private final Base64URL thumbprint;

    public ThumbprintURI(String str, Base64URL base64URL) {
        if (str.isEmpty()) {
            c6.f("The hash algorithm must not be empty");
            throw null;
        }
        this.hashAlg = str;
        if (base64URL.toString().isEmpty()) {
            c6.f("The thumbprint must not be empty");
            throw null;
        }
        this.thumbprint = base64URL;
    }

    public static ThumbprintURI compute(JWK jwk) throws JOSEException {
        return new ThumbprintURI("sha-256", jwk.computeThumbprint());
    }

    public static ThumbprintURI parse(URI uri) throws ParseException {
        String string = uri.toString();
        if (!string.startsWith(PREFIX)) {
            y5.e(0, "Illegal JWK thumbprint prefix");
            return null;
        }
        String strSubstring = string.substring(37);
        if (strSubstring.isEmpty()) {
            y5.e(0, "Illegal JWK thumbprint: Missing value");
            return null;
        }
        String[] strArrSplit = strSubstring.split(":");
        if (strArrSplit.length != 2) {
            y5.e(0, "Illegal JWK thumbprint: Unexpected number of components");
            return null;
        }
        if (!strArrSplit[0].isEmpty()) {
            return new ThumbprintURI(strArrSplit[0], new Base64URL(strArrSplit[1]));
        }
        y5.e(0, "Illegal JWK thumbprint: The hash algorithm must not be empty");
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThumbprintURI)) {
            return false;
        }
        ThumbprintURI thumbprintURI = (ThumbprintURI) obj;
        return this.hashAlg.equals(thumbprintURI.hashAlg) && getThumbprint().equals(thumbprintURI.getThumbprint());
    }

    public String getAlgorithmString() {
        return this.hashAlg;
    }

    public Base64URL getThumbprint() {
        return this.thumbprint;
    }

    public int hashCode() {
        return Objects.hash(this.hashAlg, getThumbprint());
    }

    public String toString() {
        return PREFIX + this.hashAlg + ":" + this.thumbprint;
    }

    public URI toURI() {
        return URI.create(toString());
    }

    public static ThumbprintURI parse(String str) throws ParseException {
        try {
            return parse(new URI(str));
        } catch (URISyntaxException e) {
            y5.e(0, e.getMessage());
            return null;
        }
    }
}
