package defpackage;

import android.app.WallpaperManager;
import okhttp3.Response;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.intro.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i54 extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i54(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        Boolean boolValueOf = null;
        Object[] objArr = 0;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((ik0) this.receiver).getClass();
                try {
                    SwiftApp.Companion companion = SwiftApp.d;
                    WallpaperManager wallpaperManager = WallpaperManager.getInstance(SwiftApp.Companion.c());
                    boolValueOf = Boolean.valueOf(wallpaperManager != null && wallpaperManager.isWallpaperSupported());
                    break;
                } catch (Exception unused) {
                }
                return Boolean.valueOf(boolValueOf != null ? boolValueOf.booleanValue() : false);
            case 1:
                d dVar = (d) this.receiver;
                dVar.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new zq1(dVar, objArr == true ? 1 : 0, 2));
                return be8Var;
            default:
                ((Response) this.receiver).close();
                return be8Var;
        }
    }
}
