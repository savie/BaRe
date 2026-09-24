package com.google.gson;

import com.google.gson.internal.bind.SerializationDelegatingTypeAdapter;
import defpackage.l0;
import defpackage.nn4;
import defpackage.tl4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class Gson$FutureTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {
    public b a = null;

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public final b a() {
        b bVar = this.a;
        if (bVar != null) {
            return bVar;
        }
        l0.e("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        return null;
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) {
        b bVar = this.a;
        if (bVar != null) {
            return bVar.read(tl4Var);
        }
        l0.e("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        return null;
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) {
        b bVar = this.a;
        if (bVar != null) {
            bVar.write(nn4Var, obj);
        } else {
            l0.e("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
    }
}
