package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.a;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.client.SignInParameters;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.NoGmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.f;
import org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c7 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int iC;
        int iC2;
        int i = this.a;
        int i2 = 1;
        int i3 = 0;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                o7 o7Var = (o7) obj2;
                Boolean bool = (Boolean) obj;
                if (bool != null) {
                    boolean zBooleanValue = bool.booleanValue();
                    jk8 jk8Var = o7Var.b;
                    jk8Var.getClass();
                    MaterialButton materialButton = (MaterialButton) ((p7) jk8Var).b.c;
                    if (zBooleanValue) {
                        HomeActivity homeActivityI = o7Var.i();
                        iC = homeActivityI.getColor(sz8.y(homeActivityI, R.attr.colorBackgroundActivated));
                    } else {
                        HomeActivity homeActivityI2 = o7Var.i();
                        iC = io4.c(homeActivityI2, homeActivityI2.getColor(R.color.premium));
                    }
                    materialButton.setBackgroundTintList(sz8.h0(iC));
                    if (zBooleanValue) {
                        HomeActivity homeActivityI3 = o7Var.i();
                        iC2 = homeActivityI3.getColor(sz8.y(homeActivityI3, R.attr.colorPrimary));
                    } else {
                        HomeActivity homeActivityI4 = o7Var.i();
                        iC2 = io4.c(homeActivityI4, homeActivityI4.getColor(R.color.wht));
                    }
                    materialButton.setTextColor(iC2);
                    materialButton.setIconTint(sz8.h0(iC2));
                    materialButton.setText(zBooleanValue ? R.string.premium_user : R.string.get_premium);
                    materialButton.setOnClickListener(new h7(o7Var, i3));
                }
                return be8Var;
            case 1:
                AppListActivity appListActivity = (AppListActivity) obj2;
                qt qtVar = (qt) obj;
                int i4 = AppListActivity.q0;
                qtVar.getClass();
                MaterialButton materialButton2 = appListActivity.k0().b;
                ImageView imageView = appListActivity.k0().d;
                TextView textView = appListActivity.k0().e;
                Log.d(appListActivity.r(), "updateViews: AppListState=".concat(qtVar.getClass().getSimpleName()));
                if (qtVar instanceof nt) {
                    appListActivity.r0(appListActivity.m0(), appListActivity.i0(), appListActivity.k0().a);
                    appListActivity.t0(appListActivity.o0());
                } else if (qtVar instanceof pt) {
                    appListActivity.r0(appListActivity.o0(), appListActivity.k0().a);
                    appListActivity.t0(appListActivity.m0(), appListActivity.i0());
                } else {
                    boolean z = qtVar instanceof kt;
                    int i5 = R.string.filtered_list_empty_error;
                    int i6 = R.drawable.ic_format_list_bulleted_type;
                    if (z) {
                        appListActivity.r0(appListActivity.m0(), appListActivity.i0(), appListActivity.o0());
                        appListActivity.t0(appListActivity.k0().a);
                        if (appListActivity.b0()) {
                            i6 = R.drawable.ic_cloud;
                        }
                        imageView.setImageResource(i6);
                        if (appListActivity.b0()) {
                            i5 = R.string.no_backups_synced;
                        }
                        textView.setText(i5);
                        materialButton2.setVisibility(8);
                    } else if (qtVar instanceof lt) {
                        appListActivity.r0(appListActivity.m0(), appListActivity.i0(), appListActivity.o0());
                        appListActivity.t0(appListActivity.k0().a);
                        imageView.setImageResource(R.drawable.ic_format_list_bulleted_type);
                        textView.setText(R.string.filtered_list_empty_error);
                        materialButton2.setVisibility(0);
                        materialButton2.setText(R.string.reset_filters);
                        materialButton2.setOnClickListener(new hs(appListActivity, i3));
                    } else if (qtVar instanceof mt) {
                        appListActivity.r0(appListActivity.m0(), appListActivity.i0(), appListActivity.o0());
                        appListActivity.t0(appListActivity.k0().a);
                        imageView.setImageResource(R.drawable.ic_search_black_24dp);
                        textView.setText(R.string.no_items_for_search_query);
                        materialButton2.setVisibility(8);
                    } else if (qtVar instanceof ot) {
                        appListActivity.r0(appListActivity.m0(), appListActivity.i0(), appListActivity.o0());
                        appListActivity.t0(appListActivity.k0().a);
                        imageView.setImageResource(R.drawable.ic_wifi_off);
                        textView.setText(R.string.no_internet_connection_summary);
                        materialButton2.setVisibility(0);
                        materialButton2.setText(R.string.retry);
                        materialButton2.setOnClickListener(new xr(appListActivity, i2));
                    } else {
                        if (!qtVar.equals(jt.a)) {
                            q.j();
                            return null;
                        }
                        appListActivity.r0(appListActivity.m0(), appListActivity.i0(), appListActivity.o0());
                        appListActivity.t0(appListActivity.k0().a);
                        imageView.setImageResource(R.drawable.ic_cloud);
                        textView.setText(R.string.error_getting_apps);
                        materialButton2.setVisibility(8);
                    }
                }
                appListActivity.invalidateOptionsMenu();
                return be8Var;
            case 2:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) obj2;
                rw6 rw6Var = (rw6) obj;
                int i7 = AppsConfigRunActivity.m0;
                hy7 hy7Var = hy7.a;
                rw6Var.getClass();
                hy7.b(nc8.I(rw6Var));
                hy7.e(appsConfigRunActivity, null);
                appsConfigRunActivity.finish();
                return be8Var;
            case 3:
                y30 y30Var = (y30) obj2;
                List list = (List) obj;
                if (list != null) {
                    jk8 jk8Var2 = y30Var.b;
                    jk8Var2.getClass();
                    nd6.j(y30Var, list, ((z30) jk8Var2).d, R.string.other_quick_actions, R.drawable.ic_app, false, null, 64);
                }
                return be8Var;
            case 4:
                sj0 sj0Var = (sj0) obj2;
                Long l = (Long) obj;
                l.getClass();
                if (sj0Var.c.isRunning()) {
                    ag8.g(sj0Var, l);
                }
                return be8Var;
            case 5:
                BlacklistApp blacklistApp = (BlacklistApp) obj;
                blacklistApp.getClass();
                return Boolean.valueOf(pe4.d(blacklistApp.getPackageName(), ((BlacklistApp) obj2).getPackageName()));
            case 6:
                BoxSignInActivity boxSignInActivity = (BoxSignInActivity) obj2;
                int i8 = BoxSignInActivity.L;
                boxSignInActivity.setResult(((Boolean) obj).booleanValue() ? -1 : 0);
                boxSignInActivity.finish();
                return be8Var;
            case 7:
                v11 v11Var = (v11) obj2;
                xp1 xp1Var = (xp1) obj;
                xp1Var.getClass();
                int level = xp1Var.getLevel();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("compression_level_calls", level).apply();
                v11Var.q();
                return be8Var;
            case 8:
                CloudConnectActivity cloudConnectActivity = (CloudConnectActivity) obj2;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i9 = CloudConnectActivity.Q;
                if (zBooleanValue2) {
                    cloudConnectActivity.P(((bc1) el1.S0(((ac1) cloudConnectActivity.P.getValue()).l())).a);
                }
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                gg1 gg1Var = (gg1) obj2;
                gg1Var.m().f.l(gg1Var.m().f.d());
                return be8Var;
            case 10:
                int i10 = CloudOrphanCleanerActivity.S;
                ((CloudOrphanCleanerActivity) obj2).U().q();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                List list2 = (List) obj;
                list2.getClass();
                Exception exc = (Exception) ((tb1) obj2).b(new jd1(el1.v1(new LinkedHashSet(list2)))).c().b;
                return exc != null ? new of1(exc) : pf1.h;
            case 12:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj2;
                String str = (String) obj;
                int i11 = ConfigEditActivity.V;
                i3 = (str == null || str.length() == 0) ? 1 : 0;
                TextInputLayout textInputLayout = configEditActivity.U().n;
                textInputLayout.setErrorEnabled(i3 ^ 1);
                textInputLayout.setErrorIconDrawable((Drawable) null);
                textInputLayout.setError(str);
                return be8Var;
            case 13:
                lr1 lr1Var = (lr1) obj2;
                Set<String> set = (Set) obj;
                set.getClass();
                ArrayList arrayList = new ArrayList();
                for (String str2 : set) {
                    q05.Companion.getClass();
                    q05 q05VarA = o05.a(str2);
                    if (q05VarA != null) {
                        arrayList.add(q05VarA);
                    }
                }
                SyncOption syncOption = lr1Var.r().j().getSyncOption();
                if (!arrayList.contains(q05.CLOUD)) {
                    syncOption = null;
                }
                ArrayList arrayList2 = !arrayList.isEmpty() ? arrayList : null;
                lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, arrayList2 != null ? el1.Y0(arrayList2, null, null, null, null, 63) : null, syncOption != null ? syncOption.toString() : null, null, null, null, null, null, null, null, null, null, null, 65487, null));
                return be8Var;
            case 14:
                CsActivity csActivity = (CsActivity) obj2;
                int i12 = CsActivity.P0;
                vr6.i$default(vr6.INSTANCE, csActivity.r(), xs1.j("Showing folder creation failed dialog (folder name = ", (String) obj), null, 4, null);
                s35 s35Var = new s35(csActivity, R.style.M3AlertDialogTheme, new hv1(csActivity, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.cloud_folder_creation_failed);
                s35Var.n(R.string.cloud_folder_creation_error_message);
                s35Var.s(R.string.ok, null);
                s35Var.m();
                return be8Var;
            case 15:
                n92 n92Var = (n92) obj2;
                Exception exc2 = (Exception) obj;
                exc2.getClass();
                kq2 kq2Var = exc2 instanceof kq2 ? (kq2) exc2 : null;
                if (kq2Var == null) {
                    Throwable cause = exc2.getCause();
                    kq2Var = cause instanceof kq2 ? (kq2) cause : null;
                }
                return Boolean.valueOf(n92Var.h(kq2Var != null ? kq2Var.c : null));
            case Argon2.V10 /* 16 */:
                FolderEditActivity folderEditActivity = (FolderEditActivity) obj2;
                String str3 = (String) obj;
                int i13 = FolderEditActivity.h0;
                TextInputLayout textInputLayout2 = (TextInputLayout) folderEditActivity.b0.getValue();
                if (textInputLayout2.r.q != (!(str3 == null || str3.length() == 0))) {
                    CoordinatorLayout coordinatorLayout = folderEditActivity.Z().a;
                    coordinatorLayout.getClass();
                    folderEditActivity.x(coordinatorLayout, new Class[0]);
                }
                textInputLayout2.setErrorEnabled(((str3 == null || str3.length() == 0) ? 1 : 0) ^ 1);
                textInputLayout2.setErrorIconDrawable((Drawable) null);
                textInputLayout2.setError(str3);
                return be8Var;
            case 17:
                FolderPickerActivity folderPickerActivity = (FolderPickerActivity) obj2;
                hn3 hn3Var = (hn3) obj;
                int i14 = FolderPickerActivity.Q;
                hn3Var.getClass();
                q63 q63Var = hn3Var.c;
                folderPickerActivity.O = hn3Var;
                nc8 supportActionBar = folderPickerActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.f0(hn3Var.d.k);
                    supportActionBar.d0(hn3Var.i);
                }
                folderPickerActivity.A(!pe4.d(q63Var, hn3Var.a.n()));
                folderPickerActivity.P(hn3Var);
                folderPickerActivity.M.w(new fm7(hn3Var.h, (Set) null, false, (String) null, 30), false);
                if (!hn3Var.h.isEmpty()) {
                    folderPickerActivity.N().e.post(new z22(6, folderPickerActivity, hn3Var));
                }
                folderPickerActivity.N.w(new fm7(hn3Var.g, (Set) null, false, (String) null, 30), false);
                try {
                    int i15 = FolderPickerActivity.Q;
                    Parcelable parcelable = (Parcelable) folderPickerActivity.O().m.get(q63Var.v());
                    if (parcelable != null) {
                        a layoutManager = folderPickerActivity.N().d.getLayoutManager();
                        if (layoutManager != null) {
                            layoutManager.r0(parcelable);
                        }
                    } else {
                        folderPickerActivity.N().d.f0(0);
                    }
                    break;
                } catch (Exception unused) {
                }
                ExtendedFloatingActionButton extendedFloatingActionButton = folderPickerActivity.N().b;
                boolean z2 = hn3Var.e;
                extendedFloatingActionButton.setTextColor(sz8.U(extendedFloatingActionButton.getCurrentTextColor(), z2 ? 100 : 50));
                extendedFloatingActionButton.setIconTint(extendedFloatingActionButton.getIconTint().withAlpha(z2 ? 255 : 128));
                if (z2) {
                    extendedFloatingActionButton.setOnClickListener(new hs(folderPickerActivity, 5));
                } else {
                    extendedFloatingActionButton.setOnClickListener(null);
                }
                return be8Var;
            case 18:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) obj2;
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                int i16 = GmsSignInActivity.N;
                if (zBooleanValue3) {
                    gmsSignInActivity.setResult(-1);
                    gmsSignInActivity.finish();
                } else {
                    gmsSignInActivity.setResult(0);
                    gmsSignInActivity.finish();
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                int i17 = IntroActivity.V;
                ((IntroActivity) obj2).recreate();
                return be8Var;
            case 20:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                be5 be5Var = messagesBackupRestoreActivity.T;
                if (be5Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                fm7Var.getClass();
                be5Var.w(fm7Var, false);
                be5 be5Var2 = messagesBackupRestoreActivity.T;
                if (be5Var2 != null) {
                    be5Var2.y();
                    return be8Var;
                }
                pe4.F("mAdapter");
                throw null;
            case 21:
                f fVar = (f) obj2;
                qv1.c cVar = (qv1.c) obj;
                if (!((wg5.c) fVar.h.getValue()).getCancelled()) {
                    fVar.j.k(cVar);
                }
                return be8Var;
            case 22:
                cf5 cf5Var = (cf5) obj2;
                xp1 xp1Var2 = (xp1) obj;
                xp1Var2.getClass();
                int level2 = xp1Var2.getLevel();
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putInt("compression_level_msgs", level2).apply();
                cf5Var.q();
                return be8Var;
            case 23:
                final NoGmsSignInActivity noGmsSignInActivity = (NoGmsSignInActivity) obj2;
                int i18 = NoGmsSignInActivity.M;
                s35 s35Var2 = new s35(noGmsSignInActivity, R.style.M3AlertDialogTheme, new hv1(noGmsSignInActivity, R.style.M3AlertDialogTheme), null);
                ra raVar = (ra) s35Var2.b;
                raVar.d = noGmsSignInActivity.getString(R.string.auth_failed);
                raVar.f = (String) obj;
                s35Var2.r(R.string.ok, null);
                raVar.n = new DialogInterface.OnDismissListener() { // from class: hn5
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i19 = NoGmsSignInActivity.M;
                        NoGmsSignInActivity noGmsSignInActivity2 = noGmsSignInActivity;
                        noGmsSignInActivity2.setResult(0);
                        noGmsSignInActivity2.finish();
                    }
                };
                s35Var2.m();
                return be8Var;
            case 24:
                OneDriveSignInActivity oneDriveSignInActivity = (OneDriveSignInActivity) obj2;
                int i19 = OneDriveSignInActivity.L;
                SignInParameters.SignInParametersBuilder signInParametersBuilder = new SignInParameters.SignInParametersBuilder();
                signInParametersBuilder.withActivity(oneDriveSignInActivity);
                signInParametersBuilder.withScopes(x50.z0((String[]) ed1.a.getValue()));
                signInParametersBuilder.withCallback(new ut5(oneDriveSignInActivity.V()));
                SingleAccountPublicClientApplication singleAccountPublicClientApplication = oneDriveSignInActivity.V().e;
                if (singleAccountPublicClientApplication != null) {
                    singleAccountPublicClientApplication.signIn(signInParametersBuilder.build());
                    return be8Var;
                }
                pe4.F("clientApplication");
                throw null;
            case 25:
                d26 d26Var = (d26) obj2;
                int iIntValue = ((Integer) obj).intValue();
                return d26Var.e[iIntValue] + ": " + d26Var.i(iIntValue).a();
            case 26:
                lh6 lh6Var = (lh6) obj2;
                qy6 qy6Var = (qy6) obj;
                qy6Var.getClass();
                long j = qy6Var.a;
                long j2 = qy6Var.b;
                long j3 = qy6Var.c;
                long j4 = qy6Var.d;
                long j5 = qy6Var.e;
                long j6 = qy6Var.f;
                long j7 = qy6Var.g;
                long j8 = qy6Var.h;
                long j9 = qy6Var.i;
                long j10 = qy6Var.j;
                StringBuilder sbT = dj7.t("native_file_size=", " native_index_offset=", j);
                sbT.append(j2);
                fz5.r(sbT, " native_index_size=", j3, " native_header_ms=");
                sbT.append(j4);
                fz5.r(sbT, " native_payload_ms=", j5, " native_producer_ms=");
                sbT.append(j6);
                fz5.r(sbT, " native_encryption_ms=", j7, " native_index_footer_ms=");
                sbT.append(j8);
                fz5.r(sbT, " native_total_ms=", j9, " crypto_setup_ms=");
                sbT.append(j10);
                lh6Var.a = sbT.toString();
                return be8Var;
            default:
                String str4 = (String) obj;
                int i20 = ShortcutsActivity.P;
                return str4 + "=" + ((Bundle) obj2).get(str4);
        }
    }
}
