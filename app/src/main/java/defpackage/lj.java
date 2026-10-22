package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lj extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lj(Object obj, jv1 jv1Var, int i) {
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
                return new lj((rj) obj2, jv1Var, 0);
            case 1:
                return new lj((ji) obj2, jv1Var, 1);
            case 2:
                return new lj((fa2) obj2, jv1Var, 2);
            case 3:
                return new lj((fi5) obj2, jv1Var, 3);
            default:
                return new lj((od6) obj2, jv1Var, 4);
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
                ((lj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
            case 1:
                ((lj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
            case 2:
                ((lj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
            case 3:
                return ((lj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
            default:
                ((lj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        String string;
        jv1 jv1Var = null;
        boolean z = true;
        char c = 1;
        boolean z2 = false;
        switch (this.a) {
            case 0:
                lg7.H(obj);
                g00 g00Var = g00.a;
                rj rjVar = (rj) this.b;
                ji jiVar = rjVar.f;
                g00.d(jiVar.getPackageName(), jiVar.getName(), jiVar.getEnabled());
                jiVar.setEnabled(!jiVar.getEnabled());
                Const.T();
                rjVar.I();
                return be8.a;
            case 1:
                lg7.H(obj);
                g00 g00Var2 = g00.a;
                g00.c(((ji) this.b).getPackageName(), false);
                return be8.a;
            case 2:
                lg7.H(obj);
                zn4.c(new da2(z2, (fa2) this.b, z));
                int i = 2;
                for (dv dvVar : fl1.A0(kz4.g, pz4.g)) {
                    if (!dvVar.b) {
                        dv.i(dvVar, true, null, false, false, 12);
                    }
                }
                fa2 fa2Var = (fa2) this.b;
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences.getString("KEY_LAST_SHOWN_VERSION", "");
                    if (!"5.1.0".equals(string != null ? string : "")) {
                        ArrayList arrayListA = c41.a();
                        if (!arrayListA.isEmpty()) {
                            fa2Var.h.k(arrayListA);
                        }
                    }
                    so5.a.a();
                    synchronized (at7.a) {
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new dh7(i, jv1Var, c == true ? 1 : 0));
                    }
                    return be8.a;
                } catch (ClassCastException unused) {
                    string = "";
                }
                break;
            case 3:
                lg7.H(obj);
                return new Integer(xc7.b.nativeIncrementAndGetCounterValue(((xc7) ((fi5) this.b).i.getValue()).a));
            default:
                be8 be8Var = be8.a;
                lg7.H(obj);
                od6 od6Var = (od6) this.b;
                qo0 qo0Var = od6Var.i;
                if (qo0Var != null) {
                    qo0Var.h(R.string.preparing);
                }
                ArrayList arrayListE = ud5.e();
                if (arrayListE.isEmpty()) {
                    od6Var.k().k(null);
                    qo0 qo0Var2 = od6Var.i;
                    if (qo0Var2 != null) {
                        qo0Var2.f();
                    }
                } else {
                    vd5 vd5Var = (vd5) arrayListE.get(0);
                    if (vd5Var.getLocalFile().j()) {
                        od6Var.k().k(vd5Var.getLocalFile());
                        qo0 qo0Var3 = od6Var.i;
                        if (qo0Var3 != null) {
                            qo0Var3.f();
                        }
                    } else {
                        qo0 qo0Var4 = od6Var.i;
                        if (qo0Var4 != null) {
                            qo0Var4.h(R.string.downloading_backup_files);
                        }
                        if (ud5.d(vd5Var) && vd5Var.getLocalFile().j()) {
                            od6Var.k().k(vd5Var.getLocalFile());
                        } else {
                            od6Var.k().k(null);
                        }
                        qo0 qo0Var5 = od6Var.i;
                        if (qo0Var5 != null) {
                            qo0Var5.f();
                        }
                    }
                }
                return be8Var;
        }
    }
}
