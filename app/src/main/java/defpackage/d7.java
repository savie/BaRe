package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.jcraft.jsch.Argon2;
import com.l4digital.fastscroll.FastScroller;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.cloud.connect.BoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.OneDriveSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.cloud.CloudBackupTag;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d7 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ d7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        CharSequence string;
        int i = this.a;
        int i2 = 3;
        boolean z = true;
        z = true;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                o7 o7Var = (o7) obj2;
                MFirebaseUser mFirebaseUser = (MFirebaseUser) obj;
                if (mFirebaseUser != null) {
                    jk8 jk8Var = o7Var.b;
                    jk8Var.getClass();
                    p15.a((ImageView) ((p7) jk8Var).b.d);
                    jk8 jk8Var2 = o7Var.b;
                    jk8Var2.getClass();
                    TextView textView = (TextView) ((p7) jk8Var2).b.k;
                    String displayName = mFirebaseUser.getDisplayName();
                    if (mFirebaseUser.isAnonymous()) {
                        displayName = null;
                    }
                    if (displayName == null) {
                        displayName = MFirebaseUser.ANONYMOUS_USER_DISPLAY_NAME;
                    }
                    textView.setText(displayName);
                    jk8 jk8Var3 = o7Var.b;
                    jk8Var3.getClass();
                    TextView textView2 = (TextView) ((p7) jk8Var3).b.f;
                    String email = !mFirebaseUser.isAnonymous() ? mFirebaseUser.getEmail() : null;
                    sz8.d0(textView2, !(email == null || email.length() == 0));
                    if (sz8.I(textView2)) {
                        textView2.setText(email);
                    }
                    jk8 jk8Var4 = o7Var.b;
                    jk8Var4.getClass();
                    ((TextView) ((p7) jk8Var4).b.e).setText(Build.MODEL);
                }
                return be8Var;
            case 1:
                zf zfVar = (zf) obj;
                int i3 = ApkImportActivity.Q;
                zfVar.getClass();
                ((ApkImportActivity) obj2).R(zfVar);
                return be8Var;
            case 2:
                String str = (String) obj;
                str.getClass();
                return Boolean.valueOf(nq7.Z(str, ((String) obj2) + "/code_cache", false));
            case 3:
                AppListActivity appListActivity = (AppListActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i4 = AppListActivity.q0;
                fm7Var.getClass();
                gv7 gv7Var = appListActivity.m0;
                FastScroller fastScroller = (FastScroller) gv7Var.getValue();
                List list = fm7Var.a;
                fastScroller.setEnabled(!list.isEmpty());
                FastScroller fastScroller2 = (FastScroller) gv7Var.getValue();
                iy iyVar = iy.a;
                fastScroller2.setBubbleTextSize(iy.b() == sx.Name ? 48 : 32);
                appListActivity.l0().w(fm7Var, false);
                j94.e(list, 0, 48);
                appListActivity.l0().z();
                if (fm7Var.d) {
                    appListActivity.m0().f0(0);
                }
                return be8Var;
            case 4:
                InputStream inputStream = (InputStream) obj;
                inputStream.getClass();
                ((sj0) obj2).k = inputStream;
                return be8Var;
            case 5:
                BoxSignInActivity boxSignInActivity = (BoxSignInActivity) obj2;
                int i5 = BoxSignInActivity.L;
                s35 s35Var = new s35(boxSignInActivity, R.style.M3AlertDialogTheme, new hv1(boxSignInActivity, R.style.M3AlertDialogTheme), null);
                ra raVar = (ra) s35Var.b;
                raVar.d = boxSignInActivity.getString(R.string.auth_failed);
                raVar.f = (String) obj;
                s35Var.r(R.string.ok, null);
                raVar.n = new nv0(boxSignInActivity, 0);
                s35Var.m();
                return be8Var;
            case 6:
                CloudConnectActivity cloudConnectActivity = (CloudConnectActivity) obj2;
                List list2 = (List) obj;
                int i6 = CloudConnectActivity.Q;
                list2.getClass();
                ob1 ob1Var = CloudBackupTag.Companion;
                ox oxVar = new ox(cloudConnectActivity, 6);
                ob1Var.getClass();
                ob1.b(cloudConnectActivity, list2, oxVar, null);
                return be8Var;
            case 7:
                gg1 gg1Var = (gg1) obj2;
                fo7 fo7Var = (fo7) obj;
                if (fo7Var != null) {
                    wf1 wf1Var = gg1Var.d;
                    if (wf1Var == null) {
                        pe4.F("cloudStorageCard");
                        throw null;
                    }
                    tb1 tb1Var = tb1.a;
                    dd1 dd1VarF = qb1.f();
                    String displayName2 = dd1VarF.getDisplayName();
                    CloudCredentials.Companion.getClass();
                    ki1 ki1VarI = vm4.i(dd1VarF, displayName2, a.b(dd1VarF));
                    y54 y54Var = wf1Var.b;
                    String str2 = ki1VarI.a;
                    HomeActivity homeActivity = y54Var.a;
                    HomeActivity homeActivity2 = y54Var.a;
                    ca2 ca2Var = y54Var.b;
                    str2.getClass();
                    TextView textView3 = (TextView) ca2Var.d;
                    TextView textView4 = (TextView) ca2Var.f;
                    textView3.setText(str2);
                    boolean z2 = fo7Var instanceof fo7.b;
                    fo7.b bVar = z2 ? (fo7.b) fo7Var : null;
                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ca2Var.c;
                    sz8.d0(linearProgressIndicator, bVar != null);
                    if (bVar != null && linearProgressIndicator.getVisibility() != 8) {
                        int usedPercent = bVar.getUsedPercent();
                        linearProgressIndicator.setIndeterminate(false);
                        LinearProgressIndicator linearProgressIndicator2 = (LinearProgressIndicator) y54Var.b.c;
                        int[] iArr = y54Var.c;
                        linearProgressIndicator2.setIndicatorColor(Arrays.copyOf(iArr, iArr.length));
                        linearProgressIndicator2.setTrackColor(y54Var.d);
                        if (usedPercent > 90) {
                            Context context = linearProgressIndicator.getContext();
                            context.getClass();
                            int iR = sz8.r(context);
                            linearProgressIndicator.setIndicatorColor(iR);
                            linearProgressIndicator.setTrackColor(sz8.U(iR, 30));
                        }
                        sz8.Z(linearProgressIndicator, Math.min(usedPercent, 100), true, true, true);
                    }
                    TextView textView5 = (TextView) ca2Var.e;
                    if (z2) {
                        textView4.setVisibility(0);
                        fo7.b bVar2 = (fo7.b) fo7Var;
                        textView4.setText(iz1.j(homeActivity, bVar2.getUsedPercentExact()));
                        String freeMemoryString = bVar2.getFreeMemoryString();
                        String totalMemoryString = bVar2.getTotalMemoryString();
                        int iX = sz8.x(homeActivity);
                        int iA = sz8.A(homeActivity);
                        freeMemoryString.getClass();
                        totalMemoryString.getClass();
                        String string2 = homeActivity2.getString(R.string.free_storage_of_total_text, freeMemoryString, totalMemoryString);
                        string2.getClass();
                        string = nc8.A(string2, iX, iA, freeMemoryString);
                    } else if (fo7Var instanceof fo7.d) {
                        textView4.setVisibility(8);
                        fo7.d dVar = (fo7.d) fo7Var;
                        string = nc8.A(dVar.getUsageString(), sz8.x(homeActivity), sz8.A(homeActivity), dVar.getUsedMemoryString());
                    } else {
                        if (!fo7Var.equals(fo7.c.INSTANCE)) {
                            q.j();
                            return null;
                        }
                        textView4.setVisibility(8);
                        string = homeActivity.getString(R.string.storage_info_not_provided);
                    }
                    textView5.setText(string);
                    int i7 = ki1VarI.b;
                    String str3 = ki1VarI.d;
                    boolean z3 = ki1VarI.c;
                    ImageView imageView = (ImageView) ca2Var.b;
                    int iV = tu0.v(40.0f * homeActivity2.getResources().getDisplayMetrics().density);
                    ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                    layoutParams.width = iV;
                    layoutParams.height = iV;
                    imageView.setLayoutParams(layoutParams);
                    imageView.setImageTintList(null);
                    if (z3) {
                        y13.D(imageView, i7, str3, 3.0f);
                    } else {
                        imageView.setImageResource(i7);
                        imageView.setContentDescription(str3);
                        imageView.setBackground(null);
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        imageView.setAdjustViewBounds(true);
                        imageView.setPadding(0, 0, 0, 0);
                    }
                    wf1Var.c.setText(qb1.g());
                    wf1Var.d.setText(qb1.f().getCloudFolderAddress());
                    ImageView imageView2 = wf1Var.e;
                    if (dd1VarF.getAllowSavingSetupDetails()) {
                        sz8.c0(imageView2);
                        imageView2.setOnClickListener(new uf1(0, wf1Var, dd1VarF));
                    } else {
                        sz8.W(imageView2);
                        imageView2.setOnClickListener(null);
                    }
                }
                return be8Var;
            case 8:
                int i8 = CloudOrphanCleanerActivity.S;
                ((CloudOrphanCleanerActivity) obj2).V().q();
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                lr1 lr1Var = (lr1) obj2;
                xp1 xp1Var = (xp1) obj;
                xp1Var.getClass();
                lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, null, null, null, null, null, null, null, null, null, Integer.valueOf(xp1Var.getLevel()), null, null, null, 61439, null));
                return be8Var;
            case 10:
                int i9 = FilenSignInActivity.N;
                ((FilenSignInActivity) obj2).P();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Boolean bool = (Boolean) obj;
                int i10 = FolderEditActivity.h0;
                MaterialButton materialButton = (MaterialButton) ((FolderEditActivity) obj2).e0.getValue();
                bool.getClass();
                materialButton.setEnabled(bool.booleanValue());
                return be8Var;
            case 12:
                ((go3) obj2).invoke(Long.valueOf(io4.h((Long) obj)));
                return be8Var;
            case 13:
                GmsSignInActivity gmsSignInActivity = (GmsSignInActivity) obj2;
                int i11 = GmsSignInActivity.N;
                s35 s35Var2 = new s35(gmsSignInActivity, R.style.M3AlertDialogTheme, new hv1(gmsSignInActivity, R.style.M3AlertDialogTheme), null);
                ra raVar2 = (ra) s35Var2.b;
                raVar2.d = gmsSignInActivity.getString(R.string.auth_failed);
                raVar2.f = (String) obj;
                s35Var2.r(R.string.ok, null);
                raVar2.n = new nv0(gmsSignInActivity, z ? 1 : 0);
                s35Var2.m();
                return be8Var;
            case 14:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj2;
                v54 v54Var = (v54) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (!pe4.d(v54Var.a, homeSearchActivity.V.a)) {
                    homeSearchActivity.W = false;
                }
                homeSearchActivity.V = v54Var;
                homeSearchActivity.b0(v54Var);
                return be8Var;
            case 15:
                d dVar2 = (d) obj2;
                pf4 pf4Var = (pf4) obj;
                pf4Var.getClass();
                int i12 = sf4.a[pf4Var.ordinal()];
                if (i12 == 1) {
                    dVar2.n.k(null);
                } else if (i12 == 2) {
                    dVar2.f();
                } else if (i12 != 3) {
                    q.j();
                    return null;
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                LabelsActivity labelsActivity = (LabelsActivity) obj2;
                Boolean bool2 = (Boolean) obj;
                int i13 = LabelsActivity.Z;
                bool2.getClass();
                boolean zBooleanValue = bool2.booleanValue();
                sz8.d0((CircularProgressIndicator) labelsActivity.P.getValue(), zBooleanValue);
                sz8.d0((ConstraintLayout) labelsActivity.Q.getValue(), !zBooleanValue);
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) labelsActivity.U.getValue();
                if (zBooleanValue || (labelsActivity.O() != 1 && labelsActivity.O() != 2)) {
                    z = false;
                }
                sz8.d0(extendedFloatingActionButton, z);
                return be8Var;
            case 17:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i14 = MegaSignInActivity.S;
                MaterialButton materialButton2 = (MaterialButton) ((MegaSignInActivity) obj2).R.getValue();
                materialButton2.setEnabled(zBooleanValue2);
                materialButton2.setAlpha(materialButton2.isEnabled() ? 1.0f : 0.5f);
                return be8Var;
            case 18:
                MessagesBackupRestoreActivity messagesBackupRestoreActivity = (MessagesBackupRestoreActivity) obj2;
                int i15 = MessagesBackupRestoreActivity.c0;
                if (((Boolean) obj).booleanValue()) {
                    messagesBackupRestoreActivity.f0();
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                MessagesBackupsActivity messagesBackupsActivity = (MessagesBackupsActivity) obj2;
                fe5 fe5Var = (fe5) obj;
                Object value = messagesBackupsActivity.R.getValue();
                value.getClass();
                sz8.d0((ProgressBar) value, fe5Var.a);
                gv7 gv7Var2 = messagesBackupsActivity.S;
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) gv7Var2.getValue();
                boolean z4 = fe5Var.a;
                sz8.d0(quickRecyclerView, !z4);
                if (!z4) {
                    ArrayList arrayList = fe5Var.b;
                    ((QuickRecyclerView) gv7Var2.getValue()).setLinearLayoutManager(1);
                    ee5 ee5Var = new ee5(new h11(2, messagesBackupsActivity, MessagesBackupsActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V", 0, 1));
                    ee5Var.w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), false);
                    ee5Var.j = new h20(messagesBackupsActivity, i2);
                    ((QuickRecyclerView) gv7Var2.getValue()).setAdapter(ee5Var);
                }
                return be8Var;
            case 20:
                OneDriveSignInActivity oneDriveSignInActivity = (OneDriveSignInActivity) obj2;
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                int i16 = OneDriveSignInActivity.L;
                oneDriveSignInActivity.setResult(zBooleanValue3 ? -1 : 0);
                oneDriveSignInActivity.finish();
                return be8Var;
            case 21:
                String str4 = (String) obj;
                int i17 = SLogActivity.R;
                str4.getClass();
                ((SLogActivity) obj2).P(str4);
                return be8Var;
            default:
                ScheduleFabMenuView scheduleFabMenuView = (ScheduleFabMenuView) obj2;
                MenuItem menuItem = (MenuItem) obj;
                Map map = ScheduleFabMenuView.K;
                menuItem.getClass();
                scheduleFabMenuView.k(scheduleFabMenuView.q, menuItem, false, new kg(15, menuItem, scheduleFabMenuView));
                return be8Var;
        }
    }
}
