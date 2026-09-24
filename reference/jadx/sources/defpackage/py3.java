package defpackage;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.io.InputStream;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class py3 implements ql6 {
    public static final Drawable a;

    static {
        SwiftApp.Companion companion = SwiftApp.d;
        Drawable drawable = SwiftApp.Companion.c().getDrawable(R.drawable.wall_thumb_placeholder);
        drawable.getClass();
        a = drawable;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        ((oy3) obj).getClass();
        return true;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        BitmapDrawable bitmapDrawable;
        oy3 oy3Var = (oy3) obj;
        oy3Var.getClass();
        Log.d("GlideLocalWallDecoder", "decode: data=" + oy3Var);
        yn8 yn8Var = oy3Var.a;
        boolean z = yn8Var.n;
        int i3 = 1;
        Drawable drawable = a;
        if (!z) {
            try {
                q63 q63Var = yn8Var.a;
                boolean z2 = q63.d;
                InputStream inputStreamW = q63Var.w(true);
                SwiftApp.Companion companion = SwiftApp.d;
                bitmapDrawable = new BitmapDrawable(SwiftApp.Companion.c().getResources(), inputStreamW);
            } catch (Exception e) {
                Log.e("GlideLocalWallDecoder", "decode: ".concat(io4.b(e)));
                bitmapDrawable = null;
            }
            if (bitmapDrawable != null) {
                drawable = bitmapDrawable;
            }
        }
        return new tx3(i3, drawable);
    }
}
