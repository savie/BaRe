package com.nimbusds.jose.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DeflateUtils {
    private static final boolean NOWRAP = true;

    private DeflateUtils() {
    }

    public static byte[] compress(byte[] bArr) throws Throwable {
        Deflater deflater;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = null;
        try {
            deflater = new Deflater(8, NOWRAP);
            try {
                DeflaterOutputStream deflaterOutputStream2 = new DeflaterOutputStream(byteArrayOutputStream, deflater);
                try {
                    deflaterOutputStream2.write(bArr);
                    deflaterOutputStream2.close();
                    deflater.end();
                    return byteArrayOutputStream.toByteArray();
                } catch (Throwable th) {
                    th = th;
                    deflaterOutputStream = deflaterOutputStream2;
                    if (deflaterOutputStream != null) {
                        deflaterOutputStream.close();
                    }
                    if (deflater != null) {
                        deflater.end();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            deflater = null;
        }
    }

    public static byte[] decompress(byte[] bArr) throws Throwable {
        Inflater inflater;
        InflaterInputStream inflaterInputStream = null;
        try {
            inflater = new Inflater(NOWRAP);
            try {
                InflaterInputStream inflaterInputStream2 = new InflaterInputStream(new ByteArrayInputStream(bArr), inflater);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int i = inflaterInputStream2.read(bArr2);
                        if (i <= 0) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            inflaterInputStream2.close();
                            inflater.end();
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr2, 0, i);
                    }
                } catch (Throwable th) {
                    th = th;
                    inflaterInputStream = inflaterInputStream2;
                    if (inflaterInputStream != null) {
                        inflaterInputStream.close();
                    }
                    if (inflater != null) {
                        inflater.end();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inflater = null;
        }
    }
}
