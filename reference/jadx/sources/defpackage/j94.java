package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.a;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j94 {
    public static final Set a = Collections.synchronizedSet(new LinkedHashSet());
    public static final gv7 b = new gv7(new ov(9));
    public static final gv7 c = new gv7(new qm(13));

    public static Bitmap a(sx3 sx3Var) {
        ai8.b();
        try {
            return ai8.c(c(sx3Var));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String b(String str) {
        str.getClass();
        String str2 = ry5.u;
        return dj7.k(qy5.f(false, null).i, str, ".png");
    }

    public static Drawable c(sx3 sx3Var) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        try {
            pk6 pk6VarD = d(sx3Var, true);
            tk6 tk6Var = new tk6();
            pk6VarD.A(tk6Var, tk6Var, pk6VarD, xh8.f);
            Object obj = tk6Var.get();
            obj.getClass();
            return (Drawable) obj;
        } catch (Exception e) {
            e.printStackTrace();
            return (Drawable) ux3.b.getValue();
        }
    }

    public static pk6 d(sx3 sx3Var, boolean z) {
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        mm0 mm0VarE = a.a(contextC).e.c(contextC).f(Drawable.class).D(sx3Var).e((Drawable) ux3.b.getValue());
        mm0VarE.getClass();
        pk6 pk6Var = (pk6) mm0VarE;
        if (!z) {
            mm0 mm0VarP = pk6Var.p(px3.b, Boolean.TRUE);
            mm0VarP.getClass();
            return (pk6) mm0VarP;
        }
        ap2 ap2Var = new ap2();
        ap2Var.a = new tr9(7, false);
        pk6 pk6VarE = pk6Var.E(ap2Var);
        pk6VarE.getClass();
        return pk6VarE;
    }

    public static void e(List list, int i, int i2) {
        list.getClass();
        if (list.isEmpty() || i >= list.size() || i2 <= 0) {
            return;
        }
        int i3 = i2 + i;
        int size = list.size();
        if (i3 > size) {
            i3 = size;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        int dimensionPixelSize = SwiftApp.Companion.c().getResources().getDimensionPixelSize(R.dimen.app_list_icon_size);
        while (i < i3) {
            ji jiVar = (ji) list.get(i);
            jiVar.getClass();
            sx3 sx3Var = new sx3(jiVar.getPackageName(), jiVar.isInstalled());
            if (a.add(sx3Var.a())) {
                pk6 pk6Var = (pk6) d(sx3Var, false).n(so2.a, new ih3(), true);
                pk6Var.A(new z46(pk6Var.L, dimensionPixelSize, dimensionPixelSize), null, pk6Var, xh8.e);
            }
            i++;
        }
    }

    public static void f(String str, boolean z) throws IOException {
        str.getClass();
        Bitmap bitmapA = a(new sx3(str, z));
        if (bitmapA == null) {
            Log.e("IconCache", "saveIconToCache: Icon bitmap is null for app:".concat(str));
            return;
        }
        OutputStream outputStreamF = new q63(b(str), 2).F(true);
        try {
            ai8.a(bitmapA, outputStreamF);
            outputStreamF.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(outputStreamF, th);
                throw th2;
            }
        }
    }

    public static void g(sx3 sx3Var, ImageView imageView, boolean z, boolean z2) {
        imageView.getClass();
        h(imageView, z);
        d(sx3Var, z2).B(imageView);
    }

    public static void h(ImageView imageView, boolean z) {
        imageView.getClass();
        imageView.setColorFilter(z ? (ColorMatrixColorFilter) c.getValue() : (ColorMatrixColorFilter) b.getValue());
    }
}
