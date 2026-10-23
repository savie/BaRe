package defpackage;

import android.app.WallpaperManager;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.HashSet;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ov implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ ov(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                return zn7.q.d();
            case 1:
                int i = AppVisibilityDiagnosticsActivity.O;
                return new t00(null);
            case 2:
                return new er0();
            case 3:
                return new ex6();
            case 4:
                gv7 gv7Var = y32.a;
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA == null) {
                    throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                }
                return new x32(new f45(mFirebaseUserA.getUid()), (ov7) rb.t().b);
            case 5:
                boolean z = g42.a;
                return g42.a("AQLu57zwDV7pqPOSFYLilMG1W1e5MpWwXcGfWxL8ItRY/CQBIkeW8wZqNgBzjLoa8YvQnae9Z0qF55NQ3rxKfVCDk2PE1dJvXz46H99xih8/RhemZWPW");
            case 6:
                boolean z2 = g42.a;
                return g42.a("AQJyJOC6NUcSa7x0cnzC6uV5589/1DnGElCKyJalUt8WUNGP0y986nIXZLs3U5iG4h7WJBSCeyi1mwUjlos=");
            case 7:
                boolean z3 = g42.a;
                return g42.a("AQLle24KFGZ1ShJx1uj2j0W6jKecVwq+cGvF82W7OK4UybhfRg6Dm2zQiaF8jTx0/rhSnLBxEGea6B7eSGxMCR9tyHQVENajXPJxbIckgxj/F3IgbM7LebA=");
            case 8:
                SwiftApp.Companion companion = SwiftApp.d;
                Drawable drawable = SwiftApp.Companion.c().getDrawable(R.drawable.wall_thumb_placeholder);
                drawable.getClass();
                return drawable;
            case XmlPullParser.COMMENT /* 9 */:
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(1.0f);
                return new ColorMatrixColorFilter(colorMatrix);
            case 10:
                SwiftApp.Companion companion2 = SwiftApp.d;
                return new q63(SwiftApp.Companion.c().getFilesDir(), "app_labels/cached_data", 2);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return MultipleBackupStrategy.defaultDatedBackupsStrategy_delegate$lambda$0();
            case 12:
                dz5 dz5Var = dz5.a;
                return sz8.S((Set) dz5.e.getValue(), "android.permission.READ_CONTACTS");
            case 13:
                synchronized (mp6.a) {
                    if (mp6.g && !mp6.j) {
                        mp6.j = true;
                        String strA = h55.a();
                        mp6.i = strA;
                        if (strA != null && strA.length() != 0) {
                            kz4.g.o(strA);
                            ua1.g.o(strA);
                        }
                        break;
                    }
                }
                return be8.a;
            case 14:
                HashSet hashSet = mz6.a;
                return Boolean.FALSE;
            case 15:
                return ((WallpaperManager) tv7.a.getValue()).getWallpaperFile(1);
            default:
                return x65.r0(new pw5(-1, "None"), new pw5(0, "PEAP"), new pw5(1, "TLS"), new pw5(2, "TTLS"), new pw5(3, "PWD"), new pw5(4, "SIM"), new pw5(5, "AKA"), new pw5(6, "AKA'"), new pw5(7, "Hotspot 2.0 r2 OSEN"));
        }
    }
}
