package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ou3 {
    public final /* synthetic */ jh6 a;
    public final /* synthetic */ pu3 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ zz3 d;
    public final /* synthetic */ long e;
    public final /* synthetic */ rm f;
    public final /* synthetic */ gj g;

    public ou3(jh6 jh6Var, pu3 pu3Var, String str, zz3 zz3Var, long j, rm rmVar, gj gjVar) {
        this.a = jh6Var;
        this.b = pu3Var;
        this.c = str;
        this.d = zz3Var;
        this.e = j;
        this.f = rmVar;
        this.g = gjVar;
    }

    public final h04 a(String str, InputStream inputStream, long j, long j2, long j3, e04 e04Var) throws Exception {
        pu3 pu3Var = this.b;
        str.getClass();
        try {
            m04 m04VarO = pu3Var.j.o(str, inputStream, j, j2, j3, e04Var);
            long j4 = m04VarO.c;
            String str2 = m04VarO.d;
            if (!pe4.d(str2, str)) {
                vr6.i$default(vr6.INSTANCE, pu3Var.k, u48.l(j4, "Google Drive rotated the resumable upload URL after byte "), null, 4, null);
            }
            if (!m04VarO.a) {
                return new g04(j4, str2);
            }
            yz3 yz3Var = m04VarO.b;
            if (yz3Var != null) {
                return new f04(yz3Var);
            }
            l0.e("Google Drive upload completed without file metadata");
            return null;
        } catch (Exception e) {
            vz3 vz3Var = e instanceof vz3 ? (vz3) e : null;
            Object objValueOf = vz3Var != null ? Integer.valueOf(vz3Var.b) : null;
            long j5 = j2 == 0 ? j : (j + j2) - 1;
            vr6 vr6Var = vr6.INSTANCE;
            String str3 = pu3Var.k;
            if (objValueOf == null) {
                objValueOf = "transport";
            }
            StringBuilder sbT = dj7.t("Google Drive chunk failed: range=", "-", j);
            sbT.append(j5);
            fz5.r(sbT, "/", j3, ", status=");
            sbT.append(objValueOf);
            vr6.e$default(vr6Var, str3, sbT.toString(), e, null, 8, null);
            throw e;
        }
    }

    public final h04 b(long j, String str) throws Exception {
        pu3 pu3Var = this.b;
        str.getClass();
        try {
            o04 o04VarJ = pu3Var.j.j(j, str);
            String str2 = o04VarJ.d;
            if (!pe4.d(str2, str)) {
                vr6.i$default(vr6.INSTANCE, pu3Var.k, "Google Drive rotated the resumable upload URL during a status query", null, 4, null);
            }
            if (!o04VarJ.a) {
                return new g04(o04VarJ.c, str2);
            }
            yz3 yz3Var = o04VarJ.b;
            if (yz3Var != null) {
                return new f04(yz3Var);
            }
            l0.e("Google Drive upload status completed without file metadata");
            return null;
        } catch (Exception e) {
            vz3 vz3Var = e instanceof vz3 ? (vz3) e : null;
            Object objValueOf = vz3Var != null ? Integer.valueOf(vz3Var.b) : null;
            vr6 vr6Var = vr6.INSTANCE;
            String str3 = pu3Var.k;
            if (objValueOf == null) {
                objValueOf = "transport";
            }
            vr6.e$default(vr6Var, str3, "Google Drive upload status query failed: total=" + j + ", status=" + objValueOf, e, null, 8, null);
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public final k04 c() throws Exception {
        vz3 vz3Var;
        Long l;
        vz3 vz3Var2;
        long j = this.e;
        zz3 zz3Var = this.d;
        String str = this.c;
        jh6 jh6Var = this.a;
        int i = jh6Var.a + 1;
        jh6Var.a = i;
        vr6 vr6Var = vr6.INSTANCE;
        pu3 pu3Var = this.b;
        d04 d04Var = pu3Var.j;
        vr6.i$default(vr6Var, pu3Var.k, fz5.j(i, "Starting Google Drive upload session "), null, 4, null);
        try {
            n04 n04VarD = d04Var.d(str, zz3Var, j);
            this.f.invoke();
            return new j04(n04VarD.a);
        } catch (Exception e) {
            this.g.invoke();
            if (!(e instanceof vz3)) {
                throw e;
            }
            vz3 vz3Var3 = (vz3) e;
            String str2 = zz3Var.a;
            yz3 yz3VarI = null;
            if ((str == null || nq7.j0(str)) && vz3Var3.b == 409 && str2 != null && !nq7.j0(str2)) {
                int i2 = pu3Var.e;
                while (true) {
                    try {
                        yz3VarI = d04Var.i(str2, "id, name, size, parents, trashed");
                        String str3 = zz3Var.c;
                        if (!pe4.d(yz3VarI.a, str2) || !yz3VarI.b.equals(zz3Var.b) || yz3VarI.c != j || yz3VarI.h || (str3 != null && !nq7.j0(str3) && !yz3VarI.g.contains(str3))) {
                            yc9.a(vz3Var3, new IOException("Generated Google Drive file id resolved to unexpected metadata"));
                            throw vz3Var3;
                        }
                        vr6.i$default(vr6.INSTANCE, pu3Var.k, "Reconciled a completed Google Drive upload after a create conflict", null, 4, null);
                    } catch (Exception e2) {
                        yc9.a(e2, vz3Var3);
                        if (pu3Var.f < i2 && pu3Var.k(e2)) {
                            if (e2 instanceof vz3) {
                                vz3Var2 = (vz3) e2;
                            } else {
                                vz3Var = yz3VarI;
                            }
                            if (vz3Var != 0) {
                                vz3Var = vz3Var2;
                                l = vz3Var.d;
                            } else {
                                vz3Var = vz3Var2;
                                l = yz3VarI;
                            }
                            if (!pu3Var.h(l)) {
                                break;
                            }
                            int i3 = pu3Var.f + 1;
                            pu3Var.f = i3;
                            vr6.i$default(vr6.INSTANCE, pu3Var.k, dj7.j("Retrying Google Drive completed-upload verification (", i3, "/", ")", i2), null, 4, null);
                        } else {
                            break;
                        }
                        throw e2;
                    }
                }
                throw e2;
            }
            if (yz3VarI != null) {
                return new i04(yz3VarI);
            }
            throw e;
        }
    }
}
