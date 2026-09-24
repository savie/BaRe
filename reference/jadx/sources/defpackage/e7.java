package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import okhttp3.Request;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.shortcuts.ShortcutsActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e7 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:216:0x0666 A[PHI: r10
      0x0666: PHI (r10v4 int) = (r10v3 int), (r10v5 int), (r10v6 int), (r10v7 int) binds: [B:138:0x045e, B:140:0x0467, B:142:0x0472, B:144:0x047b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        boolean z;
        int i;
        int i2;
        wa waVar;
        String str;
        vq4 vq4Var;
        int iIndexOf;
        Set setZ1;
        Set<LabelParams> labels;
        int i3 = this.a;
        int i4 = 3;
        int i5 = 6;
        int i6 = 14;
        int i7 = 2;
        Object obj2 = null;
        int i8 = 1;
        be8 be8Var = be8.a;
        Object obj3 = this.b;
        switch (i3) {
            case 0:
                List list = (List) obj;
                list.getClass();
                ((a7) ((o7) obj3).d.getValue()).w(new fm7(list, (Set) null, false, (String) null, 30), false);
                return be8Var;
            case 1:
                ((dy7) obj3).a((String) obj);
                return be8Var;
            case 2:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj3;
                ym7 ym7Var = (ym7) obj;
                int i9 = AppsBatchActivity.s0;
                if (ym7Var != null) {
                    Log.d(appsBatchActivity.r(), "onViewStatusUI: " + ym7Var);
                    appsBatchActivity.p0();
                    int i10 = x10.b[ym7Var.ordinal()];
                    if (i10 == 1) {
                        appsBatchActivity.k0().f.setVisibility(0);
                        sz8.W(appsBatchActivity.i0());
                        sz8.W(appsBatchActivity.g0());
                        appsBatchActivity.h0().a.setVisibility(8);
                    } else if (i10 == 2) {
                        appsBatchActivity.k0().f.setVisibility(8);
                        sz8.c0(appsBatchActivity.i0());
                        sz8.c0(appsBatchActivity.g0());
                        appsBatchActivity.h0().a.setVisibility(8);
                    } else {
                        if (i10 != 3 && i10 != 4) {
                            g84.i(ym7Var, "Unhandled onViewStatusUI: ");
                            return null;
                        }
                        appsBatchActivity.k0().f.setVisibility(8);
                        sz8.W(appsBatchActivity.i0());
                        sz8.W(appsBatchActivity.g0());
                        appsBatchActivity.h0().a.setVisibility(0);
                    }
                }
                return be8Var;
            case 3:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) obj3;
                int iIntValue = ((Integer) obj).intValue() + 1;
                f30 f30Var = appsConfigRunActivity.j0;
                if (f30Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listP1 = el1.p1(f30Var.e.a, iIntValue);
                ArrayList arrayList = new ArrayList(hl1.G0(listP1, 10));
                Iterator it = listP1.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ji) it.next()).getItemId());
                }
                f30 f30Var2 = appsConfigRunActivity.j0;
                if (f30Var2 != null) {
                    f30Var2.t(el1.z1(arrayList));
                    return be8Var;
                }
                pe4.F("mAdapter");
                throw null;
            case 4:
                return Boolean.valueOf(pe4.d(((BlacklistApp) obj).getPackageName(), ((BlacklistApp) obj3).getPackageName()));
            case 5:
                BoxSignInActivity boxSignInActivity = (BoxSignInActivity) obj3;
                Intent intent = (Intent) obj;
                int i11 = BoxSignInActivity.L;
                intent.getClass();
                try {
                    boxSignInActivity.startActivityForResult(intent, 5011);
                    break;
                } catch (Exception e) {
                    Log.e(boxSignInActivity.r(), "Error in signIn", e);
                    String strB = io4.b(e);
                    vr6.e$default(vr6.INSTANCE, boxSignInActivity.r(), strB, null, 4, null);
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(i6, boxSignInActivity, strB));
                    boxSignInActivity.setResult(0);
                    boxSignInActivity.finish();
                }
                return be8Var;
            case 6:
                sd1 sd1Var = (sd1) obj3;
                ef1 ef1Var = (ef1) obj;
                ef1Var.getClass();
                List<md1> list2 = ef1Var.g;
                ArrayList arrayList2 = new ArrayList(hl1.G0(list2, 10));
                for (md1 md1VarA : list2) {
                    if (md1VarA.a.a == sd1Var && md1VarA.b()) {
                        md1VarA = md1.a(md1VarA, !md1VarA.b, rd1.NOT_RUN, null, null, null, 1);
                    }
                    arrayList2.add(md1VarA);
                }
                return ef1.a(ef1Var, arrayList2, false, false, 959);
            case 7:
                gg1 gg1Var = (gg1) obj3;
                z8 z8Var = (z8) obj;
                uj1 uj1Var = gg1Var.e;
                if (uj1Var == null) {
                    pe4.F("cloudTagCard");
                    throw null;
                }
                uj1Var.a();
                final uj1 uj1Var2 = gg1Var.e;
                if (uj1Var2 == null) {
                    pe4.F("cloudTagCard");
                    throw null;
                }
                ConstraintLayout constraintLayout = uj1Var2.g;
                LinearLayout linearLayout = uj1Var2.f;
                HomeActivity homeActivity = uj1Var2.a;
                tf1 tf1Var = uj1Var2.b;
                RecyclerView recyclerView = tf1Var.e;
                QuickRecyclerView quickRecyclerView = tf1Var.f;
                View view = tf1Var.c;
                if (z8Var == null) {
                    view.setVisibility(8);
                    sz8.W(linearLayout);
                    sz8.W(constraintLayout);
                    quickRecyclerView.setVisibility(8);
                    recyclerView.setVisibility(8);
                } else {
                    int i12 = z8Var.e;
                    int i13 = z8Var.d;
                    int i14 = z8Var.c;
                    int i15 = z8Var.a;
                    homeActivity.y(TextView.class);
                    if (i15 > 0 || i14 > 0 || i13 > 0 || i12 > 0) {
                        view.setVisibility(0);
                        sz8.W(constraintLayout);
                        sz8.c0(linearLayout);
                        try {
                            SharedPreferences sharedPreferences = cz4.f;
                            if (sharedPreferences == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            z = sharedPreferences.getBoolean("compact_storage_info", false);
                            ArrayList arrayList3 = new ArrayList();
                            if (i15 > 0) {
                                String string = homeActivity.getString(R.string.apps);
                                string.getClass();
                                arrayList3.add(uj1.b(uj1.c(i15, string), 1, R.drawable.ic_app, R.color.apps));
                            }
                            if (i14 > 0) {
                                String string2 = homeActivity.getString(R.string.messages);
                                string2.getClass();
                                arrayList3.add(uj1.b(uj1.c(i14, string2), 2, R.drawable.ic_message_full, R.color.messages));
                            }
                            if (i13 > 0) {
                                String string3 = homeActivity.getString(R.string.call_logs);
                                string3.getClass();
                                arrayList3.add(uj1.b(uj1.c(i13, string3), 3, R.drawable.ic_call_log, R.color.calls));
                            }
                            if (i12 > 0) {
                                String string4 = homeActivity.getString(R.string.folders);
                                string4.getClass();
                                arrayList3.add(uj1.b(uj1.c(i12, string4), 6, R.drawable.ic_folder_full, R.color.folders));
                            }
                            if (z) {
                                quickRecyclerView.setVisibility(8);
                                i = 0;
                                recyclerView.setVisibility(0);
                            } else {
                                i = 0;
                                recyclerView.setVisibility(8);
                                quickRecyclerView.setVisibility(0);
                                recyclerView = quickRecyclerView;
                            }
                            FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(homeActivity);
                            flexboxLayoutManager.i1(i);
                            flexboxLayoutManager.h1(1);
                            recyclerView.setLayoutManager(flexboxLayoutManager);
                            final ba2 ba2Var = new ba2(arrayList3, z);
                            ba2Var.f = new qt3() { // from class: tj1
                                @Override // defpackage.qt3
                                public final Object invoke(Object obj4, Object obj5) {
                                    int iIntValue2 = ((Integer) obj5).intValue();
                                    ((View) obj4).getClass();
                                    int i16 = ((d71) ba2Var.d.get(iIntValue2)).a;
                                    uj1 uj1Var3 = uj1Var2;
                                    if (i16 != 1) {
                                        if (i16 == 2) {
                                            g00 g00Var = g00.a;
                                            if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                                                int i17 = MessagesDashActivity.T;
                                                vm4.A(uj1Var3.a, true);
                                            } else {
                                                HomeActivity homeActivity2 = uj1Var3.a;
                                                zn4 zn4Var2 = zn4.a;
                                                zn4.e(new cv(14, homeActivity2, "Not supported on this device"));
                                            }
                                        } else if (i16 == 3) {
                                            int i18 = CallsDashActivity.T;
                                            HomeActivity homeActivity3 = uj1Var3.a;
                                            if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                                                Intent intentPutExtra = new Intent(homeActivity3, (Class<?>) CallsDashActivity.class).putExtra("highlight_cloud_card", true);
                                                intentPutExtra.getClass();
                                                homeActivity3.startActivity(intentPutExtra);
                                            } else {
                                                SwiftApp.Companion companion = SwiftApp.d;
                                                dj7.y(SwiftApp.Companion.c(), "Feature not supported on this device");
                                            }
                                        } else {
                                            if (i16 != 6) {
                                                c6.f(fz5.j(i16, "No click action for item id: "));
                                                return null;
                                            }
                                            int i19 = FoldersDashActivity.U;
                                            nc8.k0(uj1Var3.a, to3.CLOUD);
                                        }
                                    } else if (Const.d(uj1Var3.a)) {
                                        int i20 = AppListActivity.q0;
                                        y13.H(uj1Var3.a);
                                    }
                                    return be8.a;
                                }
                            };
                            recyclerView.setAdapter(ba2Var);
                        } catch (ClassCastException unused) {
                            z = false;
                        }
                    } else {
                        view.setVisibility(0);
                        sz8.W(linearLayout);
                        sz8.c0(constraintLayout);
                        quickRecyclerView.setVisibility(8);
                        recyclerView.setVisibility(8);
                    }
                }
                return be8Var;
            case 8:
                ConfigSettings configSettings = (ConfigSettings) obj;
                int i16 = ConfigEditActivity.V;
                configSettings.getClass();
                ((ConfigEditActivity) obj3).V().k(configSettings, -1);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                ym7 ym7Var2 = (ym7) obj;
                int i17 = ConfigListActivity.R;
                ym7Var2.getClass();
                ((ConfigListActivity) obj3).R(ym7Var2);
                return be8Var;
            case 10:
                ((lr1) obj3).s();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return CreatePublicKeyCredentialController.handleResponse$lambda$1((CreatePublicKeyCredentialController) obj3, (c12) obj);
            case 12:
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$1((CredentialProviderCreatePublicKeyCredentialController) obj3, (c12) obj);
            case 13:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj3;
                Boolean bool = (Boolean) obj;
                int i18 = FolderDetailActivity.Z;
                bool.getClass();
                folderDetailActivity.W = bool.booleanValue();
                folderDetailActivity.invalidateOptionsMenu();
                return be8Var;
            case 14:
                FolderPickerActivity folderPickerActivity = (FolderPickerActivity) obj3;
                q63 q63Var = (q63) obj;
                int i19 = FolderPickerActivity.Q;
                if (q63Var != null) {
                    folderPickerActivity.setResult(-1, folderPickerActivity.getIntent().putExtra("extra_selected_folder", q63Var));
                    folderPickerActivity.finish();
                }
                return be8Var;
            case 15:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) obj3;
                int i20 = GmsSignInActivity.N;
                gmsSignInActivity.setResult(179);
                gmsSignInActivity.finish();
                return be8Var;
            case Argon2.V10 /* 16 */:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj3;
                q63 q63Var2 = (q63) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (q63Var2 == null || !q63Var2.j()) {
                    String string5 = homeSearchActivity.getString(R.string.no_backup_on_device);
                    string5.getClass();
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new cv(i6, homeSearchActivity, string5));
                } else {
                    g00 g00Var = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra = new Intent(homeSearchActivity, (Class<?>) MessagesBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var2.v());
                        intentPutExtra.getClass();
                        homeSearchActivity.startActivity(intentPutExtra);
                    } else {
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        zn4 zn4Var3 = zn4.a;
                        dj7.y(contextC, "Feature not supported on this device");
                    }
                    homeSearchActivity.V();
                }
                return be8Var;
            case 17:
                IntroActivity introActivity = (IntroActivity) obj3;
                ho7 ho7Var = (ho7) obj;
                wa waVar2 = introActivity.U;
                if (ho7Var == null) {
                    if (waVar2 != null) {
                        waVar2.dismiss();
                    }
                    introActivity.U = null;
                } else if (waVar2 == null || !waVar2.isShowing()) {
                    ye4 ye4Var = new ye4(introActivity, i7);
                    q02 q02Var = new q02(0, introActivity, IntroActivity.class, "finishAffinity", "finishAffinity()V", 0, 2);
                    cf4 cf4Var = new cf4(introActivity, i8);
                    df4 df4Var = new df4(introActivity, i8);
                    kn3 kn3Var = new kn3(introActivity, i5);
                    boolean z2 = ho7Var.c;
                    boolean z3 = ho7Var.b;
                    View viewInflate = introActivity.getLayoutInflater().inflate(R.layout.intro_storage_setup_failure_dialog, (ViewGroup) null, false);
                    MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_exit_storage_setup);
                    if (materialButton != null) {
                        MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_retry_storage_setup);
                        if (materialButton2 != null) {
                            MaterialButton materialButton3 = (MaterialButton) ms8.u(viewInflate, R.id.btn_review_storage_access);
                            if (materialButton3 != null) {
                                MaterialButton materialButton4 = (MaterialButton) ms8.u(viewInflate, R.id.btn_use_internal_storage);
                                if (materialButton4 == null) {
                                    i2 = R.id.btn_use_internal_storage;
                                } else if (((ImageView) ms8.u(viewInflate, R.id.iv_storage_setup_failure_icon)) != null) {
                                    ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_storage_setup_failure_menu);
                                    if (imageView != null) {
                                        int i21 = R.id.storage_setup_failure_actions;
                                        if (((LinearLayout) ms8.u(viewInflate, R.id.storage_setup_failure_actions)) != null) {
                                            i21 = R.id.storage_setup_failure_actions_divider;
                                            if (ms8.u(viewInflate, R.id.storage_setup_failure_actions_divider) != null) {
                                                i21 = R.id.storage_setup_failure_header;
                                                if (((LinearLayout) ms8.u(viewInflate, R.id.storage_setup_failure_header)) != null) {
                                                    i21 = R.id.storage_setup_failure_header_divider;
                                                    if (ms8.u(viewInflate, R.id.storage_setup_failure_header_divider) != null) {
                                                        View view2 = (ConstraintLayout) viewInflate;
                                                        if (((NestedScrollView) ms8.u(viewInflate, R.id.storage_setup_failure_scroll)) != null) {
                                                            TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_description);
                                                            if (textView == null) {
                                                                i2 = R.id.tv_storage_setup_failure_description;
                                                            } else if (((TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_diagnostics)) != null) {
                                                                TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_fallback_note);
                                                                if (textView2 != null) {
                                                                    TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_location);
                                                                    if (textView3 != null) {
                                                                        i2 = R.id.tv_storage_setup_failure_location_label;
                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_location_label)) != null) {
                                                                            TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_pre_review_step);
                                                                            if (textView4 != null) {
                                                                                TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_remaining_steps);
                                                                                if (textView5 != null) {
                                                                                    TextView textView6 = (TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_review_step);
                                                                                    if (textView6 != null) {
                                                                                        int i22 = R.id.tv_storage_setup_failure_steps_label;
                                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_steps_label)) != null) {
                                                                                            i22 = R.id.tv_storage_setup_failure_title;
                                                                                            if (((TextView) ms8.u(viewInflate, R.id.tv_storage_setup_failure_title)) != null) {
                                                                                                textView.setText(z3 ? R.string.backup_storage_unavailable_removable_description : R.string.backup_storage_unavailable_internal_description);
                                                                                                String string6 = ho7Var.a;
                                                                                                if (string6 == null) {
                                                                                                    string6 = introActivity.getString(R.string.unknown);
                                                                                                    string6.getClass();
                                                                                                }
                                                                                                textView3.setText(string6);
                                                                                                textView4.setVisibility(z3 ? 0 : 8);
                                                                                                textView4.setText(zh8.o(textView4.getCurrentTextColor(), introActivity, nc8.I(introActivity.getString(R.string.backup_storage_step_reconnect))));
                                                                                                textView6.setText(zh8.o(textView6.getCurrentTextColor(), introActivity, nc8.I(introActivity.getString(R.string.backup_storage_step_review_access))));
                                                                                                textView5.setText(zh8.o(textView5.getCurrentTextColor(), introActivity, fl1.A0(introActivity.getString(R.string.backup_storage_step_disable_tools), introActivity.getString(R.string.backup_storage_step_disable_modules))));
                                                                                                textView2.setVisibility(z2 ? 0 : 8);
                                                                                                materialButton4.setVisibility(z2 ? 0 : 8);
                                                                                                imageView.setOnClickListener(new uf1(6, introActivity, kn3Var));
                                                                                                s35 s35Var = new s35(introActivity, R.style.M3AlertDialogTheme, new hv1(introActivity, R.style.M3AlertDialogTheme), null);
                                                                                                ra raVar = (ra) s35Var.b;
                                                                                                raVar.s = view2;
                                                                                                raVar.m = false;
                                                                                                wa waVarM = s35Var.m();
                                                                                                if (waVarM == null) {
                                                                                                    waVar = null;
                                                                                                } else {
                                                                                                    waVarM.setCanceledOnTouchOutside(false);
                                                                                                    Window window = waVarM.getWindow();
                                                                                                    if (window != null) {
                                                                                                        window.getDecorView().setPadding(0, 0, 0, 0);
                                                                                                        window.setBackgroundDrawable(new ColorDrawable(introActivity.getColor(sz8.y(introActivity, android.R.attr.colorBackground))));
                                                                                                        int i23 = -1;
                                                                                                        window.setLayout(-1, -1);
                                                                                                        while (view2 != null && view2 != window.getDecorView()) {
                                                                                                            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                                                                                            if (layoutParams != null) {
                                                                                                                layoutParams.width = i23;
                                                                                                                layoutParams.height = i23;
                                                                                                                view2.setLayoutParams(layoutParams);
                                                                                                            }
                                                                                                            Object parent = view2.getParent();
                                                                                                            view2 = parent instanceof View ? (View) parent : null;
                                                                                                            i23 = -1;
                                                                                                        }
                                                                                                        window.getDecorView().requestLayout();
                                                                                                    }
                                                                                                    materialButton3.setOnClickListener(new zf1(df4Var, 4));
                                                                                                    materialButton2.setOnClickListener(new h10(6, waVarM, ye4Var));
                                                                                                    materialButton.setOnClickListener(new i10(5, waVarM, q02Var));
                                                                                                    materialButton4.setOnClickListener(new rf4(0, waVarM, cf4Var));
                                                                                                    waVar = waVarM;
                                                                                                }
                                                                                                introActivity.U = waVar;
                                                                                            }
                                                                                        }
                                                                                        i2 = i22;
                                                                                    } else {
                                                                                        i2 = R.id.tv_storage_setup_failure_review_step;
                                                                                    }
                                                                                } else {
                                                                                    i2 = R.id.tv_storage_setup_failure_remaining_steps;
                                                                                }
                                                                            } else {
                                                                                i2 = R.id.tv_storage_setup_failure_pre_review_step;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        i2 = R.id.tv_storage_setup_failure_location;
                                                                    }
                                                                } else {
                                                                    i2 = R.id.tv_storage_setup_failure_fallback_note;
                                                                }
                                                            } else {
                                                                i2 = R.id.tv_storage_setup_failure_diagnostics;
                                                            }
                                                        } else {
                                                            i2 = R.id.storage_setup_failure_scroll;
                                                        }
                                                    } else {
                                                        i2 = i21;
                                                    }
                                                } else {
                                                    i2 = i21;
                                                }
                                            } else {
                                                i2 = i21;
                                            }
                                        } else {
                                            i2 = i21;
                                        }
                                    } else {
                                        i2 = R.id.iv_storage_setup_failure_menu;
                                    }
                                } else {
                                    i2 = R.id.iv_storage_setup_failure_icon;
                                }
                            } else {
                                i2 = R.id.btn_review_storage_access;
                            }
                        } else {
                            i2 = R.id.btn_retry_storage_setup;
                        }
                    } else {
                        i2 = R.id.btn_exit_storage_setup;
                    }
                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                    return null;
                }
                return be8Var;
            case 18:
                sl1 sl1Var = (sl1) obj;
                sl1Var.getClass();
                pb7 pb7Var = ((wq4) obj3).e;
                List list3 = (List) sl1Var.d.getValue();
                String str2 = (String) sl1Var.b.getValue();
                pb7Var.getClass();
                list3.getClass();
                str2.getClass();
                pb7Var.g = str2;
                r35.m(pb7Var, list3);
                gj gjVar = pb7Var.h;
                if (gjVar != null) {
                    gjVar.invoke();
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                LabelsActivity labelsActivity = (LabelsActivity) obj3;
                fm7 fm7Var = (fm7) obj;
                int i24 = LabelsActivity.Z;
                fm7Var.getClass();
                boolean zIsEmpty = fm7Var.a.isEmpty();
                sz8.d0(labelsActivity.P(), !zIsEmpty);
                sz8.d0((MaterialCardView) labelsActivity.S.getValue(), labelsActivity.O() == 1);
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) labelsActivity.U.getValue();
                sz8.d0(extendedFloatingActionButton, labelsActivity.O() == 1 || labelsActivity.O() == 2);
                if (labelsActivity.O() == 1) {
                    ji jiVar = (ji) labelsActivity.N.getValue();
                    if (jiVar == null || (labels = jiVar.getLabels()) == null) {
                        setZ1 = null;
                    } else {
                        ArrayList arrayList4 = new ArrayList();
                        Iterator<T> it2 = labels.iterator();
                        while (it2.hasNext()) {
                            String id = ((LabelParams) it2.next()).getId();
                            if (id != null) {
                                arrayList4.add(id);
                            }
                        }
                        setZ1 = el1.z1(arrayList4);
                    }
                    ArrayList arrayListJ = labelsActivity.V().j();
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it3 = arrayListJ.iterator();
                    while (it3.hasNext()) {
                        String id2 = ((LabelParams) it3.next()).getId();
                        if (id2 != null) {
                            arrayList5.add(id2);
                        }
                    }
                    Set setZ2 = el1.z1(arrayList5);
                    extendedFloatingActionButton.setEnabled((((setZ1 == null || setZ1.isEmpty()) && setZ2.isEmpty()) || pe4.d(setZ1, setZ2)) ? false : true);
                }
                sz8.d0(((zx2) labelsActivity.R.getValue()).a, zIsEmpty && labelsActivity.O() == 0);
                labelsActivity.N().w(fm7Var, labelsActivity.O() != 0);
                if (labelsActivity.O() == 0 && (str = labelsActivity.V().g) != null) {
                    labelsActivity.V().g = null;
                    for (Object obj4 : labelsActivity.N().e.a) {
                        if (pe4.d(((vq4) obj4).a.getId(), str)) {
                            obj2 = obj4;
                            vq4Var = (vq4) obj2;
                            if (vq4Var != null && (iIndexOf = labelsActivity.N().e.a.indexOf(vq4Var)) >= 0) {
                                labelsActivity.P().f0(iIndexOf);
                                labelsActivity.P().postDelayed(new kn0(labelsActivity, iIndexOf), 500L);
                            }
                        }
                    }
                    vq4Var = (vq4) obj2;
                    if (vq4Var != null) {
                        labelsActivity.P().f0(iIndexOf);
                        labelsActivity.P().postDelayed(new kn0(labelsActivity, iIndexOf), 500L);
                    }
                }
                if (labelsActivity.O() == 1) {
                    ArrayList arrayListJ2 = labelsActivity.V().j();
                    labelsActivity.Q().G.setText(Const.p(labelsActivity, arrayListJ2.size(), 5, false));
                    QuickRecyclerView quickRecyclerView2 = labelsActivity.Q().t;
                    sz8.d0(labelsActivity.Q().p, !arrayListJ2.isEmpty());
                    labelsActivity.y(TextView.class, RecyclerView.class);
                    qr qrVar = tr.n0;
                    qr.f(quickRecyclerView2, null, labelsActivity.v(), 1.0f, el1.z1(arrayListJ2), true, new h01(labelsActivity, i7), 1986);
                }
                if (labelsActivity.O() == 2) {
                    ArrayList arrayListJ3 = labelsActivity.V().j();
                    labelsActivity.Q().H.setText(Const.p(labelsActivity, arrayListJ3.size(), 5, false));
                    sz8.d0((MaterialCardView) labelsActivity.T.getValue(), true ^ arrayListJ3.isEmpty());
                    labelsActivity.y(TextView.class, RecyclerView.class);
                    qr qrVar2 = tr.n0;
                    qr.f((RecyclerView) labelsActivity.W.getValue(), null, labelsActivity.v(), 1.0f, el1.z1(arrayListJ3), true, new rj0(labelsActivity, i4), 1986);
                }
                return be8Var;
            case 20:
                fq5 fq5Var = (fq5) obj3;
                Intent intent2 = (Intent) obj;
                intent2.getClass();
                try {
                    fq5Var.startActivityForResult(intent2, 5012);
                    break;
                } catch (Exception e2) {
                    Log.e(fq5Var.r(), "Error in signIn", e2);
                    String strB2 = io4.b(e2);
                    vr6.e$default(vr6.INSTANCE, fq5Var.r(), strB2, null, 4, null);
                    zn4 zn4Var4 = zn4.a;
                    zn4.e(new cv(i6, fq5Var, strB2));
                    fq5Var.setResult(0);
                    fq5Var.finish();
                }
                return be8Var;
            case 21:
                OneDriveSignInActivity oneDriveSignInActivity = (OneDriveSignInActivity) obj3;
                Exception exc = (Exception) obj;
                int i25 = OneDriveSignInActivity.L;
                exc.getClass();
                s35 s35Var2 = new s35(oneDriveSignInActivity, R.style.M3AlertDialogTheme, new hv1(oneDriveSignInActivity, R.style.M3AlertDialogTheme), null);
                ra raVar2 = (ra) s35Var2.b;
                s35Var2.v(R.string.error);
                String message = exc.getMessage();
                if (message == null) {
                    message = "";
                }
                raVar2.f = message;
                s35Var2.s(R.string.ok, null);
                raVar2.n = new nv0(oneDriveSignInActivity, i7);
                s35Var2.m();
                return be8Var;
            case 22:
                PCloudSignInActivity pCloudSignInActivity = (PCloudSignInActivity) obj3;
                Intent intent3 = (Intent) obj;
                int i26 = PCloudSignInActivity.M;
                intent3.getClass();
                try {
                    pCloudSignInActivity.startActivityForResult(intent3, pCloudSignInActivity.L);
                    break;
                } catch (Exception e3) {
                    Log.e(pCloudSignInActivity.r(), "Error in signIn", e3);
                    String strB3 = io4.b(e3);
                    vr6.e$default(vr6.INSTANCE, pCloudSignInActivity.r(), strB3, null, 4, null);
                    zn4 zn4Var5 = zn4.a;
                    zn4.e(new cv(i6, pCloudSignInActivity, strB3));
                }
                return be8Var;
            case 23:
                return xs1.j("- ", ((m37) obj3).getString(((Integer) obj).intValue()));
            case 24:
                ShortcutsActivity shortcutsActivity = (ShortcutsActivity) obj3;
                ((Boolean) obj).getClass();
                int i27 = ShortcutsActivity.P;
                shortcutsActivity.H();
                shortcutsActivity.finish();
                return be8Var;
            case 25:
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                Request.Builder builder = new Request.Builder();
                String apiDomain = teraBoxTokenCredentials.getApiDomain();
                String accessToken = teraBoxTokenCredentials.getAccessToken();
                ((h08) obj3).getClass();
                builder.a = h08.a(apiDomain, "/openapi/uinfo", accessToken);
                builder.b();
                return new Request(builder);
            case 26:
                TeraBoxSignInActivity teraBoxSignInActivity = (TeraBoxSignInActivity) obj3;
                String str3 = (String) obj;
                int i28 = TeraBoxSignInActivity.N;
                str3.getClass();
                try {
                    Const.B(teraBoxSignInActivity, str3);
                    teraBoxSignInActivity.L = true;
                    break;
                } catch (Exception e4) {
                    teraBoxSignInActivity.L = false;
                    Log.e(teraBoxSignInActivity.r(), "Error in signIn", e4);
                    String strB4 = io4.b(e4);
                    vr6.e$default(vr6.INSTANCE, teraBoxSignInActivity.r(), strB4, null, 4, null);
                    zn4 zn4Var6 = zn4.a;
                    zn4.e(new cv(i6, teraBoxSignInActivity, strB4));
                }
                return be8Var;
            case 27:
                ((io8) obj3).invoke(Long.valueOf(io4.h((Long) obj)));
                return be8Var;
            default:
                WallsManageActivity wallsManageActivity = (WallsManageActivity) obj3;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i29 = WallsManageActivity.S;
                wallsManageActivity.invalidateOptionsMenu();
                wallsManageActivity.A(zBooleanValue);
                wallsManageActivity.Z(wallsManageActivity.a0().h, zBooleanValue);
                return be8Var;
        }
    }
}
