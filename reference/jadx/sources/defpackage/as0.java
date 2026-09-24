package defpackage;

import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class as0 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ as0(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return new as0((BlacklistApp) obj3, (bs0) obj2, jv1Var, 0);
            default:
                return new as0((zn7) obj3, (StorageSwitchActivity) obj2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((as0) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((as0) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                ns0.j((BlacklistApp) obj3, el1.x1(((bs0) obj2).e.a));
                break;
            default:
                final zn7 zn7Var = (zn7) obj3;
                lg7.H(obj);
                final ih6 ih6Var = new ih6();
                final lh6 lh6Var = new lh6();
                try {
                    boolean zCheckFileReadWriteAccess = Const.a.checkFileReadWriteAccess(zn7Var, mp6.d(mp6.a, false, false, 3), true);
                    if (!zCheckFileReadWriteAccess) {
                        lh6Var.a = "Read/Write check failed for storage '" + zn7Var + "'.";
                    }
                    ih6Var.a = zCheckFileReadWriteAccess;
                } catch (Exception e) {
                    lh6Var.a = "Read/Write check failed for storage '" + zn7Var + "'. \n\n" + io4.b(e);
                    ih6Var.a = false;
                }
                zn4 zn4Var = zn4.a;
                final StorageSwitchActivity storageSwitchActivity = (StorageSwitchActivity) obj2;
                zn4.e(new bt3() { // from class: ko7
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        boolean z = ih6Var.a;
                        StorageSwitchActivity storageSwitchActivity2 = storageSwitchActivity;
                        if (z) {
                            int i2 = StorageSwitchActivity.f0;
                            yn7 yn7Var = zn7.q;
                            zn7 zn7Var2 = zn7Var;
                            yn7Var.h(zn7Var2);
                            StorageInfoLocal.Companion.setSavedStorageInfo(null);
                            zn7 zn7Var3 = (zn7) storageSwitchActivity2.Z.getValue();
                            zn4 zn4Var2 = zn4.a;
                            zn4.b(null, new no7(storageSwitchActivity2, zn7Var3, zn7Var2, null));
                        } else {
                            lh6 lh6Var2 = lh6Var;
                            CharSequence charSequence = (CharSequence) lh6Var2.a;
                            if (charSequence != null && charSequence.length() != 0) {
                                b05.l(storageSwitchActivity2, null, (String) lh6Var2.a, 10);
                            }
                        }
                        return be8.a;
                    }
                });
                break;
        }
        return be8Var;
    }
}
