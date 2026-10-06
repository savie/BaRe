package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cq {
    public final String a;
    public final String b;
    public final ArrayList c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final oe h;

    public cq(String str, String str2, ArrayList arrayList, String str3, String str4, String str5, String str6, oe oeVar) {
        this.a = str;
        this.b = str2;
        this.c = arrayList;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = oeVar;
    }

    public static cq a(Context context, k94 k94Var, String str, String str2, ArrayList arrayList, oe oeVar) {
        String packageName = context.getPackageName();
        String strD = k94Var.d();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String string = Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new cq(str, str2, arrayList, strD, packageName, string, str3, oeVar);
    }
}
