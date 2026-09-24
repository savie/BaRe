package defpackage;

import android.content.IntentFilter;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zs7 extends ws7 implements qt3 {
    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new zs7(2, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        zs7 zs7Var = (zs7) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        zs7Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        if (!rs9.m) {
            rs9.m = true;
            Const.C(new r80(new rx(3)), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        return be8.a;
    }
}
