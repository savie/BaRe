package org.swiftapps.swiftbackup.settings.appbackuplimits;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import defpackage.el1;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.gu;
import defpackage.io4;
import defpackage.iu;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.mk;
import defpackage.pe4;
import defpackage.q05;
import defpackage.x50;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppBackupLimitItem implements jl0, Parcelable {
    public static final Parcelable.Creator<AppBackupLimitItem> CREATOR = new mk(0);
    private final Long cloudLimitMBs;
    private final Long localLimitMBs;
    private final String part;

    public /* synthetic */ AppBackupLimitItem(String str, Long l, Long l2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? iu.DATA.toString() : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : l2);
    }

    public static /* synthetic */ AppBackupLimitItem copy$default(AppBackupLimitItem appBackupLimitItem, String str, Long l, Long l2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appBackupLimitItem.part;
        }
        if ((i & 2) != 0) {
            l = appBackupLimitItem.localLimitMBs;
        }
        if ((i & 4) != 0) {
            l2 = appBackupLimitItem.cloudLimitMBs;
        }
        return appBackupLimitItem.copy(str, l, l2);
    }

    @jz2
    private final iu findAppPart() {
        gu guVar = iu.Companion;
        String str = this.part;
        guVar.getClass();
        return gu.a(str);
    }

    public final String component1() {
        return this.part;
    }

    public final Long component2() {
        return this.localLimitMBs;
    }

    public final Long component3() {
        return this.cloudLimitMBs;
    }

    public final AppBackupLimitItem copy(String str, Long l, Long l2) {
        str.getClass();
        return new AppBackupLimitItem(str, l, l2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppBackupLimitItem)) {
            return false;
        }
        AppBackupLimitItem appBackupLimitItem = (AppBackupLimitItem) obj;
        return pe4.d(this.part, appBackupLimitItem.part) && pe4.d(this.localLimitMBs, appBackupLimitItem.localLimitMBs) && pe4.d(this.cloudLimitMBs, appBackupLimitItem.cloudLimitMBs);
    }

    @jz2
    public final iu getAppPart() {
        iu iuVarFindAppPart = findAppPart();
        return iuVarFindAppPart == null ? iu.DATA : iuVarFindAppPart;
    }

    @jz2
    public final long getCloudLimitBytes() {
        return io4.h(this.cloudLimitMBs) * 1048576;
    }

    public final Long getCloudLimitMBs() {
        return this.cloudLimitMBs;
    }

    @Override // defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, null, null, null, 7, null);
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return this.part;
    }

    @jz2
    public final long getLocalLimitBytes() {
        return io4.h(this.localLimitMBs) * 1048576;
    }

    public final Long getLocalLimitMBs() {
        return this.localLimitMBs;
    }

    public final String getPart() {
        return this.part;
    }

    @jz2
    public final boolean hasLimits() {
        List<Long> listA0 = fl1.A0(this.localLimitMBs, this.cloudLimitMBs);
        if (listA0.isEmpty()) {
            return false;
        }
        for (Long l : listA0) {
            if (l != null && l.longValue() > 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.part.hashCode() * 31;
        Long l = this.localLimitMBs;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.cloudLimitMBs;
        return iHashCode2 + (l2 != null ? l2.hashCode() : 0);
    }

    @jz2
    public final boolean isValid() {
        return findAppPart() != null && hasLimits();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x005c  */
    @jz2
    public final String toDisplayString() {
        String str;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String str2 = null;
        spannableStringBuilder.append((CharSequence) (" • " + iu.toDisplayString$default(getAppPart(), false, 1, null) + ": "));
        Long l = this.localLimitMBs;
        if (l == null) {
            str = null;
        } else {
            if (l.longValue() <= 0) {
                l = null;
            }
            if (l != null) {
                long jLongValue = l.longValue();
                str = q05.DEVICE.toDisplayString() + "=" + jLongValue + "MB";
            } else {
                str = null;
            }
        }
        Long l2 = this.cloudLimitMBs;
        if (l2 != null) {
            if (l2.longValue() <= 0) {
                l2 = null;
            }
            if (l2 != null) {
                long jLongValue2 = l2.longValue();
                str2 = q05.CLOUD.toDisplayString() + "=" + jLongValue2 + "MB";
            }
        }
        String strY0 = el1.Y0(x50.p0(new String[]{str, str2}), ", ", null, null, null, 62);
        if (strY0.length() > 0) {
            spannableStringBuilder.append((CharSequence) strY0);
        } else {
            SwiftApp.Companion companion = SwiftApp.d;
            spannableStringBuilder.append((CharSequence) SwiftApp.Companion.c().getString(R.string.no_limit));
        }
        String string = spannableStringBuilder.toString();
        string.getClass();
        return string;
    }

    @jz2
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.part);
        Long l = this.localLimitMBs;
        if (l != null) {
            if (l.longValue() <= 0) {
                l = null;
            }
            if (l != null) {
                sb.append(":Local=" + l.longValue() + "MB");
            }
        }
        Long l2 = this.cloudLimitMBs;
        if (l2 != null) {
            Long l3 = l2.longValue() > 0 ? l2 : null;
            if (l3 != null) {
                sb.append(":Cloud=" + l3.longValue() + "MB");
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.part);
        Long l = this.localLimitMBs;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l);
        }
        Long l2 = this.cloudLimitMBs;
        if (l2 == null) {
            parcel.writeInt(0);
        } else {
            fz5.p(parcel, 1, l2);
        }
    }

    public AppBackupLimitItem(String str, Long l, Long l2) {
        str.getClass();
        this.part = str;
        this.localLimitMBs = l;
        this.cloudLimitMBs = l2;
    }

    public AppBackupLimitItem() {
        this(null, null, null, 7, null);
    }
}
