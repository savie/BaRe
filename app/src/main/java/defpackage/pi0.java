package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pi0 implements bt3 {
    public final /* synthetic */ xi0 a;
    public final /* synthetic */ pj0 b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ cd d;
    public final /* synthetic */ ri0 e;

    public /* synthetic */ pi0(xi0 xi0Var, pj0 pj0Var, boolean z, cd cdVar, ri0 ri0Var) {
        this.a = xi0Var;
        this.b = pj0Var;
        this.c = z;
        this.d = cdVar;
        this.e = ri0Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        final xi0 xi0Var = this.a;
        lj0 lj0Var = new lj0(xi0Var.a);
        final pj0 pj0Var = this.b;
        final boolean z = this.c;
        final cd cdVar = this.d;
        final ri0 ri0Var = this.e;
        lj0Var.j(pj0Var, new bt3(xi0Var, pj0Var, z, cdVar, ri0Var) { // from class: qi0
            public final /* synthetic */ pj0 a;
            public final /* synthetic */ boolean b;
            public final /* synthetic */ cd c;
            public final /* synthetic */ ri0 d;

            {
                this.a = pj0Var;
                this.b = z;
                this.c = cdVar;
                this.d = ri0Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v0 */
            /* JADX WARN: Type inference failed for: r4v1 */
            /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r4v3 */
            /* JADX WARN: Type inference failed for: r4v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r6v4 */
            /* JADX WARN: Type inference failed for: r6v5 */
            /* JADX WARN: Type inference failed for: r6v6, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r6v7 */
            /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r7v0, types: [ri0] */
            /* JADX WARN: Type inference failed for: r9v0 */
            /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r9v2 */
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
            @Override // defpackage.bt3
            public final Object invoke() {
                Object next;
                ?? arrayList;
                Object next2;
                ArrayList arrayList2;
                Object next3;
                ?? arrayList3;
                List list;
                pj0 pj0Var2 = this.a;
                Iterator it = pj0Var2.a().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!pe4.d(((jj0) next).a, "system_app_parts"));
                jj0 jj0Var = (jj0) next;
                if (jj0Var != null) {
                    for (li0 li0Var : jj0Var.c) {
                        gu guVar = iu.Companion;
                        String str = li0Var.a;
                        guVar.getClass();
                        iu iuVarA = gu.a(str);
                        if (!li0Var.b() && iuVarA != null) {
                            iuVarA.setCheckedInExpansion(true, li0Var.a());
                        }
                    }
                    ArrayList<li0> arrayListA = jj0Var.a();
                    arrayList = new ArrayList();
                    for (li0 li0Var2 : arrayListA) {
                        gu guVar2 = iu.Companion;
                        String str2 = li0Var2.a;
                        guVar2.getClass();
                        iu iuVarA2 = gu.a(str2);
                        if (iuVarA2 != null) {
                            arrayList.add(iuVarA2);
                        }
                    }
                } else {
                    arrayList = 0;
                }
                Iterator it2 = pj0Var2.a().iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!pe4.d(((jj0) next2).a, "user_app_parts"));
                jj0 jj0Var2 = (jj0) next2;
                if (jj0Var2 != null) {
                    for (li0 li0Var3 : jj0Var2.c) {
                        gu guVar3 = iu.Companion;
                        String str3 = li0Var3.a;
                        guVar3.getClass();
                        iu iuVarA3 = gu.a(str3);
                        if (!li0Var3.b() && iuVarA3 != null) {
                            iuVarA3.setCheckedInExpansion(false, li0Var3.a());
                        }
                    }
                    ArrayList<li0> arrayListA2 = jj0Var2.a();
                    arrayList2 = new ArrayList();
                    for (li0 li0Var4 : arrayListA2) {
                        gu guVar4 = iu.Companion;
                        String str4 = li0Var4.a;
                        guVar4.getClass();
                        iu iuVarA4 = gu.a(str4);
                        if (iuVarA4 != null) {
                            arrayList2.add(iuVarA4);
                        }
                    }
                } else {
                    arrayList2 = null;
                }
                Iterator it3 = pj0Var2.a().iterator();
                do {
                    if (!it3.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it3.next();
                } while (!pe4.d(((jj0) next3).a, "locations"));
                jj0 jj0Var3 = (jj0) next3;
                if (jj0Var3 != null) {
                    for (li0 li0Var5 : jj0Var3.c) {
                        o05 o05Var = q05.Companion;
                        String str5 = li0Var5.a;
                        o05Var.getClass();
                        q05 q05VarA = o05.a(str5);
                        if (!li0Var5.b() && q05VarA != null) {
                            q05VarA.setCheckedInExpansion(1, li0Var5.a());
                        }
                    }
                    ArrayList<li0> arrayListA3 = jj0Var3.a();
                    arrayList3 = new ArrayList();
                    for (li0 li0Var6 : arrayListA3) {
                        o05 o05Var2 = q05.Companion;
                        String str6 = li0Var6.a;
                        o05Var2.getClass();
                        q05 q05VarA2 = o05.a(str6);
                        if (q05VarA2 != null) {
                            arrayList3.add(q05VarA2);
                        }
                    }
                } else {
                    arrayList3 = 0;
                }
                boolean z2 = pj0Var2 instanceof mj0;
                ?? r7 = this.d;
                ov2 ov2Var = ov2.a;
                List list2 = arrayList2;
                if (z2) {
                    if (arrayList2 == null) {
                        list2 = ov2Var;
                    }
                    if (arrayList == 0) {
                        arrayList = ov2Var;
                    }
                    if (arrayList3 == 0) {
                        arrayList3 = ov2Var;
                    }
                    r7.g(list2, arrayList, arrayList3, ((mj0) pj0Var2).e);
                } else if (pj0Var2 instanceof oj0) {
                    if (arrayList2 == null) {
                        list = ov2Var;
                    }
                    r7.d(list, arrayList == 0 ? ov2Var : arrayList, ((oj0) pj0Var2).e, !this.b, this.c);
                } else {
                    if (!(pj0Var2 instanceof nj0)) {
                        list = arrayList2;
                        q.j();
                        return null;
                    }
                    list = arrayList2;
                    r7.a(qy7.f);
                }
                return be8.a;
            }
        });
        return be8.a;
    }
}
