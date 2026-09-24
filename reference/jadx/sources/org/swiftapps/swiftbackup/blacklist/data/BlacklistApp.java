package org.swiftapps.swiftbackup.blacklist.data;

import defpackage.cs0;
import defpackage.fz5;
import defpackage.is0;
import defpackage.jl0;
import defpackage.jz2;
import defpackage.kx2;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BlacklistApp implements jl0 {
    public static final cs0 Companion = new cs0();
    private final int blackListType;
    private boolean isInstalled;
    private final String name;
    private final String packageName;

    public /* synthetic */ BlacklistApp(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? is0.Hide.ordinal() : i);
    }

    public static /* synthetic */ BlacklistApp copy$default(BlacklistApp blacklistApp, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = blacklistApp.name;
        }
        if ((i2 & 2) != 0) {
            str2 = blacklistApp.packageName;
        }
        if ((i2 & 4) != 0) {
            i = blacklistApp.blackListType;
        }
        return blacklistApp.copy(str, str2, i);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.packageName;
    }

    public final int component3() {
        return this.blackListType;
    }

    public final BlacklistApp copy(String str, String str2, int i) {
        str.getClass();
        str2.getClass();
        return new BlacklistApp(str, str2, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlacklistApp)) {
            return false;
        }
        BlacklistApp blacklistApp = (BlacklistApp) obj;
        return pe4.d(this.name, blacklistApp.name) && pe4.d(this.packageName, blacklistApp.packageName) && this.blackListType == blacklistApp.blackListType;
    }

    public final int getBlackListType() {
        return this.blackListType;
    }

    @jz2
    public final String getBlackListTypeDisplayString() {
        return ((is0) ((kx2) is0.getEntries()).get(this.blackListType)).getDisplayString();
    }

    @Override // defpackage.jl0
    @jz2
    public jl0 getCopy() {
        return copy$default(this, null, null, 0, 7, null);
    }

    @Override // defpackage.jl0
    @jz2
    public String getItemId() {
        return this.packageName;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return Integer.hashCode(this.blackListType) + fz5.g(this.name.hashCode() * 31, 31, this.packageName);
    }

    @jz2
    public final boolean isInstalled() {
        return this.isInstalled;
    }

    public final void setInstalled(boolean z) {
        this.isInstalled = z;
    }

    public String toString() {
        String str = this.name;
        String str2 = this.packageName;
        return xs1.m(u48.p("BlacklistApp(name=", str, ", packageName=", str2, ", blackListType="), this.blackListType, ")");
    }

    public BlacklistApp(String str, String str2, int i) {
        str.getClass();
        str2.getClass();
        this.name = str;
        this.packageName = str2;
        this.blackListType = i;
        this.isInstalled = true;
    }

    public BlacklistApp() {
        this(null, null, 0, 7, null);
    }
}
