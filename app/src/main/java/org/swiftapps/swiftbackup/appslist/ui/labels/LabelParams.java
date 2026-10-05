package org.swiftapps.swiftbackup.appslist.ui.labels;

import android.content.Context;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.ak;
import defpackage.bk;
import defpackage.dj7;
import defpackage.gj;
import defpackage.gr4;
import defpackage.gv7;
import defpackage.hr4;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.os4;
import defpackage.pe4;
import defpackage.sl1;
import defpackage.u48;
import defpackage.x14;
import defpackage.xl1;
import defpackage.yj0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LabelParams implements Parcelable, jl0 {
    private static final String LABEL_ID_BACKUPS_WITH_NOTES = "__backups_with_notes";
    private static final String LABEL_ID_FAVORITE_APPS = "__favorite_apps";
    private static final String LABEL_ID_INSTALLED_FROM_GOOGLE_PLAY = "__installed_from_google_play";
    private static final String LABEL_ID_MULTIPLE_BACKUPS = "__apps_with_multiple_backups";
    private static final String LABEL_ID_NOT_INSTALLED_FROM_GOOGLE_PLAY = "__not_installed_from_google_play";
    private static final String LABEL_ID_PROTECTED_BACKUPS = "__apps_with_protected_backups";
    private static final String LABEL_ID_SYSTEM_APPS_LABELLED_FAVORITES = "__system_apps_labelled_favorites";
    private static final String LABEL_ID_SYSTEM_APPS_LAUNCHABLE = "__system_apps_launchable";
    private static final String LABEL_ID_SYSTEM_APPS_NOT_LABELLED = "__system_apps_not_labelled";
    private static final String LABEL_ID_SYSTEM_APPS_UPDATED = "__system_apps_updated";
    private static final String LABEL_ID_USER_APPS = "__user_apps";
    private static final String LABEL_ID_USER_APPS_LABELLED = "__user_apps_labelled";
    private static final String LABEL_ID_USER_APPS_NOT_LABELLED = "__user_apps_not_labelled";

    @jz2
    @x14
    private final os4 blackTextContrast$delegate;
    private final String color;

    @jz2
    @x14
    private final os4 colorInt$delegate;
    private final String id;

    @jz2
    @x14
    private final os4 isBuiltInLabel$delegate;
    private final String name;

    @jz2
    @x14
    private final os4 whiteTextContrast$delegate;
    public static final hr4 Companion = new hr4();
    public static final Parcelable.Creator<LabelParams> CREATOR = new yj0(2);

    public LabelParams(String str, String str2, String str3) {
        this.id = str;
        this.name = str2;
        this.color = str3;
        this.isBuiltInLabel$delegate = new gv7(new gj(this, 25));
        this.colorInt$delegate = new gv7(new ak(this, 23));
        this.whiteTextContrast$delegate = new gv7(new bk(this, 26));
        this.blackTextContrast$delegate = new gv7(new gr4(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double blackTextContrast_delegate$lambda$0(LabelParams labelParams) {
        gv7 gv7Var = sl1.e;
        return xl1.c(-16777216, labelParams.getColorInt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int colorInt_delegate$lambda$0(LabelParams labelParams) {
        return Color.parseColor(labelParams.color);
    }

    public static /* synthetic */ LabelParams copy$default(LabelParams labelParams, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = labelParams.id;
        }
        if ((i & 2) != 0) {
            str2 = labelParams.name;
        }
        if ((i & 4) != 0) {
            str3 = labelParams.color;
        }
        return labelParams.copy(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isBuiltInLabel_delegate$lambda$0(LabelParams labelParams) {
        hr4 hr4Var = Companion;
        String str = labelParams.id;
        hr4Var.getClass();
        return hr4.c(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double whiteTextContrast_delegate$lambda$0(LabelParams labelParams) {
        gv7 gv7Var = sl1.e;
        return xl1.c(-1, labelParams.getColorInt());
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.color;
    }

    public final LabelParams copy(String str, String str2, String str3) {
        return new LabelParams(str, str2, str3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelParams)) {
            return false;
        }
        LabelParams labelParams = (LabelParams) obj;
        return pe4.d(this.id, labelParams.id) && pe4.d(this.name, labelParams.name) && pe4.d(this.color, labelParams.color);
    }

    @jz2
    public final double getBlackTextContrast() {
        return ((Number) this.blackTextContrast$delegate.getValue()).doubleValue();
    }

    public final String getColor() {
        return this.color;
    }

    @jz2
    public final int getColorInt() {
        return ((Number) this.colorInt$delegate.getValue()).intValue();
    }

    @Override // defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, null, null, null, 7, null);
    }

    public final String getId() {
        return this.id;
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        String str = this.id;
        return str == null ? String.valueOf(hashCode()) : str;
    }

    public final String getName() {
        return this.name;
    }

    @jz2
    public final int getRippleColor(Context context, int i) {
        context.getClass();
        if (isBuiltInLabel()) {
            return xl1.g(getColorInt(), 50);
        }
        gv7 gv7Var = sl1.e;
        return context.getColor(i == -16777216 ? R.color.blk07 : R.color.wht20);
    }

    @jz2
    public final int getTextColor(boolean z) {
        if (isBuiltInLabel()) {
            return getColorInt();
        }
        gv7 gv7Var = sl1.e;
        double blackTextContrast = getBlackTextContrast();
        double whiteTextContrast = getWhiteTextContrast();
        if (z) {
            return blackTextContrast > 3.0d ? -16777216 : -1;
        }
        return whiteTextContrast > 2.0d ? -1 : -16777216;
    }

    @jz2
    public final double getWhiteTextContrast() {
        return ((Number) this.whiteTextContrast$delegate.getValue()).doubleValue();
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.color;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @jz2
    public final boolean isBuiltInLabel() {
        return ((Boolean) this.isBuiltInLabel$delegate.getValue()).booleanValue();
    }

    public String toString() {
        String str = this.id;
        String str2 = this.name;
        return dj7.n(u48.p("LabelParams(id=", str, ", name=", str2, ", color="), this.color, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.color);
    }

    public static /* synthetic */ void getBlackTextContrast$annotations() {
    }

    public static /* synthetic */ void getColorInt$annotations() {
    }

    public static /* synthetic */ void getWhiteTextContrast$annotations() {
    }

    public static /* synthetic */ void isBuiltInLabel$annotations() {
    }

    public LabelParams() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ LabelParams(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? "#000000" : str3);
    }
}
