package org.swiftapps.swiftbackup.cloud.clients;

import defpackage.eq3;
import defpackage.nq7;
import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MegaClient$Credentials {
    private final String email;
    private final String password;

    public /* synthetic */ MegaClient$Credentials(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ MegaClient$Credentials copy$default(MegaClient$Credentials megaClient$Credentials, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = megaClient$Credentials.email;
        }
        if ((i & 2) != 0) {
            str2 = megaClient$Credentials.password;
        }
        return megaClient$Credentials.copy(str, str2);
    }

    public final String component1() {
        return this.email;
    }

    public final String component2() {
        return this.password;
    }

    public final MegaClient$Credentials copy(String str, String str2) {
        str.getClass();
        str2.getClass();
        return new MegaClient$Credentials(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MegaClient$Credentials)) {
            return false;
        }
        MegaClient$Credentials megaClient$Credentials = (MegaClient$Credentials) obj;
        return pe4.d(this.email, megaClient$Credentials.email) && pe4.d(this.password, megaClient$Credentials.password);
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getPassword() {
        return this.password;
    }

    public int hashCode() {
        return this.password.hashCode() + (this.email.hashCode() * 31);
    }

    public final boolean isValid() {
        String str = this.email;
        if (str.length() <= 0 || nq7.j0(str)) {
            return false;
        }
        String str2 = this.password;
        return str2.length() > 0 && !nq7.j0(str2);
    }

    public String toString() {
        return eq3.l("Credentials(email=", this.email, ", password=", this.password, ")");
    }

    public MegaClient$Credentials(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.email = str;
        this.password = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MegaClient$Credentials() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
