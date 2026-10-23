package defpackage;

import android.app.Activity;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vi0 extends ws7 implements qt3 {
    public final /* synthetic */ xi0 a;
    public final /* synthetic */ Activity b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ CloudMetadata e;
    public final /* synthetic */ cd f;
    public final /* synthetic */ ri0 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vi0(xi0 xi0Var, Activity activity, boolean z, boolean z2, CloudMetadata cloudMetadata, cd cdVar, ri0 ri0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = xi0Var;
        this.b = activity;
        this.c = z;
        this.d = z2;
        this.e = cloudMetadata;
        this.f = cdVar;
        this.k = ri0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new vi0(this.a, this.b, this.c, this.d, this.e, this.f, this.k, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        vi0 vi0Var = (vi0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        vi0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        String strC;
        String strC2;
        String strC3;
        String strC4;
        lg7.H(obj);
        boolean z = this.c;
        String str = z ? "system_app_parts" : "user_app_parts";
        int i = z ? R.string.select_parts_system_apps : R.string.select_parts_user_apps;
        CloudMetadata cloudMetadata = this.e;
        boolean zHasApk = cloudMetadata.hasApk();
        String strC5 = null;
        if (cloudMetadata.hasApk()) {
            p93 p93Var = p93.a;
            strC = p93.c(new Long(cloudMetadata.getTotalApkSize()));
        } else {
            strC = null;
        }
        boolean zHasSplitApks = cloudMetadata.hasSplitApks();
        boolean zHasSharedLibs = cloudMetadata.hasSharedLibs();
        boolean zHasData = cloudMetadata.hasData();
        if (cloudMetadata.hasData()) {
            p93 p93Var2 = p93.a;
            strC2 = p93.c(cloudMetadata.getDataSize());
        } else {
            strC2 = null;
        }
        boolean zHasExtData = cloudMetadata.hasExtData();
        if (cloudMetadata.hasExtData()) {
            p93 p93Var3 = p93.a;
            strC3 = p93.c(cloudMetadata.getExtDataSize());
        } else {
            strC3 = null;
        }
        boolean zHasMedia = cloudMetadata.hasMedia();
        if (cloudMetadata.hasMedia()) {
            p93 p93Var4 = p93.a;
            strC4 = p93.c(cloudMetadata.getMediaSize());
        } else {
            strC4 = null;
        }
        boolean zHasExpansion = cloudMetadata.hasExpansion();
        if (cloudMetadata.hasExpansion()) {
            p93 p93Var5 = p93.a;
            strC5 = p93.c(cloudMetadata.getExpSize());
        }
        xi0 xi0Var = this.a;
        xi0Var.f(new oj0(fl1.C0(xi0Var.b(this.b, str, z, true, i, this.d, zHasApk, strC, zHasSplitApks, zHasSharedLibs, zHasData, strC2, zHasExtData, strC3, zHasMedia, strC4, zHasExpansion, strC5)), true), false, this.f, this.k);
        return be8.a;
    }
}
