package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ry5 {
    public static final String u = ry5.class.getSimpleName();
    public static ry5 v;
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;

    public ry5(MFirebaseUser mFirebaseUser, String str) {
        this.a = str;
        String strConcat = str.concat("accounts/");
        this.b = strConcat;
        String strK = dj7.k(strConcat, qy5.e(mFirebaseUser), "/");
        this.c = strK;
        String strConcat2 = strK.concat("backups/");
        this.d = strConcat2;
        this.e = strK.concat("cache/");
        String strConcat3 = strConcat2.concat("apps/");
        this.f = strConcat3;
        this.g = strConcat3.concat("local/");
        this.h = strConcat3.concat("cloud/");
        this.i = str.concat("icon_cache/");
        String strConcat4 = strConcat2.concat("sms/");
        this.j = strConcat4.concat("local/");
        this.k = strConcat4.concat("cloud/");
        String strConcat5 = strConcat2.concat("calls/");
        this.l = strConcat5.concat("local/");
        this.m = strConcat5.concat("cloud/");
        String strConcat6 = strConcat2.concat("wifi/");
        this.n = strConcat6.concat("local/");
        this.o = strConcat6.concat("cloud/");
        String strConcat7 = strConcat2.concat("walls/");
        this.p = strConcat7.concat("applied/");
        this.q = strConcat7.concat("local/");
        this.r = strConcat7.concat("cloud/");
        String strConcat8 = strConcat2.concat("folders/");
        this.s = strConcat8.concat("local/");
        this.t = strConcat8.concat("cloud/");
        Log.d(u, "Paths initialized");
    }
}
