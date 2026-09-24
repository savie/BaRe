package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bw4 implements Map.Entry {
    public bw4 a;
    public bw4 b;
    public bw4 c;
    public bw4 d;
    public bw4 e;
    public final Object f;
    public final int k;
    public Object n;
    public int p;

    public bw4(bw4 bw4Var, Object obj, int i, bw4 bw4Var2, bw4 bw4Var3) {
        this.a = bw4Var;
        this.f = obj;
        this.k = i;
        this.p = 1;
        this.d = bw4Var2;
        this.e = bw4Var3;
        bw4Var3.d = this;
        bw4Var2.e = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.n;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.n;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.n;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.n;
        this.n = obj;
        return obj2;
    }

    public final String toString() {
        return this.f + "=" + this.n;
    }

    public bw4() {
        this.f = null;
        this.k = -1;
        this.e = this;
        this.d = this;
    }
}
