package defpackage;

import android.text.style.StrikethroughSpan;
import java.util.Arrays;
import java.util.Collection;
import org.commonmark.ext.gfm.strikethrough.Strikethrough;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xp7 extends ix7 {
    public static final boolean a;

    static {
        boolean z;
        try {
            Class.forName("org.commonmark.ext.gfm.strikethrough.Strikethrough");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        a = z;
    }

    public static Object d(bs2 bs2Var) {
        j75 j75Var = (j75) bs2Var.b;
        sj7 sj7VarA = ((ky3) j75Var.k).a(Strikethrough.class);
        if (sj7VarA == null) {
            return null;
        }
        return sj7VarA.a(j75Var, (di4) bs2Var.c);
    }

    @Override // defpackage.ix7
    public final void a(bs2 bs2Var, yc9 yc9Var, q64 q64Var) {
        if (q64Var.c()) {
            ix7.c(bs2Var, yc9Var, q64Var.b());
        }
        wj7.c((wj7) bs2Var.d, a ? d(bs2Var) : new StrikethroughSpan(), q64Var.b, q64Var.d);
    }

    @Override // defpackage.ix7
    public final Collection b() {
        return Arrays.asList("s", "del");
    }
}
