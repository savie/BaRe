package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mf implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ mf(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i = this.a;
        int i2 = 0;
        int i3 = 1;
        jv1 jv1Var = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                ApkImportActivity apkImportActivity = (ApkImportActivity) obj;
                int i4 = ApkImportActivity.Q;
                view.getClass();
                u45 u45Var = new u45(apkImportActivity, view, 12);
                u45Var.f(R.menu.menu_apk_import);
                u45Var.e = new pf(apkImportActivity, i2);
                u45Var.j();
                return;
            case 1:
                mp6 mp6Var = mp6.a;
                boolean zF = mp6.f();
                AppListActivity appListActivity = ((t10) obj).Q;
                if (!zF) {
                    Const.N(appListActivity);
                    return;
                }
                appListActivity.getClass();
                String string = appListActivity.getString(R.string.icon_indicates_root_or_shizuku_needed_message);
                string.getClass();
                b05.l(appListActivity, null, string, 10);
                return;
            case 2:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj;
                gv7 gv7Var = appsBatchActivity.n0;
                l20 l20Var = appsBatchActivity.m0;
                km5 km5Var = appsBatchActivity.r0;
                if (l20Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (l20Var.e.b.isEmpty()) {
                    String string2 = appsBatchActivity.getString(R.string.select_some_items);
                    string2.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, appsBatchActivity, string2));
                    return;
                }
                n10 n10Var = appsBatchActivity.f0;
                if (n10Var == null) {
                    zc6 zc6Var = appsBatchActivity.g0;
                    if (zc6Var == null) {
                        l0.e(eq3.l("No action found as both ", n10.class.getSimpleName(), " & ", zc6.class.getSimpleName(), " are null!"));
                        return;
                    }
                    String str = zc6Var.a;
                    if (pe4.d(str, "ID_DELETE_BACKUPS_UNINSTALLED_APPS")) {
                        boolean z5 = zc6Var.q;
                        zn4 zn4Var2 = zn4.a;
                        zn4.b(null, new b20(appsBatchActivity, z5, null));
                        return;
                    }
                    if (pe4.d(str, "ID_ENABLE_DISABLE_APPS_APPS")) {
                        appsBatchActivity.n0();
                        return;
                    }
                    xi0 xi0Var = (xi0) gv7Var.getValue();
                    l20 l20Var2 = appsBatchActivity.m0;
                    if (l20Var2 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    List listL = l20Var2.l();
                    if (listL.isEmpty()) {
                        z = false;
                    } else {
                        Iterator it = listL.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                            } else if (!((ji) it.next()).isBundled()) {
                                z = true;
                            }
                        }
                    }
                    l20 l20Var3 = appsBatchActivity.m0;
                    if (l20Var3 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    List listL2 = l20Var3.l();
                    if (listL2.isEmpty()) {
                        z2 = false;
                    } else {
                        Iterator it2 = listL2.iterator();
                        while (it2.hasNext()) {
                            if (((ji) it2.next()).isBundled()) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    }
                    xi0Var.getClass();
                    km5Var.getClass();
                    zn4 zn4Var3 = zn4.a;
                    zn4.b(null, new ui0(zc6Var, xi0Var, appsBatchActivity, z, z2, km5Var, null));
                    return;
                }
                String str2 = n10Var.a;
                if (pe4.d(str2, "Uninstall")) {
                    String string3 = appsBatchActivity.getString(n10Var.p);
                    string3.getClass();
                    Const.I(appsBatchActivity, string3, null, new gj(appsBatchActivity, 8));
                    return;
                }
                if (pe4.d(str2, "Delete backups")) {
                    boolean z6 = n10Var.k;
                    zn4 zn4Var4 = zn4.a;
                    zn4.b(null, new b20(appsBatchActivity, z6, null));
                    return;
                }
                if (pe4.d(str2, "Enable/Disable apps")) {
                    appsBatchActivity.n0();
                    return;
                }
                if (pe4.d(str2, "Apply labels")) {
                    l20 l20Var4 = appsBatchActivity.m0;
                    if (l20Var4 != null) {
                        new n97(appsBatchActivity, l20Var4.l(), new cz(appsBatchActivity, i3)).F(appsBatchActivity, false, false);
                        return;
                    } else {
                        pe4.F("mAdapter");
                        throw null;
                    }
                }
                if (pe4.d(str2, "Export apps list")) {
                    zn4 zn4Var5 = zn4.a;
                    zn4.b(null, new d20(appsBatchActivity, null));
                    return;
                }
                xi0 xi0Var2 = (xi0) gv7Var.getValue();
                l20 l20Var5 = appsBatchActivity.m0;
                if (l20Var5 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listL3 = l20Var5.l();
                if (listL3.isEmpty()) {
                    z3 = false;
                } else {
                    Iterator it3 = listL3.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z3 = false;
                        } else if (!((ji) it3.next()).isBundled()) {
                            z3 = true;
                        }
                    }
                }
                l20 l20Var6 = appsBatchActivity.m0;
                if (l20Var6 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listL4 = l20Var6.l();
                if (listL4.isEmpty()) {
                    z4 = false;
                } else {
                    Iterator it4 = listL4.iterator();
                    while (it4.hasNext()) {
                        if (((ji) it4.next()).isBundled()) {
                            z4 = true;
                        }
                    }
                    z4 = false;
                }
                xi0Var2.getClass();
                km5Var.getClass();
                zn4 zn4Var6 = zn4.a;
                zn4.b(null, new ti0(n10Var, xi0Var2, appsBatchActivity, z3, z4, km5Var, null));
                return;
            case 3:
                int i5 = BlacklistActivity.P;
                rs0 rs0VarO = ((BlacklistActivity) obj).U();
                rs0VarO.h(R.string.processing);
                zn4 zn4Var7 = zn4.a;
                zn4.b(null, new wm(rs0VarO, jv1Var, i3));
                return;
            case 4:
                ((l01) obj).C.toggle();
                return;
            case 5:
                ai8.q(((x92) obj).l(), StorageSwitchActivity.class);
                return;
            case 6:
                FilenSignInActivity filenSignInActivity = (FilenSignInActivity) obj;
                int i6 = FilenSignInActivity.N;
                MaterialButton materialButton = filenSignInActivity.N().b;
                Context context = materialButton.getContext();
                InputMethodManager inputMethodManager = context != null ? (InputMethodManager) context.getSystemService(InputMethodManager.class) : null;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(materialButton.getWindowToken(), 0);
                }
                ec3 ec3VarO = filenSignInActivity.V();
                ex6 ex6Var = ec3VarO.e;
                String string4 = nq7.H0(String.valueOf(filenSignInActivity.N().f.c.getText())).toString();
                String strValueOf = String.valueOf(((TextInputEditText) filenSignInActivity.N().k.c).getText());
                string4.getClass();
                Object objD = ex6Var.d();
                yb3 yb3Var = yb3.a;
                if (pe4.d(objD, yb3Var)) {
                    return;
                }
                ec3VarO.h = string4;
                ec3VarO.i = strValueOf;
                ec3VarO.j = "";
                ex6Var.k(yb3Var);
                ec3VarO.h(R.string.processing_please_wait);
                zn4 zn4Var8 = zn4.a;
                zn4.b(ec3VarO.g, new dc3(ec3VarO, "", null));
                return;
            case 7:
                ((a14) obj).j(false);
                return;
            case 8:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                x54 x54Var = (x54) homeSearchActivity.P.getValue();
                boolean z7 = !homeSearchActivity.V.i;
                if (x54Var.i == z7) {
                    return;
                }
                x54Var.i = z7;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("home_search_show_system_apps", z7).apply();
                x54Var.l(x54Var.h);
                return;
            case XmlPullParser.COMMENT /* 9 */:
                final IntroActivity introActivity = (IntroActivity) obj;
                int i7 = IntroActivity.V;
                StringBuilder sb = new StringBuilder();
                sb.append(introActivity.getString(R.string.root_grant_permissions_dialog_msg_prefix));
                sb.append("\n");
                sb.append("\n    • " + introActivity.getString(R.string.android_permission_name_storage));
                sb.append("\n    • " + introActivity.getString(R.string.android_permission_name_sms));
                sb.append("\n    • " + introActivity.getString(R.string.android_permission_name_call_logs));
                sb.append("\n    • " + introActivity.getString(R.string.android_permission_name_contacts));
                if (b67.e()) {
                    sb.append("\n    • " + introActivity.getString(R.string.notifications));
                }
                dz5 dz5Var = dz5.a;
                if (dz5.l(dz5.j())) {
                    sb.append("\n    • " + introActivity.getString(R.string.android_permission_name_installed_apps));
                }
                String string5 = sb.toString();
                s35 s35Var = new s35(introActivity, R.style.M3AlertDialogTheme, new hv1(introActivity, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.root_grant_permissions_dialog_title);
                ((ra) s35Var.b).f = string5;
                s35Var.s(R.string.grant_permissions, new DialogInterface.OnClickListener() { // from class: ff4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i8) {
                        IntroActivity introActivity2 = introActivity;
                        int i9 = IntroActivity.V;
                        nf4 nf4Var = introActivity2.a0().p;
                        synchronized (nf4Var) {
                            if (!nf4Var.h && nf4Var.g == mf4.IDLE) {
                                nf4Var.a(mf4.CHECKING_ROOT);
                                nf4Var.a.invoke(new ej(nf4Var, 24));
                            }
                        }
                    }
                });
                s35Var.q(R.string.cancel, null);
                s35Var.m();
                return;
            case 10:
                int i8 = PreconditionsActivity.P;
                ((PreconditionsActivity) obj).finish();
                return;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Map map = ScheduleFabMenuView.K;
                ((ScheduleFabMenuView) obj).p(ScheduleFabMenuView.a.Main, true);
                return;
            case 12:
                a47 a47Var = (a47) obj;
                ev evVar = a47Var.f;
                List listL5 = a47Var.q.l();
                ArrayList arrayList = new ArrayList(hl1.G0(listL5, 10));
                Iterator it5 = listL5.iterator();
                while (it5.hasNext()) {
                    arrayList.add(Integer.valueOf(((jd2) it5.next()).a));
                }
                evVar.invoke(el1.z1(arrayList));
                ho hoVar = (ho) a47Var.b;
                if (hoVar != null) {
                    hoVar.dismiss();
                    return;
                }
                return;
            default:
                ((cs8) obj).b.l();
                return;
        }
    }
}
