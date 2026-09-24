package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.view.View;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fu implements jk8, ri0, w23, i85, xd2, yi6, h9 {
    public final Object a;

    public fu(au1 au1Var) {
        oe oeVar = new oe(8);
        this.a = oeVar;
        jk5 jk5Var = (jk5) au1Var.getAnnotation(jk5.class);
        if (jk5Var != null) {
            ((ArrayList) oeVar.b).add(jk5Var);
            oeVar.c = jk5Var;
            ((ArrayList) oeVar.b).add(jk5Var);
        }
        kk5 kk5Var = (kk5) au1Var.getAnnotation(kk5.class);
        if (kk5Var != null) {
            for (jk5 jk5Var2 : kk5Var.value()) {
                ((ArrayList) oeVar.b).add(jk5Var2);
            }
        }
    }

    public static fu i() {
        Pattern patternCompile = Pattern.compile("[.-]");
        js9 js9Var = new js9(patternCompile);
        Matcher matcher = patternCompile.matcher("");
        matcher.getClass();
        if (matcher.matches()) {
            c6.f(lg7.O("The pattern may not match the empty string: %s", js9Var));
            return null;
        }
        z28 z28Var = new z28(21);
        z28Var.b = js9Var;
        return new fu(z28Var);
    }

    @Override // defpackage.ri0
    public void a(ty7 ty7Var) {
        qy7 qy7Var = qy7.f;
        DetailActivity detailActivity = (DetailActivity) this.a;
        ai8.l(detailActivity, detailActivity.a0().k().getPackageName());
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        u29 u29Var = (u29) this.a;
        s29 s29Var = new s29(u29Var, (TaskCompletionSource) obj2);
        n39 n39Var = (n39) ((v29) obj).p();
        ef efVar = new ef(new qn1(-1, -1, 0, true), false);
        efVar.c = false;
        String str = u29Var.k;
        Parcel parcelF = n39Var.f();
        int i = z29.a;
        parcelF.writeStrongBinder(s29Var);
        parcelF.writeString(str);
        z29.b(parcelF, efVar);
        n39Var.g(parcelF, 2);
    }

    public eu b(String str) {
        Map map = (Map) this.a;
        String strZ0 = nq7.z0(str, ":", str);
        Locale locale = Locale.US;
        locale.getClass();
        String upperCase = strZ0.toUpperCase(locale);
        upperCase.getClass();
        return (eu) map.get(upperCase);
    }

    @Override // defpackage.xd2
    public void c(ev5 ev5Var) {
        ((oe) this.a).c(ev5Var);
    }

    @Override // defpackage.ri0
    public void d(List list, List list2, boolean z, boolean z2, cd cdVar) {
        hk hkVar;
        gm gmVar;
        boolean z3;
        DetailActivity detailActivity = (DetailActivity) this.a;
        ji jiVarK = detailActivity.a0().k();
        AppCloudBackup appCloudBackup = cdVar != null ? (AppCloudBackup) cdVar.c : null;
        if (appCloudBackup != null) {
            hkVar = new hk(appCloudBackup.getBackupId(), jiVarK.getPackageName(), true);
        } else {
            if (cdVar == null || (hkVar = (hk) cdVar.b) == null) {
                List<gm> localBackups = jiVarK.getLocalBackups();
                if (localBackups == null || (gmVar = (gm) el1.U0(localBackups)) == null) {
                    hkVar = null;
                } else {
                    hk hkVar2 = gmVar.a;
                    hkVar = hkVar2;
                }
            } else {
                hkVar = hkVar2;
            }
            if (hkVar == null) {
                f6.g(xs1.j("No local backup found for app: ", jiVarK.asString()));
                return;
            }
        }
        hk hkVar3 = hkVar;
        List list3 = jiVarK.isBundled() ? list2 : list;
        yu.Companion.getClass();
        yu yuVarA = wu.a();
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z3 = sharedPreferences.getBoolean("restore_special_permissions", true);
            boolean z4 = false;
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z4 = sharedPreferences2.getBoolean("restore_ssaids", false);
                u20 u20Var = new u20(2, detailActivity, new jz(jiVarK, list3, yuVarA, z3, z4, hkVar3, cdVar != null ? (AppCloudBackup) cdVar.c : null), new ry7(z2));
                if (z) {
                    sa1.R(detailActivity, null, u20Var, 1);
                } else {
                    u20Var.invoke();
                }
            } catch (ClassCastException unused) {
            }
        } catch (ClassCastException unused2) {
            z3 = true;
        }
    }

    @Override // defpackage.xd2
    public void e(ev5 ev5Var, xd2 xd2Var) {
        ((oe) this.a).e(ev5Var, xd2Var);
    }

    public void f(int i, Object obj, k57 k57Var) {
        jk1 jk1Var = (jk1) this.a;
        jk1Var.B(i, 3);
        k57Var.a((s4) obj, jk1Var.a);
        jk1Var.B(i, 4);
    }

    @Override // defpackage.ri0
    public void g(List list, List list2, List list3, boolean z) {
        DetailActivity detailActivity = (DetailActivity) this.a;
        ji jiVarK = detailActivity.a0().k();
        List list4 = jiVarK.isBundled() ? list2 : list;
        boolean zW = z85.w();
        xp1 xp1VarR = z85.r();
        MultipleBackupStrategy.Companion.getClass();
        v20 v20Var = new v20(3, detailActivity, new hz(jiVarK, list4, list3, null, null, zW, xp1VarR, b.c(), null), new ky7(2, 0));
        if (list3.contains(q05.CLOUD)) {
            sa1.R(detailActivity, null, v20Var, 1);
        } else {
            v20Var.invoke();
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new a05((Context) ((id4) this.a).a);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (MaterialCardView) this.a;
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.a;
        g9 g9Var = (g9) obj;
        Intent intent = g9Var.b;
        int i = g9Var.a;
        Bundle extras = intent == null ? null : intent.getExtras();
        if (i != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            ta9.h("ProxyBillingActivityV2", "Launch external link flow finished with resultCode: " + i);
            extras.putInt("INTERNAL_LOG_ERROR_REASON", 134);
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "Launch external link flow finished with error resultCode: " + i);
        }
        int i2 = ta9.e(intent, "ProxyBillingActivityV2").a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.n;
        if (resultReceiver != null) {
            resultReceiver.send(i2, extras);
        } else {
            ta9.h("ProxyBillingActivityV2", "Launch external link flow result receiver is null");
        }
        if (i2 != 0) {
            ta9.h("ProxyBillingActivityV2", "Launch external link flow finished with billing responseCode: " + i2);
        }
        proxyBillingActivityV2.finish();
    }

    public List j(String str) {
        str.getClass();
        Iterator itG = ((u1a) this.a).g(this, str);
        ArrayList arrayList = new ArrayList();
        while (true) {
            v39 v39Var = (v39) itG;
            if (!v39Var.hasNext()) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add((String) v39Var.next());
        }
    }

    public fu() {
        this.a = new AtomicReference(null);
    }

    public fu(Context context) {
        this.a = new be4(context, 0);
    }

    public fu(jk1 jk1Var) {
        yd4.a(jk1Var, "output");
        this.a = jk1Var;
        jk1Var.a = this;
    }

    public /* synthetic */ fu(Object obj) {
        this.a = obj;
    }
}
