package defpackage;

import android.util.Log;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wp8 extends pw6 {
    public final String m;
    public final ArrayList n;

    public wp8(az7 az7Var) {
        super(az7Var, new vp8());
        this.m = "WallsTask";
        this.n = az7Var.e;
    }

    @Override // defpackage.pw6
    public final void b() {
        az7 az7Var = (az7) this.a;
        SwiftApp.Companion companion = SwiftApp.d;
        this.i.i(SwiftApp.Companion.c().getString(R.string.backing_up));
        up8.a(az7Var, null, 2);
        Log.i(this.m, "Cleaning cloud cache on device");
        boolean z = q63.d;
        String str = ry5.u;
        cy0.g(qy5.f(false, null).r);
    }

    @Override // defpackage.pw6
    public final String c() {
        return this.m;
    }

    @Override // defpackage.pw6
    public final int d() {
        return this.n.size();
    }

    @Override // defpackage.pw6
    public final int f() {
        return this.n.size();
    }

    @Override // defpackage.pw6
    public final String h() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.wallpapers);
    }

    @Override // defpackage.pw6
    public final String j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.x_walls, String.valueOf(this.n.size()));
        string.getClass();
        return string;
    }

    @Override // defpackage.pw6
    public final void a() {
    }
}
