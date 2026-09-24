package com.nimbusds.jose.jwk;

import com.nimbusds.jose.HeaderParameterNames;
import defpackage.c6;
import defpackage.y5;
import java.io.Serializable;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.util.HashSet;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class KeyUse implements Serializable {
    private static final long serialVersionUID = 1;
    private final String identifier;
    public static final KeyUse SIGNATURE = new KeyUse("sig");
    public static final KeyUse ENCRYPTION = new KeyUse(HeaderParameterNames.ENCRYPTION_ALGORITHM);

    public KeyUse(String str) {
        if (str != null) {
            this.identifier = str;
        } else {
            c6.f("The key use identifier must not be null");
            throw null;
        }
    }

    public static KeyUse from(X509Certificate x509Certificate) {
        if (x509Certificate.getKeyUsage() == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        if (x509Certificate.getKeyUsage()[0] || x509Certificate.getKeyUsage()[1]) {
            hashSet.add(SIGNATURE);
        }
        if (x509Certificate.getKeyUsage()[0] && x509Certificate.getKeyUsage()[2]) {
            hashSet.add(ENCRYPTION);
        }
        if (x509Certificate.getKeyUsage()[0] && x509Certificate.getKeyUsage()[4]) {
            hashSet.add(ENCRYPTION);
        }
        if (x509Certificate.getKeyUsage()[2] || x509Certificate.getKeyUsage()[3] || x509Certificate.getKeyUsage()[4]) {
            hashSet.add(ENCRYPTION);
        }
        if (x509Certificate.getKeyUsage()[5] || x509Certificate.getKeyUsage()[6]) {
            hashSet.add(SIGNATURE);
        }
        if (hashSet.size() == 1) {
            return (KeyUse) hashSet.iterator().next();
        }
        return null;
    }

    public static KeyUse parse(String str) throws ParseException {
        if (str == null) {
            return null;
        }
        KeyUse keyUse = SIGNATURE;
        if (str.equals(keyUse.identifier())) {
            return keyUse;
        }
        KeyUse keyUse2 = ENCRYPTION;
        if (str.equals(keyUse2.identifier())) {
            return keyUse2;
        }
        if (!str.trim().isEmpty()) {
            return new KeyUse(str);
        }
        y5.e(0, "JWK use value must not be empty or blank");
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof KeyUse) {
            return Objects.equals(this.identifier, ((KeyUse) obj).identifier);
        }
        return false;
    }

    public String getValue() {
        return identifier();
    }

    public int hashCode() {
        return Objects.hash(this.identifier);
    }

    public String identifier() {
        return this.identifier;
    }

    public String toString() {
        return identifier();
    }
}
