package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o64 extends q64 {
    public final o64 e;
    public ArrayList f;

    public o64(String str, int i, Map map, o64 o64Var) {
        super(str, i, map);
        this.e = o64Var;
    }

    @Override // defpackage.q64
    public final Map a() {
        return this.c;
    }

    @Override // defpackage.q64
    public final boolean c() {
        return true;
    }

    public final void e(int i) {
        if (d()) {
            return;
        }
        this.d = i;
        ArrayList arrayList = this.f;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((o64) it.next()).e(i);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BlockImpl{name='");
        sb.append(this.a);
        sb.append("', start=");
        sb.append(this.b);
        sb.append(", end=");
        sb.append(this.d);
        sb.append(", attributes=");
        sb.append(this.c);
        sb.append(", parent=");
        o64 o64Var = this.e;
        sb.append(o64Var != null ? o64Var.a : null);
        sb.append(", children=");
        sb.append(this.f);
        sb.append('}');
        return sb.toString();
    }

    @Override // defpackage.q64
    public final o64 b() {
        return this;
    }
}
