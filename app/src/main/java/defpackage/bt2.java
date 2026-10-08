package defpackage;

import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bt2 {
    public static final BitSet h = new BitSet(128);
    public static final BitSet i = new BitSet(128);
    public final BitSet a;
    public int f;
    public int e = 0;
    public boolean b = true;
    public boolean c = false;
    public boolean d = false;
    public String g = null;

    static {
        char[] cArr = {'(', ')', '<', '>', '@', ',', ';', ':', '\\', '\"', '/', '[', ']', '?', '=', '{', '}'};
        for (int i2 = 0; i2 < 17; i2++) {
            h.set(cArr[i2]);
        }
        char[] cArr2 = {'\"', ',', ';', '\\'};
        for (int i3 = 0; i3 < 4; i3++) {
            i.set(cArr2[i3]);
        }
    }

    public bt2(BitSet bitSet) {
        this.a = bitSet;
    }

    public final boolean a(char c, int i2) {
        if (c == ' ' || c == '\t') {
            if (this.c) {
                this.f = i2;
                this.c = false;
                this.d = true;
            }
            return true;
        }
        if (c <= ' ' || c >= 127 || this.a.get(c)) {
            return false;
        }
        if (this.b) {
            this.e = i2;
            this.c = true;
            this.b = false;
        }
        return !this.d;
    }

    public final boolean b(int i2, String str) {
        if (this.c) {
            this.f = i2;
            this.c = false;
            this.d = true;
        }
        if (!this.d) {
            return false;
        }
        this.g = str.substring(this.e, this.f);
        return true;
    }
}
