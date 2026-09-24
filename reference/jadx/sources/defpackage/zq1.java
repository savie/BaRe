package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.list.a;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zq1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ zq1(Object obj, jv1 jv1Var, int i) {
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
                return new zq1((a) obj2, jv1Var, 0);
            case 1:
                return new zq1((ic2) obj2, jv1Var, 1);
            case 2:
                return new zq1((d) obj2, jv1Var, 2);
            default:
                return new zq1((fs4) obj2, jv1Var, 3);
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
            case 2:
                break;
        }
        return ((zq1) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object objE;
        rk rkVar;
        Object objInvoke;
        int i = this.a;
        int i2 = 7;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                a aVar = (a) obj2;
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    br1 br1Var = br1.a;
                    if (!br1.b) {
                        aVar.g.k(ym7.LOADING);
                        br1Var.a();
                    }
                    zn4 zn4Var = zn4.a;
                    ek ekVar = new ek(aVar, 18);
                    this.b = 1;
                    if (zn4.g(ekVar, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i3 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                if (V.INSTANCE.getVp()) {
                    return be8Var;
                }
                zc2 zc2Var = re3.a;
                String str = aVar.b;
                ConfigsData configsData = br1.e;
                try {
                    new qe3(str, "configs=" + (configsData != null ? configsData.getSize() : null)).invoke();
                    return be8Var;
                } catch (Exception unused) {
                    return be8Var;
                }
            case 1:
                ic2 ic2Var = (ic2) obj2;
                tr9 tr9Var = ic2Var.h;
                int i4 = this.b;
                try {
                    if (i4 != 0) {
                        if (i4 == 1) {
                            lg7.H(obj);
                        } else {
                            if (i4 != 2) {
                                l0.e("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            lg7.H(obj);
                            objE = obj;
                        }
                        return (em7) objE;
                    }
                    lg7.H(obj);
                    if (tr9Var.c() instanceof ne3) {
                        return tr9Var.c();
                    }
                    this.b = 1;
                    if (ic2Var.h(this) == yx1Var) {
                        return yx1Var;
                    }
                    this.b = 2;
                    objE = ic2.e(ic2Var, false, this);
                    if (objE == yx1Var) {
                        return yx1Var;
                    }
                    return (em7) objE;
                } catch (Throwable th) {
                    return new jf6(-1, th);
                }
            case 2:
                d dVar = (d) obj2;
                int i5 = this.b;
                try {
                    if (i5 == 0) {
                        lg7.H(obj);
                        mp6 mp6Var = mp6.a;
                        if (mp6.f()) {
                            dz5 dz5Var = dz5.a;
                            dz5.f();
                            String[] strArr = {"android.permission.READ_SMS", "android.permission.WRITE_SMS", "android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG", "android.permission.READ_CONTACTS", b67.e() ? "android.permission.POST_NOTIFICATIONS" : null, dz5.l(dz5.j()) ? "com.android.permission.GET_INSTALLED_APPS" : null};
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            for (int i6 = 0; i6 < 7; i6++) {
                                String str2 = strArr[i6];
                                if (str2 != null) {
                                    linkedHashSet.add(str2);
                                }
                            }
                            gv7 gv7Var = av.a;
                            dVar.getClass();
                            SwiftApp.Companion companion = SwiftApp.d;
                            String packageName = SwiftApp.Companion.c().getPackageName();
                            packageName.getClass();
                            av.e(packageName, linkedHashSet, false, null);
                            if (Const.b(null, 7)) {
                                dVar.o();
                                zn4 zn4Var2 = zn4.a;
                                rkVar = new rk(dVar.p);
                            } else {
                                zn4 zn4Var3 = zn4.a;
                                zn4.e(new l30(15, SwiftApp.Companion.c(), "File read/write check failed! Please restart the app."));
                                SharedPreferences.Editor editor = cz4.k;
                                if (editor == null) {
                                    pe4.F("editor");
                                    throw null;
                                }
                                editor.putBoolean("show_root_grant_permissions_button", false).commit();
                                this.b = 1;
                                if (yc9.j(5000L, this) == yx1Var) {
                                    return yx1Var;
                                }
                            }
                        } else {
                            Const.O();
                            zn4 zn4Var4 = zn4.a;
                            rkVar = new rk(dVar.p);
                        }
                        zn4.e(rkVar);
                        return be8Var;
                    }
                    if (i5 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                    dz5 dz5Var2 = dz5.a;
                    dz5.p();
                    Const.g("Storage access failed after revoking storage permission", true);
                    throw null;
                } catch (Throwable th2) {
                    zn4 zn4Var5 = zn4.a;
                    zn4.e(new rk(dVar.p));
                    throw th2;
                }
            default:
                fs4 fs4Var = (fs4) obj2;
                int i7 = this.b;
                if (i7 != 0) {
                    if (i7 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                SettingsDetailActivity settingsDetailActivityQ = fs4Var.q();
                qo0 qo0VarG = settingsDetailActivityQ != null ? settingsDetailActivityQ.G() : null;
                if (qo0VarG != null) {
                    qo0VarG.h(R.string.processing);
                }
                g00 g00Var = g00.a;
                List listM = g00.m(false);
                String.CASE_INSENSITIVE_ORDER.getClass();
                List<ji> listN1 = el1.n1(listM, new cz3(0));
                ArrayList arrayList = new ArrayList();
                for (ji jiVar : listN1) {
                    try {
                        objInvoke = new gj(jiVar, 21).invoke();
                    } catch (Exception unused2) {
                        objInvoke = null;
                    }
                    List list = (List) objInvoke;
                    if (list != null && !list.isEmpty()) {
                        arrayList.add(new bz3(jiVar.getName(), jiVar.getPackageName(), list));
                    }
                    break;
                }
                if (qo0VarG != null) {
                    qo0VarG.f();
                }
                zn4 zn4Var6 = zn4.a;
                v20 v20Var = new v20(i2, fs4Var, arrayList, qo0VarG);
                this.b = 1;
                return zn4.g(v20Var, this) == yx1Var ? yx1Var : be8Var;
        }
    }
}
