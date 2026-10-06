package defpackage;

import java.io.Serializable;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.security.spec.ECPoint;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u06 implements vz0 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ ArrayBlockingQueue b;
    public final /* synthetic */ Serializable c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u06(h16 h16Var, ArrayBlockingQueue arrayBlockingQueue, ECPoint eCPoint) {
        this.c = h16Var;
        this.b = arrayBlockingQueue;
        this.d = eCPoint;
    }

    @Override // defpackage.vz0
    public final void invoke(Object obj) {
        int i = this.a;
        Object obj2 = this.d;
        ArrayBlockingQueue arrayBlockingQueue = this.b;
        Serializable serializable = this.c;
        switch (i) {
            case 0:
                final vh7 vh7Var = (vh7) serializable;
                final KeyStore.ProtectionParameter protectionParameter = (KeyStore.ProtectionParameter) obj2;
                final cn6 cn6Var = (cn6) obj;
                arrayBlockingQueue.add(cn6.c(new Callable() { // from class: c16
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        w16 w16Var = (w16) cn6Var.b();
                        vh7 vh7Var2 = vh7Var;
                        X509Certificate x509CertificateA = w16Var.a(vh7Var2);
                        KeyStore.ProtectionParameter protectionParameter2 = protectionParameter;
                        char[] password = protectionParameter2 instanceof KeyStore.PasswordProtection ? ((KeyStore.PasswordProtection) protectionParameter2).getPassword() : null;
                        return new KeyStore.PrivateKeyEntry(w16.e.u(w16Var.b) ? j16.a(w16Var.g(vh7Var2).e(), vh7Var2, password) : j16.a(x509CertificateA.getPublicKey(), vh7Var2, password), new Certificate[]{x509CertificateA});
                    }
                }));
                break;
            default:
                final h16 h16Var = (h16) serializable;
                final ECPoint eCPoint = (ECPoint) obj2;
                final cn6 cn6Var2 = (cn6) obj;
                arrayBlockingQueue.add(cn6.c(new Callable() { // from class: g16
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        w16 w16Var = (w16) cn6Var2.b();
                        h16 h16Var2 = h16Var;
                        char[] cArr = h16Var2.c;
                        if (cArr != null) {
                            w16Var.r(cArr);
                        }
                        vh7 vh7Var2 = h16Var2.a;
                        w16Var.getClass();
                        ECPoint eCPoint2 = eCPoint;
                        vo4 vo4Var = eCPoint2.getAffineX().bitLength() > 256 ? vo4.f : vo4.e;
                        zt2 zt2Var = ((so4) vo4Var.b).c;
                        BigInteger affineX = eCPoint2.getAffineX();
                        BigInteger affineY = eCPoint2.getAffineY();
                        int i2 = zt2Var.a;
                        if (zt2Var == zt2.Ed25519 || zt2Var == zt2.X25519) {
                            c6.f("InvalidCurve");
                            return null;
                        }
                        int iCeil = (int) Math.ceil(((double) i2) / 8.0d);
                        byte[] bArrArray = ByteBuffer.allocate((iCeil * 2) + 1).put((byte) 4).put(vm4.s(iCeil, affineX)).put(vm4.s(iCeil, affineY)).array();
                        ms8.B(4, w16.f, "Performing key agreement with key in slot {} of type {}", vh7Var2, vo4Var);
                        return w16Var.q(vh7Var2, vo4Var, bArrArray, true);
                    }
                }));
                break;
        }
    }

    public /* synthetic */ u06(ArrayBlockingQueue arrayBlockingQueue, vh7 vh7Var, KeyStore.ProtectionParameter protectionParameter) {
        this.b = arrayBlockingQueue;
        this.c = vh7Var;
        this.d = protectionParameter;
    }
}
