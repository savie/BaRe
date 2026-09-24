package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.er5;
import defpackage.km4;
import defpackage.nn4;
import defpackage.sl4;
import defpackage.tl4;
import defpackage.vt1;
import defpackage.x13;
import defpackage.xb8;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MapTypeAdapterFactory implements xb8 {
    public final vt1 a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Adapter<K, V> extends com.google.gson.b {
        public final com.google.gson.b a;
        public final com.google.gson.b b;
        public final er5 c;

        public Adapter(MapTypeAdapterFactory mapTypeAdapterFactory, com.google.gson.b bVar, com.google.gson.b bVar2, er5 er5Var) {
            this.a = bVar;
            this.b = bVar2;
            this.c = er5Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.b
        public final Object read(tl4 tl4Var) throws IOException {
            int iPeek = tl4Var.peek();
            if (iPeek == 9) {
                tl4Var.nextNull();
                return null;
            }
            Map map = (Map) this.c.construct();
            if (iPeek == 1) {
                tl4Var.beginArray();
                while (tl4Var.hasNext()) {
                    tl4Var.beginArray();
                    Object obj = ((TypeAdapterRuntimeTypeWrapper) this.a).b.read(tl4Var);
                    Object obj2 = ((TypeAdapterRuntimeTypeWrapper) this.b).b.read(tl4Var);
                    if (map.containsKey(obj)) {
                        throw new km4("duplicate key: " + obj);
                    }
                    map.put(obj, obj2);
                    tl4Var.endArray();
                }
                tl4Var.endArray();
                return map;
            }
            tl4Var.beginObject();
            while (tl4Var.hasNext()) {
                sl4.a.getClass();
                sl4.C(tl4Var);
                Object obj3 = ((TypeAdapterRuntimeTypeWrapper) this.a).b.read(tl4Var);
                Object obj4 = ((TypeAdapterRuntimeTypeWrapper) this.b).b.read(tl4Var);
                if (map.containsKey(obj3)) {
                    throw new km4("duplicate key: " + obj3);
                }
                map.put(obj3, obj4);
            }
            tl4Var.endObject();
            return map;
        }

        @Override // com.google.gson.b
        public final void write(nn4 nn4Var, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map == null) {
                nn4Var.r();
                return;
            }
            nn4Var.g();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                nn4Var.n(String.valueOf(entry.getKey()));
                this.b.write(nn4Var, entry.getValue());
            }
            nn4Var.m();
        }
    }

    public MapTypeAdapterFactory(vt1 vt1Var) {
        this.a = vt1Var;
    }

    @Override // defpackage.xb8
    public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
        Type[] actualTypeArguments;
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        if (!Map.class.isAssignableFrom(rawType)) {
            return null;
        }
        if (Properties.class.isAssignableFrom(rawType)) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type typeX = x13.x(type, rawType, Map.class);
            actualTypeArguments = typeX instanceof ParameterizedType ? ((ParameterizedType) typeX).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        Type type3 = actualTypeArguments[1];
        return new Adapter(this, new TypeAdapterRuntimeTypeWrapper(aVar, (type2 == Boolean.TYPE || type2 == Boolean.class) ? b.c : aVar.d(TypeToken.get(type2)), type2), new TypeAdapterRuntimeTypeWrapper(aVar, aVar.d(TypeToken.get(type3)), type3), this.a.b(typeToken, false));
    }
}
