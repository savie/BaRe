package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uh6 {
    public final sz8 a;
    public final la4 b;
    public final la4 c;
    public final String[] d;
    public final String[] e;
    public final na4 f;

    public uh6(Class cls, oi6 oi6Var, oi6 oi6Var2) {
        sz8 f81Var;
        na4 mh7Var;
        try {
            try {
                try {
                    try {
                        Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                        declaredConstructor.setAccessible(true);
                        f81Var = new z71(declaredConstructor, cls);
                    } catch (Exception unused) {
                        c6.f("cannot construct instances of ".concat(cls.getName()));
                        throw null;
                    }
                } catch (NoSuchMethodException unused2) {
                    Class<?> cls2 = Class.forName("sun.misc.Unsafe");
                    Field declaredField = cls2.getDeclaredField("theUnsafe");
                    declaredField.setAccessible(true);
                    f81Var = new b81(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null), cls);
                }
            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused3) {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                f81Var = new d81(declaredMethod2, cls, iIntValue);
            } catch (IllegalAccessException unused4) {
                d6.n();
                throw null;
            }
        } catch (IllegalAccessException unused5) {
            d6.n();
            throw null;
        } catch (NoSuchMethodException unused6) {
            Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
            declaredMethod3.setAccessible(true);
            f81Var = new f81(declaredMethod3, cls);
        } catch (InvocationTargetException e) {
            y5.k(e);
            throw null;
        }
        this.a = f81Var;
        this.b = oi6Var;
        this.c = oi6Var2;
        ja4 ja4Var = la4.f;
        ia4 ia4Var = new ia4();
        lg7.c(4, "initialCapacity");
        ia4Var.a = new Object[4];
        ia4Var.b = 0;
        ia4 ia4Var2 = new ia4();
        lg7.c(4, "initialCapacity");
        ia4Var2.a = new Object[4];
        ia4Var2.b = 0;
        ja4 ja4VarListIterator = oi6Var.listIterator(0);
        while (ja4VarListIterator.hasNext()) {
            f63 f63Var = (f63) ja4VarListIterator.next();
            ia4Var.b(f63Var.a());
            ia4Var2.b(f63Var.b());
        }
        ia4Var.c = true;
        Object[] objArr = ia4Var.a;
        int i = ia4Var.b;
        oi6 oi6Var3 = i == 0 ? oi6.p : new oi6(i, objArr);
        this.d = (String[]) oi6Var3.toArray(new String[oi6Var3.n]);
        ia4Var2.c = true;
        Object[] objArr2 = ia4Var2.a;
        int i2 = ia4Var2.b;
        oi6 oi6Var4 = i2 == 0 ? oi6.p : new oi6(i2, objArr2);
        String[] strArr = (String[]) oi6Var4.toArray(new String[oi6Var4.n]);
        this.e = strArr;
        int i3 = na4.k;
        lg7.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        HashSet hashSet = new HashSet();
        int i4 = 0;
        for (String str : strArr) {
            if (!hashSet.add(str)) {
                str.getClass();
                int i5 = i4 + 1;
                int iD = ia4.d(objArrCopyOf.length, i5);
                objArrCopyOf = iD > objArrCopyOf.length ? Arrays.copyOf(objArrCopyOf, iD) : objArrCopyOf;
                objArrCopyOf[i4] = str;
                i4 = i5;
            }
        }
        if (i4 == 0) {
            mh7Var = ui6.y;
        } else if (i4 != 1) {
            mh7Var = na4.y(i4, objArrCopyOf);
            mh7Var.size();
        } else {
            Object obj = objArrCopyOf[0];
            Objects.requireNonNull(obj);
            mh7Var = new mh7(obj);
        }
        this.f = mh7Var;
    }

    public final Object a() {
        try {
            Object objM = this.a.M();
            ja4 ja4VarListIterator = this.c.listIterator(0);
            while (ja4VarListIterator.hasNext()) {
                du2 du2Var = (du2) ja4VarListIterator.next();
                du2Var.a.set(objM, du2Var.b.a());
            }
            return objM;
        } catch (IllegalAccessException e) {
            e6.e(e);
            return null;
        } catch (InstantiationException e2) {
            e6.e(e2);
            return null;
        } catch (InvocationTargetException e3) {
            e6.e(e3);
            return null;
        }
    }

    public final Object b(Cursor cursor, Object obj) {
        try {
            ja4 ja4VarListIterator = this.b.listIterator(0);
            while (ja4VarListIterator.hasNext()) {
                ((f63) ja4VarListIterator.next()).d(cursor, obj);
            }
            return obj;
        } catch (IllegalAccessException e) {
            e6.e(e);
            return null;
        }
    }

    public final void c(ContentValues contentValues, Object obj) {
        na4 na4Var = this.f;
        if (!na4Var.isEmpty()) {
            c6.f("Duplicate columns definitions: ".concat(new sg9(", ", 3).a(na4Var)));
            return;
        }
        try {
            ja4 ja4VarListIterator = this.b.listIterator(0);
            while (ja4VarListIterator.hasNext()) {
                f63 f63Var = (f63) ja4VarListIterator.next();
                f63Var.c(contentValues, obj != null ? f63Var.a.get(obj) : null);
            }
        } catch (IllegalAccessException e) {
            e6.e(e);
        } catch (IllegalArgumentException e2) {
            e6.e(e2);
        }
    }
}
