package okhttp3;

import defpackage.bt3;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.kn3;
import defpackage.l0;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.t53;
import defpackage.y5;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Handshake {
    public final TlsVersion a;
    public final CipherSuite b;
    public final List c;
    public final gv7 d;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static Handshake a(SSLSession sSLSession) throws IOException {
            List listK;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                l0.e("cipherSuite == null");
                return null;
            }
            if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") || cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                y5.m("cipherSuite == ".concat(cipherSuite));
                return null;
            }
            CipherSuite cipherSuiteB = CipherSuite.b.b(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                l0.e("tlsVersion == null");
                return null;
            }
            if ("NONE".equals(protocol)) {
                y5.m("tlsVersion == NONE");
                return null;
            }
            TlsVersion.b.getClass();
            TlsVersion tlsVersionA = TlsVersion.Companion.a(protocol);
            try {
                listK = _UtilJvmKt.k(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                listK = ov2.a;
            }
            return new Handshake(tlsVersionA, cipherSuiteB, _UtilJvmKt.k(sSLSession.getLocalCertificates()), new t53(1, listK));
        }
    }

    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List list, bt3 bt3Var) {
        this.a = tlsVersion;
        this.b = cipherSuite;
        this.c = list;
        this.d = new gv7(new kn3(bt3Var, 4));
    }

    public final List a() {
        return (List) this.d.getValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake handshake = (Handshake) obj;
        return handshake.a == this.a && handshake.b == this.b && pe4.d(handshake.a(), a()) && handshake.c.equals(this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((a().hashCode() + ((this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> listA = a();
        ArrayList arrayList = new ArrayList(hl1.G0(listA, 10));
        for (Certificate certificate : listA) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                type2.getClass();
            }
            arrayList.add(type2);
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.a);
        sb.append(" cipherSuite=");
        sb.append(this.b);
        sb.append(" peerCertificates=");
        sb.append(string);
        sb.append(" localCertificates=");
        List<Certificate> list = this.c;
        ArrayList arrayList2 = new ArrayList(hl1.G0(list, 10));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                type.getClass();
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
