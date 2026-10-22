package defpackage;

import android.os.Build;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uc2 {
    public ub a;
    public zq8 b;
    public wc9 c;
    public ib d;
    public ny1 e;
    public String f;
    public String g;
    public int h;
    public FirebaseApp i;
    public boolean j;
    public ro k;

    public final u00 a(String str) {
        return new u00(4, this.a, str, null);
    }

    public final ro b() {
        if (this.k == null) {
            synchronized (this) {
                this.k = new ro(this.i, 1);
            }
        }
        return this.k;
    }

    public final void c() {
        if (this.a == null) {
            ro roVarB = b();
            int i = this.h;
            roVarB.getClass();
            this.a = new ub(i);
        }
        b();
        if (this.g == null) {
            b().getClass();
            this.g = "Firebase/5/22.0.1/".concat(Build.VERSION.SDK_INT + "/Android");
        }
        if (this.b == null) {
            b().getClass();
            this.b = new zq8(2);
        }
        if (this.e == null) {
            ro roVar = this.k;
            roVar.getClass();
            this.e = new ny1(roVar, a("RunLoop"));
        }
        if (this.f == null) {
            this.f = "default";
        }
        ly8.i(this.c, "You must register an authTokenProvider before initializing Context.");
        ly8.i(this.d, "You must register an appCheckTokenProvider before initializing Context.");
    }

    public final synchronized void d(String str) {
        if (this.j) {
            throw new xc2("Modifications to DatabaseConfig objects must occur before they are in use");
        }
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Session identifier is not allowed to be empty or null!");
        }
        this.f = str;
    }
}
