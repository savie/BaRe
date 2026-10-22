package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i40 {
    public final int a;
    public final ArrayList b;
    public final boolean c;
    public final String d;

    public i40(int i, ArrayList arrayList, boolean z, String str) {
        this.a = i;
        this.b = arrayList;
        this.c = z;
        this.d = str;
    }

    public final boolean a(String str) {
        String strI0 = nq7.I0(str, '/');
        ArrayList arrayList = this.b;
        if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (pe4.d(nq7.I0((String) it.next(), '/'), strI0)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i40)) {
            return false;
        }
        i40 i40Var = (i40) obj;
        return this.a == i40Var.a && pe4.d(this.b, i40Var.b) && this.c == i40Var.c && pe4.d(this.d, i40Var.d);
    }

    public final int hashCode() {
        int iH = fz5.h((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31, 31, this.c);
        String str = this.d;
        return iH + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ArchiveInfo(format=" + this.a + ", entries=" + this.b + ", isEncrypted=" + this.c + ", encryptionLabel=" + this.d + ")";
    }
}
