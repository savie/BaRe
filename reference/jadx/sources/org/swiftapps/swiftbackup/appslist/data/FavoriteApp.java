package org.swiftapps.swiftbackup.appslist.data;

import defpackage.eq3;
import defpackage.g00;
import defpackage.jz2;
import defpackage.pe4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FavoriteApp {
    private final String name;
    private final String packageName;

    public /* synthetic */ FavoriteApp(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ FavoriteApp copy$default(FavoriteApp favoriteApp, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = favoriteApp.packageName;
        }
        if ((i & 2) != 0) {
            str2 = favoriteApp.name;
        }
        return favoriteApp.copy(str, str2);
    }

    public final String component1() {
        return this.packageName;
    }

    public final String component2() {
        return this.name;
    }

    public final FavoriteApp copy(String str, String str2) {
        str.getClass();
        str2.getClass();
        return new FavoriteApp(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FavoriteApp)) {
            return false;
        }
        FavoriteApp favoriteApp = (FavoriteApp) obj;
        return pe4.d(this.packageName, favoriteApp.packageName) && pe4.d(this.name, favoriteApp.name);
    }

    public final String getName() {
        return this.name;
    }

    @jz2
    public final String getPackageId() {
        g00 g00Var = g00.a;
        return g00.h(this.packageName);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return this.name.hashCode() + (this.packageName.hashCode() * 31);
    }

    public String toString() {
        return eq3.l("FavoriteApp(packageName=", this.packageName, ", name=", this.name, ")");
    }

    public FavoriteApp(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.packageName = str;
        this.name = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FavoriteApp() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
