package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.jcraft.jsch.Argon2;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appinfo.AppInfoActivity;
import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.home.cloud.CloudBackupTag;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.a;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity;
import org.swiftapps.swiftbackup.views.MAppBarLayout;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dk implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ dk(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:171:0x048d A[PHI: r1
      0x048d: PHI (r1v5 int) = (r1v4 int), (r1v6 int), (r1v7 int), (r1v8 int), (r1v9 int), (r1v10 int) binds: [B:157:0x0434, B:159:0x0441, B:161:0x044e, B:163:0x045b, B:165:0x046b, B:167:0x0477] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x007e A[PHI: r1
      0x007e: PHI (r1v94 int) = (r1v93 int), (r1v95 int), (r1v96 int), (r1v97 int), (r1v98 int), (r1v99 int) binds: [B:5:0x0025, B:7:0x0038, B:9:0x0041, B:11:0x0054, B:13:0x005f, B:15:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    @Override // defpackage.bt3
    public final Object invoke() {
        Bitmap bitmapA;
        Bitmap bitmap;
        int i = this.a;
        int i2 = R.id.tv_title;
        boolean z = true;
        boolean z2 = true;
        be8 be8Var = be8.a;
        int i3 = 0;
        Bitmap bitmap2 = 0;
        bitmap2 = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                hk hkVar = (hk) obj;
                return hkVar.e().J(hkVar.b + ".app");
            case 1:
                int i4 = AppBackupLimitsActivity.M;
                View viewInflate = ((AppBackupLimitsActivity) obj).getLayoutInflater().inflate(R.layout.app_backup_limits_activity, (ViewGroup) null, false);
                int i5 = R.id.container_data;
                View viewU = ms8.u(viewInflate, R.id.container_data);
                if (viewU != null) {
                    ju7 ju7VarE = ju7.e(viewU);
                    i5 = R.id.container_expansion;
                    View viewU2 = ms8.u(viewInflate, R.id.container_expansion);
                    if (viewU2 != null) {
                        ju7 ju7VarE2 = ju7.e(viewU2);
                        i5 = R.id.container_extdata;
                        View viewU3 = ms8.u(viewInflate, R.id.container_extdata);
                        if (viewU3 != null) {
                            ju7 ju7VarE3 = ju7.e(viewU3);
                            i5 = R.id.container_media;
                            View viewU4 = ms8.u(viewInflate, R.id.container_media);
                            if (viewU4 != null) {
                                ju7 ju7VarE4 = ju7.e(viewU4);
                                i5 = R.id.scroll_view;
                                NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                if (nestedScrollView != null) {
                                    i5 = R.id.tv_summary;
                                    TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_summary);
                                    if (textView != null) {
                                        TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_title);
                                        if (textView2 != null) {
                                            return new vk((CoordinatorLayout) viewInflate, ju7VarE, ju7VarE2, ju7VarE3, ju7VarE4, nestedScrollView, textView, textView2);
                                        }
                                    } else {
                                        i2 = i5;
                                    }
                                } else {
                                    i2 = i5;
                                }
                            } else {
                                i2 = i5;
                            }
                        } else {
                            i2 = i5;
                        }
                    } else {
                        i2 = i5;
                    }
                } else {
                    i2 = i5;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 2:
                return Boolean.valueOf(((vl) obj).i());
            case 3:
                ji jiVar = ((yl) obj).b;
                String deDataDir = jiVar.getDeDataDir();
                return Boolean.valueOf((deDataDir == null || deDataDir.length() == 0 || !jiVar.hasDeData()) ? false : true);
            case 4:
                return Long.valueOf(AppCloudBackup.dateBackup_delegate$lambda$0((AppCloudBackup) obj));
            case 5:
                int i6 = AppInfoActivity.M;
                View viewInflate2 = ((AppInfoActivity) obj).getLayoutInflater().inflate(R.layout.app_info_activity, (ViewGroup) null, false);
                ScrollView scrollView = (ScrollView) viewInflate2;
                TextView textView3 = (TextView) ms8.u(viewInflate2, R.id.tv_info);
                if (textView3 != null) {
                    return new tq(scrollView, scrollView, textView3);
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(R.id.tv_info)));
                return null;
            case 6:
                Preference preferenceJ = ((a) obj).j("restore_ssaids");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 7:
                return Long.valueOf(qx.externalDataSizeNoCache_delegate$lambda$0((qx) obj));
            case 8:
                int i7 = AppsQuickActionsActivity.S;
                View viewInflate3 = ((AppsQuickActionsActivity) obj).getLayoutInflater().inflate(R.layout.apps_quick_actions_activity, (ViewGroup) null, false);
                int i8 = R.id.appbar_layout;
                View viewU5 = ms8.u(viewInflate3, R.id.appbar_layout);
                if (viewU5 != null) {
                    w00 w00VarB = w00.b(viewU5);
                    if (((FrameLayout) ms8.u(viewInflate3, R.id.fragmentContainer)) != null) {
                        return new r30((CoordinatorLayout) viewInflate3, w00VarB);
                    }
                    i8 = R.id.fragmentContainer;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i8)));
                return null;
            case XmlPullParser.COMMENT /* 9 */:
                c40 c40Var = (c40) obj;
                ji jiVarA = c40Var.g() ? (ji) c40Var.o.d() : ((kz) el1.S0(c40Var.m)).a();
                String name = jiVarA != null ? jiVarA.getName() : null;
                pw5 pw5Var = c40Var.v;
                if (pe4.d(pw5Var != null ? (String) pw5Var.a : null, jiVarA != null ? jiVarA.getPackageName() : null)) {
                    pw5 pw5Var2 = c40Var.v;
                    if (pw5Var2 != null) {
                        bitmap = (Bitmap) pw5Var2.b;
                    }
                } else if (jiVarA != null) {
                    Set set = j94.a;
                    bitmapA = j94.a(new sx3(jiVarA.getPackageName(), jiVarA.isInstalled()));
                    c40Var.v = new pw5(jiVarA.getPackageName(), bitmapA);
                }
                if (name == null) {
                    bitmap2 = bitmapA;
                    bitmap2 = bitmap;
                    name = "";
                }
                bitmap2 = bitmapA;
                bitmap2 = bitmap;
                pw6.m(name, bitmap2);
                return be8Var;
            case 10:
                Const.B((Activity) obj, "https://www.swiftapps.org/faq#appparts");
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                qk0 qk0Var = (qk0) obj;
                iu iuVar = iu.MEDIA;
                qx sizeInfo = qk0Var.h.getSizeInfo();
                return Boolean.valueOf(qk0Var.n(iuVar, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getMediaSize()) : null)));
            case 12:
                int i9 = CallsBackupsActivity.T;
                return (CircularProgressIndicator) ((ni7) ((CallsBackupsActivity) obj).Q.getValue()).c.c;
            case 13:
                int i10 = CloudConnectActivity.Q;
                return Boolean.valueOf(((CloudConnectActivity) obj).getIntent().getBooleanExtra("org.swiftapps.swiftbackup.cloud.connect.extra.RUNTIME_SMOKE", false));
            case 14:
                int i11 = CloudDiagnosticsActivity.Z;
                hf1 hf1VarV = ((CloudDiagnosticsActivity) obj).U();
                ef1 ef1Var = hf1VarV.h;
                if (ef1Var != null && !ef1Var.i) {
                    tb1 tb1Var = tb1.a;
                    Log.i("CloudDiagnosticsVM", "Disconnecting cloud: " + qb1.f().getDisplayNameEn());
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new ff1(hf1VarV, bitmap2, i3));
                }
                return be8Var;
            case 15:
                int i12 = CloudOrphanCleanerActivity.S;
                return new mh1((CloudOrphanCleanerActivity) obj);
            case Argon2.V10 /* 16 */:
                CloudBackupTag.Companion.getClass();
                List listA = ob1.a();
                zn4 zn4Var2 = zn4.a;
                zn4.e(new qf(5, (uj1) obj, listA));
                return be8Var;
            case 17:
                return (String) x65.p0(((sl1) obj).a, "500");
            case 18:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj;
                int i13 = ConfigEditActivity.V;
                qq1 qq1VarV = configEditActivity.V();
                if (pe4.d(qq1VarV.f, qq1VarV.j())) {
                    configEditActivity.A(false);
                    configEditActivity.z();
                } else if (configEditActivity.V().j().hasValidSettings()) {
                    s35 s35Var = new s35(configEditActivity, R.style.M3AlertDialogTheme, new hv1(configEditActivity, R.style.M3AlertDialogTheme), null);
                    s35Var.n(R.string.discard_changes_confirmation);
                    s35Var.s(R.string.ok, new ub1((Object) configEditActivity, (int) (z ? 1 : 0)));
                    s35Var.q(R.string.cancel, null);
                    s35Var.m();
                } else {
                    s35 s35Var2 = new s35(configEditActivity, R.style.M3AlertDialogTheme, new hv1(configEditActivity, R.style.M3AlertDialogTheme), null);
                    s35Var2.v(R.string.invalid_config);
                    s35Var2.n(R.string.invalid_config_msg);
                    s35Var2.s(R.string.ok, null);
                    s35Var2.r(R.string.delete_config, new iq1(configEditActivity, i3));
                    s35Var2.m();
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                String str = (String) obj;
                if (str != null && str.length() != 0) {
                    ConfigsData configsData = br1.e;
                    if (configsData != null) {
                        configsData.remove(str);
                    }
                    br1 br1Var = br1.a;
                    zn4.c(new ah(br1.e, 17));
                }
                return be8Var;
            case 20:
                Preference preferenceJ2 = ((lr1) obj).j("config_app_backup_limits");
                preferenceJ2.getClass();
                return preferenceJ2;
            case 21:
                mk2 mk2Var = ((pj2) obj).b;
                mk2Var.getClass();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new qj(mk2Var, bitmap2, z2 ? 1 : 0));
                return be8Var;
            case 22:
                int i14 = DropboxSignInActivity.P;
                return ((vj) obj).a;
            case 23:
                return new ao3(((sj3) ((rj3) obj).K).e);
            case 24:
                yl3 yl3Var = (yl3) obj;
                StringBuilder sb = new StringBuilder();
                sb.append((String) yl3Var.f.getValue());
                p93 p93Var = p93.a;
                sb.append(" (" + p93.d(yl3Var.e, yl3Var.d) + ")");
                return sb.toString();
            case 25:
                int i15 = FolderEditActivity.h0;
                return ((FolderEditActivity) obj).Z().f;
            case 26:
                int i16 = FolderPickerActivity.Q;
                View viewInflate4 = ((FolderPickerActivity) obj).getLayoutInflater().inflate(R.layout.folder_picker_activity, (ViewGroup) null, false);
                int i17 = R.id.appbar;
                if (((MAppBarLayout) ms8.u(viewInflate4, R.id.appbar)) != null) {
                    i17 = R.id.btn_select;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate4, R.id.btn_select);
                    if (extendedFloatingActionButton != null) {
                        i17 = R.id.progress_bar;
                        View viewU6 = ms8.u(viewInflate4, R.id.progress_bar);
                        if (viewU6 != null) {
                            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) viewU6;
                            ix0 ix0Var = new ix0(6, circularProgressIndicator, circularProgressIndicator);
                            i17 = R.id.rv;
                            RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate4, R.id.rv);
                            if (recyclerView != null) {
                                i17 = R.id.rv_navigation;
                                RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate4, R.id.rv_navigation);
                                if (recyclerView2 != null) {
                                    i17 = R.id.toolbar;
                                    View viewU7 = ms8.u(viewInflate4, R.id.toolbar);
                                    if (viewU7 != null) {
                                        Toolbar toolbar = (Toolbar) viewU7;
                                        return new ym3((CoordinatorLayout) viewInflate4, extendedFloatingActionButton, ix0Var, recyclerView, recyclerView2, new ix0(9, toolbar, toolbar));
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate4.getResources().getResourceName(i17)));
                return null;
            case 27:
                return new ao3(((mn3) ((ln3) obj).K).e);
            case 28:
                pu3 pu3Var = (pu3) obj;
                int i18 = pu3Var.n;
                if (i18 < 1) {
                    pu3Var.n = i18 + 1;
                    return be8Var;
                }
                l0.e("Google Drive fresh-session restart budget exhausted");
                return null;
            default:
                View viewInflate5 = View.inflate(((a14) obj).e, R.layout.google_sign_in_required_dialog, null);
                int i19 = R.id.btn_anonymous;
                View viewU8 = ms8.u(viewInflate5, R.id.btn_anonymous);
                if (viewU8 != null) {
                    fe feVar = new fe((MaterialButton) viewU8);
                    i19 = R.id.btn_cancel;
                    MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate5, R.id.btn_cancel);
                    if (materialButton != null) {
                        i19 = R.id.btn_google;
                        View viewU9 = ms8.u(viewInflate5, R.id.btn_google);
                        if (viewU9 != null) {
                            MaterialButton materialButton2 = (MaterialButton) viewU9;
                            v04 v04Var = new v04(materialButton2, materialButton2);
                            i19 = R.id.container_anonymous;
                            LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate5, R.id.container_anonymous);
                            if (linearLayout != null) {
                                i19 = R.id.iv_icon;
                                if (((ImageView) ms8.u(viewInflate5, R.id.iv_icon)) != null) {
                                    i19 = R.id.tv_google_sign_in_description;
                                    if (((TextView) ms8.u(viewInflate5, R.id.tv_google_sign_in_description)) == null) {
                                        i2 = i19;
                                    } else if (((TextView) ms8.u(viewInflate5, R.id.tv_title)) != null) {
                                        return new b14((NestedScrollView) viewInflate5, feVar, materialButton, v04Var, linearLayout);
                                    }
                                } else {
                                    i2 = i19;
                                }
                            } else {
                                i2 = i19;
                            }
                        } else {
                            i2 = i19;
                        }
                    } else {
                        i2 = i19;
                    }
                } else {
                    i2 = i19;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate5.getResources().getResourceName(i2)));
                return null;
        }
    }
}
