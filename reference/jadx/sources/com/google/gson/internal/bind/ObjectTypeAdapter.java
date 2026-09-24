package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.iw4;
import defpackage.l0;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.u48;
import defpackage.xb8;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ObjectTypeAdapter extends com.google.gson.b {
    public static final xb8 c = new AnonymousClass1(1);
    public final com.google.gson.a a;
    public final int b;

    /* JADX INFO: renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    class AnonymousClass1 implements xb8 {
        public final /* synthetic */ int a;

        public AnonymousClass1(int i) {
            this.a = i;
        }

        @Override // defpackage.xb8
        public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
            if (typeToken.getRawType() == Object.class) {
                return new ObjectTypeAdapter(aVar, this.a);
            }
            return null;
        }
    }

    public ObjectTypeAdapter(com.google.gson.a aVar, int i) {
        this.a = aVar;
        this.b = i;
    }

    public static xb8 a(int i) {
        return i == 1 ? c : new AnonymousClass1(i);
    }

    public final Serializable b(int i, tl4 tl4Var) throws IOException {
        int iA = dj7.A(i);
        if (iA == 5) {
            return tl4Var.nextString();
        }
        if (iA == 6) {
            return u48.a(this.b, tl4Var);
        }
        if (iA == 7) {
            return Boolean.valueOf(tl4Var.nextBoolean());
        }
        if (iA == 8) {
            tl4Var.nextNull();
            return null;
        }
        l0.e("Unexpected token: ".concat(eq3.u(i)));
        return null;
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        Object arrayList;
        Serializable arrayList2;
        int iPeek = tl4Var.peek();
        int iA = dj7.A(iPeek);
        if (iA == 0) {
            tl4Var.beginArray();
            arrayList = new ArrayList();
        } else if (iA != 2) {
            arrayList = null;
        } else {
            tl4Var.beginObject();
            arrayList = new iw4(true);
        }
        if (arrayList == null) {
            return b(iPeek, tl4Var);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (tl4Var.hasNext()) {
                String strNextName = arrayList instanceof Map ? tl4Var.nextName() : null;
                int iPeek2 = tl4Var.peek();
                int iA2 = dj7.A(iPeek2);
                if (iA2 == 0) {
                    tl4Var.beginArray();
                    arrayList2 = new ArrayList();
                } else if (iA2 != 2) {
                    arrayList2 = null;
                } else {
                    tl4Var.beginObject();
                    arrayList2 = new iw4(true);
                }
                boolean z = arrayList2 != null;
                if (arrayList2 == null) {
                    arrayList2 = b(iPeek2, tl4Var);
                }
                if (arrayList instanceof List) {
                    ((List) arrayList).add(arrayList2);
                } else {
                    ((Map) arrayList).put(strNextName, arrayList2);
                }
                if (z) {
                    arrayDeque.addLast(arrayList);
                    arrayList = arrayList2;
                }
            } else {
                if (arrayList instanceof List) {
                    tl4Var.endArray();
                } else {
                    tl4Var.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return arrayList;
                }
                arrayList = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        if (obj == null) {
            nn4Var.r();
            return;
        }
        com.google.gson.b bVarE = this.a.e(obj.getClass());
        if (!(bVarE instanceof ObjectTypeAdapter)) {
            bVarE.write(nn4Var, obj);
        } else {
            nn4Var.g();
            nn4Var.m();
        }
    }
}
