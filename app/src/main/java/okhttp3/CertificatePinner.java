package okhttp3;

import defpackage.el1;
import defpackage.pe4;
import java.util.ArrayList;
import java.util.Set;
import okhttp3.internal.tls.CertificateChainCleaner;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CertificatePinner {
    public static final CertificatePinner c = new CertificatePinner(el1.z1(new Builder().a), null);
    public final Set a;
    public final CertificateChainCleaner b;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public final ArrayList a = new ArrayList();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Pin {
        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Pin);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    public CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner) {
        this.a = set;
        this.b = certificateChainCleaner;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CertificatePinner)) {
            return false;
        }
        CertificatePinner certificatePinner = (CertificatePinner) obj;
        return certificatePinner.a.equals(this.a) && pe4.d(certificatePinner.b, this.b);
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.b;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }
}
