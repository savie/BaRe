package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.e6;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.xb8;
import defpackage.y77;
import java.io.IOException;
import java.lang.Enum;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class EnumTypeAdapter<T extends Enum<T>> extends com.google.gson.b {
    public static final xb8 d = new xb8() { // from class: com.google.gson.internal.bind.EnumTypeAdapter.1
        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            if (!rawType.isEnum()) {
                rawType = rawType.getSuperclass();
            }
            return new EnumTypeAdapter(rawType);
        }
    };
    public final HashMap a;
    public final HashMap b;
    public final HashMap c;

    public EnumTypeAdapter(Class cls) {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            int i = 0;
            for (Field field : declaredFields) {
                if (field.isEnumConstant()) {
                    declaredFields[i] = field;
                    i++;
                }
            }
            Field[] fieldArr = (Field[]) Arrays.copyOf(declaredFields, i);
            int iCeil = (int) Math.ceil(i / 0.75f);
            this.a = new HashMap(iCeil);
            this.b = new HashMap(iCeil);
            this.c = new HashMap(iCeil);
            AccessibleObject.setAccessible(fieldArr, true);
            for (Field field2 : fieldArr) {
                Enum r5 = (Enum) field2.get(null);
                String strName = r5.name();
                String string = r5.toString();
                y77 y77Var = (y77) field2.getAnnotation(y77.class);
                if (y77Var != null) {
                    strName = y77Var.value();
                    for (String str : y77Var.alternate()) {
                        this.a.put(str, r5);
                    }
                }
                this.a.put(strName, r5);
                this.b.put(string, r5);
                this.c.put(r5, strName);
            }
        } catch (IllegalAccessException e) {
            e6.e(e);
            throw null;
        }
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        if (tl4Var.peek() == 9) {
            tl4Var.nextNull();
            return null;
        }
        String strNextString = tl4Var.nextString();
        Enum r0 = (Enum) this.a.get(strNextString);
        return r0 == null ? (Enum) this.b.get(strNextString) : r0;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        Enum r2 = (Enum) obj;
        nn4Var.S(r2 == null ? null : (String) this.c.get(r2));
    }
}
