package defpackage;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nv6 implements kv6 {
    public static final b Companion = new b(null);
    private final eo6 __db;
    private final hx2 __insertAdapterOfSMessage;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends hx2 {
        @Override // defpackage.hx2
        public void bind(nw6 nw6Var, jv6 jv6Var) {
            nw6Var.getClass();
            jv6Var.getClass();
            nw6Var.e(1, jv6Var.getTime());
            nw6Var.e(2, jv6Var.getMessageType());
            nw6Var.C(3, jv6Var.getTitle());
            nw6Var.C(4, jv6Var.getMsg());
            String color = jv6Var.getColor();
            if (color == null) {
                nw6Var.f(5);
            } else {
                nw6Var.C(5, color);
            }
            nw6Var.e(6, jv6Var.getId());
        }

        @Override // defpackage.hx2
        public String createQuery() {
            return "INSERT OR REPLACE INTO `SMessage` (`time`,`messageType`,`title`,`msg`,`color`,`id`) VALUES (?,?,?,?,?,nullif(?, 0))";
        }
    }

    public nv6(eo6 eo6Var) {
        eo6Var.getClass();
        this.__db = eo6Var;
        this.__insertAdapterOfSMessage = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int count$lambda$0(String str, fw6 fw6Var) throws Exception {
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0(str);
        try {
            return nw6VarP0.i0() ? (int) nw6VarP0.getLong(0) : 0;
        } finally {
            nw6VarP0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 deleteAll$lambda$0(String str, fw6 fw6Var) throws Exception {
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0(str);
        try {
            nw6VarP0.i0();
            return be8.a;
        } finally {
            nw6VarP0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int deleteOlderThan$lambda$0(String str, long j, fw6 fw6Var) throws Exception {
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0(str);
        try {
            nw6VarP0.e(1, j);
            nw6VarP0.i0();
            return sz8.B(fw6Var);
        } finally {
            nw6VarP0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List loadLatestMessages$lambda$0(String str, int i, fw6 fw6Var) throws Exception {
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0(str);
        try {
            nw6VarP0.e(1, i);
            int iU = bb9.u(nw6VarP0, "time");
            int iU2 = bb9.u(nw6VarP0, "messageType");
            int iU3 = bb9.u(nw6VarP0, "title");
            int iU4 = bb9.u(nw6VarP0, "msg");
            int iU5 = bb9.u(nw6VarP0, "color");
            int iU6 = bb9.u(nw6VarP0, "id");
            ArrayList arrayList = new ArrayList();
            while (nw6VarP0.i0()) {
                jv6 jv6Var = new jv6(nw6VarP0.getLong(iU), (int) nw6VarP0.getLong(iU2), nw6VarP0.R(iU3), nw6VarP0.R(iU4), nw6VarP0.isNull(iU5) ? null : nw6VarP0.R(iU5));
                jv6Var.setId(nw6VarP0.getLong(iU6));
                arrayList.add(jv6Var);
            }
            return arrayList;
        } finally {
            nw6VarP0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List loadMessagesAfterTime$lambda$0(String str, long j, fw6 fw6Var) throws Exception {
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0(str);
        try {
            nw6VarP0.e(1, j);
            int iU = bb9.u(nw6VarP0, "time");
            int iU2 = bb9.u(nw6VarP0, "messageType");
            int iU3 = bb9.u(nw6VarP0, "title");
            int iU4 = bb9.u(nw6VarP0, "msg");
            int iU5 = bb9.u(nw6VarP0, "color");
            int iU6 = bb9.u(nw6VarP0, "id");
            ArrayList arrayList = new ArrayList();
            while (nw6VarP0.i0()) {
                jv6 jv6Var = new jv6(nw6VarP0.getLong(iU), (int) nw6VarP0.getLong(iU2), nw6VarP0.R(iU3), nw6VarP0.R(iU4), nw6VarP0.isNull(iU5) ? null : nw6VarP0.R(iU5));
                jv6Var.setId(nw6VarP0.getLong(iU6));
                arrayList.add(jv6Var);
            }
            return arrayList;
        } finally {
            nw6VarP0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final be8 put$lambda$0(nv6 nv6Var, jv6 jv6Var, fw6 fw6Var) {
        fw6Var.getClass();
        nv6Var.__insertAdapterOfSMessage.insert(fw6Var, jv6Var);
        return be8.a;
    }

    @Override // defpackage.kv6
    public int count() {
        return ((Number) g67.z(this.__db, true, false, new gf1(4))).intValue();
    }

    @Override // defpackage.kv6
    public void deleteAll() {
        g67.z(this.__db, false, true, new zi1(7));
    }

    @Override // defpackage.kv6
    public int deleteOlderThan(final long j) {
        return ((Number) g67.z(this.__db, false, true, new mt3() { // from class: lv6
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return Integer.valueOf(nv6.deleteOlderThan$lambda$0("DELETE FROM smessage WHERE time < ?", j, (fw6) obj));
            }
        })).intValue();
    }

    @Override // defpackage.kv6
    public List<jv6> loadLatestMessages(final int i) {
        return (List) g67.z(this.__db, true, false, new mt3() { // from class: mv6
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                return nv6.loadLatestMessages$lambda$0("SELECT * FROM (SELECT * FROM smessage ORDER BY id DESC LIMIT ?) ORDER BY id ASC", i, (fw6) obj);
            }
        });
    }

    @Override // defpackage.kv6
    public zy4 loadMessagesAfterTime(long j) {
        kg4 kg4VarD = this.__db.d();
        String[] strArr = {"smessage"};
        t34 t34Var = new t34(1, j);
        kg4VarD.b.f(strArr);
        h80 h80Var = kg4VarD.g;
        h80Var.getClass();
        return new jo6((MDatabase_Impl) h80Var.b, h80Var, strArr, t34Var);
    }

    @Override // defpackage.kv6
    public void put(jv6 jv6Var) {
        jv6Var.getClass();
        g67.z(this.__db, false, true, new ev(2, this, jv6Var));
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    /* JADX INFO: loaded from: classes.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<n81> getRequiredConverters() {
            return ov2.a;
        }

        private b() {
        }
    }
}
