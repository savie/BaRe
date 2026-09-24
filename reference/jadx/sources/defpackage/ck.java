package defpackage;

import android.content.SharedPreferences;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.a;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ck implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ck(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r3v13 */
    @Override // defpackage.bt3
    public final Object invoke() {
        String string;
        int i = this.a;
        boolean z = true;
        Long l = 0;
        int i2 = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                Parcelable.Creator<hk> creator = hk.CREATOR;
                return fk.a(((hk) obj).a);
            case 1:
                yl ylVar = (yl) obj;
                qx sizeInfo = ylVar.b.getSizeInfo();
                return Long.valueOf(io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getDataSize(ylVar.c)) : 0));
            case 2:
                return AppCloudBackup.backupTag_delegate$lambda$0((AppCloudBackup) obj);
            case 3:
                dt dtVar = (dt) obj;
                w45 w45Var = new w45(dtVar);
                w45Var.setTitle(dtVar.getString(R.string.calculating_app_sizes));
                w45Var.setCancelable(false);
                w45Var.r = 1;
                w45Var.n(null);
                return w45Var;
            case 4:
                return (g55) ((tv) obj).d.getValue();
            case 5:
                Preference preferenceJ = ((a) obj).j("app_backup_limits");
                preferenceJ.getClass();
                return preferenceJ;
            case 6:
                return Long.valueOf(qx.deDataSizeNoCache_delegate$lambda$0((qx) obj));
            case 7:
                g00 g00Var = g00.a;
                return Integer.valueOf(g00.r().getApplicationInfo(((ji) obj).getPackageName(), 0).uid);
            case 8:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj;
                int i3 = AppsBatchActivity.s0;
                if (appsBatchActivity.j0().k) {
                    appsBatchActivity.j0().a(false);
                } else {
                    appsBatchActivity.A(false);
                    appsBatchActivity.z();
                }
                return be8.a;
            case XmlPullParser.COMMENT /* 9 */:
                qk0 qk0Var = (qk0) obj;
                iu iuVar = iu.EXPANSION;
                qx sizeInfo2 = qk0Var.h.getSizeInfo();
                return Boolean.valueOf(qk0Var.n(iuVar, io4.h(sizeInfo2 != null ? Long.valueOf(sizeInfo2.getExternalObbSize()) : null)));
            case 10:
                int i4 = CallsBackupsActivity.T;
                return ni7.a(((CallsBackupsActivity) obj).getLayoutInflater());
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i5 = CallsDashActivity.T;
                s11 s11VarZ = ((CallsDashActivity) obj).V();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new z2(s11VarZ, l, 2));
                return be8.a;
            case 12:
                int i6 = CloudConnectActivity.Q;
                return ((CloudConnectActivity) obj).getIntent().getStringExtra("cloud_constant");
            case 13:
                return CloudCredentials.cloudType_delegate$lambda$0((CloudCredentials) obj);
            case 14:
                org.swiftapps.swiftbackup.cloud.orphans.a aVar = (org.swiftapps.swiftbackup.cloud.orphans.a) obj;
                synchronized (aVar) {
                    b bVar = aVar.g;
                    if (bVar == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    org.swiftapps.swiftbackup.cloud.orphans.a.EnumC0013a enumC0013a = org.swiftapps.swiftbackup.cloud.orphans.a.EnumC0013a.RESULTS;
                    SwiftApp.Companion companion = SwiftApp.d;
                    aVar.t(b.a(bVar, enumC0013a, null, null, SwiftApp.Companion.c().getString(R.string.cloud_orphan_tasks_running), 0, 0, 7039));
                }
                aVar.f.k(new vh1(R.string.cloud_orphan_tasks_running));
                return be8.a;
            case 15:
                return CreateDigitalCredentialController.handleResponse$lambda$2((CreateDigitalCredentialController) obj);
            case Argon2.V10 /* 16 */:
                sc3 sc3Var = (sc3) obj;
                ud3 ud3Var = ud3.a;
                tc3 tc3Var = (tc3) sc3Var.K;
                QuickRecyclerView[] quickRecyclerViewArr = {tc3Var.L, tc3Var.O, tc3Var.I, tc3Var.y, tc3Var.G, tc3Var.H, tc3Var.K, tc3Var.M, tc3Var.J};
                ArrayList arrayList = new ArrayList();
                while (i2 < 9) {
                    xc3 xc3Var = (xc3) quickRecyclerViewArr[i2].getAdapter();
                    if (xc3Var != null) {
                        arrayList.add(xc3Var);
                    }
                    i2++;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    List list = ((xc3) it.next()).d;
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj2 : list) {
                        if (((uc3) obj2).c) {
                            arrayList3.add(obj2);
                        }
                    }
                    el1.K0(arrayList3, arrayList2);
                }
                for (uc3 uc3Var : new ArrayList(arrayList2)) {
                    uc3Var.a.b(uc3Var.b);
                }
                xd3 xd3Var = xd3.a;
                if (xd3Var.a() == wd3.Selected) {
                    Set<String> set = sv2.a;
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    Set<String> stringSet = sharedPreferences.getStringSet("selected_labels_filter_temp", set);
                    if (stringSet != null) {
                        set = stringSet;
                    }
                    ud3Var.h(set);
                } else {
                    ud3Var.b(xd3Var.a());
                }
                sx sxVar = sc3Var.j().a;
                boolean z2 = sc3Var.j().e;
                iy iyVar = iy.a;
                iy.d(sxVar);
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("app_sort_ascending", z2).apply();
                sc3Var.Q.c0();
                return be8.a;
            case 17:
                return new q63((String) obj, 1);
            case 18:
                return new ao3(((sj3) ((rj3) obj).K).f);
            case Argon2.V13 /* 19 */:
                return Boolean.valueOf(((wj3) obj).a.l);
            case 20:
                yl3 yl3Var = (yl3) obj;
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences2.getString("app_locale", null);
                    u33 u33Var = (u33) u33.c.a(0, (string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a(), null);
                    long j = yl3Var.c;
                    g53 g53Var = u33Var.a;
                    Calendar calendar = Calendar.getInstance(g53Var.b, g53Var.c);
                    calendar.setTimeInMillis(j);
                    StringBuilder sb = new StringBuilder(g53Var.e);
                    s43[] s43VarArr = g53Var.d;
                    int length = s43VarArr.length;
                    while (i2 < length) {
                        s43VarArr[i2].a(sb, calendar);
                        i2++;
                    }
                    return sb.toString();
                } catch (ClassCastException unused) {
                    string = null;
                }
                break;
            case 21:
                int i7 = FolderEditActivity.h0;
                return ((FolderEditActivity) obj).Z().p;
            case 22:
                int i8 = FolderPickerActivity.Q;
                in3 in3VarO = ((FolderPickerActivity) obj).O();
                zn4 zn4Var2 = zn4.a;
                zn4.c(new ek(in3VarO, 29));
                return be8.a;
            case 23:
                int i9 = FoldersBatchActivity.Y;
                return ((FoldersBatchActivity) obj).X().b;
            case 24:
                FoldersDashActivity foldersDashActivity = (FoldersDashActivity) obj;
                int i10 = FoldersDashActivity.U;
                ur3 supportFragmentManager = foldersDashActivity.getSupportFragmentManager();
                supportFragmentManager.getClass();
                return new uo3(foldersDashActivity, supportFragmentManager);
            case 25:
                boolean z3 = q63.d;
                return ((q63) obj).w(true);
            case 26:
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                View viewInflate = ((HomeSearchActivity) obj).getLayoutInflater().inflate(R.layout.home_search_activity, (ViewGroup) null, false);
                int i11 = R.id.apps_card;
                MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate, R.id.apps_card);
                if (materialCardView != null) {
                    i11 = R.id.btn_clear;
                    ImageButton imageButton = (ImageButton) ms8.u(viewInflate, R.id.btn_clear);
                    if (imageButton != null) {
                        i11 = R.id.btn_home_search_apps_system_toggle;
                        TextView textView = (TextView) ms8.u(viewInflate, R.id.btn_home_search_apps_system_toggle);
                        if (textView != null) {
                            i11 = R.id.btn_home_search_quick_actions_toggle;
                            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_home_search_quick_actions_toggle);
                            if (materialButton != null) {
                                i11 = R.id.et_search;
                                EditText editText = (EditText) ms8.u(viewInflate, R.id.et_search);
                                if (editText != null) {
                                    i11 = R.id.folders_card;
                                    MaterialCardView materialCardView2 = (MaterialCardView) ms8.u(viewInflate, R.id.folders_card);
                                    if (materialCardView2 != null) {
                                        i11 = R.id.home_search_apps_header;
                                        if (((ConstraintLayout) ms8.u(viewInflate, R.id.home_search_apps_header)) != null) {
                                            i11 = R.id.home_search_empty;
                                            View viewU = ms8.u(viewInflate, R.id.home_search_empty);
                                            if (viewU != null) {
                                                zx2 zx2VarA = zx2.a(viewU);
                                                i11 = R.id.home_search_shortcuts_segment;
                                                if (((LinearLayout) ms8.u(viewInflate, R.id.home_search_shortcuts_segment)) != null) {
                                                    i11 = R.id.quick_actions_card;
                                                    MaterialCardView materialCardView3 = (MaterialCardView) ms8.u(viewInflate, R.id.quick_actions_card);
                                                    if (materialCardView3 != null) {
                                                        i11 = R.id.rv_home_search_apps;
                                                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_home_search_apps);
                                                        if (quickRecyclerView != null) {
                                                            i11 = R.id.rv_home_search_folders;
                                                            QuickRecyclerView quickRecyclerView2 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_home_search_folders);
                                                            if (quickRecyclerView2 != null) {
                                                                i11 = R.id.rv_home_search_quick_actions;
                                                                QuickRecyclerView quickRecyclerView3 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_home_search_quick_actions);
                                                                if (quickRecyclerView3 != null) {
                                                                    i11 = R.id.rv_home_search_shortcuts_compact;
                                                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_home_search_shortcuts_compact);
                                                                    if (recyclerView != null) {
                                                                        i11 = R.id.rv_home_search_shortcuts_default;
                                                                        QuickRecyclerView quickRecyclerView4 = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_home_search_shortcuts_default);
                                                                        if (quickRecyclerView4 != null) {
                                                                            i11 = R.id.search_content;
                                                                            FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate, R.id.search_content);
                                                                            if (frameLayout != null) {
                                                                                i11 = R.id.search_content_container;
                                                                                if (((FrameLayout) ms8.u(viewInflate, R.id.search_content_container)) != null) {
                                                                                    i11 = R.id.search_results_container;
                                                                                    LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.search_results_container);
                                                                                    if (linearLayout != null) {
                                                                                        i11 = R.id.search_scroll;
                                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate, R.id.search_scroll);
                                                                                        if (nestedScrollView != null) {
                                                                                            i11 = R.id.search_toolbar;
                                                                                            MaterialToolbar materialToolbar = (MaterialToolbar) ms8.u(viewInflate, R.id.search_toolbar);
                                                                                            if (materialToolbar != null) {
                                                                                                i11 = R.id.shortcuts_card;
                                                                                                MaterialCardView materialCardView4 = (MaterialCardView) ms8.u(viewInflate, R.id.shortcuts_card);
                                                                                                if (materialCardView4 != null) {
                                                                                                    i11 = R.id.tv_home_search_apps;
                                                                                                    TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_home_search_apps);
                                                                                                    if (textView2 != null) {
                                                                                                        i11 = R.id.tv_home_search_folders;
                                                                                                        TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_home_search_folders);
                                                                                                        if (textView3 != null) {
                                                                                                            i11 = R.id.tv_home_search_quick_actions;
                                                                                                            TextView textView4 = (TextView) ms8.u(viewInflate, R.id.tv_home_search_quick_actions);
                                                                                                            if (textView4 != null) {
                                                                                                                i11 = R.id.tv_home_search_shortcuts;
                                                                                                                TextView textView5 = (TextView) ms8.u(viewInflate, R.id.tv_home_search_shortcuts);
                                                                                                                if (textView5 != null) {
                                                                                                                    return new z44((ConstraintLayout) viewInflate, materialCardView, imageButton, textView, materialButton, editText, materialCardView2, zx2VarA, materialCardView3, quickRecyclerView, quickRecyclerView2, quickRecyclerView3, recyclerView, quickRecyclerView4, frameLayout, linearLayout, nestedScrollView, materialToolbar, materialCardView4, textView2, textView3, textView4, textView5);
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
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
                return null;
            case 27:
                MDatabase_Impl mDatabase_Impl = ((kg4) obj).a;
                if (mDatabase_Impl.h() && !mDatabase_Impl.j()) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 28:
                LabelEditActivity labelEditActivity = (LabelEditActivity) obj;
                int i12 = LabelEditActivity.U;
                lr4 lr4Var = lr4.a;
                LabelParams labelParams = labelEditActivity.V().h;
                String id = labelParams != null ? labelParams.getId() : null;
                zn4 zn4Var3 = zn4.a;
                zn4.c(new jr4(id, i2));
                labelEditActivity.finish();
                return be8.a;
            default:
                int i13 = LabelsActivity.Z;
                return Integer.valueOf(((LabelsActivity) obj).getIntent().getIntExtra("labels_activity_mode", 0));
        }
    }
}
