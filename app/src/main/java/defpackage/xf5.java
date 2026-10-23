package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xf5 {
    public static final ti6 c;
    public final HashMap b = new HashMap();
    public final ti6 a = c;

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [short[], byte[]], vars: [r5v4 ??, r5v9 ??, r5v5 ??, r5v13 ??, r5v6 ??, r5v7 ??, r5v8 ??, r5v16 ??, r5v10 ??, r5v12 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToFixIncompatiblePrimitives(FixTypesVisitor.java:818)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        */
    static {
        /*
            Method dump skipped, instruction units count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xf5.<clinit>():void");
    }

    public final uh6 a(Class cls) {
        HashMap map = this.b;
        uh6 uh6Var = (uh6) map.get(cls);
        if (uh6Var != null) {
            return uh6Var;
        }
        ja4 ja4Var = la4.f;
        ia4 ia4Var = new ia4();
        lg7.c(4, "initialCapacity");
        ia4Var.a = new Object[4];
        ia4Var.b = 0;
        lg7.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        ArrayList<Field> arrayList = new ArrayList();
        for (Class superclass = cls; !superclass.equals(Object.class); superclass = superclass.getSuperclass()) {
            Collections.addAll(arrayList, superclass.getDeclaredFields());
        }
        int i = 0;
        boolean z = false;
        for (Field field : arrayList) {
            field.setAccessible(true);
            zl1 zl1Var = (zl1) field.getAnnotation(zl1.class);
            if (zl1Var != null) {
                if (field.getType().isPrimitive() && zl1Var.treatNullAsDefault()) {
                    c6.f("Cannot set treatNullAsDefault on primitive members");
                    return null;
                }
                if (zl1Var.treatNullAsDefault() && zl1Var.readonly()) {
                    c6.f("It doesn't make sense to set treatNullAsDefault on readonly column");
                    return null;
                }
                ia4Var.a(new am1(field, (wb8) this.a.get(field.getType())));
            }
            if (((bu2) field.getAnnotation(bu2.class)) != null) {
                uh6 uh6VarA = a(field.getType());
                ia4Var.a(new cu2(field, uh6VarA));
                du2 du2Var = new du2(field, uh6VarA);
                int iD = ia4.d(objArrCopyOf.length, i + 1);
                if (iD > objArrCopyOf.length || z) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iD);
                    z = false;
                }
                objArrCopyOf[i] = du2Var;
                i++;
            }
        }
        ia4Var.c = true;
        Object[] objArr = ia4Var.a;
        int i2 = ia4Var.b;
        uh6 uh6Var2 = new uh6(cls, i2 == 0 ? oi6.p : new oi6(i2, objArr), i == 0 ? oi6.p : new oi6(i, objArrCopyOf));
        map.put(cls, uh6Var2);
        return uh6Var2;
    }

    public final ArrayList b(Cursor cursor, Class cls) {
        ArrayList arrayList = new ArrayList();
        if (cursor != null && cursor.moveToFirst()) {
            uh6 uh6VarA = a(cls);
            do {
                Object objA = uh6VarA.a();
                uh6VarA.b(cursor, objA);
                arrayList.add(objA);
            } while (cursor.moveToNext());
        }
        return arrayList;
    }

    public final ContentValues c(Object obj) {
        uh6 uh6VarA = a(obj.getClass());
        ContentValues contentValues = new ContentValues(uh6VarA.e.length);
        uh6VarA.c(contentValues, obj);
        return contentValues;
    }
}
