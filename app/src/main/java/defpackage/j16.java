package defpackage;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import javax.security.auth.Destroyable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j16 implements PrivateKey, Destroyable {
    public final vh7 a;
    public final vo4 b;
    public final char[] c;
    public boolean d = false;

    public j16(vh7 vh7Var, vo4 vo4Var, char[] cArr) {
        this.a = vh7Var;
        this.b = vo4Var;
        this.c = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0103  */
    /* JADX WARN: Code duplicated, block: B:48:0x010f  */
    public static j16 a(PublicKey publicKey, vh7 vh7Var, char[] cArr) {
        zt2 zt2Var;
        vo4 vo4Var;
        zt2 zt2Var2;
        byte[] bArr;
        qb6 nb6Var;
        int i = 0;
        if (publicKey instanceof RSAKey) {
            vo4[] vo4VarArrValues = vo4.values();
            int length = vo4VarArrValues.length;
            while (true) {
                if (i >= length) {
                    c6.f("Unsupported key type");
                    return null;
                }
                vo4Var = vo4VarArrValues[i];
                to4 to4Var = vo4Var.b;
                if (to4Var.a == 1 && to4Var.b == ((RSAKey) publicKey).getModulus().bitLength()) {
                    break;
                }
                i++;
            }
            return vo4Var.b.a == 1 ? new i16(vh7Var, vo4Var, ((RSAPublicKey) publicKey).getModulus(), cArr) : new h16(vh7Var, vo4Var, ((ECPublicKey) publicKey).getParams(), cArr);
        }
        vo4 vo4Var2 = vo4.RSA1024;
        if (publicKey instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
            if (eCPublicKey instanceof RSAPublicKey) {
                RSAPublicKey rSAPublicKey = (RSAPublicKey) eCPublicKey;
                nb6Var = new pb6(rSAPublicKey.getModulus(), rSAPublicKey.getPublicExponent());
            } else {
                try {
                    LinkedHashMap linkedHashMapO = cy0.o(cy0.K(eCPublicKey.getEncoded(), 48));
                    ArrayList arrayListN = cy0.n((byte[]) linkedHashMapO.get(48));
                    byte[] bArrB = ((q48) arrayListN.get(0)).b();
                    byte[] bArr2 = (byte[]) linkedHashMapO.get(3);
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 1, bArr2.length);
                    if (Arrays.equals(qb6.b, bArrB)) {
                        nb6Var = ob6.i(zt2.a(((q48) arrayListN.get(1)).b()), bArrCopyOfRange);
                    } else {
                        Iterator it = Arrays.asList(zt2.Ed25519, zt2.X25519).iterator();
                        do {
                            if (!it.hasNext()) {
                                g84.c();
                                return null;
                            }
                            zt2Var2 = (zt2) it.next();
                            bArr = zt2Var2.b;
                        } while (!Arrays.equals(Arrays.copyOf(bArr, bArr.length), bArrB));
                        nb6Var = new nb6(zt2Var2, bArrCopyOfRange);
                    }
                } catch (vk0 e) {
                    y5.k(e);
                    return null;
                }
            }
            zt2Var = ((ob6) nb6Var).c;
        } else {
            if (!(publicKey instanceof ECPrivateKey)) {
                c6.f("Unsupported key type");
                return null;
            }
            zt2Var = ((j66) l66.a((ECPrivateKey) publicKey)).d;
        }
        vo4[] vo4VarArrValues2 = vo4.values();
        int length2 = vo4VarArrValues2.length;
        while (true) {
            if (i >= length2) {
                c6.f("Unsupported key type");
                return null;
            }
            vo4 vo4Var3 = vo4VarArrValues2[i];
            to4 to4Var2 = vo4Var3.b;
            if ((to4Var2 instanceof so4) && ((so4) to4Var2).c == zt2Var) {
                vo4Var = vo4Var3;
                break;
            }
            i++;
        }
        if (vo4Var.b.a == 1) {
        }
    }

    public final byte[] b(vz0 vz0Var, final byte[] bArr) {
        if (this.d) {
            l0.e("PivPrivateKey has been destroyed");
            return null;
        }
        final ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        vz0Var.invoke(new vz0() { // from class: e16
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                final cn6 cn6Var = (cn6) obj;
                final j16 j16Var = this.a;
                final byte[] bArr2 = bArr;
                arrayBlockingQueue.add(cn6.c(new Callable() { // from class: f16
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        w16 w16Var = (w16) cn6Var.b();
                        j16 j16Var2 = j16Var;
                        char[] cArr = j16Var2.c;
                        if (cArr != null) {
                            w16Var.r(cArr);
                        }
                        vh7 vh7Var = j16Var2.a;
                        vo4 vo4Var = j16Var2.b;
                        w16Var.getClass();
                        to4 to4Var = vo4Var.b;
                        int i = to4Var.b / 8;
                        byte[] bArrCopyOf = bArr2;
                        if (bArrCopyOf.length > i) {
                            if (to4Var.a != 2) {
                                c6.f("Payload too large for key");
                                return null;
                            }
                            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i);
                        } else if (bArrCopyOf.length < i) {
                            byte[] bArr3 = new byte[i];
                            System.arraycopy(bArrCopyOf, 0, bArr3, i - bArrCopyOf.length, bArrCopyOf.length);
                            bArrCopyOf = bArr3;
                        }
                        ms8.B(4, w16.f, "Decrypting data with key in slot {} of type {}", vh7Var, vo4Var);
                        return w16Var.q(vh7Var, vo4Var, bArrCopyOf, false);
                    }
                }));
            }
        });
        return (byte[]) ((cn6) arrayBlockingQueue.take()).b();
    }

    @Override // javax.security.auth.Destroyable
    public final void destroy() {
        char[] cArr = this.c;
        if (cArr != null) {
            Arrays.fill(cArr, (char) 0);
        }
        this.d = true;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        int i = this.b.b.a;
        if (i == 1) {
            return "RSA";
        }
        if (i == 2) {
            return "EC";
        }
        throw null;
    }

    @Override // java.security.Key
    public final byte[] getEncoded() {
        return null;
    }

    @Override // java.security.Key
    public final String getFormat() {
        return null;
    }

    @Override // javax.security.auth.Destroyable
    public final boolean isDestroyed() {
        return this.d;
    }
}
