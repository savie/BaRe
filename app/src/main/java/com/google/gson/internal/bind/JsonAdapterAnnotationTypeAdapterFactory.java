package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.dm4;
import defpackage.pj4;
import defpackage.ri4;
import defpackage.vt1;
import defpackage.xb8;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements xb8 {
    public static final xb8 c;
    public static final xb8 d;
    public final vt1 a;
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    static {
        int i = 0;
        c = new DummyTypeAdapterFactory(i);
        d = new DummyTypeAdapterFactory(i);
    }

    public JsonAdapterAnnotationTypeAdapterFactory(vt1 vt1Var) {
        this.a = vt1Var;
    }

    public final com.google.gson.b a(vt1 vt1Var, com.google.gson.a aVar, TypeToken typeToken, ri4 ri4Var, boolean z) {
        com.google.gson.b bVarCreate;
        Object objConstruct = vt1Var.b(TypeToken.get(ri4Var.value()), true).construct();
        boolean zNullSafe = ri4Var.nullSafe();
        if (objConstruct instanceof com.google.gson.b) {
            bVarCreate = (com.google.gson.b) objConstruct;
        } else if (objConstruct instanceof xb8) {
            xb8 xb8Var = (xb8) objConstruct;
            if (z) {
                xb8 xb8Var2 = (xb8) this.b.putIfAbsent(typeToken.getRawType(), xb8Var);
                if (xb8Var2 != null) {
                    xb8Var = xb8Var2;
                }
            }
            bVarCreate = xb8Var.create(aVar, typeToken);
        } else {
            boolean z2 = objConstruct instanceof dm4;
            if (!z2 && !(objConstruct instanceof pj4)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objConstruct.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            TreeTypeAdapter treeTypeAdapter = new TreeTypeAdapter(z2 ? (dm4) objConstruct : null, objConstruct instanceof pj4 ? (pj4) objConstruct : null, aVar, typeToken, z ? c : d, zNullSafe);
            zNullSafe = false;
            bVarCreate = treeTypeAdapter;
        }
        return (bVarCreate == null || !zNullSafe) ? bVarCreate : bVarCreate.nullSafe();
    }

    @Override // defpackage.xb8
    public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
        ri4 ri4Var = (ri4) typeToken.getRawType().getAnnotation(ri4.class);
        if (ri4Var == null) {
            return null;
        }
        return a(this.a, aVar, typeToken, ri4Var, true);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class DummyTypeAdapterFactory implements xb8 {
        private DummyTypeAdapterFactory() {
        }

        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            throw new AssertionError("Factory should not be used");
        }

        public /* synthetic */ DummyTypeAdapterFactory(int i) {
            this();
        }
    }
}
