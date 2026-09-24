package org.swiftapps.swiftbackup.cloud.protocols.filen;

import defpackage.bn6;
import defpackage.fz5;
import defpackage.gb3;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.u48;
import defpackage.uq7;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FilenCredentials {
    public static final gb3 Companion = new gb3();
    private static final String PREF_KEY = "filen_credentials";
    private final String email;
    private final String password;
    private final FilenSession session;

    public /* synthetic */ FilenCredentials(String str, String str2, FilenSession filenSession, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : filenSession);
    }

    public static /* synthetic */ FilenCredentials copy$default(FilenCredentials filenCredentials, String str, String str2, FilenSession filenSession, int i, Object obj) {
        if ((i & 1) != 0) {
            str = filenCredentials.email;
        }
        if ((i & 2) != 0) {
            str2 = filenCredentials.password;
        }
        if ((i & 4) != 0) {
            filenSession = filenCredentials.session;
        }
        return filenCredentials.copy(str, str2, filenSession);
    }

    public final String component1() {
        return this.email;
    }

    public final String component2() {
        return this.password;
    }

    public final FilenSession component3() {
        return this.session;
    }

    public final FilenCredentials copy(String str, String str2, FilenSession filenSession) {
        str.getClass();
        str2.getClass();
        return new FilenCredentials(str, str2, filenSession);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilenCredentials)) {
            return false;
        }
        FilenCredentials filenCredentials = (FilenCredentials) obj;
        return pe4.d(this.email, filenCredentials.email) && pe4.d(this.password, filenCredentials.password) && pe4.d(this.session, filenCredentials.session);
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getPassword() {
        return this.password;
    }

    public final FilenSession getSession() {
        return this.session;
    }

    public int hashCode() {
        int iG = fz5.g(this.email.hashCode() * 31, 31, this.password);
        FilenSession filenSession = this.session;
        return iG + (filenSession == null ? 0 : filenSession.hashCode());
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0029  */
    public final boolean isValid() {
        Object bn6Var;
        boolean z;
        FilenSession filenSession;
        try {
            if (nq7.j0(this.email)) {
                z = false;
            } else {
                z = true;
                if (this.password.length() <= 0 && ((filenSession = this.session) == null || !uq7.P(filenSession.getEmail(), this.email, true) || !filenSession.hasRestorableCryptoState())) {
                    z = false;
                }
            }
            bn6Var = Boolean.valueOf(z);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Object obj = Boolean.FALSE;
        if (bn6Var instanceof bn6) {
            bn6Var = obj;
        }
        return ((Boolean) bn6Var).booleanValue();
    }

    public final FilenSession restorableSession() {
        FilenSession filenSession = this.session;
        if (filenSession != null && uq7.P(filenSession.getEmail(), this.email, true) && filenSession.hasRestorableCryptoState()) {
            return filenSession;
        }
        return null;
    }

    public String toString() {
        String str = this.email;
        String str2 = this.password;
        FilenSession filenSession = this.session;
        StringBuilder sbP = u48.p("FilenCredentials(email=", str, ", password=", str2, ", session=");
        sbP.append(filenSession);
        sbP.append(")");
        return sbP.toString();
    }

    public final FilenCredentials withSession(FilenSession filenSession) {
        filenSession.getClass();
        return copy$default(this, null, "", filenSession, 1, null);
    }

    public FilenCredentials(String str, String str2, FilenSession filenSession) {
        str.getClass();
        str2.getClass();
        this.email = str;
        this.password = str2;
        this.session = filenSession;
    }

    public FilenCredentials() {
        this(null, null, null, 7, null);
    }
}
