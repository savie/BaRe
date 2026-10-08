package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ow7 {
    public final String a;
    public final String b;
    public final String c;
    public final ArrayList d;
    public final ArrayList e;

    public ow7(String str, String str2, String str3, ArrayList arrayList, ArrayList arrayList2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
        this.e = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow7)) {
            return false;
        }
        ow7 ow7Var = (ow7) obj;
        if (pe4.d(this.a, ow7Var.a) && pe4.d(this.b, ow7Var.b) && pe4.d(this.c, ow7Var.c) && this.d.equals(ow7Var.d)) {
            return this.e.equals(ow7Var.e);
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c)) * 31);
    }

    public final String toString() {
        return oq7.K(oq7.M("\n            |ForeignKey {\n            |   referenceTable = '" + this.a + "',\n            |   onDelete = '" + this.b + "',\n            |   onUpdate = '" + this.c + "',\n            |   columnNames = {" + oq7.K(el1.Y0(el1.m1(this.d), ",", null, null, null, 62)).concat(oq7.K("},")) + "\n            |   referenceColumnNames = {" + oq7.K(el1.Y0(el1.m1(this.e), ",", null, null, null, 62)).concat(oq7.K(" }")) + "\n            |}\n        "));
    }
}
