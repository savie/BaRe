package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms0 extends ws7 implements qt3 {
    public final /* synthetic */ BlacklistApp a;
    public final /* synthetic */ jh6 b;
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ Integer d;
    public final /* synthetic */ bt3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ms0(BlacklistApp blacklistApp, jh6 jh6Var, ArrayList arrayList, Integer num, bt3 bt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = blacklistApp;
        this.b = jh6Var;
        this.c = arrayList;
        this.d = num;
        this.e = bt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ms0(this.a, this.b, this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        ms0 ms0Var = (ms0) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        ms0Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        jh6 jh6Var = this.b;
        int i = jh6Var.a;
        BlacklistApp blacklistApp = this.a;
        BlacklistApp blacklistAppCopy$default = BlacklistApp.copy$default(blacklistApp, null, null, i, 3, null);
        e7 e7Var = new e7(blacklistAppCopy$default, 4);
        ArrayList arrayList = this.c;
        el1.h1(arrayList, e7Var);
        arrayList.add(blacklistAppCopy$default);
        gs0 gs0Var = gs0.a;
        ds0 ds0Var = BlacklistData.Companion;
        List listV1 = el1.v1(arrayList);
        ds0Var.getClass();
        gs0Var.d(ds0.a(listV1), true);
        int i2 = jh6Var.a;
        is0 is0Var = is0.Hide;
        if (i2 == is0Var.ordinal()) {
            kz4.g.o(blacklistApp.getPackageName());
            ua1.g.o(blacklistApp.getPackageName());
        }
        int iOrdinal = is0Var.ordinal();
        Integer num = this.d;
        if (num != null && num.intValue() == iOrdinal && jh6Var.a == is0.NoData.ordinal()) {
            dv.i(kz4.g, true, null, true, false, 10);
            dv.i(ua1.g, true, null, true, false, 10);
        }
        bt3 bt3Var = this.e;
        if (bt3Var != null) {
            bt3Var.invoke();
        }
        return be8.a;
    }
}
