package org.swiftapps.swiftbackup.database;

import defpackage.gj;
import defpackage.gu2;
import defpackage.gv7;
import defpackage.hs4;
import defpackage.kg4;
import defpackage.kv6;
import defpackage.nv6;
import defpackage.om;
import defpackage.ov2;
import defpackage.ph6;
import defpackage.z35;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MDatabase_Impl extends MDatabase {
    public final gv7 l = new gv7(new hs4(this, 3));
    public final gv7 m = new gv7(new gj(this, 28));

    @Override // defpackage.eo6
    public final List a(LinkedHashMap linkedHashMap) {
        return new ArrayList();
    }

    @Override // defpackage.eo6
    public final kg4 b() {
        return new kg4(this, new LinkedHashMap(), new LinkedHashMap(), "SMessage", "app_cached_data");
    }

    @Override // defpackage.eo6
    public final gu2 c() {
        return new z35(this);
    }

    @Override // defpackage.eo6
    public final Set f() {
        return new LinkedHashSet();
    }

    @Override // defpackage.eo6
    public final LinkedHashMap g() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ph6.a(kv6.class), nv6.Companion.getRequiredConverters());
        linkedHashMap.put(ph6.a(om.class), ov2.a);
        return linkedHashMap;
    }

    @Override // org.swiftapps.swiftbackup.database.MDatabase
    public final om l() {
        return (om) this.m.getValue();
    }

    @Override // org.swiftapps.swiftbackup.database.MDatabase
    public final kv6 m() {
        return (kv6) this.l.getValue();
    }
}
