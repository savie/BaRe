package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.xb8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class TypeAdapters$31 implements xb8 {
    public final /* synthetic */ Class a;
    public final /* synthetic */ Class b;
    public final /* synthetic */ com.google.gson.b c;

    public TypeAdapters$31(Class cls, Class cls2, com.google.gson.b bVar) {
        this.a = cls;
        this.b = cls2;
        this.c = bVar;
    }

    @Override // defpackage.xb8
    public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        if (rawType == this.a || rawType == this.b) {
            return this.c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.b.getName() + "+" + this.a.getName() + ",adapter=" + this.c + "]";
    }
}
