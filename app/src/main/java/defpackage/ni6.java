package defpackage;

import android.os.Trace;
import com.bumptech.glide.a;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ni6 implements ry3 {
    public boolean a;
    public final /* synthetic */ a b;
    public final /* synthetic */ List c;
    public final /* synthetic */ x13 d;

    public ni6(a aVar, List list, x13 x13Var) {
        this.b = aVar;
        this.c = list;
        this.d = x13Var;
    }

    @Override // defpackage.ry3
    public final Object get() {
        if (this.a) {
            l0.e("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
            return null;
        }
        iz1.b("Glide registry");
        this.a = true;
        try {
            return zm5.i(this.b, this.c, this.d);
        } finally {
            this.a = false;
            Trace.endSection();
        }
    }
}
