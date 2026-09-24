package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.gms.tasks.Task;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails;
import org.swiftapps.swiftbackup.home.schedule.data.o;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.swiftapps.swiftbackup.settings.a;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class px implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ px(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:114:0x040a  */
    /* JADX WARN: Code duplicated, block: B:115:0x040d  */
    /* JADX WARN: Code duplicated, block: B:117:0x0410  */
    /* JADX WARN: Code duplicated, block: B:118:0x041c  */
    /* JADX WARN: Code duplicated, block: B:121:0x045f  */
    /* JADX WARN: Code duplicated, block: B:122:0x0497  */
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
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        String strG;
        boolean z;
        ArrayList arrayList;
        int i;
        boolean z2;
        ArrayList arrayList2;
        Object dn5Var;
        int i2 = this.a;
        int i3 = 1;
        boolean z3 = false;
        boolean z4 = false;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i2) {
            case 0:
                a aVar = (a) obj2;
                xp1 xp1Var = (xp1) obj;
                xp1Var.getClass();
                int level = xp1Var.getLevel();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("compression_level_app_data", level).apply();
                aVar.u();
                return be8Var;
            case 1:
                oy oyVar = (oy) obj;
                oyVar.getClass();
                return oy.title$default(oyVar, (Context) obj2, null, 2, null);
            case 2:
                b bVar = (b) obj;
                bVar.getClass();
                ((org.swiftapps.swiftbackup.cloud.orphans.a) obj2).getClass();
                SwiftApp.Companion companion = SwiftApp.d;
                return b.a(bVar, null, null, sv2.a, SwiftApp.Companion.c().getString(R.string.cloud_orphan_provider_changed), 0, 0, 6655);
            case 3:
                sj1 sj1Var = (sj1) obj2;
                int iIntValue = ((Integer) obj).intValue();
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putInt("nextcloud_chunk_size", iIntValue).apply();
                sj1Var.u();
                return be8Var;
            case 4:
                org.swiftapps.swiftbackup.appconfigs.list.a aVar2 = (org.swiftapps.swiftbackup.appconfigs.list.a) obj2;
                ConfigsData configsData = (ConfigsData) obj;
                aVar2.l(configsData);
                aVar2.g.k((configsData == null || !configsData.hasConfigs()) ? ym7.DATA_EMPTY : ym7.DATA_RECEIVED);
                return be8Var;
            case 5:
                x92 x92Var = (x92) obj2;
                List list = (List) obj;
                list.getClass();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : list) {
                    if (((NoticeItem) obj3).shouldShowToUser(false)) {
                        arrayList3.add(obj3);
                    }
                }
                jk8 jk8Var = x92Var.b;
                jk8Var.getClass();
                sz8.d0(((y92) jk8Var).p, !arrayList3.isEmpty());
                ((qo5) x92Var.k.getValue()).w(new fm7((List) arrayList3, (Set) null, false, (String) null, 30), true);
                return be8Var;
            case 6:
                View view = (View) obj;
                view.getClass();
                ((rj2) obj2).a.d0(view, iu.MEDIA);
                return be8Var;
            case 7:
                ((gm3) obj2).invoke(Long.valueOf(io4.h((Long) obj)));
                return be8Var;
            case 8:
                ((tp3) obj2).k.setText((String) obj);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                gz3 gz3Var = (gz3) obj2;
                Task task = (Task) obj;
                task.getClass();
                if (task.isSuccessful()) {
                    Log.d(gz3Var.b, "firebaseAuthWithGoogle:success");
                    gz3Var.g.k(Boolean.TRUE);
                } else {
                    Exception exception = task.getException();
                    Log.w(gz3Var.b, "signInWithCredential:failure", exception);
                    ix6 ix6Var = gz3Var.i;
                    if (exception == null || (strG = exception.getMessage()) == null) {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        strG = dj7.g(R.string.auth_failed);
                    }
                    ix6Var.k(strG);
                    SwiftApp.Companion companion3 = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    String string = contextC.getString(R.string.auth_failed);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    dj7.y(contextC, string);
                }
                return be8Var;
            case 10:
                IntroActivity introActivity = (IntroActivity) obj2;
                int i4 = IntroActivity.V;
                if (((Boolean) obj).booleanValue()) {
                    introActivity.Y(true);
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ManageSpaceActivity manageSpaceActivity = (ManageSpaceActivity) obj2;
                ry5 ry5Var = (ry5) obj;
                int i5 = ManageSpaceActivity.O;
                ry5Var.getClass();
                gp3 gp3Var = new gp3(manageSpaceActivity, ry5Var);
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new po3(manageSpaceActivity, ry5Var, gp3Var, null, 1));
                return be8Var;
            case 12:
                MessagesDashActivity messagesDashActivity = (MessagesDashActivity) obj2;
                ue5 ue5Var = (ue5) obj;
                int i6 = MessagesDashActivity.T;
                if (ue5Var != null) {
                    pi7 pi7Var = messagesDashActivity.Y().e;
                    TextView textView = pi7Var.n;
                    CircularProgressIndicator circularProgressIndicator = pi7Var.e;
                    ConstraintLayout constraintLayout = pi7Var.d;
                    QuickRecyclerView quickRecyclerView = pi7Var.f;
                    quickRecyclerView.setLinearLayoutManager(1);
                    zx2 zx2Var = pi7Var.b;
                    LinearLayout linearLayout = zx2Var.a;
                    zx2Var.d.setImageResource(R.drawable.ic_cloud);
                    TextView textView2 = zx2Var.e;
                    MaterialButton materialButton = zx2Var.b;
                    RelativeLayout relativeLayout = pi7Var.k;
                    ImageView imageView = pi7Var.c;
                    TextView textView3 = pi7Var.p;
                    if (messagesDashActivity.R && !messagesDashActivity.S) {
                        messagesDashActivity.S = true;
                        textView.startAnimation(Const.j(7));
                    }
                    if (ue5Var.equals(se5.a)) {
                        MessagesDashActivity.a0(messagesDashActivity, textView, null);
                        circularProgressIndicator.setVisibility(0);
                        constraintLayout.setVisibility(4);
                    } else if (ue5Var instanceof pe5) {
                        MessagesDashActivity.a0(messagesDashActivity, textView, Integer.valueOf(((pe5) ue5Var).a.size()));
                        circularProgressIndicator.setVisibility(8);
                        constraintLayout.setVisibility(0);
                        linearLayout.setVisibility(8);
                        for (View view2 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                            view2.setVisibility(0);
                        }
                    } else {
                        if (ue5Var.equals(re5.a)) {
                            MessagesDashActivity.a0(messagesDashActivity, textView, null);
                            circularProgressIndicator.setVisibility(8);
                            constraintLayout.setVisibility(0);
                            linearLayout.setVisibility(0);
                            materialButton.setVisibility(8);
                            for (View view3 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                                view3.setVisibility(8);
                            }
                            textView2.setText(R.string.no_backups_synced);
                        } else {
                            boolean z5 = true;
                            if (ue5Var.equals(te5.a)) {
                                MessagesDashActivity.a0(messagesDashActivity, textView, null);
                                circularProgressIndicator.setVisibility(8);
                                constraintLayout.setVisibility(0);
                                linearLayout.setVisibility(0);
                                materialButton.setVisibility(0);
                                for (View view4 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                                    view4.setVisibility(8);
                                }
                                textView2.setText(R.string.no_internet_connection_summary);
                                materialButton.setText(R.string.retry);
                                materialButton.setOnClickListener(new dj(messagesDashActivity, 10));
                                z = z5;
                            } else {
                                if (!ue5Var.equals(qe5.a)) {
                                    q.j();
                                    return null;
                                }
                                MessagesDashActivity.a0(messagesDashActivity, textView, null);
                                circularProgressIndicator.setVisibility(8);
                                constraintLayout.setVisibility(0);
                                linearLayout.setVisibility(0);
                                materialButton.setVisibility(0);
                                for (View view5 : (View[]) Arrays.copyOf(new View[]{quickRecyclerView, relativeLayout}, 2)) {
                                    view5.setVisibility(8);
                                }
                                textView2.setText(R.string.cloud_not_connected_summary);
                                materialButton.setText(R.string.connect_cloud_account);
                                materialButton.setOnClickListener(new hs(messagesDashActivity, 9));
                                z = z5;
                            }
                        }
                        if (ue5Var instanceof pe5) {
                            arrayList = ((pe5) ue5Var).a;
                            i = 3;
                            if (arrayList.size() > 3) {
                                z2 = z;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                arrayList2 = new ArrayList(el1.p1(arrayList, 3));
                            } else {
                                arrayList2 = arrayList;
                            }
                            ee5 ee5Var = new ee5(new jp3(2, messagesDashActivity, MessagesDashActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V", 0, 1));
                            ee5Var.w(new fm7((List) arrayList2, (Set) null, false, (String) null, 30), false);
                            ee5Var.j = new g30(messagesDashActivity, 2);
                            quickRecyclerView.setAdapter(ee5Var);
                            messagesDashActivity.y(TextView.class);
                            if (z2) {
                                imageView.setImageResource(R.drawable.ic_arrow_forward);
                                imageView.setImageTintList(ColorStateList.valueOf(sz8.A(messagesDashActivity)));
                                textView3.setText(messagesDashActivity.getString(R.string.plus_more, fz5.j(arrayList.size() - arrayList2.size(), "+")));
                                relativeLayout.setOnClickListener(new qi(2, messagesDashActivity, arrayList));
                            } else {
                                imageView.setImageResource(R.drawable.ic_delete_sweep);
                                imageView.setImageTintList(ColorStateList.valueOf(sz8.r(messagesDashActivity)));
                                textView3.setText(R.string.delete_all);
                                relativeLayout.setOnClickListener(new er(i, messagesDashActivity, arrayList));
                            }
                        }
                    }
                    z = true;
                    if (ue5Var instanceof pe5) {
                        arrayList = ((pe5) ue5Var).a;
                        i = 3;
                        if (arrayList.size() > 3) {
                            z2 = z;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            arrayList2 = new ArrayList(el1.p1(arrayList, 3));
                        } else {
                            arrayList2 = arrayList;
                        }
                        ee5 ee5Var2 = new ee5(new jp3(2, messagesDashActivity, MessagesDashActivity.class, "onBackupItemMenuClick", "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V", 0, 1));
                        ee5Var2.w(new fm7((List) arrayList2, (Set) null, false, (String) null, 30), false);
                        ee5Var2.j = new g30(messagesDashActivity, 2);
                        quickRecyclerView.setAdapter(ee5Var2);
                        messagesDashActivity.y(TextView.class);
                        if (z2) {
                            imageView.setImageResource(R.drawable.ic_arrow_forward);
                            imageView.setImageTintList(ColorStateList.valueOf(sz8.A(messagesDashActivity)));
                            textView3.setText(messagesDashActivity.getString(R.string.plus_more, fz5.j(arrayList.size() - arrayList2.size(), "+")));
                            relativeLayout.setOnClickListener(new qi(2, messagesDashActivity, arrayList));
                        } else {
                            imageView.setImageResource(R.drawable.ic_delete_sweep);
                            imageView.setImageTintList(ColorStateList.valueOf(sz8.r(messagesDashActivity)));
                            textView3.setText(R.string.delete_all);
                            relativeLayout.setOnClickListener(new er(i, messagesDashActivity, arrayList));
                        }
                    }
                }
                return be8Var;
            case 13:
                u10 u10Var = (u10) obj2;
                Task task2 = (Task) obj;
                task2.getClass();
                if (task2.isSuccessful()) {
                    vr6.i$default(vr6.INSTANCE, "NoGmsClient", "firebaseAuthWithGoogle:success", null, 4, null);
                    dn5Var = en5.a;
                } else {
                    Exception exception2 = task2.getException();
                    vr6.e$default(vr6.INSTANCE, "NoGmsClient", xs1.j("firebaseAuthWithGoogle:failure. Exception=", exception2 != null ? yc9.g0(exception2) : null), null, 4, null);
                    SwiftApp.Companion companion4 = SwiftApp.d;
                    Context contextC2 = SwiftApp.Companion.c();
                    String string2 = contextC2.getString(R.string.auth_failed);
                    string2.getClass();
                    zn4 zn4Var3 = zn4.a;
                    zn4.e(new cv(14, contextC2, string2));
                    dn5Var = new dn5(exception2 != null ? io4.b(exception2) : null);
                }
                u10Var.invoke(dn5Var);
                return be8Var;
            case 14:
                String str = (String) obj;
                str.getClass();
                zn4.c(new j47(((m37) obj2).p(), str, -1));
                return be8Var;
            case 15:
                gs8 gs8Var = (gs8) obj;
                String str2 = ScheduleService.p;
                gs8Var.getClass();
                o oVar = ScheduleLastRunDetails.Companion;
                String itemId = ((ScheduleItem.Wifi) obj2).getItemId();
                oVar.getClass();
                long j = 0;
                o.d(itemId, gs8Var.a == ds8.ACCESS_UNAVAILABLE ? new ScheduleLastRunDetails.BlockedWifiPrivilegedAccess(j, i3, z4 ? 1 : 0) : new ScheduleLastRunDetails.FailedWifiDeviceRead(j, i3, z3 ? 1 : 0));
                return be8Var;
            case Argon2.V10 /* 16 */:
                String str3 = (String) obj;
                str3.getClass();
                return Boolean.valueOf(((ArrayList) obj2).add(str3));
            case 17:
                StorageSwitchActivity storageSwitchActivity = (StorageSwitchActivity) obj2;
                vo7 vo7Var = (vo7) obj;
                int i7 = StorageSwitchActivity.f0;
                vo7Var.getClass();
                if (vo7Var instanceof uo7) {
                    w45 w45Var = storageSwitchActivity.e0;
                    if (w45Var == null) {
                        w45Var = new w45(storageSwitchActivity);
                        uo7 uo7Var = (uo7) vo7Var;
                        String string3 = storageSwitchActivity.getString(uo7Var.a ? R.string.copying_files : R.string.moving_files);
                        string3.getClass();
                        w45Var.i(string3);
                        w45Var.setCancelable(false);
                        w45Var.k(uo7Var.b);
                        w45Var.r = 1;
                        w45Var.n(null);
                        storageSwitchActivity.e0 = w45Var;
                    }
                    uo7 uo7Var2 = (uo7) vo7Var;
                    boolean z6 = uo7Var2.b;
                    w45Var.k(z6);
                    if (!z6) {
                        w45Var.m(uo7Var2.c);
                    }
                    if (!w45Var.isShowing()) {
                        w45Var.show();
                    }
                } else {
                    if (!vo7Var.equals(to7.a)) {
                        q.j();
                        return null;
                    }
                    sz8.m(storageSwitchActivity.e0);
                    Const.F(storageSwitchActivity);
                }
                return be8Var;
            case 18:
                ((e08) obj2).invoke(Long.valueOf(io4.h((Long) obj)));
                return be8Var;
            default:
                gu8 gu8Var = (gu8) obj;
                cs8 cs8Var = (cs8) ((WifiActivity) obj2).U.getValue();
                gu8Var.getClass();
                WifiActivity wifiActivity = cs8Var.a;
                TextView textView4 = cs8Var.h;
                ImageView imageView2 = cs8Var.i;
                MaterialButton materialButton2 = cs8Var.j;
                LinearLayout linearLayout2 = cs8Var.g.a;
                ConstraintLayout constraintLayout2 = cs8Var.e;
                QuickRecyclerView quickRecyclerView2 = cs8Var.d;
                if (gu8Var.equals(bu8.a)) {
                    cs8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    constraintLayout2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    materialButton2.setVisibility(8);
                    vr6.i$default(vr6.INSTANCE, "WifiCardSystem", "Wi-Fi backup access unavailable", null, 4, null);
                    imageView2.setImageResource(R.drawable.ic_hashtag);
                    textView4.setText(Build.VERSION.SDK_INT >= 30 ? R.string.root_access_or_shizuku_needed : R.string.root_access_needed);
                } else if (gu8Var instanceof eu8) {
                    cs8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    constraintLayout2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    vr6.w$default(vr6.INSTANCE, "WifiCardSystem", xs1.j("Wi-Fi device read failed: ", ((eu8) gu8Var).a.name()), null, 4, null);
                    imageView2.setImageResource(R.drawable.ic_wifi_off);
                    textView4.setText(R.string.wifi_device_read_failed);
                    materialButton2.setVisibility(0);
                    materialButton2.setText(R.string.retry);
                    materialButton2.setOnClickListener(new mf(cs8Var, 13));
                } else if (gu8Var.equals(du8.a)) {
                    cs8Var.a(null);
                    quickRecyclerView2.setVisibility(0);
                    constraintLayout2.setVisibility(8);
                    linearLayout2.setVisibility(8);
                    materialButton2.setVisibility(8);
                    wifiActivity.a0(quickRecyclerView2);
                } else if (gu8Var instanceof cu8) {
                    cs8Var.a(null);
                    quickRecyclerView2.setVisibility(8);
                    constraintLayout2.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    materialButton2.setVisibility(8);
                    if (((cu8) gu8Var).a) {
                        imageView2.setImageResource(R.drawable.ic_wifi);
                        textView4.setText(R.string.no_saved_wifi_networks_found);
                    } else {
                        Log.d("WifiCardSystem", "setupSystemCard: Wifi disabled");
                        imageView2.setImageResource(R.drawable.ic_wifi_off);
                        textView4.setText(R.string.wifi_not_enabled);
                    }
                } else {
                    if (!(gu8Var instanceof fu8)) {
                        q.j();
                        return null;
                    }
                    List list2 = ((fu8) gu8Var).a;
                    cs8Var.a(Integer.valueOf(list2.size()));
                    quickRecyclerView2.setVisibility(0);
                    constraintLayout2.setVisibility(0);
                    linearLayout2.setVisibility(8);
                    materialButton2.setVisibility(8);
                    h71 h71Var = new h71(wifiActivity, WifiActivity.V(wifiActivity, list2));
                    h71Var.g = new cw(cs8Var, gu8Var);
                    quickRecyclerView2.setAdapter(h71Var);
                    MaterialButton materialButton3 = cs8Var.f;
                    materialButton3.setText(R.string.backup_all);
                    materialButton3.setOnClickListener(new gr(5, cs8Var, gu8Var));
                }
                return be8Var;
        }
    }
}
