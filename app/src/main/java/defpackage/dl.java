package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.gson.a;
import com.jcraft.jsch.Argon2;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dl implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ dl(kg4 kg4Var) {
        this.a = 15;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                mp6 mp6Var = mp6.a;
                boolean z = g42.a;
                String str = (String) el1.U0(mp6Var.h(new String[]{String.format((String) g42.E.getValue(), Arrays.copyOf(new Object[]{"get"}, 1))}, ip6.SHIZUKU));
                if (str != null) {
                    return el1.z1(nq7.x0(str, new String[]{":"}, 6));
                }
                return null;
            case 1:
                return lk.w();
            case 2:
                zu0 zu0Var = zu0.a;
                if (zu0.f()) {
                    synchronized (zu0.c) {
                        if (zu0.f()) {
                            zu0Var.g();
                        }
                        break;
                    }
                }
                String strD = zu0.d();
                if (strD != null) {
                    return strD;
                }
                l0.e("Box is not connected");
                return null;
            case 3:
                return ud5.g();
            case 4:
                return dd1._init_$lambda$21();
            case 5:
                return new String[]{"https://graph.microsoft.com/User.Read", "https://graph.microsoft.com/Files.ReadWrite"};
            case 6:
                gv7 gv7Var = sl1.e;
                return new sl1(rl1.a(R.array.blue_mtrl_palette));
            case 7:
                SwiftApp.Companion companion = SwiftApp.d;
                return new q63(SwiftApp.Companion.c().getFilesDir(), "configs/cached_data", 2);
            case 8:
                byte[] bytes = "SwiftBackup_Root_Entity".getBytes(gx2.b);
                gx2 gx2Var = new gx2();
                gx2Var.a = bytes;
                return gx2Var;
            case XmlPullParser.COMMENT /* 9 */:
                boolean z2 = g42.a;
                return g42.a("AQKFps7RO/KVBpYibgg4nzfVntxVUWJj1lsCBQz0dGIAEu1yiHk/wgHjAxi8ckXuZZg/XU/oPQRsJVk9jsfX2Lx3WGFbvwXiJXTrNnDapc85vWLr2TkGiO3716M=");
            case 10:
                boolean z3 = g42.a;
                return g42.a("AQLIbciwpLNux+9SKMpx02HpWljE1YBwDhoLAwJnFXtcTSQF2gn0iWp8tyVwH10x09q7fk1H");
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                boolean z4 = g42.a;
                return g42.a("AQJ0ipfBfkYeGxWGWQt8l3wG6TrMxWpPxFMDSv/1PXriUvQYQJck/s3I4u0phIU7HKr+x4MUNTbmiRqluD27/Q==");
            case 12:
                String string = UUID.randomUUID().toString();
                string.getClass();
                return string;
            case 13:
                SwiftApp.Companion companion2 = SwiftApp.d;
                return new q63(SwiftApp.Companion.c().getCacheDir(), "folders_latest_cloud_manifests", 2);
            case 14:
                gv7 gv7Var2 = w14.a;
                t14 t14Var = new t14(w14.c());
                xq3 xq3Var = xq3.e;
                Objects.requireNonNull(xq3Var);
                t14Var.i = xq3Var;
                return new a(t14Var);
            case 15:
                return be8.a;
            case Argon2.V10 /* 16 */:
                return Boolean.valueOf(hs5.a("ro.miui.ui.version.name", "ro.miui.ui.version.code", "ro.mi.os.version.name", "ro.mi.os.version.code"));
            case 17:
                return jv6.simpleDateFormat_delegate$lambda$0();
            default:
                Const.E("SettingsFragment: Restart app");
                return be8.a;
        }
    }

    public /* synthetic */ dl(int i) {
        this.a = i;
    }
}
