package defpackage;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.textfield.TextInputEditText;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ChatActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.a;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lf implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ lf(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:164:0x0355  */
    /* JADX WARN: Code duplicated, block: B:166:0x035a  */
    /* JADX WARN: Code duplicated, block: B:168:0x037c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:169:0x037e  */
    /* JADX WARN: Code duplicated, block: B:171:0x03a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:173:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:175:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:176:0x03af  */
    /* JADX WARN: Code duplicated, block: B:249:0x0598  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c7  */
    @Override // defpackage.bt3
    public final Object invoke() {
        ArrayList arrayList;
        boolean zJ;
        wb6 wb6Var;
        wb6 wb6Var2;
        wb6 wb6VarCopy$default;
        wb6 wb6VarM78default;
        Properties properties;
        Long lY;
        int i = 2;
        boolean z = true;
        int i2 = 0;
        switch (this.a) {
            case 0:
                ApkImportActivity apkImportActivity = (ApkImportActivity) this.b;
                int i3 = ApkImportActivity.Q;
                ArrayList arrayList2 = new ArrayList();
                int childCount = apkImportActivity.N().c.getChildCount();
                while (i2 < childCount) {
                    View childAt = apkImportActivity.N().c.getChildAt(i2);
                    childAt.getClass();
                    arrayList2.add(childAt);
                    i2++;
                }
                return arrayList2;
            case 1:
                hk hkVar = (hk) this.b;
                return hkVar.e().J(hkVar.b + ".med");
            case 2:
                return (Set) ((gl) this.b).g.getValue();
            case 3:
                char[] cArr = (char[]) ((vl) this.b).o.getValue();
                if (cArr != null && cArr.length != 0) {
                    String str = new String(cArr);
                    if (str.length() != 0 && !nq7.j0(str)) {
                        return sz8.E(str);
                    }
                }
                return null;
            case 4:
                List list = ((cm) this.b).b;
                if (list != null) {
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        q63 q63Var = new q63(((yc7) it.next()).getApkPath(), 1);
                        if (!q63Var.j()) {
                            q63Var = null;
                        }
                        if (q63Var != null) {
                            arrayList3.add(q63Var);
                        }
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                return arrayList == null ? ov2.a : arrayList;
            case 5:
                return ((xw) this.b).k.u();
            case 6:
                Preference preferenceJ = ((a) this.b).j("restore_runtime_permissions");
                preferenceJ.getClass();
                return preferenceJ;
            case 7:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) this.b;
                int i4 = AppsBatchActivity.s0;
                return new xi0(appsBatchActivity);
            case 8:
                qk0 qk0Var = (qk0) this.b;
                ji jiVar = qk0Var.h;
                qx sizeInfo = jiVar.getSizeInfo();
                if (io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getTotalDataSize(qk0Var.a.g)) : null) == 0) {
                    String dataDir = jiVar.getDataDir();
                    if (dataDir == null) {
                        zJ = false;
                    } else {
                        String str2 = !nq7.j0(dataDir) ? dataDir : null;
                        if (str2 != null) {
                            zJ = new q63(str2, 1).j();
                        } else {
                            zJ = false;
                        }
                    }
                    if (!zJ) {
                        z = false;
                    }
                }
                if (!z) {
                    vr6.w$default(vr6.INSTANCE, "BackupPlan", xs1.j("Skipping Data backup because the data directory does not exist: ", jiVar.getDataDir()), null, 4, null);
                }
                return Boolean.valueOf(z);
            case XmlPullParser.COMMENT /* 9 */:
                w45 w45Var = new w45((il0) this.b);
                w45Var.setCancelable(false);
                return w45Var;
            case 10:
                BlacklistActivity blacklistActivity = (BlacklistActivity) this.b;
                int i5 = BlacklistActivity.P;
                return new bs0(blacklistActivity);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ChatActivity chatActivity = (ChatActivity) this.b;
                int i6 = ChatActivity.O;
                return new o51(chatActivity);
            case 12:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) this.b;
                int i7 = CloudDiagnosticsActivity.Z;
                return Boolean.valueOf(cloudDiagnosticsActivity.getIntent().getBooleanExtra("org.swiftapps.swiftbackup.cloud.diagnostics.extra.INCLUDE_LARGE_ROUND_TRIP", false));
            case 13:
                return new zs5(new o10((ko1) this.b, i));
            case 14:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) this.b;
                int i8 = ConfigEditActivity.V;
                TextInputEditText textInputEditText = configEditActivity.U().f;
                Context context = textInputEditText.getContext();
                InputMethodManager inputMethodManager = context != null ? (InputMethodManager) context.getSystemService(InputMethodManager.class) : null;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(textInputEditText.getWindowToken(), 0);
                }
                return be8.a;
            case 15:
                ConfigListActivity configListActivity = (ConfigListActivity) this.b;
                int i9 = ConfigListActivity.R;
                return new yq1(configListActivity);
            case Argon2.V10 /* 16 */:
                ContributorRegActivity contributorRegActivity = (ContributorRegActivity) this.b;
                int i10 = ContributorRegActivity.S;
                return contributorRegActivity.N().c;
            case 17:
                ConversationsActivity conversationsActivity = (ConversationsActivity) this.b;
                int i11 = ConversationsActivity.O;
                View viewInflate = conversationsActivity.getLayoutInflater().inflate(R.layout.conversations_activity, (ViewGroup) null, false);
                int i12 = R.id.appbar_layout;
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.recycler_view);
                    if (recyclerView != null) {
                        return new sv1(coordinatorLayout, w00VarB, recyclerView);
                    }
                    i12 = R.id.recycler_view;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i12)));
                return null;
            case 18:
                DetailActivity detailActivity = (DetailActivity) this.b;
                int i13 = DetailActivity.b0;
                return new qj2(detailActivity, detailActivity.X().d, detailActivity.a0());
            case Argon2.V13 /* 19 */:
                FilenSignInActivity filenSignInActivity = (FilenSignInActivity) this.b;
                int i14 = FilenSignInActivity.N;
                return ub5.a(filenSignInActivity.getLayoutInflater());
            case 20:
                il0 il0Var = ((rj3) this.b).Q;
                tb1 tb1Var = tb1.a;
                if (qb1.m()) {
                    int i15 = PremiumActivity.V;
                    rs9.u(il0Var);
                } else {
                    int i16 = CloudConnectActivity.Q;
                    il0Var.getClass();
                    Intent intentPutExtra = new Intent(il0Var, (Class<?>) CloudConnectActivity.class).putExtra("cloud_constant", (String) null);
                    intentPutExtra.getClass();
                    il0Var.startActivityForResult(intentPutExtra, 2004);
                }
                return be8.a;
            case 21:
                dm3 dm3Var = (dm3) this.b;
                q63 q63Var2 = new q63(dm3Var.k().getSourceFolder(), 2);
                boolean zG = q63Var2.g();
                String str3 = "Deleting source folder at " + q63Var2 + TokenAuthenticationScheme.SCHEME_DELIMITER + (zG ? "successful" : "failed") + ".";
                vr6 vr6Var = vr6.INSTANCE;
                if (zG) {
                    vr6.i$default(vr6Var, dm3Var.b, str3, null, 4, null);
                } else {
                    vr6.e$default(vr6Var, dm3Var.b, str3, null, 4, null);
                }
                if (zG) {
                    dm3Var.k.incrementAndGet();
                    dm3Var.g.k(am3.a);
                } else {
                    zn4.c(new ek(dm3Var, 27));
                }
                return be8.a;
            case 22:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) this.b;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                return new r54(homeSearchActivity);
            case 23:
                c64 c64Var = (c64) this.b;
                ix6 ix6Var = c64.l;
                lz3 lz3Var = lz3.d;
                SwiftApp.Companion companion = SwiftApp.d;
                int iC = lz3Var.c(SwiftApp.Companion.c(), mz3.a);
                boolean z2 = iC == 0;
                if (!z2) {
                    int i17 = u04.e;
                    String strQ = hs1.q(iC);
                    if (strQ.length() > 0) {
                        vr6.e$default(vr6.INSTANCE, "GmsUtil", "isGooglePlayServicesAvailable: ".concat(strQ), null, 4, null);
                    }
                }
                if (z2) {
                    wq0 wq0Var = wq0.a;
                    wb6 wb6VarA = wq0.a(wq0.c());
                    if (wb6VarA == null) {
                        vr6.i$default(vr6.INSTANCE, c64Var.b, "Purchases not available from Google Play", null, 4, null);
                    }
                    wb6Var = wb6VarA;
                } else {
                    wb6Var = null;
                }
                if (z2) {
                    wq0 wq0Var2 = wq0.a;
                    l73 l73VarA = cf3.a(re3.k().d("transactions").d("premium"), true);
                    if (l73VarA instanceof xe3) {
                        wb6Var2 = (wb6) ((xe3) l73VarA).n.c(wb6.class);
                    } else {
                        wb6Var2 = null;
                    }
                } else {
                    wb6Var2 = null;
                }
                if (z2 && wb6Var == null && wb6Var2 == null) {
                    vr6.i$default(vr6.INSTANCE, c64Var.b, "No purchases found", null, 4, null);
                }
                V v = V.INSTANCE;
                long v2 = v.getV();
                long jCurrentTimeMillis = System.currentTimeMillis();
                z = jCurrentTimeMillis - v2 >= 3600000;
                if (z) {
                    v.setV(jCurrentTimeMillis);
                    if (wb6Var != null || (wb6VarM78default = wb6.copy$default(wb6Var, null, null, null, null, null, null, null, null, null, null, Long.valueOf(jCurrentTimeMillis), 1023, null)) == null) {
                        if (wb6Var2 != null) {
                            wb6VarCopy$default = wb6.copy$default(wb6Var2, null, null, null, null, null, null, null, null, null, null, Long.valueOf(jCurrentTimeMillis), 1023, null);
                            if (wb6VarCopy$default != null || z) {
                                wb6VarCopy$default = null;
                            }
                        } else {
                            wb6VarCopy$default = null;
                        }
                        if (wb6VarCopy$default == null) {
                            wb6VarM78default = wb6.Companion.m78default();
                        } else {
                            wb6VarM78default = wb6VarCopy$default;
                        }
                    }
                    wq0 wq0Var3 = wq0.a;
                    wq0.g(wb6VarM78default, null);
                } else if (!pe4.d(wb6Var != null ? wb6Var.getPurchaseToken() : null, wb6Var2 != null ? wb6Var2.getPurchaseToken() : null)) {
                    v.setV(jCurrentTimeMillis);
                    if (wb6Var != null) {
                        if (wb6Var2 != null) {
                            wb6VarCopy$default = wb6.copy$default(wb6Var2, null, null, null, null, null, null, null, null, null, null, Long.valueOf(jCurrentTimeMillis), 1023, null);
                            if (wb6VarCopy$default != null) {
                                wb6VarCopy$default = null;
                            } else {
                                wb6VarCopy$default = null;
                            }
                        } else {
                            wb6VarCopy$default = null;
                        }
                        if (wb6VarCopy$default == null) {
                            wb6VarM78default = wb6.Companion.m78default();
                        } else {
                            wb6VarM78default = wb6VarCopy$default;
                        }
                    } else {
                        if (wb6Var2 != null) {
                            wb6VarCopy$default = wb6.copy$default(wb6Var2, null, null, null, null, null, null, null, null, null, null, Long.valueOf(jCurrentTimeMillis), 1023, null);
                            if (wb6VarCopy$default != null) {
                                wb6VarCopy$default = null;
                            } else {
                                wb6VarCopy$default = null;
                            }
                        } else {
                            wb6VarCopy$default = null;
                        }
                        if (wb6VarCopy$default == null) {
                            wb6VarM78default = wb6.Companion.m78default();
                        } else {
                            wb6VarM78default = wb6VarCopy$default;
                        }
                    }
                    wq0 wq0Var4 = wq0.a;
                    wq0.g(wb6VarM78default, null);
                } else if (!pe4.d(wb6Var != null ? wb6Var.getPurchaseState() : null, wb6Var2 != null ? wb6Var2.getPurchaseState() : null)) {
                    v.setV(jCurrentTimeMillis);
                    if (wb6Var != null) {
                        if (wb6Var2 != null) {
                            wb6VarCopy$default = wb6.copy$default(wb6Var2, null, null, null, null, null, null, null, null, null, null, Long.valueOf(jCurrentTimeMillis), 1023, null);
                            if (wb6VarCopy$default != null) {
                                wb6VarCopy$default = null;
                            } else {
                                wb6VarCopy$default = null;
                            }
                        } else {
                            wb6VarCopy$default = null;
                        }
                        if (wb6VarCopy$default == null) {
                            wb6VarM78default = wb6.Companion.m78default();
                        } else {
                            wb6VarM78default = wb6VarCopy$default;
                        }
                    } else {
                        if (wb6Var2 != null) {
                            wb6VarCopy$default = wb6.copy$default(wb6Var2, null, null, null, null, null, null, null, null, null, null, Long.valueOf(jCurrentTimeMillis), 1023, null);
                            if (wb6VarCopy$default != null) {
                                wb6VarCopy$default = null;
                            } else {
                                wb6VarCopy$default = null;
                            }
                        } else {
                            wb6VarCopy$default = null;
                        }
                        if (wb6VarCopy$default == null) {
                            wb6VarM78default = wb6.Companion.m78default();
                        } else {
                            wb6VarM78default = wb6VarCopy$default;
                        }
                    }
                    wq0 wq0Var5 = wq0.a;
                    wq0.g(wb6VarM78default, null);
                }
                return be8.a;
            case 24:
                LabelEditActivity labelEditActivity = (LabelEditActivity) this.b;
                int i18 = LabelEditActivity.U;
                return labelEditActivity.N().e;
            case 25:
                LabelsActivity labelsActivity = (LabelsActivity) this.b;
                int i19 = LabelsActivity.Z;
                return labelsActivity.Q().c;
            case 26:
                Preference preferenceJ2 = ((fs4) this.b).j("extend_data_sync_fgs_timeout_for_schedules");
                preferenceJ2.getClass();
                return (MSwitchPreference) preferenceJ2;
            case 27:
                return ((is4) this.b).a().getDisplayLanguage(Locale.US);
            case 28:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) this.b;
                int i20 = MessagesBackupRestoreActivity.c0;
                return messagesBackupRestoreActivity.X().b;
            default:
                oi5 oi5Var = (oi5) this.b;
                int iIntValue = ((Number) oi5Var.H.getValue()).intValue();
                long j = oi5Var.c;
                int i21 = j > 2147483647L ? Integer.MAX_VALUE : (int) j;
                if (i21 < 1) {
                    i21 = 1;
                }
                if (iIntValue > i21) {
                    iIntValue = i21;
                }
                long j2 = j / ((long) iIntValue);
                ArrayList<ni5> arrayList4 = new ArrayList();
                long j3 = 0;
                while (i2 < iIntValue) {
                    long j4 = i2 == iIntValue + (-1) ? j - 1 : (j3 + j2) - 1;
                    int i22 = i2 + 1;
                    arrayList4.add(new ni5(i22, j3, j4));
                    Log.i(oi5Var.k, "Chunk #" + i22 + ": Range: bytes=" + j3 + "-" + j4);
                    j3 = j4 + 1;
                    i2 = i22;
                    j = j;
                }
                long j5 = j;
                if (arrayList4.isEmpty()) {
                    l0.e("No download chunks prepared.");
                } else {
                    if (((ni5) el1.S0(arrayList4)).b == 0 && ((ni5) el1.a1(arrayList4)).c == j5 - 1) {
                        if (oi5Var.d && oi5Var.x.j() && oi5Var.y.j() && ((Boolean) oi5Var.G.getValue()).booleanValue()) {
                            synchronized (oi5Var.p) {
                                if (oi5Var.x.j() && oi5Var.y.j()) {
                                    Properties properties2 = new Properties();
                                    try {
                                        InputStream inputStreamW = oi5Var.y.w(true);
                                        try {
                                            properties2.load(inputStreamW);
                                            inputStreamW.close();
                                            if (pe4.d(properties2.getProperty("version"), "1") && pe4.d(properties2.getProperty("cacheKeyHash"), oi5Var.q) && pe4.d(properties2.getProperty("outputPath"), oi5Var.b.v()) && pe4.d(properties2.getProperty("totalBytes"), String.valueOf(oi5Var.c)) && pe4.d(properties2.getProperty("chunkCount"), String.valueOf(arrayList4.size()))) {
                                                if (!arrayList4.isEmpty()) {
                                                    Iterator it2 = arrayList4.iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            ni5 ni5Var = (ni5) it2.next();
                                                            if (pe4.d(properties2.getProperty("chunk." + ni5Var.a + ".rangeStart"), String.valueOf(ni5Var.b))) {
                                                                if (pe4.d(properties2.getProperty("chunk." + ni5Var.a + ".rangeEnd"), String.valueOf(ni5Var.c))) {
                                                                }
                                                            }
                                                            properties = null;
                                                        }
                                                    }
                                                }
                                                properties = properties2;
                                            } else {
                                                properties = null;
                                            }
                                        } catch (Throwable th) {
                                            try {
                                                throw th;
                                            } catch (Throwable th2) {
                                                rs9.c(inputStreamW, th);
                                                throw th2;
                                            }
                                        }
                                    } catch (Exception e) {
                                        Log.w(oi5Var.k, "Unable to read download manifest. Restarting download.", e);
                                    }
                                } else {
                                    properties = null;
                                }
                            }
                        } else {
                            properties = null;
                        }
                        if (properties == null) {
                            try {
                                oi5Var.x.h();
                                break;
                            } catch (Exception unused) {
                            }
                            try {
                                oi5Var.y.h();
                                break;
                            } catch (Exception unused2) {
                            }
                            oi5Var.h(arrayList4);
                        } else {
                            for (ni5 ni5Var2 : arrayList4) {
                                String property = properties.getProperty("chunk." + ni5Var2.a + ".completed");
                                long jLongValue = (property == null || (lY = uq7.Y(property)) == null) ? 0L : lY.longValue();
                                if (0 <= jLongValue && jLongValue <= ni5Var2.e) {
                                    ni5Var2.d.set(jLongValue);
                                }
                            }
                            oi5Var.h(arrayList4);
                        }
                        return arrayList4;
                    }
                    l0.e("Check failed.");
                }
                return null;
        }
    }
}
