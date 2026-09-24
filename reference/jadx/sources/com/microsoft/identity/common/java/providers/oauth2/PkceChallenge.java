package com.microsoft.identity.common.java.providers.oauth2;

import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import defpackage.e6;
import defpackage.y77;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PkceChallenge implements Serializable {

    @y77("code_challenge")
    private final String mCodeChallenge;

    @y77("code_challenge_method")
    private final String mCodeChallengeMethod = "S256";
    private final transient String mCodeVerifier;

    private PkceChallenge(String str, String str2) {
        this.mCodeVerifier = str;
        this.mCodeChallenge = str2;
    }

    public static PkceChallenge newPkceChallenge() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        int i = Base64Util.a;
        String strEncodeUrlSafeString = LibraryInfoHelper.encodeUrlSafeString(bArr);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(strEncodeUrlSafeString.getBytes("ISO_8859_1"));
            return new PkceChallenge(strEncodeUrlSafeString, LibraryInfoHelper.encodeUrlSafeString(messageDigest.digest()));
        } catch (UnsupportedEncodingException e) {
            e6.j("Every implementation of the Java platform is required to support ISO-8859-1.Consult the release documentation for your implementation.", e);
            return null;
        } catch (NoSuchAlgorithmException e2) {
            e6.j("Failed to generate the code verifier challenge", e2);
            return null;
        }
    }

    public final String getCodeChallenge() {
        return this.mCodeChallenge;
    }

    public final String getCodeChallengeMethod() {
        return this.mCodeChallengeMethod;
    }

    public final String getCodeVerifier() {
        return this.mCodeVerifier;
    }
}
