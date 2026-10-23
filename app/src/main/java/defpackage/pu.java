package defpackage;

import android.app.WallpaperManager;
import android.content.Context;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.client.Account;
import com.microsoft.identity.client.CurrentAccountResult;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;
import com.microsoft.identity.client.exception.MsalException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pu implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ pu(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IllegalAccessException, MsalException, InterruptedException, InvocationTargetException {
        Class<?> returnType;
        CurrentAccountResult currentAccount;
        int i = this.a;
        int i2 = 12;
        be8 be8Var = be8.a;
        Account currentAccount2 = null;
        switch (i) {
            case 0:
                return x65.r0(new pw5(0, "android.permission.READ_CALENDAR"), new pw5(1, "android.permission.WRITE_CALENDAR"), new pw5(2, "android.permission.READ_CALL_LOG"), new pw5(3, "android.permission.WRITE_CALL_LOG"), new pw5(4, "android.permission.PROCESS_OUTGOING_CALLS"), new pw5(5, "android.permission.CAMERA"), new pw5(6, "android.permission.READ_CONTACTS"), new pw5(7, "android.permission.WRITE_CONTACTS"), new pw5(8, "android.permission.GET_ACCOUNTS"), new pw5(9, "android.permission.ACCESS_FINE_LOCATION"), new pw5(10, "android.permission.ACCESS_COARSE_LOCATION"), new pw5(11, "android.permission.RECORD_AUDIO"), new pw5(12, "android.permission.READ_PHONE_STATE"), new pw5(13, "android.permission.READ_PHONE_NUMBERS"), new pw5(14, "android.permission.CALL_PHONE"), new pw5(15, "android.permission.ANSWER_PHONE_CALLS"), new pw5(16, "com.android.voicemail.permission.ADD_VOICEMAIL"), new pw5(17, "android.permission.USE_SIP"), new pw5(18, "android.permission.BODY_SENSORS"), new pw5(19, "android.permission.SEND_SMS"), new pw5(20, "android.permission.RECEIVE_SMS"), new pw5(21, "android.permission.READ_SMS"), new pw5(22, "android.permission.RECEIVE_WAP_PUSH"), new pw5(23, "android.permission.RECEIVE_MMS"), new pw5(24, "android.permission.READ_EXTERNAL_STORAGE"), new pw5(25, "android.permission.WRITE_EXTERNAL_STORAGE"), new pw5(26, "android.permission.ACCESS_BACKGROUND_LOCATION"), new pw5(27, "android.permission.PACKAGE_USAGE_STATS"), new pw5(28, "android.permission.REQUEST_INSTALL_PACKAGES"), new pw5(29, "android.permission.ACCESS_NOTIFICATION_POLICY"), new pw5(30, "android.permission.SYSTEM_ALERT_WINDOW"), new pw5(31, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"), new pw5(32, "RESTRICT_BACKGROUND_DATA_WHITELIST"), new pw5(33, "android.permission.WRITE_SETTINGS"), new pw5(34, "android.permission.BIND_VPN_SERVICE"), new pw5(35, "android.permission.BIND_APPWIDGET"), new pw5(36, "MAGISK_HIDE"), new pw5(37, "android.permission.MANAGE_EXTERNAL_STORAGE"), new pw5(38, "RESTRICT_BACKGROUND_DATA_BLACKLIST"), new pw5(39, "RUN_IN_BACKGROUND_DISABLED"), new pw5(40, "android.permission.SCHEDULE_EXACT_ALARM"), new pw5(41, "android.permission.POST_NOTIFICATIONS"), new pw5(42, "android.permission.NEARBY_WIFI_DEVICES"), new pw5(43, "android.permission.BODY_SENSORS_BACKGROUND"), new pw5(44, "android.permission.READ_MEDIA_AUDIO"), new pw5(45, "android.permission.READ_MEDIA_IMAGES"), new pw5(46, "android.permission.READ_MEDIA_VIDEO"), new pw5(47, "android.permission.WRITE_SECURE_SETTINGS"), new pw5(48, "Wi-Fi Control disabled"), new pw5(49, "Picture-in-picture disabled"), new pw5(50, "Turn screen on disabled"), new pw5(51, "Pause app activity if unused disabled"), new pw5(52, "android.permission.ACCESS_LOCAL_NETWORK"));
            case 1:
                return dd1._init_$lambda$0();
            case 2:
                int i3 = ConversationsActivity.O;
                return new uv1(null);
            case 3:
                byte[] bytes = "SwiftBackup_Entity".getBytes(gx2.b);
                gx2 gx2Var = new gx2();
                gx2Var.a = bytes;
                return gx2Var;
            case 4:
                boolean z = g42.a;
                return g42.a("AQIViqEPNwjYGy2pzB6SAY7fxNdv3+GiR4IZs0b7f+fwYc6UU7iifzLyKm/j3qOF8RFi+IOewM9qJK+Om1vjbhdKzBmzhC7uxEJiH3CoXQ==");
            case 5:
                boolean z2 = g42.a;
                return g42.a("AQIr8BT+XwlksNjHdo8ZxExnNgb0Bc/rlKapuBzYlvDFlpy6GmP07xplcZWUvkBDoA==");
            case 6:
                boolean z3 = g42.a;
                return g42.a("AQJsvgPIWGfAiq5risdnW6vfjgSw4NTELqfQ5wn9X3kc2mqKfSNiYh5E1AGV");
            case 7:
                Object objInvoke = Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", null).invoke(null, null);
                objInvoke.getClass();
                return (Context) objInvoke;
            case 8:
                try {
                    String[] strArr = is3.b;
                    Method method = (Method) is3.c.getValue();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused) {
                    return null;
                }
            case XmlPullParser.COMMENT /* 9 */:
                lr4.a.a();
                zn4 zn4Var = zn4.a;
                zn4.e(new zk(i2));
                return be8Var;
            case 10:
                return MultipleBackupStrategy.legacyArchiveStrategy_delegate$lambda$0();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                SingleAccountPublicClientApplication singleAccountPublicClientApplicationC = nq5.i.c();
                if (singleAccountPublicClientApplicationC != null && (currentAccount = singleAccountPublicClientApplicationC.getCurrentAccount()) != null) {
                    currentAccount2 = currentAccount.getCurrentAccount();
                }
                if (currentAccount2 != null) {
                    singleAccountPublicClientApplicationC.signOut();
                }
                return be8Var;
            case 12:
                return bb9.p(new ArrayList(0));
            case 13:
                boolean z4 = j36.a;
                return "checkAppVersionLimits:";
            case 14:
                return ((WallpaperManager) tv7.a.getValue()).getWallpaperFile(2);
            case 15:
                Iterator it = hy7.c.iterator();
                while (it.hasNext()) {
                    ((rw6) it.next()).a();
                }
                return be8Var;
            case Argon2.V10 /* 16 */:
                return Boolean.TRUE;
            default:
                SwiftApp.Companion companion = SwiftApp.d;
                return WallpaperManager.getInstance(SwiftApp.Companion.c());
        }
    }

    public /* synthetic */ pu(Object obj, int i) {
        this.a = i;
    }
}
