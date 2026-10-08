package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.er5;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.vt1;
import defpackage.x13;
import defpackage.xb8;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CollectionTypeAdapterFactory implements xb8 {
    public final vt1 a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Adapter<E> extends com.google.gson.b {
        public final com.google.gson.b a;
        public final er5 b;

        public Adapter(com.google.gson.b bVar, er5 er5Var) {
            this.a = bVar;
            this.b = er5Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.b
        public final Object read(tl4 tl4Var) throws IOException {
            if (tl4Var.peek() == 9) {
                tl4Var.nextNull();
                return null;
            }
            Collection collection = (Collection) this.b.construct();
            tl4Var.beginArray();
            while (tl4Var.hasNext()) {
                collection.add(((TypeAdapterRuntimeTypeWrapper) this.a).b.read(tl4Var));
            }
            tl4Var.endArray();
            return collection;
        }

        @Override // com.google.gson.b
        public final void write(nn4 nn4Var, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                nn4Var.r();
                return;
            }
            nn4Var.b();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.a.write(nn4Var, it.next());
            }
            nn4Var.j();
        }
    }

    public CollectionTypeAdapterFactory(vt1 vt1Var) {
        this.a = vt1Var;
    }

    @Override // defpackage.xb8
    public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type typeX = x13.x(type, rawType, Collection.class);
        Type type2 = typeX instanceof ParameterizedType ? ((ParameterizedType) typeX).getActualTypeArguments()[0] : Object.class;
        return new Adapter(new TypeAdapterRuntimeTypeWrapper(aVar, aVar.d(TypeToken.get(type2)), type2), this.a.b(typeToken, false));
    }
}
