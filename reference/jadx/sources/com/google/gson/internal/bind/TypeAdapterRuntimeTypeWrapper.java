package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.nn4;
import defpackage.tl4;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class TypeAdapterRuntimeTypeWrapper<T> extends com.google.gson.b {
    public final com.google.gson.a a;
    public final com.google.gson.b b;
    public final Type c;

    public TypeAdapterRuntimeTypeWrapper(com.google.gson.a aVar, com.google.gson.b bVar, Type type) {
        this.a = aVar;
        this.b = bVar;
        this.c = type;
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) {
        return this.b.read(tl4Var);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003b  */
    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) {
        com.google.gson.b bVarA;
        Type type = this.c;
        Type type2 = (obj == null || !((type instanceof Class) || (type instanceof TypeVariable))) ? type : obj.getClass();
        com.google.gson.b bVar = this.b;
        if (type2 != type) {
            com.google.gson.b bVarD = this.a.d(TypeToken.get(type2));
            if (bVarD instanceof ReflectiveTypeAdapterFactory.Adapter) {
                com.google.gson.b bVar2 = bVar;
                while ((bVar2 instanceof SerializationDelegatingTypeAdapter) && (bVarA = ((SerializationDelegatingTypeAdapter) bVar2).a()) != bVar2) {
                    bVar2 = bVarA;
                }
                if (bVar2 instanceof ReflectiveTypeAdapterFactory.Adapter) {
                    bVar = bVarD;
                }
            } else {
                bVar = bVarD;
            }
        }
        bVar.write(nn4Var, obj);
    }
}
