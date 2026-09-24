package defpackage;

import android.content.Context;
import android.os.Build;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ut8 implements bt3 {
    public final /* synthetic */ bz7 a;
    public final /* synthetic */ int b;
    public final /* synthetic */ iu8 c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ ut8(bz7 bz7Var, int i, iu8 iu8Var, boolean z) {
        this.a = bz7Var;
        this.b = i;
        this.c = iu8Var;
        this.d = z;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        Context contextC;
        String string;
        vr8 vr8Var;
        bz7 bz7Var = this.a;
        boolean zIsEmpty = bz7Var.c.isEmpty();
        be8 be8Var = be8.a;
        if (zIsEmpty) {
            Const.L();
            return be8Var;
        }
        int i = this.b;
        iu8 iu8Var = this.c;
        if (i > 0) {
            iu8Var.h(i);
        }
        od2 od2VarA = iu8Var.j().a(bz7Var, this.d);
        ss8 ss8Var = ss8.i;
        if (od2VarA.equals(ss8Var)) {
            if (bz7Var.e) {
                vr8Var = vr8.CLOUD;
            } else {
                vr8Var = bz7Var.d.contains(q05.CLOUD) ? vr8.ALL : vr8.LOCAL;
            }
            vr8Var.getClass();
            wr8 wr8Var = new wr8();
            wr8Var.a = vr8Var;
            ny2.b().e(wr8Var);
        }
        iu8Var.f();
        int i2 = Build.VERSION.SDK_INT;
        Integer numValueOf = null;
        if (!od2VarA.equals(ss8Var)) {
            boolean z = od2VarA instanceof ps8;
            int i3 = R.string.wifi_device_read_failed;
            if (z) {
                if (((ps8) od2VarA).i.a == ds8.ACCESS_UNAVAILABLE) {
                    i3 = i2 >= 30 ? R.string.root_access_or_shizuku_needed : R.string.root_access_needed;
                }
                numValueOf = Integer.valueOf(i3);
            } else if (od2VarA.equals(qs8.i)) {
                numValueOf = Integer.valueOf(R.string.wifi_device_read_failed);
            } else {
                if (!od2VarA.equals(rs8.i)) {
                    q.j();
                    return null;
                }
                numValueOf = Integer.valueOf(R.string.unknown_error_occured);
            }
        }
        if (numValueOf == null) {
            SwiftApp.Companion companion = SwiftApp.d;
            contextC = SwiftApp.Companion.c();
            string = contextC.getString(R.string.done);
            string.getClass();
            zn4 zn4Var = zn4.a;
        } else {
            if (numValueOf.intValue() == R.string.root_access_or_shizuku_needed) {
                Const.O();
                return be8Var;
            }
            if (numValueOf.intValue() == R.string.root_access_needed) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                contextC = SwiftApp.Companion.c();
                string = contextC.getString(R.string.root_access_needed);
                string.getClass();
                zn4 zn4Var2 = zn4.a;
            } else {
                SwiftApp.Companion companion3 = SwiftApp.d;
                contextC = SwiftApp.Companion.c();
                string = contextC.getString(numValueOf.intValue());
                string.getClass();
                zn4 zn4Var3 = zn4.a;
            }
        }
        dj7.y(contextC, string);
        return be8Var;
    }
}
