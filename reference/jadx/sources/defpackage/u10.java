package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.l4digital.fastscroll.FastScroller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u10 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ u10(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        int i2 = 0;
        int i3 = 1;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i4 = AppsBatchActivity.s0;
                if (fm7Var != null) {
                    Log.d(appsBatchActivity.r(), "onAdapterState: Apps received = " + fm7Var.a.size());
                    FastScroller fastScroller = (FastScroller) appsBatchActivity.i0.getValue();
                    iy iyVar = iy.a;
                    fastScroller.setBubbleTextSize(iy.b() == sx.Name ? 48 : 32);
                    l20 l20Var = appsBatchActivity.m0;
                    if (l20Var == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    l20Var.w(fm7Var, false);
                    if (fm7Var.d) {
                        appsBatchActivity.i0().f0(0);
                    }
                    l20 l20Var2 = appsBatchActivity.m0;
                    if (l20Var2 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    l20Var2.y();
                    l20 l20Var3 = appsBatchActivity.m0;
                    if (l20Var3 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    appsBatchActivity.m0(l20Var3.p());
                }
                return be8Var;
            case 1:
                x01 x01Var = (x01) obj2;
                y01 y01Var = (y01) obj;
                if (y01Var != null) {
                    q63 q63Var = y01Var.a;
                    q63Var.getClass();
                    g00 g00Var = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra = new Intent(x01Var, (Class<?>) CallsBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var.v());
                        intentPutExtra.getClass();
                        x01Var.startActivity(intentPutExtra);
                    } else {
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        zn4 zn4Var = zn4.a;
                        dj7.y(contextC, "Feature not supported on this device");
                    }
                }
                return be8Var;
            case 2:
                sj1 sj1Var = (sj1) obj2;
                int iIntValue = ((Integer) obj).intValue();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("dropbox_chunk_size", iIntValue).apply();
                sj1Var.s();
                return be8Var;
            case 3:
                ((Integer) obj).getClass();
                int i5 = ConfigListActivity.R;
                ((ConfigListActivity) obj2).Q();
                return be8Var;
            case 4:
                return CredentialProviderBeginSignInController.handleResponse$lambda$1((CredentialProviderBeginSignInController) obj2, (wv3) obj);
            case 5:
                tn2 tn2Var = (tn2) obj;
                int i6 = CsActivity.P0;
                tn2Var.getClass();
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new a11((CsActivity) obj2, tn2Var, objArr == true ? 1 : 0, i3));
                return be8Var;
            case 6:
                x92 x92Var = (x92) obj2;
                ea2 ea2Var = (ea2) obj;
                if (ea2Var != null) {
                    ArrayList arrayList = ea2Var.a;
                    jk8 jk8Var = x92Var.b;
                    jk8Var.getClass();
                    nd6.j(x92Var, arrayList, ((y92) jk8Var).b, R.string.quick_actions_apps, R.drawable.ic_app, false, new bh(x92Var, 20), 48);
                }
                return be8Var;
            case 7:
                View view = (View) obj;
                view.getClass();
                ((rj2) obj2).a.d0(view, iu.EXTDATA);
                return be8Var;
            case 8:
                dy1 dy1Var = (dy1) obj;
                dy1Var.getClass();
                Log.w("FirebaseSessions", "CorruptionException in session data DataStore", dy1Var);
                return new q87(((r87) obj2).a.a(null), null, null);
            case XmlPullParser.COMMENT /* 9 */:
                FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj2;
                qp3 qp3Var = (qp3) obj;
                int i7 = FoldersBatchActivity.Y;
                hy7 hy7Var = hy7.a;
                qp3Var.getClass();
                hy7.a(qp3.class, qp3Var);
                hy7.e(foldersBatchActivity, null);
                foldersBatchActivity.finish();
                return be8Var;
            case 10:
                FoldersDashActivity foldersDashActivity = (FoldersDashActivity) obj2;
                to3 to3Var = (to3) obj;
                int i8 = FoldersDashActivity.U;
                if (foldersDashActivity.V().d.getCurrentItem() != to3Var.ordinal()) {
                    foldersDashActivity.V().d.setCurrentItem(to3Var.ordinal());
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                kp3 kp3Var = (kp3) obj2;
                cp3 cp3Var = kp3Var.e;
                fm7 fm7Var2 = (fm7) obj;
                String str = fm7Var2.e;
                if (str == null || str.length() == 0) {
                    cp3Var.w(fm7Var2, false);
                } else {
                    cp3Var.w(fm7Var2, true);
                    List list = fm7Var2.a;
                    String str2 = fm7Var2.e;
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            i2 = -1;
                        } else if (!pe4.d(((zk3) it.next()).a.getId(), str2)) {
                            i2++;
                        }
                    }
                    Integer numValueOf = i2 >= 0 ? Integer.valueOf(i2) : null;
                    if (numValueOf != null) {
                        kp3Var.k().post(new j00(kp3Var, numValueOf.intValue(), i3));
                    }
                }
                return be8Var;
            case 12:
                IntroActivity introActivity = (IntroActivity) obj2;
                int i9 = IntroActivity.V;
                if (((Boolean) obj).booleanValue()) {
                    introActivity.Y(true);
                }
                return be8Var;
            case 13:
                ((zr4) obj2).k((LabelsData) obj);
                return be8Var;
            case 14:
                ((dy7) obj2).a((String) obj);
                return be8Var;
            case 15:
                in5 in5Var = (in5) obj2;
                fn5 fn5Var = (fn5) obj;
                fn5Var.getClass();
                vr6.i$default(vr6.INSTANCE, in5Var.b, "tokenRequestResult=" + fn5Var, null, 4, null);
                if (fn5Var.equals(en5.a)) {
                    in5Var.g.k(Boolean.TRUE);
                } else {
                    if (!(fn5Var instanceof dn5)) {
                        q.j();
                        return null;
                    }
                    ix6 ix6Var = in5Var.h;
                    String str3 = ((dn5) fn5Var).a;
                    ix6Var.k(str3 != null ? str3 : "");
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                q63 q63Var2 = (q63) obj;
                sa1 sa1Var = (sa1) ((nd6) obj2).getActivity();
                if (sa1Var != null) {
                    if (q63Var2 == null || !q63Var2.j()) {
                        String string = sa1Var.getString(R.string.no_backup_on_device);
                        string.getClass();
                        zn4 zn4Var3 = zn4.a;
                        zn4.e(new cv(14, sa1Var, string));
                    } else {
                        int i10 = CallsBackupRestoreActivity.c0;
                        z85.E(sa1Var, q63Var2);
                    }
                }
                return be8Var;
            case 17:
                ly6 ly6Var = (ly6) obj;
                ly6Var.getClass();
                ((mt3) obj2).invoke(new dz6(ly6Var.a, ly6Var.b, ly6Var.c, ly6Var.d));
                return be8Var;
            case 18:
                ScheduleItem scheduleItem = (ScheduleItem) obj;
                scheduleItem.getClass();
                zn4.c(new rm(15, ((m37) obj2).p(), scheduleItem));
                return be8Var;
            case Argon2.V13 /* 19 */:
                oo8 oo8Var = (oo8) obj2;
                ao8 ao8Var = (ao8) obj;
                if (Const.y(oo8Var)) {
                    po8 po8VarV = oo8Var.V();
                    ao8Var.getClass();
                    po8VarV.getClass();
                    zn4 zn4Var4 = zn4.a;
                    zn4.b(null, new sf(po8VarV, ao8Var, objArr2 == true ? 1 : 0, 2));
                }
                return be8Var;
            default:
                jp8 jp8Var = (jp8) obj;
                uo8 uo8Var = (uo8) ((WallsDashActivity) obj2).S.getValue();
                jp8Var.getClass();
                LinearLayout linearLayout = uo8Var.d.a;
                mo8 mo8Var = uo8Var.g;
                QuickRecyclerView quickRecyclerView = uo8Var.c;
                RelativeLayout relativeLayout = uo8Var.f;
                if (jp8Var.equals(hp8.a)) {
                    uo8Var.a();
                    quickRecyclerView.setVisibility(0);
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 0; i11 < 4; i11++) {
                        yn8 yn8Var = new yn8(new q63("", 1), 0L, 0L, null, 120);
                        yn8Var.n = true;
                        arrayList2.add(yn8Var);
                    }
                    mo8Var.w(new fm7((List) arrayList2, (Set) null, false, (String) null, 30), false);
                    linearLayout.setVisibility(8);
                    relativeLayout.setVisibility(8);
                } else if (jp8Var instanceof ip8) {
                    uo8Var.a();
                    quickRecyclerView.setVisibility(0);
                    linearLayout.setVisibility(8);
                    relativeLayout.setVisibility(0);
                    mo8Var.w(new fm7((List) ((ip8) jp8Var).a, (Set) null, false, (String) null, 30), false);
                    mo8Var.i = new lm(uo8Var, 19);
                    relativeLayout.setOnClickListener(new gs(uo8Var, 12));
                } else {
                    if (!jp8Var.equals(gp8.a)) {
                        q.j();
                        return null;
                    }
                    uo8Var.a();
                    quickRecyclerView.setVisibility(8);
                    linearLayout.setVisibility(0);
                    uo8Var.e.setText(R.string.no_local_backups);
                    relativeLayout.setVisibility(8);
                }
                return be8Var;
        }
    }
}
