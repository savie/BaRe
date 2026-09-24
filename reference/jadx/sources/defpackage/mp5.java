package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mp5 implements l80 {
    public static final l15 g = o15.b(mp5.class);
    public static final byte[] h;
    public static final byte[] i;
    public fp5 a;
    public lv1 b;
    public byte[] c;
    public byte[] d;
    public AtomicInteger e;
    public ArrayList f;

    static {
        Charset charset = StandardCharsets.US_ASCII;
        h = "session key to client-to-server signing key magic constant\u0000".getBytes(charset);
        i = "session key to client-to-server sealing key magic constant\u0000".getBytes(charset);
    }

    @Override // defpackage.l80
    public final kc a(h80 h80Var, byte[] bArr, xr1 xr1Var) throws IOException {
        byte[] bArrCopyOf;
        kc kcVarA = this.a.a(h80Var, bArr, xr1Var);
        if (kcVarA == null) {
            return null;
        }
        byte[] bArrCopyOf2 = (byte[]) kcVarA.c;
        AbstractSet abstractSet = (AbstractSet) kcVarA.e;
        l15 l15Var = g;
        if (bArrCopyOf2 != null) {
            l15Var.k("Calculating signing and sealing keys for NTLM Extended Session Security");
            lp5 lp5Var = lp5.NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY;
            this.c = abstractSet.contains(lp5Var) ? ip5.b(this.b, bArrCopyOf2, h) : null;
            bw8 bw8Var = (bw8) kcVarA.d;
            boolean zContains = abstractSet.contains(lp5Var);
            lp5 lp5Var2 = lp5.NTLMSSP_NEGOTIATE_56;
            if (zContains) {
                if (!abstractSet.contains(lp5.NTLMSSP_NEGOTIATE_128)) {
                    bArrCopyOf2 = abstractSet.contains(lp5Var2) ? Arrays.copyOf(bArrCopyOf2, 7) : Arrays.copyOf(bArrCopyOf2, 5);
                }
                bArrCopyOf = ip5.b(this.b, bArrCopyOf2, i);
            } else if (abstractSet.contains(lp5.NTLMSSP_NEGOTIATE_LM_KEY) || (abstractSet.contains(lp5.NTLMSSP_NEGOTIATE_DATAGRAM) && bw8Var.d.a >= yv8.b.a)) {
                bArrCopyOf = new byte[8];
                if (abstractSet.contains(lp5Var2)) {
                    System.arraycopy(bArrCopyOf2, 0, bArrCopyOf, 0, 7);
                    bArrCopyOf[7] = -96;
                } else {
                    System.arraycopy(bArrCopyOf2, 0, bArrCopyOf, 0, 5);
                    bArrCopyOf[5] = -27;
                    bArrCopyOf[6] = 56;
                    bArrCopyOf[7] = -80;
                }
            } else {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf2, bArrCopyOf2.length);
            }
            this.d = bArrCopyOf;
        }
        s51 s51Var = (s51) kcVarA.b;
        if (s51Var instanceof zl5) {
            this.f = ((zl5) s51Var).d;
        }
        if (this.c == null || !(s51Var instanceof am5)) {
            return kcVarA;
        }
        am5 am5Var = (am5) s51Var;
        l15Var.k("Signing with NTLM Extended Session Security");
        int andIncrement = this.e.getAndIncrement();
        byte[] bArr2 = this.c;
        byte[] bArr3 = {(byte) (andIncrement & 255), (byte) ((andIncrement >> 8) & 255), (byte) ((andIncrement >> 16) & 255), (byte) ((andIncrement >> 24) & 255)};
        w1 w1Var = new w1(new ArrayList(this.f));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        n1 n1Var = new n1(new nh4(5), byteArrayOutputStream);
        try {
            n1Var.a(w1Var);
            n1Var.close();
            byte[] bArrA = ip5.a(this.b, bArr2, bArr3, byteArrayOutputStream.toByteArray());
            byte[] bArrC = new byte[8];
            System.arraycopy(bArrA, 0, bArrC, 0, 8);
            if (abstractSet.contains(lp5.NTLMSSP_NEGOTIATE_KEY_EXCH)) {
                bArrC = ip5.c(this.b, this.d, bArrC);
            }
            zu6 zu6Var = new zu6();
            zu6Var.l(1L);
            zu6Var.i(bArrC, 8);
            zu6Var.l(andIncrement);
            am5Var.g = zu6Var.c();
            return kcVarA;
        } catch (Throwable th) {
            try {
                n1Var.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.l80
    public final boolean b(h80 h80Var) {
        return this.a.b(h80Var);
    }

    @Override // defpackage.l80
    public final void c(di7 di7Var) {
        this.a.c(di7Var);
        this.b = di7Var.h;
    }
}
