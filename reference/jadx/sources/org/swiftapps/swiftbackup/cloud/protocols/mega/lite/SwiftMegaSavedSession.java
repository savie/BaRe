package org.swiftapps.swiftbackup.cloud.protocols.mega.lite;

import defpackage.eq3;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.ti8;
import defpackage.u48;
import defpackage.y77;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SwiftMegaSavedSession {

    @y77("email")
    private final String email;

    @y77("masterKey")
    private final String masterKey;

    @y77("sessionId")
    private final String sessionId;

    @y77("userHandle")
    private final String userHandle;

    public /* synthetic */ SwiftMegaSavedSession(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }

    public static /* synthetic */ SwiftMegaSavedSession copy$default(SwiftMegaSavedSession swiftMegaSavedSession, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = swiftMegaSavedSession.email;
        }
        if ((i & 2) != 0) {
            str2 = swiftMegaSavedSession.sessionId;
        }
        if ((i & 4) != 0) {
            str3 = swiftMegaSavedSession.masterKey;
        }
        if ((i & 8) != 0) {
            str4 = swiftMegaSavedSession.userHandle;
        }
        return swiftMegaSavedSession.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.email;
    }

    public final String component2() {
        return this.sessionId;
    }

    public final String component3() {
        return this.masterKey;
    }

    public final String component4() {
        return this.userHandle;
    }

    public final SwiftMegaSavedSession copy(String str, String str2, String str3, String str4) {
        return new SwiftMegaSavedSession(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwiftMegaSavedSession)) {
            return false;
        }
        SwiftMegaSavedSession swiftMegaSavedSession = (SwiftMegaSavedSession) obj;
        return pe4.d(this.email, swiftMegaSavedSession.email) && pe4.d(this.sessionId, swiftMegaSavedSession.sessionId) && pe4.d(this.masterKey, swiftMegaSavedSession.masterKey) && pe4.d(this.userHandle, swiftMegaSavedSession.userHandle);
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getMasterKey() {
        return this.masterKey;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final String getUserHandle() {
        return this.userHandle;
    }

    public int hashCode() {
        String str = this.email;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.sessionId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.masterKey;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.userHandle;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        String str = this.email;
        String str2 = this.sessionId;
        return eq3.o(u48.p("SwiftMegaSavedSession(email=", str, ", sessionId=", str2, ", masterKey="), this.masterKey, ", userHandle=", this.userHandle, ")");
    }

    public final ti8 validatedForEmail(String str) {
        String lowerCase;
        String str2;
        String str3;
        String string;
        str.getClass();
        String str4 = this.email;
        if (str4 == null || (string = nq7.H0(str4).toString()) == null) {
            lowerCase = null;
        } else {
            lowerCase = string.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        }
        String lowerCase2 = nq7.H0(str).toString().toLowerCase(Locale.ROOT);
        lowerCase2.getClass();
        if (!pe4.d(lowerCase, lowerCase2) || (str2 = this.sessionId) == null) {
            return null;
        }
        if (nq7.j0(str2)) {
            str2 = null;
        }
        if (str2 == null || (str3 = this.masterKey) == null) {
            return null;
        }
        if (nq7.j0(str3)) {
            str3 = null;
        }
        if (str3 == null) {
            return null;
        }
        return new ti8(str2, str3, this.userHandle);
    }

    public SwiftMegaSavedSession(String str, String str2, String str3, String str4) {
        this.email = str;
        this.sessionId = str2;
        this.masterKey = str3;
        this.userHandle = str4;
    }

    public SwiftMegaSavedSession() {
        this(null, null, null, null, 15, null);
    }
}
