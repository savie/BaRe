package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Modifier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y23 {
    public final Object a;
    public final Object b;
    public final Serializable c;
    public final Object d;

    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, short[][]] */
    public y23() {
        this.a = new short[2];
        Class cls = Short.TYPE;
        this.b = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
        this.c = (short[][]) Array.newInstance((Class<?>) cls, 16, 8);
        this.d = new short[256];
    }

    public static boolean c(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isAbstract(modifiers)) {
            return false;
        }
        return !Modifier.isInterface(modifiers);
    }

    public wi8 a(mc4 mc4Var) throws kd5 {
        wi8 wc9Var;
        Class<?> cls = (Class) this.c;
        ai5 ai5Var = (ai5) this.a;
        vb8 vb8Var = (vb8) this.d;
        ai5Var.getClass();
        xn5 attributes = mc4Var.getAttributes();
        if (attributes == null) {
            throw new kd5("No attributes for %s", mc4Var);
        }
        wi8 wi8VarB = ((zo7) ai5Var.c).b(vb8Var, attributes, (i87) ai5Var.e);
        if (wi8VarB != null && cls != null) {
            Class type = wi8VarB.getType();
            wc9Var = wi8VarB;
            if (!(cls.isArray() ? cls.getComponentType() : cls).isAssignableFrom(type)) {
                wc9Var = new wc9(5, wi8VarB, cls);
            }
        }
        if (wc9Var != null) {
            tr9 position = mc4Var.getPosition();
            Class type2 = wc9Var.getType();
            Class<?> clsB = b();
            if (clsB.isArray()) {
                clsB = clsB.getComponentType();
            }
            if (!clsB.isAssignableFrom(type2)) {
                throw new w70("Incompatible %s for %s at %s", type2, vb8Var, position);
            }
        }
        return wc9Var;
    }

    public Class b() {
        Class cls = (Class) this.c;
        return cls != null ? cls : ((vb8) this.d).getType();
    }

    public void d() {
        y13.o((short[]) this.a);
        int i = 0;
        int i2 = 0;
        while (true) {
            short[][] sArr = (short[][]) this.b;
            if (i2 >= sArr.length) {
                break;
            }
            y13.o(sArr[i2]);
            i2++;
        }
        while (true) {
            short[][] sArr2 = (short[][]) this.c;
            if (i >= sArr2.length) {
                y13.o((short[]) this.d);
                return;
            } else {
                y13.o(sArr2[i]);
                i++;
            }
        }
    }

    public boolean e(vb8 vb8Var, Object obj, ev5 ev5Var) throws kd5 {
        Class cls;
        Class type = vb8Var.getType();
        if (type.isPrimitive()) {
            if (type == Double.TYPE) {
                cls = Double.class;
            } else if (type == Float.TYPE) {
                cls = Float.class;
            } else if (type == Integer.TYPE) {
                cls = Integer.class;
            } else if (type == Long.TYPE) {
                cls = Long.class;
            } else if (type == Boolean.TYPE) {
                cls = Boolean.class;
            } else if (type == Character.TYPE) {
                cls = Character.class;
            } else if (type == Short.TYPE) {
                cls = Short.class;
            } else {
                cls = type == Byte.TYPE ? Byte.class : type;
            }
            if (cls != type) {
                vb8Var = new c00(vb8Var, cls, 10, false);
            }
        }
        ai5 ai5Var = (ai5) this.a;
        ai5Var.getClass();
        xn5 attributes = ev5Var.getAttributes();
        if (attributes != null) {
            return ((zo7) ai5Var.c).d(vb8Var, obj, attributes, (i87) ai5Var.e);
        }
        throw new kd5("No attributes for %s", ev5Var);
    }

    public y23(ai5 ai5Var, vb8 vb8Var, Class cls) {
        this.b = (x44) ai5Var.d;
        this.c = cls;
        this.a = ai5Var;
        this.d = vb8Var;
    }
}
