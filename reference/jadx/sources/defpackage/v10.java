package defpackage;

import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.jcraft.jsch.Argon2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v10 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ v10(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x04a9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v19 */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws IOException {
        int i = this.a;
        int i2 = 11;
        int i3 = 2;
        ?? r9 = 0;
        wq2 wq2Var = null;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                rw6 rw6Var = (rw6) obj;
                int i4 = AppsBatchActivity.s0;
                hy7 hy7Var = hy7.a;
                rw6Var.getClass();
                hy7.b(nc8.I(rw6Var));
                hy7.e(appsBatchActivity, null);
                appsBatchActivity.finish();
                return be8Var;
            case 1:
                final b21 b21Var = (b21) obj2;
                qw6 qw6Var = (qw6) obj;
                TextView textView = b21Var.h;
                TextView textView2 = b21Var.d;
                ShapeableImageView shapeableImageView = b21Var.e;
                b21Var.b.a.setVisibility(0);
                TaskActivity taskActivity = b21Var.a;
                final dy7 dy7Var = new dy7(taskActivity, b21Var.g);
                b21Var.c.setText(R.string.call_logs);
                final z11 z11Var = (z11) (qw6Var != null ? qw6Var.a : 0);
                if (z11Var == null) {
                    String string = (qw6Var == null || !qw6Var.a()) ? taskActivity.getString(R.string.waiting) : taskActivity.getString(R.string.x_calls, "0");
                    string.getClass();
                    textView2.setText(string);
                    sz8.W(textView);
                    shapeableImageView.setVisibility(8);
                } else {
                    sz8.c0(textView);
                    shapeableImageView.setVisibility(0);
                    shapeableImageView.setImageResource(R.drawable.ic_call_log_raster);
                    textView2.setText(taskActivity.getString(R.string.x_calls, String.valueOf(z11Var.n.size())));
                    int i5 = 1;
                    z11Var.g.e(taskActivity, new s30(i5, new rf(i5, z11Var, b21Var)));
                    z11Var.d.e(taskActivity, new s30(i5, new zs(dy7Var, i3)));
                    z11Var.i.e(taskActivity, new s30(i5, new lm(b21Var, 7)));
                    if (((zy7) z11Var.a).c) {
                        b21Var.f.t(true);
                        dy7Var.e = false;
                        dy7Var.d();
                    } else {
                        final lh6 lh6Var = new lh6();
                        z11Var.e.e(taskActivity, new s30(i5, new mt3() { // from class: a21
                            @Override // defpackage.mt3
                            public final Object invoke(Object obj3) {
                                km5 km5Var = b21Var.f;
                                Integer num = (Integer) obj3;
                                be8 be8Var2 = be8.a;
                                if (num != null) {
                                    int size = z11Var.n.size();
                                    lh6 lh6Var2 = lh6Var;
                                    Integer num2 = (Integer) lh6Var2.a;
                                    int iIntValue = num.intValue();
                                    if (num2 == null || num2.intValue() != iIntValue) {
                                        lh6Var2.a = num;
                                        km5Var.u(size);
                                        km5Var.v(num.intValue(), num2 != null);
                                        dy7Var.b((num.intValue() * 100) / size);
                                        return be8Var2;
                                    }
                                }
                                return be8Var2;
                            }
                        }));
                    }
                    z11Var.c.e(taskActivity, new s30(i5, new kl(b21Var, dy7Var, z11Var, i5)));
                }
                return be8Var;
            case 2:
                int i6 = CloudDiagnosticsActivity.Z;
                ((CloudDiagnosticsActivity) obj2).U().n();
                return be8Var;
            case 3:
                pd1 pd1Var = (pd1) obj2;
                md1 md1Var = (md1) obj;
                md1Var.getClass();
                return md1.a(md1Var, false, pd1Var.a, pd1Var.b, null, pd1Var.c, 3);
            case 4:
                tn2 tn2Var = (tn2) obj;
                tn2Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new q51((dd1) obj2, tn2Var, r9, 1));
                return be8Var;
            case 5:
                sj1 sj1Var = (sj1) obj2;
                int iIntValue = ((Integer) obj).intValue();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("onedrive_chunk_size", iIntValue).apply();
                sj1Var.v();
                return be8Var;
            case 6:
                ConfigSettings configSettings = (ConfigSettings) obj2;
                ji jiVar = (ji) obj;
                jiVar.getClass();
                return new hz(jiVar, configSettings.getAppParts(), configSettings.getLocations(), null, configSettings.getSyncOption(), configSettings.getCacheBackup(), configSettings.getCompressionLevel(), configSettings.getMultipleBackupStrategy(), configSettings.getBackupLimits());
            case 7:
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$1((CredentialProviderGetSignInIntentController) obj2, (wv3) obj);
            case 8:
                br2 br2Var = (br2) obj;
                br2Var.getClass();
                fl4 fl4Var = new fl4();
                fl4Var.u("path", (String) obj2);
                fl4Var.s("autorename", Boolean.FALSE);
                qj4 qj4VarX = br2Var.e(fl4Var, "/2/files/create_folder_v2").x("metadata");
                if (qj4VarX == null) {
                    y5.m("Dropbox create_folder_v2 response did not contain folder metadata");
                } else {
                    fl4 fl4VarI = !(qj4VarX instanceof fl4) ? null : qj4VarX.i();
                    if (fl4VarI != null) {
                        String strH = jd4.H(fl4VarI, "id");
                        String strH2 = jd4.H(fl4VarI, "name");
                        wq2Var = new wq2(strH, strH2 != null ? strH2 : "", jd4.H(fl4VarI, "path_display"));
                    } else {
                        y5.m("Dropbox create_folder_v2 response did not contain folder metadata");
                    }
                }
                return wq2Var;
            case XmlPullParser.COMMENT /* 9 */:
                View view = (View) obj;
                view.getClass();
                ((rj2) obj2).a.d0(view, iu.EXPANSION);
                return be8Var;
            case 10:
                zn3 zn3Var = (zn3) obj2;
                xp1 xp1Var = (xp1) obj;
                xp1Var.getClass();
                int level = xp1Var.getLevel();
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putInt("compression_level_folders", level).apply();
                zn3Var.q();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i7 = FoldersBatchActivity.Y;
                ((FoldersBatchActivity) obj2).finish();
                return be8Var;
            case 12:
                ((dy7) obj2).a((String) obj);
                return be8Var;
            case 13:
                u34 u34Var = (u34) obj2;
                ij5 ij5Var = (ij5) obj;
                l46 l46Var = u34.c;
                Map mapA = ij5Var.a();
                LinkedHashMap linkedHashMap = ij5Var.a;
                long j = 0;
                for (Map.Entry entry : mapA.entrySet()) {
                    if (entry.getValue() instanceof Set) {
                        l46 l46Var2 = (l46) entry.getKey();
                        Set set = (Set) entry.getValue();
                        String strB = u34Var.b(System.currentTimeMillis());
                        if (set.contains(strB)) {
                            Object[] objArr = {strB};
                            HashSet hashSet = new HashSet(1);
                            Object obj3 = objArr[0];
                            Objects.requireNonNull(obj3);
                            if (!hashSet.add(obj3)) {
                                g84.k(obj3, "duplicate element: ");
                                return null;
                            }
                            ij5Var.c(l46Var2, Collections.unmodifiableSet(hashSet));
                            j++;
                        } else {
                            l46Var2.getClass();
                            ij5Var.b();
                            linkedHashMap.remove(l46Var2);
                        }
                    }
                }
                if (j == 0) {
                    l46Var.getClass();
                    ij5Var.b();
                    linkedHashMap.remove(l46Var);
                } else {
                    ij5Var.c(l46Var, Long.valueOf(j));
                }
                return null;
            case 14:
                IntroActivity introActivity = (IntroActivity) obj2;
                int i8 = IntroActivity.V;
                if (((Boolean) obj).booleanValue()) {
                    introActivity.Y(true);
                }
                return be8Var;
            case 15:
                MessagesDashActivity messagesDashActivity = (MessagesDashActivity) obj2;
                xe5 xe5Var = (xe5) obj;
                int i9 = MessagesDashActivity.T;
                if (xe5Var != null) {
                    m86 m86Var = messagesDashActivity.Y().f;
                    TextView textView3 = (TextView) m86Var.k;
                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) m86Var.e;
                    quickRecyclerView.setLinearLayoutManager(1);
                    zx2 zx2Var = (zx2) m86Var.c;
                    LinearLayout linearLayout = zx2Var.a;
                    ImageView imageView = zx2Var.d;
                    TextView textView4 = zx2Var.e;
                    zx2Var.b.setVisibility(8);
                    RelativeLayout relativeLayout = (RelativeLayout) m86Var.f;
                    ImageView imageView2 = (ImageView) m86Var.d;
                    TextView textView5 = (TextView) m86Var.n;
                    if (xe5Var.equals(we5.a)) {
                        MessagesDashActivity.b0(messagesDashActivity, textView3, null);
                        for (View view2 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                            view2.setVisibility(8);
                        }
                        linearLayout.setVisibility(0);
                        imageView.setImageResource(R.drawable.ic_no_backup);
                        textView4.setText(R.string.no_local_backups);
                    } else {
                        if (!(xe5Var instanceof ve5)) {
                            q.j();
                            return null;
                        }
                        ArrayList arrayList = ((ve5) xe5Var).a;
                        MessagesDashActivity.b0(messagesDashActivity, textView3, Integer.valueOf(arrayList.size()));
                        for (View view3 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                            view3.setVisibility(0);
                        }
                        linearLayout.setVisibility(8);
                        boolean z = arrayList.size() > 3;
                        ArrayList arrayList2 = z ? new ArrayList(el1.p1(arrayList, 3)) : arrayList;
                        ee5 ee5Var = new ee5(new oe5(2, messagesDashActivity, MessagesDashActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V", 0));
                        ArrayList arrayList3 = arrayList2;
                        ee5Var.w(new fm7((List) arrayList3, (Set) null, false, (String) null, 30), false);
                        ee5Var.j = new ss(messagesDashActivity, i3);
                        quickRecyclerView.setAdapter(ee5Var);
                        messagesDashActivity.y(TextView.class);
                        if (z) {
                            imageView2.setImageResource(R.drawable.ic_arrow_forward);
                            imageView2.setImageTintList(ColorStateList.valueOf(sz8.A(messagesDashActivity)));
                            textView5.setText(messagesDashActivity.getString(R.string.plus_more, fz5.j(arrayList.size() - arrayList3.size(), "+")));
                            relativeLayout.setOnClickListener(new fj2(3, messagesDashActivity, arrayList));
                        } else {
                            imageView2.setImageResource(R.drawable.ic_delete_sweep);
                            imageView2.setImageTintList(ColorStateList.valueOf(sz8.r(messagesDashActivity)));
                            textView5.setText(R.string.delete_all);
                            relativeLayout.setOnClickListener(new ce1(3, messagesDashActivity, arrayList));
                        }
                    }
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                ((if5) obj2).h.setText((String) obj);
                return be8Var;
            case 17:
                q63 q63Var = (q63) obj;
                sa1 sa1Var = (sa1) ((nd6) obj2).getActivity();
                if (sa1Var != null) {
                    if (q63Var == null || !q63Var.j()) {
                        String string2 = sa1Var.getString(R.string.no_backup_in_cloud);
                        string2.getClass();
                        zn4 zn4Var2 = zn4.a;
                        zn4.e(new cv(14, sa1Var, string2));
                    } else {
                        int i10 = CallsBackupRestoreActivity.c0;
                        z85.E(sa1Var, q63Var);
                    }
                }
                return be8Var;
            case 18:
                String str = (String) obj;
                str.getClass();
                q47 q47VarP = ((m37) obj2).p();
                zn4 zn4Var3 = zn4.a;
                zn4.c(new g52(i2, str, q47VarP));
                return be8Var;
            case Argon2.V13 /* 19 */:
                List list = (List) obj;
                list.getClass();
                ScheduleItem.CallLogs callLogs = (ScheduleItem.CallLogs) ((ScheduleItem) obj2);
                List list2 = !ji8.v(list) ? list : null;
                return ScheduleItem.CallLogs.copy$default(callLogs, null, null, list2 != null ? el1.Y0(list2, null, null, null, null, 63) : null, null, null, false, 59, null);
            case 20:
                obj.getClass();
                return ((q9) obj2).invoke();
            case 21:
                StorageSwitchActivity storageSwitchActivity = (StorageSwitchActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i11 = StorageSwitchActivity.f0;
                fm7Var.getClass();
                sz8.W((CircularProgressIndicator) storageSwitchActivity.a0.getValue());
                ((qo7) storageSwitchActivity.c0.getValue()).w(fm7Var, false);
                return be8Var;
            default:
                fp8 fp8Var = (fp8) obj;
                to8 to8Var = (to8) ((WallsDashActivity) obj2).T.getValue();
                fp8Var.getClass();
                mo8 mo8Var = to8Var.i;
                MaterialButton materialButton = to8Var.g;
                TextView textView6 = to8Var.f;
                LinearLayout linearLayout2 = to8Var.e.a;
                QuickRecyclerView quickRecyclerView2 = to8Var.d;
                RelativeLayout relativeLayout2 = to8Var.h;
                if (fp8Var.equals(cp8.a)) {
                    to8Var.a(null);
                    quickRecyclerView2.setVisibility(0);
                    ArrayList arrayList4 = new ArrayList();
                    for (int i12 = 0; i12 < 4; i12++) {
                        yn8 yn8Var = new yn8(new q63("", 1), 0L, 0L, null, 120);
                        yn8Var.n = true;
                        arrayList4.add(yn8Var);
                    }
                    mo8Var.w(new fm7((List) arrayList4, (Set) null, false, (String) null, 30), false);
                    linearLayout2.setVisibility(8);
                    relativeLayout2.setVisibility(8);
                } else if (fp8Var instanceof ep8) {
                    ArrayList arrayList5 = ((ep8) fp8Var).a;
                    to8Var.a(Integer.valueOf(arrayList5.size()));
                    quickRecyclerView2.setVisibility(0);
                    linearLayout2.setVisibility(8);
                    relativeLayout2.setVisibility(0);
                    mo8Var.w(new fm7((List) arrayList5, (Set) null, false, (String) null, 30), false);
                    mo8Var.i = new ox(to8Var, 24);
                    relativeLayout2.setOnClickListener(new of(to8Var, i2));
                } else if (fp8Var.equals(bp8.a)) {
                    to8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    textView6.setText(R.string.no_backup_in_cloud);
                    materialButton.setVisibility(8);
                    relativeLayout2.setVisibility(8);
                } else if (fp8Var.equals(ap8.a)) {
                    to8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    textView6.setText(R.string.cloud_not_connected_summary);
                    materialButton.setText(R.string.connect_cloud_account);
                    materialButton.setVisibility(0);
                    materialButton.setOnClickListener(new zf1(to8Var, i2));
                    relativeLayout2.setVisibility(8);
                } else if (fp8Var.equals(zo8.a)) {
                    to8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    textView6.setText(R.string.unknown_error_occured);
                    materialButton.setVisibility(8);
                    relativeLayout2.setVisibility(8);
                } else {
                    if (!fp8Var.equals(dp8.a)) {
                        q.j();
                        return null;
                    }
                    to8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    textView6.setText(R.string.no_internet_connection_summary);
                    materialButton.setText(R.string.retry);
                    materialButton.setVisibility(0);
                    materialButton.setOnClickListener(new h00(to8Var, 15));
                    relativeLayout2.setVisibility(8);
                }
                return be8Var;
        }
    }
}
