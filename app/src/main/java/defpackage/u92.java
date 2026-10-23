package defpackage;

import org.swiftapps.swiftbackup.model.StorageInfoLocal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class u92 extends ws7 implements qt3 {
    public final /* synthetic */ StorageInfoLocal a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u92(StorageInfoLocal storageInfoLocal, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = storageInfoLocal;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new u92(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        u92 u92Var = (u92) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        u92Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        StorageInfoLocal.Companion.setSavedStorageInfo((StorageInfoLocal.Success) this.a);
        return be8.a;
    }
}
