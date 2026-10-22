package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nk9 {
    public static final Class a;
    public static final jl9 b;
    public static final jl9 c;

    static {
        Class<?> cls;
        Class<?> cls2;
        jl9 jl9Var = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                jl9Var = (jl9) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        b = jl9Var;
        c = new jl9();
    }

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
    public static void a(jl9 jl9Var, Object obj, Object obj2) {
        jl9Var.getClass();
        ih9 ih9Var = (ih9) obj;
        il9 il9Var = ih9Var.zzc;
        il9 il9Var2 = ((ih9) obj2).zzc;
        il9 il9Var3 = il9.e;
        if (!il9Var3.equals(il9Var2)) {
            if (il9Var3.equals(il9Var)) {
                int i = il9Var.a + il9Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(il9Var.b, i);
                System.arraycopy(il9Var2.b, 0, iArrCopyOf, il9Var.a, il9Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(il9Var.c, i);
                System.arraycopy(il9Var2.c, 0, objArrCopyOf, il9Var.a, il9Var2.a);
                il9Var = new il9(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                il9Var.getClass();
                if (!il9Var2.equals(il9Var3)) {
                    if (!il9Var.d) {
                        x5.e();
                        return;
                    }
                    int i2 = il9Var.a + il9Var2.a;
                    il9Var.c(i2);
                    System.arraycopy(il9Var2.b, 0, il9Var.b, il9Var.a, il9Var2.a);
                    System.arraycopy(il9Var2.c, 0, il9Var.c, il9Var.a, il9Var2.a);
                    il9Var.a = i2;
                }
            }
        }
        ih9Var.zzc = il9Var;
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
