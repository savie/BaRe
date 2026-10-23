package defpackage;

import android.content.Context;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ya8 {
    public static volatile q92 e;
    public final ba1 a;
    public final ba1 b;
    public final sf2 c;
    public final fg8 d;

    public ya8(ba1 ba1Var, ba1 ba1Var2, sf2 sf2Var, fg8 fg8Var, e38 e38Var) {
        this.a = ba1Var;
        this.b = ba1Var2;
        this.c = sf2Var;
        this.d = fg8Var;
        ((Executor) e38Var.b).execute(new o10(e38Var, 7));
    }

    public static ya8 a() {
        q92 q92Var = e;
        if (q92Var != null) {
            return (ya8) q92Var.f.get();
        }
        l0.e("Not initialized!");
        return null;
    }

    public static void b(Context context) {
        if (e == null) {
            synchronized (ya8.class) {
                try {
                    if (e == null) {
                        p92 p92Var = new p92();
                        context.getClass();
                        p92Var.a = context;
                        e = p92Var.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final xa8 c(oy0 oy0Var) {
        byte[] bytes;
        Set setUnmodifiableSet = oy0Var instanceof oy0 ? Collections.unmodifiableSet(oy0.d) : Collections.singleton(new dw2("proto"));
        gh ghVarA = oe0.a();
        oy0Var.getClass();
        ghVarA.a = "cct";
        String str = oy0Var.a;
        String str2 = oy0Var.b;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = dj7.l("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
        }
        ghVarA.b = bytes;
        return new xa8(setUnmodifiableSet, ghVarA.e(), this);
    }
}
