package defpackage;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import java.io.ByteArrayInputStream;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkreader.ApkManifestParser;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ah implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ah(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x03e3 A[PHI: r1
      0x03e3: PHI (r1v15 int) = 
      (r1v14 int)
      (r1v16 int)
      (r1v17 int)
      (r1v18 int)
      (r1v19 int)
      (r1v20 int)
      (r1v21 int)
      (r1v22 int)
      (r1v23 int)
      (r1v24 int)
      (r1v25 int)
      (r1v26 int)
      (r1v27 int)
      (r1v28 int)
      (r1v29 int)
      (r1v30 int)
      (r1v31 int)
      (r1v32 int)
      (r1v33 int)
      (r1v34 int)
     binds: [B:84:0x024f, B:86:0x0258, B:88:0x0268, B:90:0x0274, B:92:0x0280, B:94:0x028c, B:96:0x0298, B:98:0x02a5, B:100:0x02b2, B:102:0x02be, B:104:0x02cb, B:106:0x02d8, B:108:0x02e5, B:110:0x02f0, B:112:0x02fb, B:114:0x0306, B:116:0x0313, B:118:0x031e, B:120:0x032b, B:122:0x0338] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x013c A[PHI: r1
      0x013c: PHI (r1v63 int) = (r1v62 int), (r1v64 int), (r1v65 int), (r1v66 int), (r1v67 int), (r1v68 int), (r1v69 int) binds: [B:23:0x009c, B:25:0x00a7, B:27:0x00b3, B:29:0x00bf, B:31:0x00cb, B:33:0x00d6, B:35:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
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
        int i = this.a;
        int i2 = R.id.scroll_view;
        switch (i) {
            case 0:
                return ApkManifestParser.parsedManifestInfo_delegate$lambda$0((ApkManifestParser) this.b);
            case 1:
                hk hkVar = (hk) this.b;
                return hkVar.e().J(hkVar.b + ".libs");
            case 2:
                return (yo5) ((gl) this.b).c.getValue();
            case 3:
                return Boolean.valueOf(((vl) this.b).i());
            case 4:
                yl ylVar = (yl) this.b;
                return Long.valueOf(((Number) ylVar.g.getValue()).longValue() + ((Number) ylVar.e.getValue()).longValue());
            case 5:
                dt dtVar = (dt) this.b;
                int i3 = AppListActivity.q0;
                dtVar.getClass();
                y13.H(dtVar);
                return be8.a;
            case 6:
                return Boolean.valueOf(((xw) this.b).w());
            case 7:
                return Long.valueOf(qx.total_delegate$lambda$0((qx) this.b));
            case 8:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
                int i4 = AppsBatchActivity.s0;
                return appsBatchActivity.k0().e;
            case XmlPullParser.COMMENT /* 9 */:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) this.b;
                int i5 = AppsConfigRunActivity.m0;
                return appsConfigRunActivity.h0().e;
            case 10:
                List list = (List) ((qk0) this.b).w.getValue();
                if (list != null) {
                    return (gm) el1.U0(list);
                }
                return null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                CallsBackupRestoreActivity callsBackupRestoreActivity = (CallsBackupRestoreActivity) this.b;
                int i6 = CallsBackupRestoreActivity.c0;
                return new aj0(callsBackupRestoreActivity, 3);
            case 12:
                ((sa1) this.b).N = false;
                return be8.a;
            case 13:
                CloudConnectActivity cloudConnectActivity = (CloudConnectActivity) this.b;
                int i7 = CloudConnectActivity.Q;
                return new ac1(cloudConnectActivity, new xf(1, cloudConnectActivity, CloudConnectActivity.class, "onSelectedCloudConnectClick", "onSelectedCloudConnectClick(Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectItem;)V", 0, 1));
            case 14:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) this.b;
                int i8 = CloudDiagnosticsActivity.Z;
                View viewInflate = cloudDiagnosticsActivity.getLayoutInflater().inflate(R.layout.cloud_diagnostics_activity, (ViewGroup) null, false);
                int i9 = R.id.action_bar;
                LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.action_bar);
                if (linearLayout != null) {
                    i9 = R.id.appbar_layout;
                    View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                    if (viewU != null) {
                        w00 w00VarB = w00.b(viewU);
                        i9 = R.id.btn_connect_service;
                        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_connect_service);
                        if (materialButton != null) {
                            i9 = R.id.btn_disconnect_service;
                            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_disconnect_service);
                            if (materialButton2 != null) {
                                i9 = R.id.btn_report_failure;
                                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_report_failure);
                                if (extendedFloatingActionButton != null) {
                                    i9 = R.id.btn_report_failure_inline;
                                    MaterialButton materialButton3 = (MaterialButton) ms8.u(viewInflate, R.id.btn_report_failure_inline);
                                    if (materialButton3 != null) {
                                        i9 = R.id.btn_run_selected;
                                        MaterialButton materialButton4 = (MaterialButton) ms8.u(viewInflate, R.id.btn_run_selected);
                                        if (materialButton4 != null) {
                                            i9 = R.id.btn_stop;
                                            MaterialButton materialButton5 = (MaterialButton) ms8.u(viewInflate, R.id.btn_stop);
                                            if (materialButton5 != null) {
                                                i9 = R.id.btn_tests_selection_toggle;
                                                MaterialButton materialButton6 = (MaterialButton) ms8.u(viewInflate, R.id.btn_tests_selection_toggle);
                                                if (materialButton6 != null) {
                                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                                    i9 = R.id.divider;
                                                    View viewU2 = ms8.u(viewInflate, R.id.divider);
                                                    if (viewU2 != null) {
                                                        i9 = R.id.iv_provider;
                                                        ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_provider);
                                                        if (imageView != null) {
                                                            i9 = R.id.iv_report_status;
                                                            ImageView imageView2 = (ImageView) ms8.u(viewInflate, R.id.iv_report_status);
                                                            if (imageView2 != null) {
                                                                i9 = R.id.progress_report_status;
                                                                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_report_status);
                                                                if (circularProgressIndicator != null) {
                                                                    i9 = R.id.provider_button_top_barrier;
                                                                    if (((Barrier) ms8.u(viewInflate, R.id.provider_button_top_barrier)) != null) {
                                                                        i9 = R.id.provider_content_bottom_barrier;
                                                                        if (((Barrier) ms8.u(viewInflate, R.id.provider_content_bottom_barrier)) != null) {
                                                                            i9 = R.id.provider_panel;
                                                                            if (((ConstraintLayout) ms8.u(viewInflate, R.id.provider_panel)) != null) {
                                                                                i9 = R.id.recycler_view;
                                                                                RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                                                                                if (recyclerView != null) {
                                                                                    i9 = R.id.report_panel;
                                                                                    if (((ConstraintLayout) ms8.u(viewInflate, R.id.report_panel)) != null) {
                                                                                        i9 = R.id.report_scroll_view;
                                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.report_scroll_view);
                                                                                        if (nestedScrollView != null) {
                                                                                            i9 = R.id.results_view;
                                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(viewInflate, R.id.results_view);
                                                                                            if (constraintLayout != null) {
                                                                                                NestedScrollView nestedScrollView2 = (NestedScrollView) ms8.u(viewInflate, R.id.scroll_view);
                                                                                                if (nestedScrollView2 != null) {
                                                                                                    i2 = R.id.tests_header;
                                                                                                    if (((ConstraintLayout) ms8.u(viewInflate, R.id.tests_header)) != null) {
                                                                                                        i2 = R.id.tv_backup_tag;
                                                                                                        TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_backup_tag);
                                                                                                        if (textView != null) {
                                                                                                            i2 = R.id.tv_notice;
                                                                                                            TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_notice);
                                                                                                            if (textView2 != null) {
                                                                                                                i2 = R.id.tv_provider_subtitle;
                                                                                                                TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_provider_subtitle);
                                                                                                                if (textView3 != null) {
                                                                                                                    i2 = R.id.tv_provider_title;
                                                                                                                    TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_provider_title);
                                                                                                                    if (textView4 != null) {
                                                                                                                        i2 = R.id.tv_report;
                                                                                                                        TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_report);
                                                                                                                        if (textView5 != null) {
                                                                                                                            i2 = R.id.tv_report_detail;
                                                                                                                            TextView textView6 = (TextView) ms8.u(viewInflate, R.id.tv_report_detail);
                                                                                                                            if (textView6 != null) {
                                                                                                                                i2 = R.id.tv_report_progress;
                                                                                                                                TextView textView7 = (TextView) ms8.u(viewInflate, R.id.tv_report_progress);
                                                                                                                                if (textView7 != null) {
                                                                                                                                    i2 = R.id.tv_report_summary;
                                                                                                                                    TextView textView8 = (TextView) ms8.u(viewInflate, R.id.tv_report_summary);
                                                                                                                                    if (textView8 != null) {
                                                                                                                                        i2 = R.id.tv_report_title;
                                                                                                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_report_title)) != null) {
                                                                                                                                            i2 = R.id.tv_tests_subtitle;
                                                                                                                                            TextView textView9 = (TextView) ms8.u(viewInflate, R.id.tv_tests_subtitle);
                                                                                                                                            if (textView9 != null) {
                                                                                                                                                i2 = R.id.tv_tests_title;
                                                                                                                                                TextView textView10 = (TextView) ms8.u(viewInflate, R.id.tv_tests_title);
                                                                                                                                                if (textView10 != null) {
                                                                                                                                                    return new be1(coordinatorLayout, linearLayout, w00VarB, materialButton, materialButton2, extendedFloatingActionButton, materialButton3, materialButton4, materialButton5, materialButton6, viewU2, imageView, imageView2, circularProgressIndicator, recyclerView, nestedScrollView, constraintLayout, nestedScrollView2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
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
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 15:
                return new ByteArrayInputStream((byte[]) this.b);
            case Argon2.V10 /* 16 */:
                Map mapSingletonMap = pv2.a;
                LinkedHashMap linkedHashMap = new LinkedHashMap(((sl1) this.b).a);
                linkedHashMap.remove("900");
                int size = linkedHashMap.size();
                Map map = linkedHashMap;
                if (size == 0) {
                    map = mapSingletonMap;
                } else if (size == 1) {
                    Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
                    Map mapSingletonMap2 = Collections.singletonMap(entry.getKey(), entry.getValue());
                    mapSingletonMap2.getClass();
                    map = mapSingletonMap2;
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
                linkedHashMap2.remove("50");
                int size2 = linkedHashMap2.size();
                if (size2 != 0) {
                    if (size2 != 1) {
                        mapSingletonMap = linkedHashMap2;
                    } else {
                        Map.Entry entry2 = (Map.Entry) linkedHashMap2.entrySet().iterator().next();
                        mapSingletonMap = Collections.singletonMap(entry2.getKey(), entry2.getValue());
                        mapSingletonMap.getClass();
                    }
                }
                return el1.v1(mapSingletonMap.values());
            case 17:
                ConfigsData configsData = (ConfigsData) this.b;
                ConfigsData configsDataValidate = configsData != null ? configsData.validate() : null;
                br1.a.d(configsDataValidate);
                zn4.c(new bh(configsDataValidate, 14));
                br1.c.i(configsDataValidate);
                return be8.a;
            case 18:
                ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) this.b;
                int i10 = ConfigSettingsActivity.V;
                Intent intent = configSettingsActivity.getIntent();
                ConfigSettings configSettings = (ConfigSettings) (intent != null ? intent.getParcelableExtra("extra_config_settings") : null);
                return configSettings == null ? new ConfigSettings(0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null) : configSettings;
            case Argon2.V13 /* 19 */:
                Preference preferenceJ = ((lr1) this.b).j("config_restore_runtime_permissions");
                preferenceJ.getClass();
                return preferenceJ;
            case 20:
                ContributorRegActivity contributorRegActivity = (ContributorRegActivity) this.b;
                int i11 = ContributorRegActivity.S;
                View viewInflate2 = contributorRegActivity.getLayoutInflater().inflate(R.layout.contributor_reg_activity, (ViewGroup) null, false);
                int i12 = R.id.btn_action;
                ExtendedFloatingActionButton extendedFloatingActionButton2 = (ExtendedFloatingActionButton) ms8.u(viewInflate2, R.id.btn_action);
                if (extendedFloatingActionButton2 != null) {
                    i12 = R.id.cv_basic_details;
                    if (((MaterialCardView) ms8.u(viewInflate2, R.id.cv_basic_details)) != null) {
                        i12 = R.id.et_crowdin_username;
                        TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate2, R.id.et_crowdin_username);
                        if (textInputEditText != null) {
                            i12 = R.id.et_paypal;
                            TextInputEditText textInputEditText2 = (TextInputEditText) ms8.u(viewInflate2, R.id.et_paypal);
                            if (textInputEditText2 != null) {
                                i12 = R.id.et_telegram_handle;
                                TextInputEditText textInputEditText3 = (TextInputEditText) ms8.u(viewInflate2, R.id.et_telegram_handle);
                                if (textInputEditText3 != null) {
                                    i12 = R.id.main_view;
                                    if (((ConstraintLayout) ms8.u(viewInflate2, R.id.main_view)) != null) {
                                        i12 = R.id.progress_bar;
                                        if (((CircularProgressIndicator) ms8.u(viewInflate2, R.id.progress_bar)) != null) {
                                            NestedScrollView nestedScrollView3 = (NestedScrollView) ms8.u(viewInflate2, R.id.scroll_view);
                                            if (nestedScrollView3 != null) {
                                                i2 = R.id.til_crowdin_username;
                                                TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate2, R.id.til_crowdin_username);
                                                if (textInputLayout != null) {
                                                    i2 = R.id.til_paypal;
                                                    if (((TextInputLayout) ms8.u(viewInflate2, R.id.til_paypal)) != null) {
                                                        i2 = R.id.til_telegram_handle;
                                                        if (((TextInputLayout) ms8.u(viewInflate2, R.id.til_telegram_handle)) != null) {
                                                            i2 = R.id.tv_basic_details;
                                                            TextView textView11 = (TextView) ms8.u(viewInflate2, R.id.tv_basic_details);
                                                            if (textView11 != null) {
                                                                i2 = R.id.tv_header;
                                                                if (((TextView) ms8.u(viewInflate2, R.id.tv_header)) != null) {
                                                                    i2 = R.id.tv_status;
                                                                    TextView textView12 = (TextView) ms8.u(viewInflate2, R.id.tv_status);
                                                                    if (textView12 != null) {
                                                                        return new ov1((CoordinatorLayout) viewInflate2, extendedFloatingActionButton2, textInputEditText, textInputEditText2, textInputEditText3, nestedScrollView3, textInputLayout, textView11, textView12);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            i2 = i12;
                                        }
                                    } else {
                                        i2 = i12;
                                    }
                                } else {
                                    i2 = i12;
                                }
                            } else {
                                i2 = i12;
                            }
                        } else {
                            i2 = i12;
                        }
                    } else {
                        i2 = i12;
                    }
                } else {
                    i2 = i12;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i2)));
                return null;
            case 21:
                return CredentialProviderBeginSignInController.invokePlayServices$lambda$0$0((CredentialProviderBeginSignInController) this.b);
            case 22:
                return new qo5(((x92) this.b).l(), true, true);
            case 23:
                return new wa3(((sb3) this.b).a);
            case 24:
                return Boolean.valueOf(((jc3) this.b).o);
            case 25:
                return new FolderBackup$BaseBackup(((kj3) this.b).b());
            case 26:
                return ((sj3) ((rj3) this.b).K).d;
            case 27:
                FolderEditActivity folderEditActivity = (FolderEditActivity) this.b;
                int i13 = FolderEditActivity.h0;
                return folderEditActivity.Z().c;
            case 28:
                return new ao3(((mn3) ((ln3) this.b).K).f);
            default:
                Preference preferenceJ2 = ((zn3) this.b).j("compression_level_folders");
                preferenceJ2.getClass();
                return preferenceJ2;
        }
    }
}
