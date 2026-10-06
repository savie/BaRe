package defpackage;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qf9 extends xi9 {
    private static final qf9 zzb;
    private ej9 zzd = em9.e;

    static {
        qf9 qf9Var = new qf9();
        zzb = qf9Var;
        xi9.f(qf9.class, qf9Var);
    }

    public static mf9 p() {
        return (mf9) zzb.k();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void q(qf9 qf9Var, ArrayList arrayList) {
        ej9 ej9Var = qf9Var.zzd;
        if (!((og9) ej9Var).a) {
            int size = ej9Var.size();
            qf9Var.zzd = ej9Var.zzd(size + size);
        }
        List list = qf9Var.zzd;
        Charset charset = nj9.a;
        int size2 = arrayList.size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size2);
        } else if (list instanceof em9) {
            em9 em9Var = (em9) list;
            int i = em9Var.c + size2;
            int length = em9Var.b.length;
            if (i > length) {
                if (length != 0) {
                    while (length < i) {
                        length = Math.max(((length * 3) / 2) + 1, 10);
                    }
                    em9Var.b = Arrays.copyOf(em9Var.b, length);
                } else {
                    em9Var.b = new Object[Math.max(i, 10)];
                }
            }
        }
        int size3 = list.size();
        int size4 = arrayList.size();
        for (int i2 = 0; i2 < size4; i2++) {
            Object obj = arrayList.get(i2);
            if (obj == null) {
                String strH = xs1.h(list.size() - size3, "Element at index ", " is null.");
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size3) {
                        f6.n(strH);
                        return;
                    }
                    list.remove(size5);
                }
            } else {
                list.add(obj);
            }
        }
    }

    @Override // defpackage.xi9
    public final Object j(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hm9(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", kf9.class});
        }
        if (i2 == 3) {
            return new qf9();
        }
        if (i2 == 4) {
            return new mf9(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
