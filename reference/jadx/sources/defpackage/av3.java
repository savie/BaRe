package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class av3 extends s4 {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, av3> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected je8 unknownFields;

    public av3() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = je8.f;
    }

    public static av3 d(Class cls) {
        av3 av3Var = defaultInstanceMap.get(cls);
        if (av3Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                av3Var = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                e6.j("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (av3Var != null) {
            return av3Var;
        }
        av3 av3Var2 = (av3) ((av3) ef8.d(cls)).c(6);
        if (av3Var2 != null) {
            defaultInstanceMap.put(cls, av3Var2);
            return av3Var2;
        }
        g84.c();
        return null;
    }

    public static Object e(Method method, av3 av3Var, Object... objArr) {
        try {
            return method.invoke(av3Var, objArr);
        } catch (IllegalAccessException e) {
            e6.i("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            e6.i("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static final boolean f(av3 av3Var, boolean z) {
        byte bByteValue = ((Byte) av3Var.c(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        s96 s96Var = s96.c;
        s96Var.getClass();
        boolean zD = s96Var.a(av3Var.getClass()).d(av3Var);
        if (z) {
            av3Var.c(2);
        }
        return zD;
    }

    public static void j(Class cls, av3 av3Var) {
        av3Var.h();
        defaultInstanceMap.put(cls, av3Var);
    }

    @Override // defpackage.s4
    public final int a(k57 k57Var) {
        int iH;
        int iH2;
        if (g()) {
            if (k57Var == null) {
                s96 s96Var = s96.c;
                s96Var.getClass();
                iH2 = s96Var.a(getClass()).h(this);
            } else {
                iH2 = k57Var.h(this);
            }
            if (iH2 >= 0) {
                return iH2;
            }
            l0.e(fz5.j(iH2, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.memoizedSerializedSize;
        if ((i & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i & Integer.MAX_VALUE;
        }
        if (k57Var == null) {
            s96 s96Var2 = s96.c;
            s96Var2.getClass();
            iH = s96Var2.a(getClass()).h(this);
        } else {
            iH = k57Var.h(this);
        }
        k(iH);
        return iH;
    }

    @Override // defpackage.s4
    public final void b(jk1 jk1Var) {
        s96 s96Var = s96.c;
        s96Var.getClass();
        k57 k57VarA = s96Var.a(getClass());
        fu fuVar = jk1Var.a;
        if (fuVar == null) {
            fuVar = new fu(jk1Var);
        }
        k57VarA.a(this, fuVar);
    }

    public abstract Object c(int i);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s96 s96Var = s96.c;
        s96Var.getClass();
        return s96Var.a(getClass()).e(this, (av3) obj);
    }

    public final boolean g() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    public final void h() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    public final int hashCode() {
        if (g()) {
            s96 s96Var = s96.c;
            s96Var.getClass();
            return s96Var.a(getClass()).g(this);
        }
        if (this.memoizedHashCode == 0) {
            s96 s96Var2 = s96.c;
            s96Var2.getClass();
            this.memoizedHashCode = s96Var2.a(getClass()).g(this);
        }
        return this.memoizedHashCode;
    }

    public final av3 i() {
        return (av3) c(4);
    }

    public final void k(int i) {
        if (i < 0) {
            l0.e(fz5.j(i, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        }
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = qd5.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        qd5.c(this, sb, 0);
        return sb.toString();
    }
}
