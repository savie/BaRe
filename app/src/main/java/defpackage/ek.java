package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.fragment.app.FragmentContainerView;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.a;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ek implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ek(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0277  */
    /* JADX WARN: Code duplicated, block: B:124:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:137:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:220:0x0525 A[PHI: r3
      0x0525: PHI (r3v3 int) = (r3v0 int), (r3v4 int), (r3v5 int), (r3v6 int), (r3v10 int), (r3v11 int), (r3v12 int), (r3v13 int), (r3v14 int) binds: [B:196:0x0489, B:198:0x0499, B:200:0x04a5, B:202:0x04ae, B:208:0x04db, B:210:0x04e8, B:212:0x04f5, B:214:0x0500, B:216:0x050b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:239:0x059a  */
    @Override // defpackage.bt3
    public final Object invoke() throws IOException {
        long jH;
        boolean z;
        boolean z2;
        String strC;
        String strC2;
        String strC3;
        String strC4;
        String strC5;
        String string;
        Integer numW;
        Integer numW2;
        String string2;
        q63 q63VarT;
        int i = this.a;
        int i2 = R.id.appbar_layout;
        int i3 = 2;
        int i4 = 6;
        char c = 1;
        be8 be8Var = be8.a;
        List listI = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                hk hkVar = (hk) obj;
                return hkVar.e().J(hkVar.b + ".splits");
            case 1:
                AppBackupLimitsActivity appBackupLimitsActivity = (AppBackupLimitsActivity) obj;
                int i5 = AppBackupLimitsActivity.M;
                int i6 = 0;
                int i7 = 0;
                return x65.r0(new pw5(iu.DATA, new qk(appBackupLimitsActivity.P().b, new rk(i7, appBackupLimitsActivity, AppBackupLimitsActivity.class, "onValuesChanged", "onValuesChanged()V", i6, 0))), new pw5(iu.EXTDATA, new qk(appBackupLimitsActivity.P().d, new sk(0, appBackupLimitsActivity, AppBackupLimitsActivity.class, "onValuesChanged", "onValuesChanged()V", 0))), new pw5(iu.MEDIA, new qk(appBackupLimitsActivity.P().e, new tk(0, appBackupLimitsActivity, AppBackupLimitsActivity.class, "onValuesChanged", "onValuesChanged()V", 0))), new pw5(iu.EXPANSION, new qk(appBackupLimitsActivity.P().c, new uk(i7, appBackupLimitsActivity, AppBackupLimitsActivity.class, "onValuesChanged", "onValuesChanged()V", i6, 0))));
            case 2:
                return (HashMap) ((gl) obj).b.getValue();
            case 3:
                return Boolean.valueOf(((vl) obj).i());
            case 4:
                yl ylVar = (yl) obj;
                if (((Boolean) ylVar.f.getValue()).booleanValue()) {
                    qx sizeInfo = ylVar.b.getSizeInfo();
                    jH = io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getDeDataSize(ylVar.c)) : null);
                } else {
                    jH = 0;
                }
                return Long.valueOf(jH);
            case 5:
                return Long.valueOf(AppCloudBackup.dateBackedUpOrUpdated_delegate$lambda$0((AppCloudBackup) obj));
            case 6:
                return nq7.x0((String) obj, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
            case 7:
                return qx.totalSizeString_delegate$lambda$0((qx) obj);
            case 8:
                int i8 = AppsBatchActivity.s0;
                return ((AppsBatchActivity) obj).k0().k;
            case XmlPullParser.COMMENT /* 9 */:
                int i9 = AppsConfigRunActivity.m0;
                return ((AppsConfigRunActivity) obj).h0().k;
            case 10:
                qk0 qk0Var = (qk0) obj;
                if (qk0Var.c) {
                    gs0 gs0Var = gs0.a;
                    z = gs0.c(qk0Var.h.getPackageName(), is0.NoData);
                }
                return Boolean.valueOf(z);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i10 = CallsBackupRestoreActivity.c0;
                return ((CallsBackupRestoreActivity) obj).W().b;
            case 12:
                int i11 = CallsBackupsActivity.T;
                return ((ni7) ((CallsBackupsActivity) obj).Q.getValue()).d;
            case 13:
                int i12 = CloudConnectActivity.Q;
                return ((xb1) ((CloudConnectActivity) obj).L.getValue()).c;
            case 14:
                return Integer.valueOf(Color.parseColor((String) ((sl1) obj).b.getValue()));
            case 15:
                return Boolean.valueOf(((q63) obj).f());
            case Argon2.V10 /* 16 */:
                ((io1) obj).reportFullyDrawn();
                return be8Var;
            case 17:
                int i13 = ConfigEditActivity.V;
                View viewInflate = ((ConfigEditActivity) obj).getLayoutInflater().inflate(R.layout.config_edit_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i2 = R.id.btn_action;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_action);
                    if (extendedFloatingActionButton != null) {
                        i2 = R.id.btn_add_settings;
                        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_add_settings);
                        if (materialButton != null) {
                            i2 = R.id.config_notice_view;
                            View viewU2 = ms8.u(viewInflate, R.id.config_notice_view);
                            if (viewU2 != null) {
                                int i14 = R.id.iv_cancel;
                                if (((ImageView) ms8.u(viewU2, R.id.iv_cancel)) != null) {
                                    i14 = R.id.tv_title;
                                    TextView textView = (TextView) ms8.u(viewU2, R.id.tv_title);
                                    if (textView != null) {
                                        l39 l39Var = new l39(c == true ? 1 : 0, (MaterialCardView) viewU2, textView);
                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                        i2 = R.id.et_config_name;
                                        TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et_config_name);
                                        if (textInputEditText != null) {
                                            i2 = R.id.recycler_view;
                                            RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                                            if (recyclerView != null) {
                                                i2 = R.id.til_config_name;
                                                TextInputLayout textInputLayout = (TextInputLayout) ms8.u(viewInflate, R.id.til_config_name);
                                                if (textInputLayout != null) {
                                                    i2 = R.id.tv_list_header;
                                                    if (((TextView) ms8.u(viewInflate, R.id.tv_list_header)) != null) {
                                                        i2 = R.id.tv_list_subheader;
                                                        if (((TextView) ms8.u(viewInflate, R.id.tv_list_subheader)) != null) {
                                                            return new kq1(coordinatorLayout, w00VarB, extendedFloatingActionButton, materialButton, l39Var, textInputEditText, recyclerView, textInputLayout);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                                    }
                                }
                                f6.n("Missing required view with ID: ".concat(viewU2.getResources().getResourceName(i14)));
                            } else {
                                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                            }
                        } else {
                            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                        }
                    } else {
                        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                    }
                } else {
                    f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                }
                return null;
            case 18:
                a aVar = (a) obj;
                u95 u95Var = aVar.h;
                br1 br1Var = br1.a;
                u95Var.l((ex6) br1.f.getValue(), new o01(i3, new px(aVar, 4)));
                return be8Var;
            case Argon2.V13 /* 19 */:
                int i15 = ConfigSettingsActivity.V;
                View viewInflate2 = ((ConfigSettingsActivity) obj).getLayoutInflater().inflate(R.layout.config_settings_activity, (ViewGroup) null, false);
                View viewU3 = ms8.u(viewInflate2, R.id.appbar_layout);
                if (viewU3 != null) {
                    w00 w00VarB2 = w00.b(viewU3);
                    i2 = R.id.config_settings_view;
                    View viewU4 = ms8.u(viewInflate2, R.id.config_settings_view);
                    if (viewU4 != null) {
                        ny1 ny1VarA = ny1.a(viewU4);
                        int i16 = R.id.container_apply_to;
                        if (((MaterialCardView) ms8.u(viewInflate2, R.id.container_apply_to)) != null) {
                            i16 = R.id.container_apply_to_click_listener;
                            View viewU5 = ms8.u(viewInflate2, R.id.container_apply_to_click_listener);
                            if (viewU5 != null) {
                                i16 = R.id.container_apply_to_content;
                                if (((LinearLayout) ms8.u(viewInflate2, R.id.container_apply_to_content)) != null) {
                                    i16 = R.id.settings_container;
                                    if (((FragmentContainerView) ms8.u(viewInflate2, R.id.settings_container)) != null) {
                                        i16 = R.id.tv_apply_to_title;
                                        if (((TextView) ms8.u(viewInflate2, R.id.tv_apply_to_title)) != null) {
                                            return new fr1((CoordinatorLayout) viewInflate2, w00VarB2, ny1VarA, viewU5);
                                        }
                                    }
                                }
                            }
                        }
                        i2 = i16;
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i2)));
                return null;
            case 20:
                Preference preferenceJ = ((lr1) obj).j("config_backup_app_cache");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case 21:
                return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$2$0((CredentialProviderCreatePublicKeyCredentialController) obj);
            case 22:
                mk2 mk2Var = (mk2) obj;
                ex6 ex6Var = mk2Var.j;
                SwiftApp.Companion companion = SwiftApp.d;
                long integer = ((long) SwiftApp.Companion.c().getResources().getInteger(R.integer.activity_transition_time)) + 50;
                ji jiVar = mk2Var.e;
                if (jiVar == null) {
                    pe4.F("app");
                    throw null;
                }
                if (jiVar.isInstalled()) {
                    if (ex6Var.d() == null) {
                        ex6Var.k(bk2.a);
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z2 = sharedPreferences.getBoolean("KEY_BACKUP_APP_CACHE", false);
                        try {
                            SharedPreferences sharedPreferences2 = cz4.f;
                            if (sharedPreferences2 == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            z2 = sharedPreferences2.getBoolean("backup_app_cache", z2);
                            ji jiVar2 = mk2Var.e;
                            if (jiVar2 == null) {
                                pe4.F("app");
                                throw null;
                            }
                            jiVar2.calculateSize(true, true, true, true);
                            ji jiVar3 = mk2Var.e;
                            if (jiVar3 == null) {
                                pe4.F("app");
                                throw null;
                            }
                            qx sizeInfo2 = jiVar3.getSizeInfo();
                            if (sizeInfo2 == null) {
                                sizeInfo2 = new qx(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 2047, null);
                            }
                            long totalApkSize = sizeInfo2.getTotalApkSize();
                            Long lValueOf = Long.valueOf(totalApkSize);
                            if (totalApkSize <= 0) {
                                lValueOf = null;
                            }
                            if (lValueOf != null) {
                                long jLongValue = lValueOf.longValue();
                                p93 p93Var = p93.a;
                                strC = p93.c(Long.valueOf(jLongValue));
                            } else {
                                strC = null;
                            }
                            long totalDataSize = sizeInfo2.getTotalDataSize(z2);
                            Long lValueOf2 = Long.valueOf(totalDataSize);
                            if (totalDataSize <= 0) {
                                lValueOf2 = null;
                            }
                            if (lValueOf2 != null) {
                                long jLongValue2 = lValueOf2.longValue();
                                p93 p93Var2 = p93.a;
                                strC2 = p93.c(Long.valueOf(jLongValue2));
                            } else {
                                strC2 = null;
                            }
                            long extDataSize = sizeInfo2.getExtDataSize(z2);
                            Long lValueOf3 = Long.valueOf(extDataSize);
                            if (extDataSize <= 0) {
                                lValueOf3 = null;
                            } else {
                                ji jiVar4 = mk2Var.e;
                                if (jiVar4 == null) {
                                    pe4.F("app");
                                    throw null;
                                }
                                if (!jiVar4.hasExternalData(z2)) {
                                    lValueOf3 = null;
                                }
                            }
                            if (lValueOf3 != null) {
                                long jLongValue3 = lValueOf3.longValue();
                                p93 p93Var3 = p93.a;
                                strC3 = p93.c(Long.valueOf(jLongValue3));
                            } else {
                                strC3 = null;
                            }
                            long mediaSize = sizeInfo2.getMediaSize();
                            Long lValueOf4 = Long.valueOf(mediaSize);
                            if (mediaSize <= 0) {
                                lValueOf4 = null;
                            } else {
                                ji jiVar5 = mk2Var.e;
                                if (jiVar5 == null) {
                                    pe4.F("app");
                                    throw null;
                                }
                                if (!jiVar5.hasMedia()) {
                                    lValueOf4 = null;
                                }
                            }
                            if (lValueOf4 != null) {
                                long jLongValue4 = lValueOf4.longValue();
                                p93 p93Var4 = p93.a;
                                strC4 = p93.c(Long.valueOf(jLongValue4));
                            } else {
                                strC4 = null;
                            }
                            long externalObbSize = sizeInfo2.getExternalObbSize();
                            Long lValueOf5 = Long.valueOf(externalObbSize);
                            if (externalObbSize <= 0) {
                                lValueOf5 = null;
                            } else {
                                ji jiVar6 = mk2Var.e;
                                if (jiVar6 == null) {
                                    pe4.F("app");
                                    throw null;
                                }
                                if (!jiVar6.hasExpansion()) {
                                    lValueOf5 = null;
                                }
                            }
                            if (lValueOf5 != null) {
                                long jLongValue5 = lValueOf5.longValue();
                                p93 p93Var5 = p93.a;
                                strC5 = p93.c(Long.valueOf(jLongValue5));
                            } else {
                                strC5 = null;
                            }
                            ji jiVar7 = mk2Var.e;
                            if (jiVar7 == null) {
                                pe4.F("app");
                                throw null;
                            }
                            long jH2 = io4.h(jiVar7.getDateUpdated());
                            ji jiVar8 = mk2Var.e;
                            if (jiVar8 == null) {
                                pe4.F("app");
                                throw null;
                            }
                            long jH3 = io4.h(jiVar8.getDateInstalled());
                            if (jH2 <= 0 || jH2 <= jH3) {
                                string = SwiftApp.Companion.c().getString(R.string.installed_time_or_duration, Const.s(jH3));
                                string.getClass();
                            } else {
                                string = dj7.k(SwiftApp.Companion.c().getString(R.string.last_updated), ": ", Const.s(jH2));
                            }
                            StringBuilder sb = new StringBuilder();
                            long totalSize = sizeInfo2.getTotalSize(false);
                            p93 p93Var6 = p93.a;
                            sb.append(p93.c(Long.valueOf(totalSize)));
                            if (sizeInfo2.getTotalCacheSizes() > 0) {
                                sb.append(" + " + dj7.g(R.string.cache) + TokenAuthenticationScheme.SCHEME_DELIMITER + sizeInfo2.getTotalCacheSizesString());
                            }
                            String strN = u48.n(string, " (", sb.toString(), ")");
                            ai8.o(Const.m(jCurrentTimeMillis, integer));
                            boolean zHasSplits = sizeInfo2.hasSplits();
                            boolean zHasSharedLibs = sizeInfo2.hasSharedLibs();
                            ji jiVar9 = mk2Var.e;
                            if (jiVar9 == null) {
                                pe4.F("app");
                                throw null;
                            }
                            ex6Var.k(new dk2(strC, zHasSplits, zHasSharedLibs, strC2, strC3, strC4, strC5, strN, jiVar9.getVersionName()));
                        } catch (ClassCastException unused) {
                        }
                    } catch (ClassCastException unused2) {
                        z2 = false;
                    }
                } else {
                    ai8.o(integer);
                    ex6Var.k(ck2.a);
                }
                return be8Var;
            case 23:
                File fileI = ji8.i((Context) obj, "firebaseSessions/sessionDataStore.data");
                ge.z(fileI);
                return fileI;
            case 24:
                return new q63(2, ((kj3) obj).b(), ".working");
            case 25:
                return ((sj3) ((rj3) obj).K).c;
            case 26:
                return Boolean.valueOf(((wj3) obj).a.l);
            case 27:
                dm3 dm3Var = (dm3) obj;
                String sourceFolder = dm3Var.k().getSourceFolder();
                long jIncrementAndGet = dm3Var.k.incrementAndGet();
                q63 q63Var = new q63(sourceFolder, 1);
                boolean zJ = q63Var.j();
                am3 am3Var = am3.a;
                if (zJ) {
                    if (dm3Var.g.d() == null) {
                        dm3.m(dm3Var, jIncrementAndGet, sourceFolder, zl3.a);
                    }
                    p93 p93Var7 = p93.a;
                    String strC6 = jr7.c(q63Var.v());
                    String str = (String) el1.U0(mp6.a.h(new String[]{eq3.l("files=$(toybox find ", strC6, " -type f | toybox wc -l); folders=$(toybox find ", strC6, " -type d | toybox wc -l); echo \"$files $folders\"")}, ip6.ANY));
                    if (str != null && (string2 = nq7.H0(str).toString()) != null) {
                        Pattern patternCompile = Pattern.compile("\\s+");
                        patternCompile.getClass();
                        nq7.t0(0);
                        Matcher matcher = patternCompile.matcher(string2);
                        if (matcher.find()) {
                            ArrayList arrayList = new ArrayList(10);
                            int iEnd = 0;
                            do {
                                arrayList.add(string2.subSequence(iEnd, matcher.start()).toString());
                                iEnd = matcher.end();
                            } while (matcher.find());
                            arrayList.add(string2.subSequence(iEnd, string2.length()).toString());
                            listI = arrayList;
                        } else {
                            listI = nc8.I(string2.toString());
                        }
                    }
                    if (listI == null) {
                        listI = ov2.a;
                    }
                    String str2 = (String) el1.V0(0, listI);
                    int iIntValue = (str2 == null || (numW2 = uq7.W(10, str2)) == null) ? 0 : numW2.intValue();
                    String str3 = (String) el1.V0(1, listI);
                    int iIntValue2 = (str3 == null || (numW = uq7.W(10, str3)) == null) ? 0 : numW.intValue() - 1;
                    int i17 = iIntValue2 < 0 ? 0 : iIntValue2;
                    long jF = p93Var7.f(q63Var.v());
                    if (q63Var.j()) {
                        dm3.m(dm3Var, jIncrementAndGet, sourceFolder, new yl3(sourceFolder, jF, q63Var.z(), i17, iIntValue));
                    } else {
                        dm3.m(dm3Var, jIncrementAndGet, sourceFolder, am3Var);
                    }
                } else {
                    dm3.m(dm3Var, jIncrementAndGet, sourceFolder, am3Var);
                }
                return be8Var;
            case 28:
                int i18 = FolderEditActivity.h0;
                return ((FolderEditActivity) obj).Z().d;
            default:
                in3 in3Var = (in3) obj;
                hn3 hn3VarK = in3Var.k();
                if (!pe4.d(hn3VarK.c, hn3VarK.a.n()) && (q63VarT = in3Var.k().c.t()) != null) {
                    in3Var.m(q63VarT, new lx(i4, in3Var, q63VarT));
                }
                return be8Var;
        }
    }
}
