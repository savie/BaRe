package defpackage;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e25 {
    public HashMap c;
    public HashMap d;
    public HashMap e;
    public ArrayList f;
    public yj7 g;
    public v15 h;
    public ArrayList i;
    public Rect j;
    public float k;
    public float l;
    public float m;
    public boolean n;
    public final az5 a = new az5();
    public final HashSet b = new HashSet();
    public int o = 0;

    public final void a(String str) {
        m15.b(str);
        this.b.add(str);
    }

    public final float b() {
        return (long) (((this.l - this.k) / this.m) * 1000.0f);
    }

    public final g75 c(String str) {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            g75 g75Var = (g75) this.f.get(i);
            String str2 = g75Var.a;
            if (str2.equalsIgnoreCase(str) || (str2.endsWith("\r") && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                return g75Var;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            sb.append(((js4) it.next()).a("\t"));
        }
        return sb.toString();
    }
}
