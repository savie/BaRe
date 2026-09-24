package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c82 extends xh2 {
    public final br2 c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c82(br2 br2Var, zv1 zv1Var) {
        super(zv1Var);
        br2Var.getClass();
        this.c = br2Var;
        this.d = "DDeleteSession";
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:55:0x0101 A[LOOP:1: B:22:0x0078->B:55:0x0101, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x00df A[SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void e(c82 c82Var, ArrayList arrayList) throws IOException {
        xx3 rq2Var;
        wx3 pq2Var;
        br2 br2Var = c82Var.c;
        br2Var.getClass();
        xi4 xi4Var = new xi4();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            fl4 fl4Var = new fl4();
            fl4Var.u("path", str);
            xi4Var.p(fl4Var);
        }
        fl4 fl4Var2 = new fl4();
        fl4Var2.p("entries", xi4Var);
        fl4 fl4VarE = br2Var.e(fl4Var2, "/2/files/delete_batch");
        String strH = jd4.H(fl4VarE, ".tag");
        if (pe4.d(strH, "complete")) {
            rq2Var = new sq2(br2.j(fl4VarE));
        } else {
            if (!pe4.d(strH, "async_job_id")) {
                c6.n(fl4VarE, "Unexpected Dropbox delete_batch response: ");
                return;
            }
            String strH2 = jd4.H(fl4VarE, "async_job_id");
            if (strH2 == null) {
                strH2 = "";
            }
            rq2Var = new rq2(strH2);
        }
        if (rq2Var instanceof sq2) {
            us2.u(((sq2) rq2Var).j);
            return;
        }
        if (!(rq2Var instanceof rq2)) {
            q.j();
            return;
        }
        rq2 rq2Var2 = (rq2) rq2Var;
        for (int i = 0; i < 20; i++) {
            try {
                Thread.sleep(1000L);
            } catch (Exception unused) {
            }
            br2Var.getClass();
            fl4 fl4Var3 = new fl4();
            fl4Var3.u("async_job_id", rq2Var2.j);
            fl4 fl4VarE2 = br2Var.e(fl4Var3, "/2/files/delete_batch/check");
            String strH3 = jd4.H(fl4VarE2, ".tag");
            if (strH3 != null) {
                int iHashCode = strH3.hashCode();
                if (iHashCode != -1281977283) {
                    if (iHashCode != -753541113) {
                        if (iHashCode == -599445191 && strH3.equals("complete")) {
                            pq2Var = new oq2(br2.j(fl4VarE2));
                            if (!(pq2Var instanceof qq2)) {
                                if (pq2Var instanceof oq2) {
                                    us2.u(((oq2) pq2Var).g);
                                    return;
                                } else if (pq2Var instanceof pq2) {
                                    y5.m(xs1.j("Dropbox delete batch failed: ", ((pq2) pq2Var).g));
                                    return;
                                } else {
                                    q.j();
                                    return;
                                }
                            }
                        }
                    } else if (strH3.equals("in_progress")) {
                        pq2Var = qq2.g;
                        if (!(pq2Var instanceof qq2)) {
                            if (pq2Var instanceof oq2) {
                                us2.u(((oq2) pq2Var).g);
                                return;
                            } else if (pq2Var instanceof pq2) {
                                y5.m(xs1.j("Dropbox delete batch failed: ", ((pq2) pq2Var).g));
                                return;
                            } else {
                                q.j();
                                return;
                            }
                        }
                    }
                } else if (strH3.equals("failed")) {
                    pq2Var = new pq2(jd4.H(fl4VarE2, "error_summary"));
                    if (!(pq2Var instanceof qq2)) {
                        if (pq2Var instanceof oq2) {
                            us2.u(((oq2) pq2Var).g);
                            return;
                        } else if (pq2Var instanceof pq2) {
                            y5.m(xs1.j("Dropbox delete batch failed: ", ((pq2) pq2Var).g));
                            return;
                        } else {
                            q.j();
                            return;
                        }
                    }
                }
            }
            c6.n(fl4VarE2, "Unexpected Dropbox delete_batch/check response: ");
            return;
        }
        y5.m("Dropbox delete batch did not finish in time");
    }

    @Override // defpackage.xh2
    public final boolean b(List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        try {
            e(this, arrayList);
            return true;
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, this.d, "deleteFilesByIds", e, null, 8, null);
            if (!(e instanceof kq2)) {
                throw e;
            }
            kq2 kq2Var = (kq2) e;
            if (!kq2Var.d()) {
                throw e;
            }
            vr6.i$default(vr6Var, this.d, "Retrying...", null, 4, null);
            Long l = kq2Var.c;
            try {
                Thread.sleep(l != null ? l.longValue() : 5000L);
            } catch (Exception unused) {
            }
            e(this, arrayList);
            return true;
        }
    }

    @Override // defpackage.xh2
    public final String d() {
        return this.d;
    }
}
