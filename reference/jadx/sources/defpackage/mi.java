package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpATTRS;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mi implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ mi(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x010a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0125  */
    /* JADX WARN: Code duplicated, block: B:55:0x0129  */
    /* JADX WARN: Code duplicated, block: B:57:0x0137  */
    /* JADX WARN: Code duplicated, block: B:60:0x0145  */
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        bt btVarValueOf;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                RecyclerView recyclerView = (RecyclerView) obj;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                recyclerView.getClass();
                qr qrVar = tr.n0;
                qr.f(recyclerView, null, zBooleanValue, qr.a((ji) obj4), (Set) obj3, false, null, 4066);
                return be8Var;
            case 1:
                t10 t10Var = (t10) obj4;
                AppListActivity appListActivity = t10Var.Q;
                List list = (List) obj3;
                n10 n10Var = (n10) obj;
                ((Integer) obj2).getClass();
                n10Var.getClass();
                if (n10Var.n) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        Const.O();
                    } else if (!pe4.d(n10Var.a, "Sync backups") && !V.INSTANCE.getA()) {
                        int i2 = PremiumActivity.V;
                        rs9.u(appListActivity);
                        t10Var.j();
                    } else if (n10Var.f > 0) {
                        int i3 = AppsBatchActivity.s0;
                        appListActivity.getClass();
                        list.getClass();
                        if (n10Var.c() || V.INSTANCE.getA()) {
                            Intent intentPutExtra = new Intent(appListActivity, (Class<?>) AppsBatchActivity.class).putExtra("batch_action_item", n10Var);
                            intentPutExtra.getClass();
                            r20.r = new ArrayList(list);
                            appListActivity.startActivity(intentPutExtra);
                        } else {
                            int i4 = PremiumActivity.V;
                            rs9.u(appListActivity);
                        }
                        t10Var.j();
                    }
                } else if (!pe4.d(n10Var.a, "Sync backups")) {
                    if (n10Var.f > 0) {
                        int i5 = AppsBatchActivity.s0;
                        appListActivity.getClass();
                        list.getClass();
                        if (n10Var.c()) {
                            Intent intentPutExtra2 = new Intent(appListActivity, (Class<?>) AppsBatchActivity.class).putExtra("batch_action_item", n10Var);
                            intentPutExtra2.getClass();
                            r20.r = new ArrayList(list);
                            appListActivity.startActivity(intentPutExtra2);
                        } else {
                            Intent intentPutExtra3 = new Intent(appListActivity, (Class<?>) AppsBatchActivity.class).putExtra("batch_action_item", n10Var);
                            intentPutExtra3.getClass();
                            r20.r = new ArrayList(list);
                            appListActivity.startActivity(intentPutExtra3);
                        }
                        t10Var.j();
                    }
                } else if (n10Var.f > 0) {
                    int i6 = AppsBatchActivity.s0;
                    appListActivity.getClass();
                    list.getClass();
                    if (n10Var.c()) {
                        Intent intentPutExtra4 = new Intent(appListActivity, (Class<?>) AppsBatchActivity.class).putExtra("batch_action_item", n10Var);
                        intentPutExtra4.getClass();
                        r20.r = new ArrayList(list);
                        appListActivity.startActivity(intentPutExtra4);
                    } else {
                        Intent intentPutExtra5 = new Intent(appListActivity, (Class<?>) AppsBatchActivity.class).putExtra("batch_action_item", n10Var);
                        intentPutExtra5.getClass();
                        r20.r = new ArrayList(list);
                        appListActivity.startActivity(intentPutExtra5);
                    }
                    t10Var.j();
                }
                return be8Var;
            case 2:
                x92 x92Var = (x92) obj3;
                int iIntValue = ((Integer) obj2).intValue();
                ((View) obj).getClass();
                int i7 = ((d71) ((ba2) obj4).d.get(iIntValue)).a;
                String string = null;
                switch (i7) {
                    case 1:
                        int i8 = AppListActivity.q0;
                        HomeActivity homeActivityL = x92Var.l();
                        try {
                            SharedPreferences sharedPreferences = cz4.f;
                            if (sharedPreferences == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            string = sharedPreferences.getString("last_used_apps_section", null);
                            if (string == null || (btVarValueOf = bt.valueOf(string)) == null) {
                                btVarValueOf = bt.LOCAL;
                            }
                            y13.I(homeActivityL, btVarValueOf);
                            return be8Var;
                        } catch (ClassCastException unused) {
                        }
                        break;
                    case 2:
                        int i9 = MessagesDashActivity.T;
                        vm4.A(x92Var.l(), false);
                        return be8Var;
                    case 3:
                        ai8.q(x92Var.l(), CallsDashActivity.class);
                        return be8Var;
                    case 4:
                        ai8.q(x92Var.l(), WallsDashActivity.class);
                        return be8Var;
                    case 5:
                        ai8.q(x92Var.l(), WifiActivity.class);
                        return be8Var;
                    case 6:
                        int i10 = FoldersDashActivity.U;
                        nc8.k0(x92Var.l(), to3.LOCAL);
                        return be8Var;
                    default:
                        c6.f(fz5.j(i7, "No click action for item id: "));
                        return null;
                }
                break;
            default:
                li4 li4Var = (li4) obj4;
                String str = (String) obj3;
                ChannelSftp channelSftp = (ChannelSftp) obj;
                channelSftp.getClass();
                ((Session) obj2).getClass();
                try {
                    SftpATTRS sftpATTRSX = li4Var.x(str, channelSftp);
                    if (sftpATTRSX != null) {
                        if (sftpATTRSX.b(16384)) {
                            li4Var.w(str, channelSftp);
                        } else {
                            channelSftp.rm(li4Var.C(str));
                            if (li4Var.x(str, channelSftp) != null) {
                                throw new IllegalStateException("Check failed.");
                            }
                        }
                    }
                } catch (Exception e) {
                    if (!li4.z(e)) {
                        Log.e("JschService", "delete", e);
                        vr6.e$default(vr6.INSTANCE, "JschService", "delete: ".concat(io4.b(e)), null, 4, null);
                    }
                }
                return be8Var;
        }
    }
}
