package com.microsoft.identity.common.internal.fido;

import android.util.Base64;
import com.microsoft.identity.common.logging.Logger;
import defpackage.dj7;
import defpackage.f51;
import defpackage.ge;
import defpackage.hy0;
import defpackage.l73;
import defpackage.ly8;
import defpackage.nd4;
import defpackage.ph6;
import defpackage.pw5;
import defpackage.x50;
import defpackage.xs1;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class WebAuthnJsonUtil {
    private static final String TAG = String.valueOf(ph6.a(WebAuthnJsonUtil.class).c());
    public static final /* synthetic */ int a = 0;

    public static String extractAaguidFromAttestationObject(String str) throws Exception {
        pw5 pw5Var;
        hy0 hy0Var = hy0.d;
        hy0 hy0VarS = ge.s(str);
        if (hy0VarS == null) {
            throw new Exception("Failed to base64url-decode the attestation object.");
        }
        byte[] bArr = hy0VarS.a;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        byte[] bytes = "authData".getBytes(f51.a);
        bytes.getClass();
        int length = (bArrCopyOf.length - bytes.length) + 1;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            nd4 nd4VarF = l73.F(i, bytes.length + i);
            nd4VarF.getClass();
            if (Arrays.equals(nd4VarF.isEmpty() ? new byte[0] : x50.k0(bArrCopyOf, nd4VarF.a, nd4VarF.b + 1), bytes)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            throw new Exception(xs1.m(new StringBuilder("'authData' key not found in attestation object (size: "), bArrCopyOf.length, " bytes)."));
        }
        int length2 = bytes.length + i;
        if (length2 >= bArrCopyOf.length) {
            throw new Exception(xs1.m(dj7.r(i, "Attestation object truncated after 'authData' key (offset: ", ", size: "), bArrCopyOf.length, " bytes)."));
        }
        byte b = bArrCopyOf[length2];
        int i2 = b & 255;
        int i3 = (i2 >> 5) & 7;
        if (i3 != 2) {
            throw new Exception("Invalid CBOR major type for 'authData': expected byte string (major type 2) but found " + i3 + " at offset " + length2 + '.');
        }
        int i4 = b & 31;
        if (i4 >= 0 && i4 < 24) {
            pw5Var = new pw5(1, Integer.valueOf(i4));
        } else if (i4 == 24) {
            int i5 = length2 + 1;
            if (i5 >= bArrCopyOf.length) {
                throw new Exception(xs1.m(dj7.r(i5, "Attestation object truncated while reading 'authData' length (need 1 byte at offset ", ", size: "), bArrCopyOf.length, " bytes)."));
            }
            pw5Var = new pw5(2, Integer.valueOf(bArrCopyOf[i5] & 255));
        } else if (i4 == 25) {
            int i6 = length2 + 1;
            int i7 = length2 + 2;
            if (i7 >= bArrCopyOf.length) {
                throw new Exception(xs1.m(dj7.r(i6, "Attestation object truncated while reading 'authData' length (need 2 bytes starting at offset ", ", size: "), bArrCopyOf.length, " bytes)."));
            }
            pw5Var = new pw5(3, Integer.valueOf(((bArrCopyOf[i6] & 255) << 8) | (bArrCopyOf[i7] & 255)));
        } else {
            if (i4 != 26) {
                ly8.j(16);
                String string = Integer.toString(i2, 16);
                string.getClass();
                String upperCase = string.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                throw new Exception("Unsupported CBOR length encoding for 'authData': initial byte 0x" + upperCase + " at offset " + length2 + '.');
            }
            int i8 = length2 + 1;
            int i9 = length2 + 4;
            if (i9 >= bArrCopyOf.length) {
                throw new Exception(xs1.m(dj7.r(i8, "Attestation object truncated while reading 'authData' length (need 4 bytes starting at offset ", ", size: "), bArrCopyOf.length, " bytes)."));
            }
            pw5Var = new pw5(5, Integer.valueOf(((bArrCopyOf[i8] & 255) << 24) | ((bArrCopyOf[length2 + 2] & 255) << 16) | ((bArrCopyOf[length2 + 3] & 255) << 8) | (bArrCopyOf[i9] & 255)));
        }
        int iIntValue = ((Number) pw5Var.a).intValue();
        int iIntValue2 = ((Number) pw5Var.b).intValue();
        int i10 = length2 + iIntValue;
        int i11 = i10 + iIntValue2;
        if (i11 > bArrCopyOf.length) {
            throw new Exception(xs1.m(xs1.n("Attestation object truncated: declared 'authData' length ", iIntValue2, " at offset ", " exceeds buffer size ", i10), bArrCopyOf.length, " bytes."));
        }
        int i12 = i10 + 32;
        if (i12 >= i11) {
            throw new Exception(dj7.j("authData truncated: flags byte missing at offset ", i12, " (authData length: ", " bytes).", iIntValue2));
        }
        if ((bArrCopyOf[i12] & 64) == 0) {
            throw new Exception("AT flag not set in authData flags, attested credential data is absent, AAGUID cannot be extracted.");
        }
        int i13 = i10 + 37;
        int i14 = i10 + 53;
        if (i14 > i11) {
            throw new Exception(dj7.j("authData truncated: expected 16 AAGUID bytes at offset ", i13, " (authData length: ", " bytes).", iIntValue2));
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(x50.k0(bArrCopyOf, i13, i14));
        String string2 = new UUID(byteBufferWrap.getLong(), byteBufferWrap.getLong()).toString();
        string2.getClass();
        return string2;
    }

    public static String extractAaguidFromRegistrationResponse(String str) {
        str.getClass();
        try {
            String string = new JSONObject(str).getJSONObject("response").getString("attestationObject");
            string.getClass();
            return extractAaguidFromAttestationObject(string);
        } catch (Exception e) {
            String str2 = "Failed to extract AAGUID from passkey registration response: " + e.getMessage();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn(TAG, str2);
            return null;
        }
    }

    public static String extractAuthenticatorAssertionResponseJson(String str) throws JSONException {
        str.getClass();
        String strN = dj7.n(new StringBuilder(), TAG, ":extractAuthenticatorAssertionResponseJson");
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("response");
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("id", jSONObject.get("id"));
        jSONObject3.put("authenticatorData", jSONObject2.get("authenticatorData"));
        jSONObject3.put("clientDataJSON", jSONObject2.get("clientDataJSON"));
        jSONObject3.put("signature", jSONObject2.get("signature"));
        if (jSONObject2.isNull("userHandle")) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info(strN, "UserHandle not found in assertion response.");
        } else {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info(strN, "UserHandle was included in assertion response.");
            jSONObject3.put("userHandle", jSONObject2.get("userHandle"));
        }
        String string = jSONObject3.toString();
        string.getClass();
        return string;
    }

    public static String extractOriginFromRegistrationResponse(String str) {
        str.getClass();
        try {
            byte[] bArrDecode = Base64.decode(new JSONObject(str).getJSONObject("response").getString("clientDataJSON"), 8);
            bArrDecode.getClass();
            return new JSONObject(new String(bArrDecode, f51.a)).getString("origin");
        } catch (Exception e) {
            String str2 = "Failed to extract origin from passkey registration response: " + e.getMessage();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn(TAG, str2);
            return null;
        }
    }
}
