package defpackage;

import java.util.Arrays;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uu6 extends ol1 {
    public static final l15 k = o15.b(uu6.class);
    public la e;
    public jw5 f;

    @Override // defpackage.ol1
    public final boolean c(ev6 ev6Var) {
        return ev6Var instanceof vu6;
    }

    @Override // defpackage.ol1
    public final void k(ev6 ev6Var) throws va8 {
        vu6 vu6Var = (vu6) ev6Var;
        l15 l15Var = k;
        l15Var.D(vu6Var, "Decrypting packet {}");
        jw5 jw5Var = this.f;
        if (jw5Var.c.a() && vu6Var.b.a() != 0) {
            dv6 dv6Var = vu6Var.a;
            nu6 nu6Var = (nu6) dv6Var;
            if (nu6Var.e == 1) {
                j87 j87VarC = this.e.c(Long.valueOf(nu6Var.f));
                if (j87VarC == null) {
                    ((ol1) this.b).t(new kd2(ev6Var.a));
                    return;
                }
                SecretKeySpec secretKeySpec = j87VarC.t.e;
                l15 l15Var2 = jw5.d;
                byte[] bArrCopyOf = Arrays.copyOf(((nu6) dv6Var).c, jw5Var.b.c);
                try {
                    zu6 zu6Var = new zu6();
                    ((nu6) dv6Var).d(zu6Var);
                    zu6Var.c = 20;
                    byte[] bArrC = zu6Var.c();
                    zu6 zu6Var2 = vu6Var.b;
                    int i = ((nu6) dv6Var).d;
                    zu6Var2.getClass();
                    byte[] bArr = new byte[i];
                    zu6Var2.o(bArr, i);
                    byte[] bArr2 = ((nu6) dv6Var).b;
                    lv1 lv1Var = jw5Var.a;
                    String str = jw5Var.b.b;
                    lv1Var.getClass();
                    gf0 gf0VarF = lv1.f(str);
                    d dVar = gf0VarF.a;
                    dVar.a(false, gf0VarF.a(secretKeySpec.getEncoded(), new GCMParameterSpec(128, bArrCopyOf)));
                    dVar.d(bArrC, bArrC.length);
                    int iC = dVar.c(i);
                    byte[] bArr3 = new byte[iC];
                    dVar.b(i, bArr, bArr3);
                    int length = bArr2.length;
                    int iE = dVar.e(length);
                    byte[] bArr4 = new byte[iE];
                    try {
                        dVar.doFinal(bArr4, dVar.b(length, bArr2, bArr4));
                        if (iC != 0) {
                            byte[] bArr5 = new byte[iC + iE];
                            System.arraycopy(bArr3, 0, bArr5, 0, iC);
                            System.arraycopy(bArr4, 0, bArr5, iC, iE);
                            bArr4 = bArr5;
                        }
                        byte[] bArrCopyOf2 = Arrays.copyOf(bArr4, 4);
                        if (Arrays.equals(nu6.h, bArrCopyOf2)) {
                            l15Var.t(ev6Var, "Encountered a nested encrypted packet in packet {}, disconnecting the transport");
                            throw new va8("Cannot nest an encrypted packet in encrypted packet " + ev6Var);
                        }
                        if (Arrays.equals(ns6.c, bArrCopyOf2)) {
                            l15Var.D(ev6Var, "Packet {} is compressed.");
                            try {
                                ((ol1) this.b).t(new kd2(bArr4));
                                return;
                            } catch (iw0 e) {
                                throw new gv6("Could not load compression header", e);
                            }
                        }
                        if (!Arrays.equals(ut6.q, bArrCopyOf2)) {
                            l15Var.t(ev6Var, "Could not determine the encrypted packet contents of packet {}");
                            throw new va8("Could not determine the encrypted packet data, disconnecting");
                        }
                        try {
                            ts6 ts6Var = new ts6(bArr4);
                            l15Var.m(vu6Var, ts6Var, "Decrypted packet {} is packet {}.");
                            if (((ut6) ts6Var.a).h == ((nu6) dv6Var).f) {
                                ((ol1) this.b).t(ts6Var);
                                return;
                            } else {
                                l15Var.e(vu6Var, ts6Var, "Mismatched sessionId between encrypted packet {} and decrypted contents {}");
                                ((ol1) this.b).t(new kd2(ts6Var.a));
                                return;
                            }
                        } catch (iw0 e2) {
                            throw new gv6("Could not load SMB2 Packet", e2);
                        }
                    } catch (yf4 e3) {
                        throw new h67(e3);
                    }
                } catch (h67 e4) {
                    l15Var2.t(vu6Var, "Security exception while decrypting packet << {} >>");
                    throw new gv6(e4);
                } catch (iw0 e5) {
                    l15Var2.t(vu6Var, "Could not read cipherText from packet << {} >>");
                    throw new gv6("Could not read cipherText from packet", e5);
                }
            }
        }
        ((ol1) this.b).t(new kd2(ev6Var.a));
    }
}
