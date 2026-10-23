package defpackage;

import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Call;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g62 extends ag8 {
    public final jh1 i;
    public final String j;
    public c62 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g62(jh1 jh1Var, rf8 rf8Var) {
        super(rf8Var);
        jh1Var.getClass();
        rf8Var.getClass();
        this.i = jh1Var;
        this.j = "CsUploadSession";
    }

    @Override // defpackage.ag8
    public final void b() {
        tb1 tb1Var = tb1.a;
        vr6.w$default(vr6.INSTANCE, this.j, eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
        c62 c62Var = this.k;
        if (c62Var != null) {
            f13.a(c62Var);
        }
        jh1 jh1Var = this.i;
        k21 k21Var = jh1Var instanceof k21 ? (k21) jh1Var : null;
        if (k21Var != null) {
            ConcurrentHashMap.KeySetView<jc3> keySetView = ((sb3) k21Var).g;
            keySetView.getClass();
            for (jc3 jc3Var : keySetView) {
                jc3Var.o = true;
                ConcurrentHashMap.KeySetView keySetView2 = jc3Var.p;
                keySetView2.getClass();
                Iterator it = keySetView2.iterator();
                while (it.hasNext()) {
                    ((Call) it.next()).cancel();
                }
            }
        }
    }

    @Override // defpackage.ag8
    public final String d() {
        return this.j;
    }

    @Override // defpackage.ag8
    public final void f() {
        zz4 zz4VarB = uz4.b(this.i);
        if (zz4VarB != null) {
            a(zz4VarB, false);
            return;
        }
        StringBuilder sb = new StringBuilder("/");
        tb1 tb1Var = tb1.a;
        sb.append(qb1.c().i());
        rf8 rf8Var = this.a;
        if (rf8Var.c) {
            sb.append("/");
            sb.append(qb1.e());
        }
        sb.append("/");
        sb.append(rf8Var.b());
        i(sb.toString(), new f62(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [rf8] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.String] */
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
    public final void i(String str, f62 f62Var) {
        rf8 rf8Var = this.a;
        c62 c62Var = new c62(new e62(0, rf8Var.a, q63.class, "inputStream", "inputStream(Z)Ljava/io/InputStream;", 0));
        this.k = c62Var;
        String str2 = rf8Var;
        try {
            try {
                jh1 jh1Var = this.i;
                long jA = str2.a();
                str2 = str;
                try {
                    jh1Var.e(c62Var, str2, jA, new cz(f62Var, 4));
                    this.d.a = str2;
                    c62Var.close();
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        rs9.c(c62Var, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                str2 = str;
            }
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, this.j, "executeUpload:", e, null, 8, null);
            if (e()) {
                return;
            }
            Exception excD = uz4.d(this.i, e);
            if (excD != null) {
                a(excD, false);
                return;
            }
            int i = this.f;
            int i2 = this.e;
            boolean z = i < i2;
            ai6 ai6Var = nf1.a;
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            boolean z2 = (nq7.Z(message, "421", false) && nq7.Z(message, "Server closed", true)) || x13.H(e);
            if (!z || !z2) {
                a(e, false);
            } else if (h(null)) {
                int i3 = this.f + 1;
                this.f = i3;
                vr6.i$default(vr6Var, this.j, dj7.j("executeUpload: Retrying upload (", i3, "/", ")", i2), null, 4, null);
                i(str2, f62Var);
            }
        }
    }
}
