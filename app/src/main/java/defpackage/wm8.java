package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wm8 {
    public static final cn8 a;
    public static final w03 b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            a = new dn8();
        } else {
            a = new cn8();
        }
        b = new w03(Float.class, "translationAlpha", 2);
        new m71(Rect.class, "clipBounds", 1);
    }

    public static void a(View view, int i, int i2, int i3, int i4) {
        a.I(view, i, i2, i3, i4);
    }

    public static void b(View view, int i) {
        a.J(view, i);
    }
}
