package defpackage;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jo6 extends zy4 {
    public final MDatabase_Impl l;
    public final h80 m;
    public final lo6 n;
    public final AtomicBoolean o;
    public final AtomicBoolean p;
    public final AtomicBoolean q;
    public final ox1 r;
    public final t34 s;

    public jo6(MDatabase_Impl mDatabase_Impl, h80 h80Var, String[] strArr, t34 t34Var) {
        h80Var.getClass();
        this.l = mDatabase_Impl;
        this.m = h80Var;
        this.n = new lo6(strArr, this);
        this.o = new AtomicBoolean(true);
        this.p = new AtomicBoolean(false);
        this.q = new AtomicBoolean(false);
        this.r = mDatabase_Impl.h() ? mDatabase_Impl.e() : lv2.a;
        this.s = t34Var;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00fe A[Catch: Exception -> 0x003b, all -> 0x0112, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x003b, blocks: (B:12:0x0031, B:65:0x00fe), top: B:90:0x0031, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x010a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x010b  */
    /* JADX WARN: Code duplicated, block: B:75:0x011c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x011e A[Catch: all -> 0x0112, TRY_LEAVE, TryCatch #1 {all -> 0x0112, blocks: (B:65:0x00fe, B:76:0x011e, B:73:0x0114, B:74:0x011b, B:12:0x0031), top: B:89:0x002b, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x00f6 -> B:92:0x00f8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x010b -> B:13:0x0034). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x012b -> B:82:0x012c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object l(defpackage.jo6 r21, defpackage.kv1 r22) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jo6.l(jo6, kv1):java.lang.Object");
    }

    @Override // defpackage.zy4
    public final void g() {
        h80 h80Var = this.m;
        h80Var.getClass();
        ((Set) h80Var.c).add(this);
        dv1 dv1Var = this.l.a;
        jv1 jv1Var = null;
        if (dv1Var == null) {
            pe4.F("coroutineScope");
            throw null;
        }
        l73.v(dv1Var, this.r, new mg1(this, jv1Var, 3), 2);
    }

    @Override // defpackage.zy4
    public final void h() {
        h80 h80Var = this.m;
        h80Var.getClass();
        ((Set) h80Var.c).remove(this);
    }
}
