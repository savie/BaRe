package defpackage;

import androidx.preference.CheckBoxPreference;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.settings.SettingsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ff1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ff1(Object obj, jv1 jv1Var, int i) {
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
                return new ff1((hf1) obj2, jv1Var, 0);
            case 1:
                return new ff1((bn1) obj2, jv1Var, 1);
            default:
                return new ff1((pa7) obj2, jv1Var, 2);
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
        return ((ff1) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                hf1 hf1Var = (hf1) obj2;
                int i2 = this.b;
                if (i2 == 0) {
                    lg7.H(obj);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    hf1Var.h(R.string.processing);
                    tb1 tb1Var = tb1.a;
                    qb1.a();
                    tb1 tb1VarC = qb1.c();
                    tb1VarC.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new sb1(tb1VarC, true, null));
                    long jM = Const.m(jCurrentTimeMillis, 1000L);
                    this.b = 1;
                    if (yc9.j(jM, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i2 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                int i3 = AppListActivity.q0;
                y13.E(bt.LOCAL);
                hf1Var.f();
                return be8Var;
            case 1:
                int i4 = this.b;
                if (i4 == 0) {
                    lg7.H(obj);
                    this.b = 1;
                    Object objK = ((bn1) obj2).k(this);
                    return objK == yx1Var ? yx1Var : objK;
                }
                if (i4 == 1) {
                    lg7.H(obj);
                    return obj;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                final pa7 pa7Var = (pa7) obj2;
                int i5 = this.b;
                if (i5 != 0) {
                    if (i5 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                final boolean zB = hp0.b("org.swiftapps.swiftbackup");
                mp6 mp6Var = mp6.a;
                if (mp6.f()) {
                    hp0.a("org.swiftapps.swiftbackup", !(((CheckBoxPreference) pa7Var.y.getValue()).f0 && !zB));
                    zn4.c(new n55(pa7Var, 8));
                    return be8Var;
                }
                zn4 zn4Var2 = zn4.a;
                bt3 bt3Var = new bt3() { // from class: oa7
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        pa7 pa7Var2 = pa7Var;
                        SettingsActivity settingsActivity = (SettingsActivity) pa7Var2.getActivity();
                        if (settingsActivity != null && !settingsActivity.isFinishing()) {
                            Const.A(settingsActivity);
                            String string = pa7Var2.getString(R.string.disable_battery_opt_message);
                            string.getClass();
                            zn4 zn4Var3 = zn4.a;
                            zn4.e(new l30(15, settingsActivity, string));
                            ((CheckBoxPreference) pa7Var2.y.getValue()).G(zB);
                        }
                        return be8.a;
                    }
                };
                this.b = 1;
                return zn4.g(bt3Var, this) == yx1Var ? yx1Var : be8Var;
        }
    }
}
