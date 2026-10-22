package defpackage;

import android.content.Context;
import android.content.Intent;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.notice.NoticeListActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k3 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ k3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0446  */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        boolean z;
        boolean z2;
        TaskActivity taskActivity;
        wp8 wp8Var;
        dy7 dy7Var;
        int i;
        dy7 dy7Var2;
        int i2 = this.a;
        int i3 = 7;
        int i4 = 14;
        int i5 = 8;
        int i6 = 3;
        final int i7 = 1;
        final int i8 = 0;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                return obj == ((l3) obj2) ? "(this Collection)" : String.valueOf(obj);
            case 1:
                ((jq) obj2).invoke(Long.valueOf(io4.h((Long) obj)));
                return be8Var;
            case 2:
                dt dtVar = (dt) obj2;
                vx vxVar = (vx) obj;
                vxVar.getClass();
                if (vxVar instanceof ux) {
                    ux uxVar = (ux) vxVar;
                    dtVar.Z().setTitle(uxVar.c);
                    dtVar.Z().i(uxVar.d);
                    dtVar.Z().l(uxVar.b);
                    dtVar.Z().m(uxVar.a);
                    if (!dtVar.Z().isShowing()) {
                        dtVar.Z().k.c(-1, dtVar.getString(R.string.cancel), new ys(0));
                        dtVar.Z().show();
                        TextView textView = (TextView) dtVar.Z().findViewById(android.R.id.message);
                        if (textView != null) {
                            textView.setTextSize(13.5f);
                        }
                    }
                } else {
                    if (!vxVar.equals(tx.a)) {
                        q.j();
                        return null;
                    }
                    if (dtVar.c0.a()) {
                        dtVar.Z().dismiss();
                    }
                }
                return be8Var;
            case 3:
                ((fz) obj2).l.setText((String) obj);
                return be8Var;
            case 4:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) obj2;
                int iIntValue = ((Integer) obj).intValue();
                f30 f30Var = appsConfigRunActivity.j0;
                if (f30Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                int iB = f30Var.b() - iIntValue;
                f30 f30Var2 = appsConfigRunActivity.j0;
                if (f30Var2 == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                List listQ1 = el1.q1(iB, f30Var2.e.a);
                ArrayList arrayList = new ArrayList(hl1.G0(listQ1, 10));
                Iterator it = listQ1.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ji) it.next()).getItemId());
                }
                f30 f30Var3 = appsConfigRunActivity.j0;
                if (f30Var3 != null) {
                    f30Var3.t(el1.z1(arrayList));
                    return be8Var;
                }
                pe4.F("mAdapter");
                throw null;
            case 5:
                il0 il0Var = (il0) obj2;
                if (((Boolean) obj).booleanValue()) {
                    vr6.e$default(vr6.INSTANCE, il0Var.r(), "onUserSignedOut: User signed out, Un-scheduling background tasks & Restarting app", null, 4, null);
                    Const.E("onUserSignedOut");
                }
                return be8Var;
            case 6:
                md1 md1Var = (md1) obj;
                int i9 = CloudDiagnosticsActivity.Z;
                md1Var.getClass();
                String string = ((CloudDiagnosticsActivity) obj2).getString(md1Var.a.b);
                String str = md1Var.d;
                if (str == null) {
                    str = "";
                }
                return dj7.k(string, ": ", str);
            case 7:
                fm7 fm7Var = (fm7) obj;
                int i10 = ConfigListActivity.R;
                yq1 yq1Var = (yq1) ((ConfigListActivity) obj2).O.getValue();
                fm7Var.getClass();
                yq1Var.w(fm7Var, false);
                return be8Var;
            case 8:
                lr1 lr1Var = (lr1) obj2;
                Set set = (Set) obj;
                set.getClass();
                Set set2 = !set.isEmpty() ? set : null;
                lr1Var.r().k(ConfigSettings.copy$default(lr1Var.r().j(), 0, null, null, set2 != null ? el1.Y0(set2, null, null, null, null, 63) : null, null, null, null, null, null, null, null, null, null, null, null, null, 65527, null));
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                ConversationsActivity conversationsActivity = (ConversationsActivity) obj2;
                fm7 fm7Var2 = (fm7) obj;
                int i11 = ConversationsActivity.O;
                uv1 uv1Var = (uv1) conversationsActivity.N.getValue();
                fm7Var2.getClass();
                uv1Var.w(fm7Var2, true);
                sz8.d0((RecyclerView) conversationsActivity.M.getValue(), !fm7Var2.a.isEmpty());
                return be8Var;
            case 10:
                CsActivity csActivity = (CsActivity) obj2;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i12 = CsActivity.P0;
                MaterialButton materialButton = (MaterialButton) csActivity.G0.getValue();
                materialButton.setEnabled(zBooleanValue);
                materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.5f);
                MaterialButton materialButton2 = (MaterialButton) csActivity.F0.getValue();
                materialButton2.setEnabled(zBooleanValue);
                materialButton2.setAlpha(materialButton2.isEnabled() ? 1.0f : 0.5f);
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                DetailActivity detailActivity = (DetailActivity) obj2;
                vj2 vj2Var = (vj2) obj;
                int i13 = DetailActivity.b0;
                nc8 supportActionBar = detailActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.f0(vj2Var.d);
                }
                nc8 supportActionBar2 = detailActivity.getSupportActionBar();
                if (supportActionBar2 != null) {
                    supportActionBar2.d0(detailActivity.getString(R.string.backup_and_restore));
                }
                gj2 gj2Var = (gj2) detailActivity.T.getValue();
                vj2Var.getClass();
                MaterialButton materialButton3 = gj2Var.m;
                TextView textView2 = gj2Var.f;
                DetailActivity detailActivity2 = gj2Var.a;
                MaterialButton materialButton4 = gj2Var.l;
                MaterialButton materialButton5 = gj2Var.k;
                MaterialButton materialButton6 = gj2Var.j;
                mk2 mk2Var = gj2Var.b;
                ji jiVarK = mk2Var.k();
                gj2Var.c.setOnClickListener(new uf1(3, gj2Var, jiVarK));
                Set set3 = j94.a;
                sx3 sx3Var = new sx3(jiVarK.getPackageName(), jiVarK.isInstalled());
                ImageView imageView = gj2Var.d;
                boolean z3 = vj2Var.a;
                boolean z4 = !z3;
                j94.g(sx3Var, imageView, z4, true);
                imageView.setOnClickListener(new m51(2, jiVarK, gj2Var));
                ImageView imageView2 = gj2Var.e;
                imageView2.clearAnimation();
                sz8.d0(imageView2, jiVarK.isFavorite());
                if (sz8.I(imageView2) && gj2Var.o) {
                    v53 v53Var = v53.a;
                    v53.a(imageView2);
                    gj2Var.o = false;
                }
                qr qrVar = tr.n0;
                qr.h(textView2, jiVarK, qr.c(detailActivity2));
                textView2.setOnClickListener(new h10(3, jiVarK, gj2Var));
                qr.e(gj2Var.g, jiVarK);
                gj2Var.h.setText(vj2Var.e);
                qr.f(gj2Var.i, null, detailActivity2.v(), qr.a(jiVarK), jiVarK.getLabels(), false, null, 4066);
                sz8.d0(materialButton6, vj2Var.f);
                if (vj2Var.b) {
                    mp6 mp6Var = mp6.a;
                    if (mp6.f()) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                sz8.d0(materialButton5, z);
                sz8.d0(materialButton4, z3 && !mk2Var.f);
                sz8.d0(materialButton3, z4);
                materialButton6.setOnClickListener(new i10(2, gj2Var, jiVarK));
                materialButton5.setOnClickListener(new es(gj2Var, 7));
                materialButton4.setOnClickListener(new fj2(0, gj2Var, jiVarK));
                List listA0 = fl1.A0(materialButton6, materialButton5, materialButton4, materialButton3);
                if (listA0.isEmpty()) {
                    z2 = false;
                } else {
                    Iterator it2 = listA0.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z2 = false;
                        } else if (sz8.I((MaterialButton) it2.next())) {
                            z2 = true;
                        }
                    }
                }
                sz8.d0(gj2Var.n, z2 && z3);
                return be8Var;
            case 12:
                wf3 wf3Var = (wf3) obj;
                wf3Var.getClass();
                ((g70) obj2).invoke(wf3Var);
                return be8Var;
            case 13:
                FolderPickerActivity folderPickerActivity = (FolderPickerActivity) obj2;
                Integer num = (Integer) obj;
                int i14 = FolderPickerActivity.Q;
                if (num != null) {
                    String string2 = folderPickerActivity.getString(num.intValue());
                    string2.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(i4, folderPickerActivity, string2));
                }
                return be8Var;
            case 14:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj2;
                q63 q63Var = (q63) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (q63Var == null || !q63Var.j()) {
                    String string3 = homeSearchActivity.getString(R.string.no_backup_in_cloud);
                    string3.getClass();
                    zn4 zn4Var2 = zn4.a;
                    zn4.e(new cv(i4, homeSearchActivity, string3));
                } else {
                    g00 g00Var = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra = new Intent(homeSearchActivity, (Class<?>) MessagesBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var.v());
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
            case 15:
                MegaSignInActivity megaSignInActivity = (MegaSignInActivity) obj2;
                String str2 = (String) obj;
                int i15 = MegaSignInActivity.S;
                str2.getClass();
                megaSignInActivity.a0().k(megaSignInActivity.P());
                megaSignInActivity.a0().j(str2);
                return be8Var;
            case Argon2.V10 /* 16 */:
                NoticeListActivity noticeListActivity = (NoticeListActivity) obj2;
                List list = (List) obj;
                int i16 = NoticeListActivity.N;
                list.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (((NoticeItem) obj3).shouldShowToUser(true)) {
                        arrayList2.add(obj3);
                    }
                }
                sz8.d0((QuickRecyclerView) noticeListActivity.L.getValue(), !arrayList2.isEmpty());
                ((qo5) noticeListActivity.M.getValue()).w(new fm7((List) arrayList2, (Set) null, false, (String) null, 30), true);
                return be8Var;
            case 17:
                fq5 fq5Var = (fq5) obj2;
                if (((Boolean) obj).booleanValue()) {
                    fq5Var.setResult(-1);
                    fq5Var.finish();
                } else {
                    fq5Var.setResult(0);
                    fq5Var.finish();
                }
                return be8Var;
            case 18:
                PCloudSignInActivity pCloudSignInActivity = (PCloudSignInActivity) obj2;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i17 = PCloudSignInActivity.M;
                if (zBooleanValue2) {
                    pCloudSignInActivity.setResult(-1);
                    pCloudSignInActivity.finish();
                } else {
                    pCloudSignInActivity.setResult(0);
                    pCloudSignInActivity.finish();
                }
                return be8Var;
            case Argon2.V13 /* 19 */:
                q63 q63Var2 = (q63) obj;
                sa1 sa1Var = (sa1) ((nd6) obj2).getActivity();
                if (sa1Var != null) {
                    if (q63Var2 == null || !q63Var2.j()) {
                        String string4 = sa1Var.getString(R.string.no_backup_on_device);
                        string4.getClass();
                        zn4 zn4Var4 = zn4.a;
                        zn4.e(new cv(i4, sa1Var, string4));
                    } else {
                        int i18 = MessagesBackupRestoreActivity.c0;
                        jd4.G(sa1Var, q63Var2);
                    }
                }
                return be8Var;
            case 20:
                m37 m37Var = (m37) obj2;
                if (!((Boolean) obj).booleanValue() && o37.b()) {
                    m37Var.q();
                }
                return be8Var;
            case 21:
                TeraBoxSignInActivity teraBoxSignInActivity = (TeraBoxSignInActivity) obj2;
                int i19 = TeraBoxSignInActivity.N;
                if (((Boolean) obj).booleanValue()) {
                    teraBoxSignInActivity.setResult(-1);
                    teraBoxSignInActivity.finish();
                } else {
                    teraBoxSignInActivity.setResult(0);
                    teraBoxSignInActivity.finish();
                }
                return be8Var;
            case 22:
                yp8 yp8Var = (yp8) obj2;
                qw6 qw6Var = (qw6) obj;
                TextView textView3 = yp8Var.h;
                TextView textView4 = yp8Var.d;
                ShapeableImageView shapeableImageView = yp8Var.e;
                yp8Var.b.a.setVisibility(0);
                TaskActivity taskActivity2 = yp8Var.a;
                final dy7 dy7Var3 = new dy7(taskActivity2, yp8Var.g);
                yp8Var.c.setText(R.string.wallpapers);
                wp8 wp8Var2 = (wp8) (qw6Var != null ? qw6Var.a : null);
                if (wp8Var2 == null) {
                    String string5 = (qw6Var == null || !qw6Var.a()) ? taskActivity2.getString(R.string.waiting) : taskActivity2.getString(R.string.x_walls, "0");
                    string5.getClass();
                    textView4.setText(string5);
                    sz8.W(textView3);
                    shapeableImageView.setVisibility(8);
                } else {
                    sz8.c0(textView3);
                    shapeableImageView.setVisibility(0);
                    shapeableImageView.setImageResource(R.drawable.ic_photo_raster);
                    textView4.setText(taskActivity2.getString(R.string.x_walls, String.valueOf(wp8Var2.n.size())));
                    int i20 = 3;
                    wp8Var2.g.e(taskActivity2, new ur0(i20, new hq0(i3, wp8Var2, yp8Var)));
                    wp8Var2.d.e(taskActivity2, new ur0(i20, new mt3() { // from class: xp8
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj4) {
                            int i21 = i8;
                            be8 be8Var2 = be8.a;
                            dy7 dy7Var4 = dy7Var3;
                            String str3 = (String) obj4;
                            switch (i21) {
                                case 0:
                                    dy7Var4.a(str3);
                                    break;
                                default:
                                    dy7Var4.a(str3);
                                    break;
                            }
                            return be8Var2;
                        }
                    }));
                    wp8Var2.i.e(taskActivity2, new ur0(i20, new cz(yp8Var, 22)));
                    if (((az7) wp8Var2.a).a) {
                        yp8Var.f.t(true);
                        dy7Var3.e = false;
                        dy7Var3.d();
                        wp8Var = wp8Var2;
                        dy7Var = dy7Var3;
                        taskActivity = taskActivity2;
                        i = 3;
                    } else {
                        taskActivity = taskActivity2;
                        wp8Var = wp8Var2;
                        dy7Var = dy7Var3;
                        i = 3;
                        wp8Var2.e.e(taskActivity, new ur0(i, new rp3(wp8Var2, new lh6(), yp8Var, dy7Var3, 2)));
                    }
                    wp8Var.c.e(taskActivity, new ur0(i, new e08(2, yp8Var, dy7Var, wp8Var)));
                }
                return be8Var;
            default:
                yp8 yp8Var2 = (yp8) obj2;
                qw6 qw6Var2 = (qw6) obj;
                TextView textView5 = yp8Var2.h;
                TextView textView6 = yp8Var2.d;
                ShapeableImageView shapeableImageView2 = yp8Var2.e;
                yp8Var2.b.a.setVisibility(0);
                TaskActivity taskActivity3 = yp8Var2.a;
                final dy7 dy7Var4 = new dy7(taskActivity3, yp8Var2.g);
                yp8Var2.c.setText(R.string.wifi_networks);
                tt8 tt8Var = (tt8) (qw6Var2 != null ? qw6Var2.a : null);
                if (tt8Var == null) {
                    String string6 = (qw6Var2 == null || !qw6Var2.a()) ? taskActivity3.getString(R.string.waiting) : taskActivity3.getString(R.string.x_wifi_networks, "0");
                    string6.getClass();
                    textView6.setText(string6);
                    sz8.W(textView5);
                    shapeableImageView2.setVisibility(8);
                } else {
                    sz8.c0(textView5);
                    shapeableImageView2.setVisibility(0);
                    shapeableImageView2.setImageResource(R.drawable.ic_wifi_raster);
                    textView6.setText(taskActivity3.getString(R.string.x_wifi_networks, String.valueOf(tt8Var.p.size())));
                    int i21 = 4;
                    tt8Var.g.e(taskActivity3, new ur0(i21, new hq0(i5, tt8Var, yp8Var2)));
                    tt8Var.d.e(taskActivity3, new ur0(i21, new mt3() { // from class: xp8
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj4) {
                            int i22 = i7;
                            be8 be8Var2 = be8.a;
                            dy7 dy7Var5 = dy7Var4;
                            String str3 = (String) obj4;
                            switch (i22) {
                                case 0:
                                    dy7Var5.a(str3);
                                    break;
                                default:
                                    dy7Var5.a(str3);
                                    break;
                            }
                            return be8Var2;
                        }
                    }));
                    tt8Var.i.e(taskActivity3, new ur0(i21, new cz(yp8Var2, 23)));
                    if (((bz7) tt8Var.a).a) {
                        yp8Var2.f.t(true);
                        dy7Var4.e = false;
                        dy7Var4.d();
                        dy7Var2 = dy7Var4;
                    } else {
                        dy7Var2 = dy7Var4;
                        tt8Var.e.e(taskActivity3, new ur0(i21, new rp3(tt8Var, new lh6(), yp8Var2, dy7Var4, 3)));
                    }
                    tt8Var.c.e(taskActivity3, new ur0(i21, new e08(i6, yp8Var2, dy7Var2, tt8Var)));
                }
                return be8Var;
        }
    }
}
