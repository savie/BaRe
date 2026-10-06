package defpackage;

import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.model.firebase.WifiCloudDetails;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uv extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ uv(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return new uv((lh6) obj2, jv1Var, 0);
            case 1:
                return new uv((ScheduleService) obj2, jv1Var, 1);
            default:
                return new uv((iu8) obj2, jv1Var, 2);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((uv) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((uv) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((uv) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        long jLongValue;
        List<et8> items;
        switch (this.a) {
            case 0:
                lg7.H(obj);
                mp6 mp6Var = mp6.a;
                ip6 ip6Var = ip6.SHIZUKU;
                String str = (String) el1.U0(mp6Var.h(new String[]{"bmgr enabled"}, ip6Var));
                boolean z = str != null && nq7.Z(str, "enabled", false);
                ((lh6) this.b).a = Boolean.valueOf(z);
                if (z) {
                    mp6Var.h(new String[]{"bmgr ".concat("enable false")}, ip6Var);
                }
                return be8.a;
            case 1:
                lg7.H(obj);
                synchronized (((ScheduleService) this.b).f) {
                }
                ((ScheduleService) this.b).b(jc2.TIMEOUT);
                qc2.a.f("ScheduleService timeout", false);
                return be8.a;
            default:
                be8 be8Var = be8.a;
                lg7.H(obj);
                iu8 iu8Var = (iu8) this.b;
                ex6 ex6Var = iu8Var.i;
                SwiftApp.Companion companion = SwiftApp.d;
                if (!ai8.i(SwiftApp.Companion.c())) {
                    ex6Var.k(new xt8(1));
                    return be8Var;
                }
                tb1 tb1Var = tb1.a;
                if (!qb1.m()) {
                    ex6Var.k(new xt8(2));
                    return be8Var;
                }
                ex6Var.k(yt8.a);
                iu8Var.j().getClass();
                ArrayList arrayList = null;
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    d6.o();
                    return null;
                }
                WifiCloudDetails wifiCloudDetailsC = us8.c();
                String driveId = wifiCloudDetailsC != null ? wifiCloudDetailsC.getDriveId() : null;
                if (driveId != null && driveId.length() != 0) {
                    Long fileSize = wifiCloudDetailsC.getFileSize();
                    if (fileSize != null) {
                        jLongValue = fileSize.longValue();
                    } else {
                        ui1 ui1VarL = qb1.c().l();
                        Exception exc = ui1VarL.b;
                        if (exc != null) {
                            vr6.e$default(vr6.INSTANCE, "WifiHelper", "getCloudBackup", exc, null, 8, null);
                        } else {
                            List list = ui1VarL.a;
                            if (list.isEmpty()) {
                                Log.w("WifiHelper", "getCloudBackup: FileList is EMPTY");
                            } else {
                                jLongValue = ((pg1) el1.S0(list)).c;
                            }
                        }
                    }
                    Long lValueOf = Long.valueOf(jLongValue);
                    q63 q63VarA = nh4.a();
                    if (jLongValue <= 0) {
                        lValueOf = null;
                    }
                    no2 no2VarC = qb1.c().c(new fo2(driveId, 23, lValueOf != null ? lValueOf.longValue() : -1L, q63VarA));
                    try {
                        ke keVarB = no2VarC.b();
                        q63 q63VarA2 = nh4.a();
                        if (!keVarB.e()) {
                            Log.e("WifiHelper", "onFailure: ".concat(keVarB.b()));
                        } else if (q63VarA2.j()) {
                            gv7 gv7Var = w14.a;
                            ft8 ft8Var = (ft8) w14.a(q63VarA2, ft8.class);
                            if (ft8Var != null && (items = ft8Var.getItems()) != null) {
                                ArrayList arrayList2 = new ArrayList();
                                for (Object obj2 : items) {
                                    if (((et8) obj2).isValid()) {
                                        arrayList2.add(obj2);
                                    }
                                }
                                arrayList = new ArrayList(arrayList2);
                            }
                        }
                        no2VarC.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(no2VarC, th);
                            throw th2;
                        }
                    }
                }
                ex6Var.k((arrayList == null || arrayList.isEmpty()) ? new wt8(iu8Var.k().isWifiEnabled()) : new zt8(arrayList));
                return be8Var;
        }
    }
}
