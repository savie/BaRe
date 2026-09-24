package defpackage;

import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kv2 extends tb1 {
    public static final kv2 i = new kv2();
    public final dd1 g = dd1.GoogleDrive;
    public final UnsupportedOperationException h = new UnsupportedOperationException("EmptyClient cannot perform any operation");

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        throw this.h;
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        throw this.h;
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        throw this.h;
    }

    @Override // defpackage.tb1
    public final boolean e(String str) {
        throw this.h;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        throw this.h;
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return this.g;
    }

    @Override // defpackage.tb1
    public final String h() {
        return "EmptyClient";
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        throw this.h;
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        throw this.h;
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        throw this.h;
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        return new xa1(this.h);
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        return new oi1(this.h, false);
    }
}
