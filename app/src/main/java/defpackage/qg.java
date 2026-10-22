package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qg extends rg {
    public final PackageInfo a;
    public final String b;
    public final long c;

    public qg(PackageInfo packageInfo) {
        this.a = packageInfo;
        String str = packageInfo.versionName;
        this.b = str == null ? "null" : str;
        this.c = jd4.r(packageInfo);
    }

    @Override // defpackage.rg
    public final boolean a() {
        g00 g00Var = g00.a;
        String str = this.a.packageName;
        str.getClass();
        ArrayList arrayListV = g00.v(str);
        return !(arrayListV == null || arrayListV.isEmpty());
    }

    @Override // defpackage.rg
    public final boolean b() {
        ApplicationInfo applicationInfo = this.a.applicationInfo;
        Bundle bundle = applicationInfo != null ? applicationInfo.metaData : null;
        if (bundle == null) {
            return false;
        }
        boolean z = g42.a;
        return bundle.containsKey((String) g42.t.getValue());
    }

    @Override // defpackage.rg
    public final long c() {
        return this.c;
    }

    @Override // defpackage.rg
    public final String d() {
        return this.b;
    }
}
