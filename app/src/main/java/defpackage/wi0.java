package defpackage;

import android.app.Activity;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wi0 extends ws7 implements qt3 {
    public final /* synthetic */ xi0 a;
    public final /* synthetic */ Activity b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ iz4 e;
    public final /* synthetic */ cd f;
    public final /* synthetic */ ri0 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wi0(xi0 xi0Var, Activity activity, boolean z, boolean z2, iz4 iz4Var, cd cdVar, ri0 ri0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = xi0Var;
        this.b = activity;
        this.c = z;
        this.d = z2;
        this.e = iz4Var;
        this.f = cdVar;
        this.k = ri0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new wi0(this.a, this.b, this.c, this.d, this.e, this.f, this.k, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        wi0 wi0Var = (wi0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        wi0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        boolean z = this.c;
        String str = z ? "system_app_parts" : "user_app_parts";
        int i = z ? R.string.select_parts_system_apps : R.string.select_parts_user_apps;
        iz4 iz4Var = this.e;
        boolean zHasApk = iz4Var.hasApk();
        Long l = new Long(iz4Var.getTotalApkSize());
        p93 p93Var = p93.a;
        String strC = p93.c(l);
        boolean zHasSplitApks = iz4Var.hasSplitApks();
        boolean zHasSharedLibs = iz4Var.hasSharedLibs();
        boolean zHasData = iz4Var.hasData();
        String strC2 = p93.c(new Long(iz4Var.getDataSize()));
        boolean zHasExtData = iz4Var.hasExtData();
        String strC3 = p93.c(new Long(iz4Var.getExtDataSize()));
        boolean zHasMedia = iz4Var.hasMedia();
        String strC4 = p93.c(new Long(iz4Var.getMediaSize()));
        boolean zHasExpansion = iz4Var.hasExpansion();
        String strC5 = p93.c(new Long(iz4Var.getExpansionSize()));
        xi0 xi0Var = this.a;
        xi0Var.f(new oj0(fl1.C0(xi0Var.b(this.b, str, z, true, i, this.d, zHasApk, strC, zHasSplitApks, zHasSharedLibs, zHasData, strC2, zHasExtData, strC3, zHasMedia, strC4, zHasExpansion, strC5)), false), false, this.f, this.k);
        return be8.a;
    }
}
