package com.jcraft.jsch;

import defpackage.y5;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class IO {
    public InputStream a;
    public OutputStream b;
    public OutputStream c;
    public boolean d = false;
    public boolean e = false;
    public boolean f = false;

    public final void a() {
        try {
            InputStream inputStream = this.a;
            if (inputStream != null && !this.d) {
                inputStream.close();
            }
            this.a = null;
        } catch (Exception unused) {
        }
        try {
            OutputStream outputStream = this.b;
            if (outputStream != null && !this.e) {
                outputStream.close();
            }
            this.b = null;
        } catch (Exception unused2) {
        }
        try {
            OutputStream outputStream2 = this.c;
            if (outputStream2 != null && !this.f) {
                outputStream2.close();
            }
            this.c = null;
        } catch (Exception unused3) {
        }
    }

    public final int b() {
        return this.a.read();
    }

    public final void c(byte[] bArr, int i, int i2) throws IOException {
        do {
            int i3 = this.a.read(bArr, i, i2);
            if (i3 < 0) {
                y5.m("End of IO Stream Read");
                return;
            } else {
                i += i3;
                i2 -= i3;
            }
        } while (i2 > 0);
    }
}
