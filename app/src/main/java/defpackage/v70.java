package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v70 implements Map.Entry, Cloneable {
    public String a;
    public String b;
    public b80 c;

    public final Object clone() {
        try {
            return (v70) super.clone();
        } catch (CloneNotSupportedException e) {
            y5.k(e);
            return null;
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && v70.class == obj.getClass()) {
            v70 v70Var = (v70) obj;
            String str = this.a;
            String str2 = v70Var.a;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            String str3 = this.b;
            String str4 = v70Var.b;
            if (str3 != null) {
                return str3.equals(str4);
            }
            if (str4 == null) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        String str;
        String str2 = (String) obj;
        b80 b80Var = this.c;
        String str3 = this.a;
        int iC = b80Var.c(str3);
        String str4 = "";
        if (iC != -1 && (str = b80Var.c[iC]) != null) {
            str4 = str;
        }
        int iC2 = b80Var.c(str3);
        if (iC2 != -1) {
            b80Var.c[iC2] = str2;
        }
        this.b = str2;
        return str4;
    }
}
