package defpackage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.model.firebase.WifiCloudDetails;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class us5 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ us5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        List listI;
        Collection collectionP1;
        int i = this.a;
        zQ = false;
        zQ = false;
        boolean zQ = false;
        be8 be8Var = be8.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return new ws5((zs5) obj);
            case 1:
                PasswordStrategyActivity passwordStrategyActivity = (PasswordStrategyActivity) obj;
                int i2 = PasswordStrategyActivity.O;
                return new vx5(passwordStrategyActivity, ((wx5) passwordStrategyActivity.L.getValue()).d);
            case 2:
                d26 d26Var = (d26) obj;
                return Integer.valueOf(zh8.t(d26Var, (p77[]) d26Var.j.getValue()));
            case 3:
                return i6.c(((j76) obj).a);
            case 4:
                int i3 = ScheduleLabelsSelectActivity.X;
                return ((ScheduleLabelsSelectActivity) obj).N().c;
            case 5:
                jx2 entries = ux5.getEntries();
                Integer passwordStrategy = ((AppSettings) obj).getPasswordStrategy();
                ux5 ux5Var = (ux5) ((kx2) entries).get(passwordStrategy != null ? passwordStrategy.intValue() : 0);
                ux5Var.getClass();
                V.INSTANCE.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var)).apply();
                return be8Var;
            case 6:
                q63 q63Var = ((zn7) obj).a;
                String strV = q63Var.v();
                Pattern patternCompile = Pattern.compile("/Android/");
                patternCompile.getClass();
                nq7.t0(0);
                Matcher matcher = patternCompile.matcher(strV);
                if (matcher.find()) {
                    ArrayList arrayList = new ArrayList(10);
                    int iEnd = 0;
                    do {
                        arrayList.add(strV.subSequence(iEnd, matcher.start()).toString());
                        iEnd = matcher.end();
                    } while (matcher.find());
                    arrayList.add(strV.subSequence(iEnd, strV.length()).toString());
                    listI = arrayList;
                } else {
                    listI = nc8.I(strV.toString());
                }
                if (listI.isEmpty()) {
                    collectionP1 = ov2.a;
                } else {
                    ListIterator listIterator = listI.listIterator(listI.size());
                    while (listIterator.hasPrevious()) {
                        if (((String) listIterator.previous()).length() != 0) {
                            collectionP1 = el1.p1(listI, listIterator.nextIndex() + 1);
                        }
                    }
                    collectionP1 = ov2.a;
                }
                return new q63(((String[]) collectionP1.toArray(new String[0]))[0], q63Var.o());
            case 7:
                int i4 = StorageSwitchActivity.f0;
                return ((oo7) ((StorageSwitchActivity) obj).Y.getValue()).c;
            case 8:
                int i5 = TaskActivity.c0;
                return ((TaskActivity) obj).N().c;
            case XmlPullParser.COMMENT /* 9 */:
                return ((qa8) ((pa8) obj).K).e;
            case 10:
                int i6 = UserPasswordActivity.O;
                ((UserPasswordActivity) obj).O();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                WallsDashActivity wallsDashActivity = (WallsDashActivity) obj;
                int i7 = WallsDashActivity.W;
                return new to8(wallsDashActivity, wallsDashActivity.X().d, wallsDashActivity.Y());
            case 12:
                ((Response) obj).close();
                return be8Var;
            case 13:
                et8 et8Var = WifiActivity.Y;
                Intent intent = new Intent("android.settings.panel.action.INTERNET_CONNECTIVITY");
                Context applicationContext = ((WifiActivity) obj).getApplicationContext();
                applicationContext.getClass();
                try {
                    if (!(applicationContext instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    applicationContext.startActivity(intent);
                    break;
                } catch (ActivityNotFoundException e) {
                    Context applicationContext2 = applicationContext.getApplicationContext();
                    applicationContext2.getClass();
                    String strValueOf = String.valueOf(e.getMessage());
                    zn4 zn4Var = zn4.a;
                    dj7.y(applicationContext2, strValueOf);
                }
                return be8Var;
            default:
                iu8 iu8Var = (iu8) obj;
                iu8Var.h(R.string.deleting_backup);
                iu8Var.j().getClass();
                if (!pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    String str = ry5.u;
                    new q63[]{new q63(eq3.j(qy5.f(false, null).o, "wifi_networks.wfi"), 2)}[0].h();
                    WifiCloudDetails wifiCloudDetailsC = us8.c();
                    String driveId = wifiCloudDetailsC != null ? wifiCloudDetailsC.getDriveId() : null;
                    if (driveId != null && driveId.length() != 0) {
                        af3 af3VarC = cf3.c(re3.g().d("wifi"), null);
                        if (pe4.d(af3VarC, ze3.b)) {
                            jd1 jd1Var = new jd1(el1.v1(new LinkedHashSet(nc8.I(driveId))));
                            tb1 tb1Var = tb1.a;
                            zQ = qb1.c().b(jd1Var).c().q();
                        } else if (!(af3VarC instanceof ye3)) {
                            q.j();
                        }
                    }
                    iu8Var.f();
                    if (zQ) {
                        vr8 vr8Var = vr8.CLOUD;
                        vr8Var.getClass();
                        wr8 wr8Var = new wr8();
                        wr8Var.a = vr8Var;
                        ny2.b().e(wr8Var);
                        return be8Var;
                    }
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    String string = contextC.getString(R.string.unknown_error_occured);
                    string.getClass();
                    zn4 zn4Var2 = zn4.a;
                    dj7.y(contextC, string);
                    return be8Var;
                }
                d6.o();
                return null;
        }
    }
}
