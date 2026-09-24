package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.dm4;
import defpackage.el4;
import defpackage.nn4;
import defpackage.od2;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.tl4;
import defpackage.xb8;
import defpackage.z28;
import defpackage.z5;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TreeTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {
    public final dm4 a;
    public final pj4 b;
    public final com.google.gson.a c;
    public final TypeToken d;
    public final xb8 e;
    public final z28 f = new z28(this, 18);
    public final boolean g;
    public volatile com.google.gson.b h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class SingleTypeFactory implements xb8 {
        public final TypeToken a;
        public final boolean b;
        public final dm4 c;
        public final pj4 d;

        public SingleTypeFactory(Object obj, TypeToken typeToken, boolean z) {
            dm4 dm4Var = obj instanceof dm4 ? (dm4) obj : null;
            this.c = dm4Var;
            pj4 pj4Var = obj instanceof pj4 ? (pj4) obj : null;
            this.d = pj4Var;
            if (dm4Var == null && pj4Var == null) {
                Objects.requireNonNull(obj);
                z5.d(obj.getClass().getName(), " must implement JsonSerializer or JsonDeserializer", "Type adapter ");
                throw null;
            }
            this.a = typeToken;
            this.b = z;
        }

        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            TypeToken typeToken2 = this.a;
            if (typeToken2 == null) {
                typeToken.getRawType();
                throw null;
            }
            if (!typeToken2.equals(typeToken) && (!this.b || typeToken2.getType() != typeToken.getRawType())) {
                return null;
            }
            return new TreeTypeAdapter(this.c, this.d, aVar, typeToken, this, true);
        }
    }

    public TreeTypeAdapter(dm4 dm4Var, pj4 pj4Var, com.google.gson.a aVar, TypeToken typeToken, xb8 xb8Var, boolean z) {
        this.a = dm4Var;
        this.b = pj4Var;
        this.c = aVar;
        this.d = typeToken;
        this.e = xb8Var;
        this.g = z;
    }

    public static xb8 b(TypeToken typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, typeToken.getType() == typeToken.getRawType());
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public final com.google.gson.b a() {
        if (this.a != null) {
            return this;
        }
        com.google.gson.b bVar = this.h;
        if (bVar != null) {
            return bVar;
        }
        com.google.gson.b bVarF = this.c.f(this.e, this.d);
        this.h = bVarF;
        return bVarF;
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) {
        pj4 pj4Var = this.b;
        if (pj4Var == null) {
            com.google.gson.b bVarF = this.h;
            if (bVarF == null) {
                bVarF = this.c.f(this.e, this.d);
                this.h = bVarF;
            }
            return bVarF.read(tl4Var);
        }
        qj4 qj4VarT = od2.t(tl4Var);
        if (this.g) {
            qj4VarT.getClass();
            if (qj4VarT instanceof el4) {
                return null;
            }
        }
        return pj4Var.deserialize(qj4VarT, this.d.getType(), this.f);
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        dm4 dm4Var = this.a;
        if (dm4Var == null) {
            com.google.gson.b bVarF = this.h;
            if (bVarF == null) {
                bVarF = this.c.f(this.e, this.d);
                this.h = bVarF;
            }
            bVarF.write(nn4Var, obj);
            return;
        }
        if (this.g && obj == null) {
            nn4Var.r();
            return;
        }
        this.d.getType();
        qj4 qj4VarSerialize = dm4Var.serialize(obj, this.f);
        JsonElementTypeAdapter.a.getClass();
        JsonElementTypeAdapter.c(qj4VarSerialize, nn4Var);
    }
}
