package defpackage;

import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g40 {
    public long a;
    public BitSet c;
    public long[] d;
    public l22 f;
    public l40 h;
    public long[] b = new long[0];
    public hj3[] e = hj3.j;
    public wa7[] g = wa7.s;

    public final String toString() {
        StringBuilder sb = new StringBuilder("Archive with packed streams starting at offset ");
        sb.append(this.a);
        sb.append(", ");
        sb.append(Integer.toString(this.b.length));
        sb.append(" pack sizes, ");
        long[] jArr = this.d;
        sb.append(jArr == null ? "(null)" : Integer.toString(jArr.length));
        sb.append(" CRCs, ");
        sb.append(Integer.toString(this.e.length));
        sb.append(" folders, ");
        wa7[] wa7VarArr = this.g;
        sb.append(wa7VarArr != null ? Integer.toString(wa7VarArr.length) : "(null)");
        sb.append(" files and ");
        sb.append(this.h);
        return sb.toString();
    }
}
