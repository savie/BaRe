package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.SortedMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vi5 extends q4 {
    public transient ui5 f;

    @Override // defpackage.ti5
    public final Map b() {
        Map map = this.c;
        if (map != null) {
            return map;
        }
        d4 d4VarD = d();
        this.c = d4VarD;
        return d4VarD;
    }

    @Override // defpackage.q4
    public final d4 d() {
        Map map = this.d;
        if (map instanceof NavigableMap) {
            return new g4(this, (NavigableMap) map);
        }
        return map instanceof SortedMap ? new j4(this, (SortedMap) map) : new d4(this, map);
    }

    @Override // defpackage.q4
    public final Collection e() {
        ui5 ui5Var = this.f;
        ui5Var.getClass();
        return new ArrayList(ui5Var.a);
    }

    @Override // defpackage.q4
    public final f4 f() {
        Map map = this.d;
        if (map instanceof NavigableMap) {
            return new h4(this, (NavigableMap) map);
        }
        return map instanceof SortedMap ? new k4(this, (SortedMap) map) : new f4(this, map);
    }

    @Override // defpackage.q4
    public final Collection h(Object obj, Collection collection) {
        List list = (List) collection;
        return list instanceof RandomAccess ? new i4(this, obj, list, null) : new o4(this, obj, list, null);
    }
}
