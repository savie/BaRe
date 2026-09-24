package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g23 implements Serializable {
    public int a;
    public long b;
    public String c;
    public String d;
    public Calendar e;
    public final boolean[][] f;

    public g23() {
        this.a = 3;
        this.b = -1L;
        this.f = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, 3);
    }

    public final void a(int i, int i2, boolean z) {
        this.f[i][i2] = z;
    }

    public final String toString() {
        return this.c;
    }

    public g23(String str) {
        this.a = 3;
        this.b = -1L;
        this.f = null;
        this.c = str;
    }
}
