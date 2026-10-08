package defpackage;

import android.text.TextUtils;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class oo8 extends sa1 {
    public final void U(ao8 ao8Var) {
        ao8Var.getClass();
        yn8 yn8Var = ao8Var.a;
        if (yn8Var.a.j()) {
            WallApplyActivity.O = ao8Var;
            ai8.q(this, WallApplyActivity.class);
        } else {
            if (TextUtils.isEmpty(yn8Var.e)) {
                return;
            }
            sa1.R(this, null, new qf(17, this, ao8Var), 1);
        }
    }

    public abstract po8 V();

    public void W() {
        int i = 2;
        V().e.e(this, new ur0(i, new cz(this, 20)));
        V().f.e(this, new ur0(i, new u10(this, 19)));
    }
}
