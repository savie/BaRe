package defpackage;

import android.util.Log;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pj extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ pj(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new pj((rj) obj2, jv1Var, 0);
            case 1:
                return new pj((kg4) obj2, jv1Var, 1);
            default:
                return new pj((kd7) obj2, jv1Var, 2);
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
                break;
            case 1:
                break;
        }
        return ((pj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x010a  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        BlacklistApp blacklistApp;
        oj ojVar;
        int i = this.a;
        Object obj2 = be8.a;
        yx1 yx1Var = yx1.a;
        Object obj3 = this.c;
        Object obj4 = null;
        switch (i) {
            case 0:
                rj rjVar = (rj) obj3;
                k28 k28Var = rjVar.e;
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 == 1) {
                        lg7.H(obj);
                        return obj2;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                BlacklistData blacklistData = gs0.c;
                List<BlacklistApp> items = blacklistData != null ? blacklistData.getItems() : null;
                if (items == null) {
                    items = ov2.a;
                }
                for (Object obj5 : items) {
                    if (pe4.d(((BlacklistApp) obj5).getPackageName(), rjVar.f.getPackageName())) {
                        obj4 = obj5;
                        blacklistApp = (BlacklistApp) obj4;
                        if (blacklistApp == null && items.size() >= 100) {
                            ai8.q(k28Var, BlacklistActivity.class);
                            k28Var.getClass();
                            String string = k28Var.getString(R.string.maximum_num_blacklist_limit_message);
                            string.getClass();
                            zn4.e(new l30(15, k28Var, string));
                            return obj2;
                        }
                        zn4 zn4Var = zn4.a;
                        ojVar = new oj(0, rjVar, blacklistApp, items);
                        this.b = 1;
                        if (zn4.g(ojVar, this) == yx1Var) {
                            return yx1Var;
                        }
                        return obj2;
                    }
                }
                blacklistApp = (BlacklistApp) obj4;
                if (blacklistApp == null) {
                    ai8.q(k28Var, BlacklistActivity.class);
                    k28Var.getClass();
                    String string2 = k28Var.getString(R.string.maximum_num_blacklist_limit_message);
                    string2.getClass();
                    zn4.e(new l30(15, k28Var, string2));
                    return obj2;
                }
                zn4 zn4Var2 = zn4.a;
                ojVar = new oj(0, rjVar, blacklistApp, items);
                this.b = 1;
                if (zn4.g(ojVar, this) == yx1Var) {
                    return yx1Var;
                }
                return obj2;
            case 1:
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    mb8 mb8Var = ((kg4) obj3).b;
                    this.b = 1;
                    return mb8Var.e(this) == yx1Var ? yx1Var : obj2;
                }
                if (i3 == 1) {
                    lg7.H(obj);
                    return obj2;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                kd7 kd7Var = (kd7) obj3;
                int i4 = this.b;
                try {
                    if (i4 == 0) {
                        lg7.H(obj);
                        fb2 fb2Var = kd7Var.e;
                        ds4 ds4Var = new ds4(kd7Var, null);
                        this.b = 1;
                        if (fb2Var.a(ds4Var, this) == yx1Var) {
                            obj2 = yx1Var;
                        }
                    } else {
                        if (i4 != 1) {
                            l0.e("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        lg7.H(obj);
                    }
                    return obj2;
                } catch (Exception e) {
                    Log.d("FirebaseSessions", "App backgrounded, failed to update data. Message: " + e.getMessage());
                    q87 q87Var = kd7Var.h;
                    if (q87Var == null) {
                        pe4.F("localSessionData");
                        throw null;
                    }
                    kd7Var.d.getClass();
                    kd7Var.h = q87.a(q87Var, null, a48.a(), null, 5);
                    return obj2;
                }
        }
    }
}
