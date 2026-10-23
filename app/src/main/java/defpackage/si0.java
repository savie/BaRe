package defpackage;

import android.app.Activity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class si0 extends ws7 implements qt3 {
    public final /* synthetic */ ji a;
    public final /* synthetic */ xi0 b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ ri0 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si0(ji jiVar, xi0 xi0Var, Activity activity, boolean z, ri0 ri0Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = jiVar;
        this.b = xi0Var;
        this.c = activity;
        this.d = z;
        this.e = ri0Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new si0(this.a, this.b, this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        si0 si0Var = (si0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        si0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        String strC;
        String strC2;
        String strC3;
        String strC4;
        cd cdVar;
        String strC5;
        lg7.H(obj);
        ji jiVar = this.a;
        boolean zIsInstalled = jiVar.isInstalled();
        be8 be8Var = be8.a;
        if (!zIsInstalled) {
            return be8Var;
        }
        if (jiVar.getSizeInfo() == null) {
            jiVar.calculateSize(true, true, true, true);
        }
        boolean z = !jiVar.isBundled();
        boolean zIsBundled = jiVar.isBundled();
        qx sizeInfo = jiVar.getSizeInfo();
        if (sizeInfo != null) {
            Long l = new Long(sizeInfo.getTotalApkSize());
            p93 p93Var = p93.a;
            strC = p93.c(l);
        } else {
            strC = null;
        }
        qx sizeInfo2 = jiVar.getSizeInfo();
        boolean z2 = sizeInfo2 != null && sizeInfo2.hasSplits();
        qx sizeInfo3 = jiVar.getSizeInfo();
        boolean z3 = sizeInfo3 != null && sizeInfo3.hasSharedLibs();
        qx sizeInfo4 = jiVar.getSizeInfo();
        boolean z4 = (sizeInfo4 != null ? sizeInfo4.getDataSize() : 0L) > 0;
        qx sizeInfo5 = jiVar.getSizeInfo();
        boolean z5 = this.d;
        if (sizeInfo5 != null) {
            Long l2 = new Long(sizeInfo5.getTotalDataSize(z5));
            p93 p93Var2 = p93.a;
            strC2 = p93.c(l2);
        } else {
            strC2 = null;
        }
        boolean zHasExternalData = jiVar.hasExternalData(z5);
        qx sizeInfo6 = jiVar.getSizeInfo();
        if (sizeInfo6 != null) {
            Long l3 = new Long(sizeInfo6.getExtDataSize(z5));
            p93 p93Var3 = p93.a;
            strC3 = p93.c(l3);
        } else {
            strC3 = null;
        }
        boolean zHasMedia = jiVar.hasMedia();
        qx sizeInfo7 = jiVar.getSizeInfo();
        if (sizeInfo7 != null) {
            Long l4 = new Long(sizeInfo7.getMediaSize());
            p93 p93Var4 = p93.a;
            strC4 = p93.c(l4);
        } else {
            strC4 = null;
        }
        boolean zHasExpansion = jiVar.hasExpansion();
        qx sizeInfo8 = jiVar.getSizeInfo();
        if (sizeInfo8 != null) {
            Long l5 = new Long(sizeInfo8.getExternalObbSize());
            p93 p93Var5 = p93.a;
            strC5 = p93.c(l5);
            cdVar = null;
        } else {
            cdVar = null;
            strC5 = null;
        }
        xi0 xi0Var = this.b;
        xi0Var.f(new mj0(xi0Var.c(this.c, false, false, z, zIsBundled, true, true, strC, z2, z3, z4, strC2, zHasExternalData, strC3, zHasMedia, strC4, zHasExpansion, strC5), false), false, cdVar, this.e);
        return be8Var;
    }
}
