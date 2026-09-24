package org.swiftapps.swiftbackup.notice;

import android.content.SharedPreferences;
import android.os.Build;
import defpackage.cz4;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.jl0;
import defpackage.jx2;
import defpackage.jz2;
import defpackage.ly8;
import defpackage.mo5;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;
import java.net.URL;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class NoticeItem implements jl0 {
    public static final mo5 Companion = new mo5();
    private static final String logTag = "NoticeItem";
    private final String _subtitle;
    private final boolean active;
    private final String id;
    private final Integer maxAppVersion;
    private final Integer maxSdkVersion;
    private final String message;
    private final Integer minAppVersion;
    private final Integer minSdkVersion;
    private final a priority;
    private final boolean testing;
    private final String title;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        LOW,
        NORMAL,
        HIGH;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public /* synthetic */ NoticeItem(String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, Integer num4, a aVar, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "notice_id" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? null : num, (i & 32) != 0 ? null : num2, (i & 64) != 0 ? null : num3, (i & 128) != 0 ? null : num4, (i & 256) != 0 ? a.LOW : aVar, (i & 512) != 0 ? false : z, (i & 1024) != 0 ? true : z2);
    }

    public static /* synthetic */ NoticeItem copy$default(NoticeItem noticeItem, String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, Integer num4, a aVar, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = noticeItem.id;
        }
        if ((i & 2) != 0) {
            str2 = noticeItem.title;
        }
        if ((i & 4) != 0) {
            str3 = noticeItem._subtitle;
        }
        if ((i & 8) != 0) {
            str4 = noticeItem.message;
        }
        if ((i & 16) != 0) {
            num = noticeItem.minAppVersion;
        }
        if ((i & 32) != 0) {
            num2 = noticeItem.maxAppVersion;
        }
        if ((i & 64) != 0) {
            num3 = noticeItem.minSdkVersion;
        }
        if ((i & 128) != 0) {
            num4 = noticeItem.maxSdkVersion;
        }
        if ((i & 256) != 0) {
            aVar = noticeItem.priority;
        }
        if ((i & 512) != 0) {
            z = noticeItem.active;
        }
        if ((i & 1024) != 0) {
            z2 = noticeItem.testing;
        }
        boolean z3 = z;
        boolean z4 = z2;
        Integer num5 = num4;
        a aVar2 = aVar;
        Integer num6 = num2;
        Integer num7 = num3;
        Integer num8 = num;
        String str5 = str3;
        return noticeItem.copy(str, str2, str5, str4, num8, num6, num7, num5, aVar2, z3, z4);
    }

    @jz2
    private final boolean matchesAppVersion() {
        Integer num = this.minAppVersion;
        if (num != null && 620 < num.intValue()) {
            return false;
        }
        Integer num2 = this.maxAppVersion;
        return num2 == null || 620 <= num2.intValue();
    }

    @jz2
    private final boolean matchesSdk() {
        int i = Build.VERSION.SDK_INT;
        Integer num = this.minSdkVersion;
        if (num != null && i < num.intValue()) {
            return false;
        }
        Integer num2 = this.maxSdkVersion;
        return num2 == null || i <= num2.intValue();
    }

    public final String component1() {
        return this.id;
    }

    public final boolean component10() {
        return this.active;
    }

    public final boolean component11() {
        return this.testing;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this._subtitle;
    }

    public final String component4() {
        return this.message;
    }

    public final Integer component5() {
        return this.minAppVersion;
    }

    public final Integer component6() {
        return this.maxAppVersion;
    }

    public final Integer component7() {
        return this.minSdkVersion;
    }

    public final Integer component8() {
        return this.maxSdkVersion;
    }

    public final a component9() {
        return this.priority;
    }

    public final NoticeItem copy(String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, Integer num4, a aVar, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        aVar.getClass();
        return new NoticeItem(str, str2, str3, str4, num, num2, num3, num4, aVar, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NoticeItem)) {
            return false;
        }
        NoticeItem noticeItem = (NoticeItem) obj;
        return pe4.d(this.id, noticeItem.id) && pe4.d(this.title, noticeItem.title) && pe4.d(this._subtitle, noticeItem._subtitle) && pe4.d(this.message, noticeItem.message) && pe4.d(this.minAppVersion, noticeItem.minAppVersion) && pe4.d(this.maxAppVersion, noticeItem.maxAppVersion) && pe4.d(this.minSdkVersion, noticeItem.minSdkVersion) && pe4.d(this.maxSdkVersion, noticeItem.maxSdkVersion) && this.priority == noticeItem.priority && this.active == noticeItem.active && this.testing == noticeItem.testing;
    }

    public final boolean getActive() {
        return this.active;
    }

    @Override // defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, null, null, null, null, null, null, null, null, null, false, false, 2047, null);
    }

    public final String getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return this.id;
    }

    public final Integer getMaxAppVersion() {
        return this.maxAppVersion;
    }

    public final Integer getMaxSdkVersion() {
        return this.maxSdkVersion;
    }

    public final String getMessage() {
        return this.message;
    }

    public final Integer getMinAppVersion() {
        return this.minAppVersion;
    }

    public final Integer getMinSdkVersion() {
        return this.minSdkVersion;
    }

    public final a getPriority() {
        return this.priority;
    }

    @jz2
    public final String getSubtitle() {
        String str = this._subtitle;
        if (str.length() <= 0 || nq7.j0(str)) {
            str = null;
        }
        return str == null ? this.message : str;
    }

    public final boolean getTesting() {
        return this.testing;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String get_subtitle() {
        return this._subtitle;
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(fz5.g(this.id.hashCode() * 31, 31, this.title), 31, this._subtitle), 31, this.message);
        Integer num = this.minAppVersion;
        int iHashCode = (iG + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.maxAppVersion;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.minSdkVersion;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.maxSdkVersion;
        return Boolean.hashCode(this.testing) + fz5.h((this.priority.hashCode() + ((iHashCode3 + (num4 != null ? num4.hashCode() : 0)) * 31)) * 31, 31, this.active);
    }

    @jz2
    public final boolean isLinkOnly() {
        try {
            new URL(this.message);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @jz2
    public final boolean shouldShowToUser(boolean z) {
        boolean z2;
        if (!z) {
            mo5 mo5Var = Companion;
            String str = this.id;
            mo5Var.getClass();
            str.getClass();
            String strConcat = "notice_seen_id_".concat(str);
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences.getBoolean(strConcat, false);
                if (z2) {
                    return false;
                }
            } catch (ClassCastException unused) {
                z2 = false;
            }
        }
        return !this.testing && this.active && this.message.length() > 0 && !nq7.j0(this.message) && matchesSdk() && matchesAppVersion();
    }

    public String toString() {
        String str = this.id;
        String str2 = this.title;
        String str3 = this._subtitle;
        String str4 = this.message;
        Integer num = this.minAppVersion;
        Integer num2 = this.maxAppVersion;
        Integer num3 = this.minSdkVersion;
        Integer num4 = this.maxSdkVersion;
        a aVar = this.priority;
        boolean z = this.active;
        boolean z2 = this.testing;
        StringBuilder sbP = u48.p("NoticeItem(id=", str, ", title=", str2, ", _subtitle=");
        xs1.t(sbP, str3, ", message=", str4, ", minAppVersion=");
        sbP.append(num);
        sbP.append(", maxAppVersion=");
        sbP.append(num2);
        sbP.append(", minSdkVersion=");
        sbP.append(num3);
        sbP.append(", maxSdkVersion=");
        sbP.append(num4);
        sbP.append(", priority=");
        sbP.append(aVar);
        sbP.append(", active=");
        sbP.append(z);
        sbP.append(", testing=");
        return dj7.p(sbP, z2, ")");
    }

    public NoticeItem(String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, Integer num4, a aVar, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        aVar.getClass();
        this.id = str;
        this.title = str2;
        this._subtitle = str3;
        this.message = str4;
        this.minAppVersion = num;
        this.maxAppVersion = num2;
        this.minSdkVersion = num3;
        this.maxSdkVersion = num4;
        this.priority = aVar;
        this.active = z;
        this.testing = z2;
    }

    public NoticeItem() {
        this(null, null, null, null, null, null, null, null, null, false, false, 2047, null);
    }
}
