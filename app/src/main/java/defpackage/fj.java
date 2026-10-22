package defpackage;

import android.transition.ChangeBounds;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.jcraft.jsch.Argon2;
import com.l4digital.fastscroll.FastScroller;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$FolderLocalSnapshot;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.settings.AppSwipeActionsActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.a;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fj implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ fj(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        int iIntValue = 0;
        Integer keyVersion = null;
        be8 be8Var = be8.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                rj rjVar = (rj) obj;
                rjVar.f.refresh();
                zn4 zn4Var = zn4.a;
                zn4.f(200L, new gj(rjVar, iIntValue));
                return be8Var;
            case 1:
                hk hkVar = (hk) obj;
                return hkVar.e().J(hkVar.b + ".xml");
            case 2:
                jl jlVar = (jl) obj;
                return new gl(jlVar.a, jlVar.b);
            case 3:
                return (Set) ((gl) obj).i.getValue();
            case 4:
                return Long.valueOf(((cm) obj).d());
            case 5:
                wv wvVar = (wv) obj;
                return new rv(wvVar.a, wvVar.b, (zn7) wvVar.d.getValue());
            case 6:
                xw xwVar = (xw) obj;
                if (xwVar.i) {
                    CloudMetadata cloudMetadata = xwVar.j;
                    if (cloudMetadata != null) {
                        keyVersion = cloudMetadata.getKeyVersion();
                    }
                } else {
                    LocalMetadata localMetadataF = xwVar.f();
                    if (localMetadataF != null) {
                        keyVersion = localMetadataF.getKeyVersion();
                    }
                }
                String packageName = xwVar.h.getPackageName();
                iIntValue = keyVersion != null ? keyVersion.intValue() : 0;
                packageName.getClass();
                List listA = yx5.a(yx5.j(), yx5.k());
                ArrayList arrayList = new ArrayList(hl1.G0(listA, 10));
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(yx5.f((ux5) it.next(), packageName, iIntValue));
                }
                char[] cArrL = yx5.l(iIntValue, packageName);
                List listI = yx5.i();
                ArrayList arrayList2 = new ArrayList(hl1.G0(listI, 10));
                Iterator it2 = listI.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(yx5.e((String) it2.next(), cArrL));
                }
                d45 d45Var = d45.b;
                ArrayList arrayListG1 = el1.g1(el1.g1(arrayList, arrayList2), nc8.I(od2.i(Integer.valueOf(iIntValue), b45.a().getUid(), packageName)));
                HashSet hashSet = new HashSet();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : arrayListG1) {
                    if (hashSet.add(new String((char[]) obj2))) {
                        arrayList3.add(obj2);
                    }
                }
                return arrayList3;
            case 7:
                mx mxVar = (mx) obj;
                iIntValue = mxVar.b ? 6 : 0;
                if (mxVar.c) {
                    iIntValue += 5;
                }
                if (mxVar.d) {
                    iIntValue += 4;
                }
                if (mxVar.e) {
                    iIntValue += 3;
                }
                if (mxVar.f) {
                    iIntValue += 2;
                }
                if (mxVar.g) {
                    iIntValue++;
                }
                return Integer.valueOf(iIntValue);
            case 8:
                Preference preferenceJ = ((a) obj).j("backup_app_cache");
                preferenceJ.getClass();
                return (MSwitchPreference) preferenceJ;
            case XmlPullParser.COMMENT /* 9 */:
                int i2 = AppSwipeActionsActivity.Q;
                return ga7.a(((AppSwipeActionsActivity) obj).getLayoutInflater());
            case 10:
                int i3 = AppsConfigRunActivity.m0;
                View viewInflate = ((AppsConfigRunActivity) obj).getLayoutInflater().inflate(R.layout.apps_config_run_activity, (ViewGroup) null, false);
                int i4 = R.id.appbar_with_filters;
                View viewU = ms8.u(viewInflate, R.id.appbar_with_filters);
                if (viewU != null) {
                    x00 x00VarA = x00.a(viewU);
                    i4 = R.id.btn_actions;
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate, R.id.btn_actions);
                    if (extendedFloatingActionButton != null) {
                        i4 = R.id.error_layout;
                        View viewU2 = ms8.u(viewInflate, R.id.error_layout);
                        if (viewU2 != null) {
                            ey2 ey2VarA = ey2.a(viewU2);
                            i4 = R.id.fast_scroller;
                            FastScroller fastScroller = (FastScroller) ms8.u(viewInflate, R.id.fast_scroller);
                            if (fastScroller != null) {
                                i4 = R.id.progress_bar;
                                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ms8.u(viewInflate, R.id.progress_bar);
                                if (circularProgressIndicator != null) {
                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                    i4 = R.id.rv_apps_quick_perform;
                                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_apps_quick_perform);
                                    if (recyclerView != null) {
                                        return new a30(coordinatorLayout, x00VarA, extendedFloatingActionButton, ey2VarA, fastScroller, circularProgressIndicator, recyclerView);
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
                return null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return Boolean.valueOf(((qk0) obj).h.hasExpansion());
            case 12:
                il0 il0Var = (il0) obj;
                ChangeBounds changeBounds = new ChangeBounds();
                el0 el0Var = new el0(il0Var);
                changeBounds.addListener(el0Var);
                il0Var.t = el0Var;
                return changeBounds;
            case 13:
                int i5 = CallsDashActivity.T;
                return oi7.a(((CallsDashActivity) obj).getLayoutInflater());
            case 14:
                Preference preferenceJ2 = ((v11) obj).j("compression_level_calls");
                preferenceJ2.getClass();
                return preferenceJ2;
            case 15:
                sf1 sf1Var = sf1.g;
                sf1Var.getClass();
                FolderMetadata folderMetadata = (FolderMetadata) ((eb2) obj).c(FolderMetadata.class);
                if (folderMetadata != null) {
                    Log.d(sf1Var.a, "onChildChanged = " + folderMetadata.toDisplayString());
                    sf1Var.l(folderMetadata);
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                int i6 = CloudOrphanCleanerActivity.S;
                ((CloudOrphanCleanerActivity) obj).U().q();
                return be8Var;
            case 17:
                int i7 = ConfigListActivity.R;
                return ((ConfigListActivity) obj).O().c;
            case 18:
                return ConfigSettings.getSyncOption$lambda$0((ConfigSettings) obj);
            case Argon2.V13 /* 19 */:
                int i8 = ContributorRegActivity.S;
                return ((ContributorRegActivity) obj).N().b;
            case 20:
                return CredentialProviderCreatePasswordController.invokePlayServices$lambda$0$0((CredentialProviderCreatePasswordController) obj);
            case 21:
                return ((jh1) obj).g().getMainCloudFolderName();
            case 22:
                ((sc3) obj).Q.f0(q05.CLOUD);
                return be8Var;
            case 23:
                ((ah3) obj).a.await();
                return be8Var;
            case 24:
                return FolderBackup$FolderLocalSnapshot.manifestFile_delegate$lambda$0((FolderBackup$FolderLocalSnapshot) obj);
            case 25:
                dm3 dm3Var = (dm3) obj;
                ex6 ex6Var = dm3Var.i;
                SwiftApp.Companion companion = SwiftApp.d;
                if (ai8.i(SwiftApp.Companion.c())) {
                    tb1 tb1Var = tb1.a;
                    if (qb1.m()) {
                        if (!(ex6Var.d() instanceof ol3)) {
                            ex6Var.k(ql3.a);
                        }
                        zc2 zc2Var = re3.a;
                        re3.n(dm3Var.m, dm3Var.n);
                        String id = dm3Var.k().getId();
                        id.getClass();
                        zc2 zc2VarD = re3.h().d(id);
                        dm3Var.m = zc2VarD;
                        km5 km5Var = new km5(dm3Var, 9);
                        dm3Var.n = km5Var;
                        zc2VarD.c(km5Var);
                    } else {
                        ex6Var.k(pl3.a);
                    }
                } else {
                    ex6Var.k(rl3.a);
                }
                return be8Var;
            case 26:
                qp3 qp3Var = (qp3) obj;
                FolderItem folderItemA = qp3Var.g() ? (FolderItem) qp3Var.o.d() : ((eo3) el1.S0(qp3Var.m)).a();
                String displayName = folderItemA != null ? folderItemA.getDisplayName() : null;
                if (displayName == null) {
                    displayName = "";
                }
                pw6.m(displayName, null);
                return be8Var;
            case 27:
                int i9 = IntroActivity.V;
                return ((IntroActivity) obj).Q().f;
            case 28:
                int i10 = LabelEditActivity.U;
                return ((LabelEditActivity) obj).N().c;
            default:
                Preference preferenceJ3 = ((fs4) obj).j("clear_cached_apps_data");
                preferenceJ3.getClass();
                return preferenceJ3;
        }
    }
}
