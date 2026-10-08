package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.x13;
import defpackage.xb8;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ArrayTypeAdapter<E> extends com.google.gson.b {
    public static final xb8 c = new xb8() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            Type type = typeToken.getType();
            boolean z = type instanceof GenericArrayType;
            if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
            return new ArrayTypeAdapter(aVar, aVar.d(TypeToken.get(genericComponentType)), x13.w(genericComponentType));
        }
    };
    public final Class a;
    public final com.google.gson.b b;

    public ArrayTypeAdapter(com.google.gson.a aVar, com.google.gson.b bVar, Class cls) {
        this.b = new TypeAdapterRuntimeTypeWrapper(aVar, bVar, cls);
        this.a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        if (tl4Var.peek() == 9) {
            tl4Var.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        tl4Var.beginArray();
        while (tl4Var.hasNext()) {
            arrayList.add(((TypeAdapterRuntimeTypeWrapper) this.b).b.read(tl4Var));
        }
        tl4Var.endArray();
        int size = arrayList.size();
        Class cls = this.a;
        if (!cls.isPrimitive()) {
            return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
        }
        Object objNewInstance = Array.newInstance((Class<?>) cls, size);
        for (int i = 0; i < size; i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        if (obj == null) {
            nn4Var.r();
            return;
        }
        nn4Var.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.write(nn4Var, Array.get(obj, i));
        }
        nn4Var.j();
    }
}
