package defpackage;

import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sc {
    public final ArrayList a;
    public final m35 b;

    public sc(ArrayList arrayList, m35 m35Var) {
        this.a = arrayList;
        this.b = m35Var;
    }

    public static pc a(ImageDecoder.Source source, int i, int i2, ou5 ou5Var) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new if2(i, i2, ou5Var));
        if (drawableDecodeDrawable instanceof AnimatedImageDrawable) {
            return new pc((AnimatedImageDrawable) drawableDecodeDrawable);
        }
        c6.n(drawableDecodeDrawable, "Received unexpected drawable type for animated image, failing: ");
        return null;
    }
}
