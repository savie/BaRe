package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.ByteUtils;
import com.nimbusds.jose.util.IntegerOverflowException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AAD {
    public static byte[] compute(Base64URL base64URL) {
        return base64URL.toString().getBytes(StandardCharsets.US_ASCII);
    }

    public static byte[] computeLength(byte[] bArr) throws IntegerOverflowException {
        return ByteBuffer.allocate(8).putLong(ByteUtils.safeBitLength(bArr)).array();
    }

    public static byte[] compute(JWEHeader jWEHeader) {
        return compute(jWEHeader.toBase64URL());
    }
}
