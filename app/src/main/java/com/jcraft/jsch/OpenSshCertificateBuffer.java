package com.jcraft.jsch;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class OpenSshCertificateBuffer extends Buffer {
    public OpenSshCertificateBuffer(byte[] bArr) {
        super(bArr);
        this.d = 0;
        this.c = bArr.length;
    }

    public final LinkedHashMap i() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (getLength() > 0) {
            OpenSshCertificateBuffer openSshCertificateBuffer = new OpenSshCertificateBuffer(getString());
            while (openSshCertificateBuffer.getLength() > 0) {
                byte[] string = openSshCertificateBuffer.getString();
                Charset charset = StandardCharsets.UTF_8;
                byte[] bArr = Util.a;
                String str = new String(string, 0, string.length, charset);
                byte[] string2 = openSshCertificateBuffer.getString();
                linkedHashMap.put(str, new String(string2, 0, string2.length, charset));
            }
        }
        return linkedHashMap;
    }
}
