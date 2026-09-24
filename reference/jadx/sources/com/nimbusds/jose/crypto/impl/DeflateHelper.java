package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.CompressionAlgorithm;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.DeflateUtils;
import defpackage.c6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class DeflateHelper {
    public static byte[] applyCompression(JWEHeader jWEHeader, byte[] bArr) throws JOSEException {
        CompressionAlgorithm compressionAlgorithm = jWEHeader.getCompressionAlgorithm();
        if (compressionAlgorithm == null) {
            return bArr;
        }
        if (!compressionAlgorithm.equals(CompressionAlgorithm.DEF)) {
            c6.e(compressionAlgorithm, "Unsupported compression algorithm: ");
            return null;
        }
        try {
            return DeflateUtils.compress(bArr);
        } catch (Exception e) {
            throw new JOSEException("Couldn't compress plain text: " + e.getMessage(), e);
        }
    }

    public static byte[] applyDecompression(JWEHeader jWEHeader, byte[] bArr) throws JOSEException {
        CompressionAlgorithm compressionAlgorithm = jWEHeader.getCompressionAlgorithm();
        if (compressionAlgorithm == null) {
            return bArr;
        }
        if (!compressionAlgorithm.equals(CompressionAlgorithm.DEF)) {
            c6.e(compressionAlgorithm, "Unsupported compression algorithm: ");
            return null;
        }
        try {
            return DeflateUtils.decompress(bArr);
        } catch (Exception e) {
            throw new JOSEException("Couldn't decompress plain text: " + e.getMessage(), e);
        }
    }
}
