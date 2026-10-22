package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.tabs.TabLayout;
import com.jcraft.jsch.Argon2;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.views.MAppBarLayout;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class bk implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ bk(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0050 A[PHI: r4
      0x0050: PHI (r4v25 int) = (r4v0 int), (r4v26 int) binds: [B:5:0x0029, B:7:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:135:0x0391 A[PHI: r1
      0x0391: PHI (r1v24 int) = (r1v23 int), (r1v26 int), (r1v27 int), (r1v28 int), (r1v29 int), (r1v30 int), (r1v31 int), (r1v32 int), (r1v33 int) binds: [B:97:0x02a8, B:101:0x02be, B:103:0x02ca, B:105:0x02d6, B:107:0x02e3, B:109:0x02ee, B:111:0x02fb, B:113:0x0308, B:115:0x0315] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r8v9 */
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
    @Override // defpackage.bt3
    public final Object invoke() {
        Long dateBackupUpdated;
        s01 s01Var;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        Map<String, LabelledApp> labelledAppsMap;
        Map<String, LabelParams> labelParamsMap;
        int i = this.a;
        int i2 = R.id.recycler_view;
        int i3 = R.id.appbar_layout;
        int i4 = 1;
        int i5 = 0;
        be8 be8Var = be8.a;
        Long l = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                hk hkVar = (hk) obj;
                LocalMetadata localMetadataU = hkVar.u();
                return Long.valueOf((localMetadataU == null || (dateBackupUpdated = localMetadataU.getDateBackupUpdated()) == null) ? hkVar.l() : dateBackupUpdated.longValue());
            case 1:
                return Long.valueOf(((wl) obj).d());
            case 2:
                return Long.valueOf(((dm) obj).d());
            case 3:
                dt dtVar = (dt) obj;
                return new k10(new zs(dtVar, i5), new lm(dtVar, i4));
            case 4:
                return Long.valueOf(qx.dataSizeNoCache_delegate$lambda$0((qx) obj));
            case 5:
                return g00.a((String) obj);
            case 6:
                Const.B((Activity) obj, "https://www.swiftapps.org/faq#appparts");
                return be8Var;
            case 7:
                qk0 qk0Var = (qk0) obj;
                iu iuVar = iu.EXTDATA;
                qx sizeInfo = qk0Var.h.getSizeInfo();
                return Boolean.valueOf(qk0Var.n(iuVar, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getExtDataSize(qk0Var.a.g)) : 0)));
            case 8:
                int i6 = CallsBackupRestoreActivity.c0;
                return ((CallsBackupRestoreActivity) obj).Z().d;
            case XmlPullParser.COMMENT /* 9 */:
                CallsBackupsActivity callsBackupsActivity = (CallsBackupsActivity) obj;
                int i7 = CallsBackupsActivity.T;
                if ((!callsBackupsActivity.a0().g || Const.y(callsBackupsActivity)) && (s01Var = (s01) callsBackupsActivity.a0().f.d()) != null) {
                    callsBackupsActivity.a0().j(s01Var.b, callsBackupsActivity.a0().g);
                }
                return be8Var;
            case 10:
                ng1 ng1VarM = ((gg1) obj).m();
                vr6 vr6Var = vr6.INSTANCE;
                String str = ng1VarM.b;
                tb1 tb1Var = tb1.a;
                vr6.i$default(vr6Var, str, xs1.j("Disconnecting cloud: ", qb1.f().getDisplayNameEn()), null, 4, null);
                zn4 zn4Var = zn4.a;
                zn4.b(null, new mg1(ng1VarM, l, i5));
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i8 = CloudOrphanCleanerActivity.S;
                View viewInflate = ((CloudOrphanCleanerActivity) obj).getLayoutInflater().inflate(R.layout.cloud_orphan_cleaner_activity, (ViewGroup) null, false);
                int i9 = R.id.action_bar;
                LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.action_bar);
                if (linearLayout == null) {
                    i2 = i9;
                } else {
                    View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                    if (viewU != null) {
                        w00 w00VarB = w00.b(viewU);
                        i9 = R.id.btn_connect_service;
                        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect_service);
                        if (materialButton != null) {
                            i9 = R.id.btn_delete_selected;
                            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_delete_selected);
                            if (materialButton2 != null) {
                                i9 = R.id.btn_scan;
                                MaterialButton materialButton3 = (MaterialButton) ms8.u(viewInflate, R.id.btn_scan);
                                if (materialButton3 != null) {
                                    i9 = R.id.btn_select_all;
                                    MaterialButton materialButton4 = (MaterialButton) ms8.u(viewInflate, R.id.btn_select_all);
                                    if (materialButton4 != null) {
                                        i9 = R.id.header;
                                        if (((LinearLayout) ms8.u(viewInflate, R.id.header)) != null) {
                                            i9 = R.id.iv_provider;
                                            ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_provider);
                                            if (imageView != null) {
                                                i9 = R.id.iv_status;
                                                ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_status);
                                                if (imageView2 != null) {
                                                    i9 = R.id.progress_status;
                                                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_status);
                                                    if (circularProgressIndicator != null) {
                                                        RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                                                        if (recyclerView != null) {
                                                            i2 = R.id.results_header;
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.results_header);
                                                            if (constraintLayout != null) {
                                                                i2 = R.id.tv_empty;
                                                                TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_empty);
                                                                if (textView != null) {
                                                                    i2 = R.id.tv_provider_subtitle;
                                                                    TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_provider_subtitle);
                                                                    if (textView2 != null) {
                                                                        i2 = R.id.tv_provider_title;
                                                                        TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_provider_title);
                                                                        if (textView3 != null) {
                                                                            i2 = R.id.tv_results_subtitle;
                                                                            TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_results_subtitle);
                                                                            if (textView4 != null) {
                                                                                i2 = R.id.tv_results_title;
                                                                                if (((TextView) ms8.u(viewInflate, R.id.tv_results_title)) != null) {
                                                                                    i2 = R.id.tv_stats;
                                                                                    TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_stats);
                                                                                    if (textView5 != null) {
                                                                                        i2 = R.id.tv_status;
                                                                                        TextView textView6 = (TextView) ms8.u(viewInflate, R.id.tv_status);
                                                                                        if (textView6 != null) {
                                                                                            return new ph1((CoordinatorLayout) viewInflate, linearLayout, w00VarB, materialButton, materialButton2, materialButton3, materialButton4, imageView, imageView2, circularProgressIndicator, recyclerView, constraintLayout, textView, textView2, textView3, textView4, textView5, textView6);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        i2 = i9;
                                                    }
                                                } else {
                                                    i2 = i9;
                                                }
                                            } else {
                                                i2 = i9;
                                            }
                                        } else {
                                            i2 = i9;
                                        }
                                    } else {
                                        i2 = i9;
                                    }
                                } else {
                                    i2 = i9;
                                }
                            } else {
                                i2 = i9;
                            }
                        } else {
                            i2 = i9;
                        }
                    } else {
                        i2 = R.id.appbar_layout;
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 12:
                io1 io1Var = (io1) obj;
                zs5 zs5Var = new zs5(new vn1(io1Var, i5));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                        io1Var.k(zs5Var);
                    } else {
                        new Handler(Looper.getMainLooper()).post(new pb(i4, io1Var, zs5Var));
                    }
                }
                return zs5Var;
            case 13:
                ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) obj;
                int i10 = ConfigSettingsActivity.V;
                Intent intentPutExtra = new Intent().putExtra("extra_config_settings", configSettingsActivity.U().j()).putExtra("extra_config_settings_delete", true);
                intentPutExtra.getClass();
                configSettingsActivity.setResult(-1, intentPutExtra);
                configSettingsActivity.finish();
                return be8Var;
            case 14:
                Preference preferenceJ = ((lr1) obj).j("config_multiple_backups_strategy");
                preferenceJ.getClass();
                return preferenceJ;
            case 15:
                return CreatePasswordCredentialController.handleResponse$lambda$2((CreatePasswordCredentialController) obj);
            case Argon2.V10 /* 16 */:
                ((SwiftBackupMaterialSwitch) ((kb2) obj).d).toggle();
                return be8Var;
            case 17:
                int i11 = DropboxSignInActivity.P;
                return ((dr2) ((DropboxSignInActivity) obj).K.getValue()).b;
            case 18:
                p93 p93Var = p93.a;
                return p93.c(Long.valueOf(((yl3) obj).b));
            case Argon2.V13 /* 19 */:
                int i12 = FolderEditActivity.h0;
                return ((FolderEditActivity) obj).Z().n;
            case 20:
                List<zn7> listL = ((in3) obj).l();
                listL.getClass();
                for (zn7 zn7Var : listL) {
                    if (zn7Var.n().v().equals(Environment.getExternalStorageDirectory().getPath())) {
                        return new hn3(zn7Var, listL, zn7Var.n());
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            case 21:
                int i13 = FoldersBatchActivity.Y;
                return ((FoldersBatchActivity) obj).X().c;
            case 22:
                int i14 = FoldersDashActivity.U;
                View viewInflate2 = ((FoldersDashActivity) obj).getLayoutInflater().inflate(R.layout.folders_dash_activity, (ViewGroup) null, false);
                if (((MAppBarLayout) ms8.u(viewInflate2, R.id.appbar_layout)) != null) {
                    i3 = R.id.tabLayout;
                    TabLayout tabLayout = (TabLayout) ms8.u(viewInflate2, R.id.tabLayout);
                    if (tabLayout != null) {
                        i3 = R.id.toolbar;
                        View viewU2 = ms8.u(viewInflate2, R.id.toolbar);
                        if (viewU2 != null) {
                            Toolbar toolbar = (Toolbar) viewU2;
                            ix0 ix0Var = new ix0(9, toolbar, toolbar);
                            ViewPager viewPager = (ViewPager) ms8.u(viewInflate2, R.id.viewPager);
                            if (viewPager != null) {
                                return new yo3((CoordinatorLayout) viewInflate2, tabLayout, ix0Var, viewPager);
                            }
                            i3 = R.id.viewPager;
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i3)));
                return null;
            case 23:
                ((kp3) obj).m().j(true, true);
                return be8Var;
            case 24:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (!homeSearchActivity.isDestroyed()) {
                    od6 od6VarW = homeSearchActivity.W();
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(null, new lj(od6VarW, l, 4));
                }
                return be8Var;
            case 25:
                int i15 = LabelEditActivity.U;
                return ((LabelEditActivity) obj).N().f;
            case 26:
                return Double.valueOf(LabelParams.whiteTextContrast_delegate$lambda$0((LabelParams) obj));
            case 27:
                LabelsData labelsData = (LabelsData) obj;
                if (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null) {
                    linkedHashMap = null;
                } else {
                    linkedHashMap = new LinkedHashMap();
                    for (Map.Entry<String, LabelParams> entry : labelParamsMap.entrySet()) {
                        if (y13.s(entry.getValue())) {
                            linkedHashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                if (labelsData == null || (labelledAppsMap = labelsData.getLabelledAppsMap()) == null) {
                    linkedHashMap2 = null;
                } else {
                    linkedHashMap2 = new LinkedHashMap();
                    for (Map.Entry<String, LabelledApp> entry2 : labelledAppsMap.entrySet()) {
                        if (entry2.getValue().hasLabels()) {
                            linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                        }
                    }
                }
                LabelsData labelsDataCopy = labelsData != null ? labelsData.copy(linkedHashMap, linkedHashMap2) : null;
                lr4.a.l(labelsDataCopy);
                zn4.c(new d76(labelsDataCopy, "saveAndUploadData"));
                re3.k().d("labelsData").i(labelsDataCopy);
                return be8Var;
            case 28:
                LabelsActivity labelsActivity = (LabelsActivity) obj;
                int i16 = LabelsActivity.Z;
                return new ur4(labelsActivity.O(), labelsActivity.v());
            default:
                int i17 = ManageSpaceActivity.O;
                View viewInflate3 = ((ManageSpaceActivity) obj).getLayoutInflater().inflate(R.layout.manage_space_activity, (ViewGroup) null, false);
                View viewU3 = ms8.u(viewInflate3, R.id.appbar_layout);
                if (viewU3 != null) {
                    w00 w00VarB2 = w00.b(viewU3);
                    i3 = R.id.progress_bar;
                    View viewU4 = ms8.u(viewInflate3, R.id.progress_bar);
                    if (viewU4 != null) {
                        CircularProgressIndicator circularProgressIndicator2 = (CircularProgressIndicator) viewU4;
                        ix0 ix0Var2 = new ix0(6, circularProgressIndicator2, circularProgressIndicator2);
                        RecyclerView recyclerView2 = (RecyclerView) ms8.u(viewInflate3, R.id.recycler_view);
                        if (recyclerView2 != null) {
                            return new r55((CoordinatorLayout) viewInflate3, w00VarB2, ix0Var2, recyclerView2);
                        }
                    } else {
                        i2 = i3;
                    }
                } else {
                    i2 = i3;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i2)));
                return null;
        }
    }
}
