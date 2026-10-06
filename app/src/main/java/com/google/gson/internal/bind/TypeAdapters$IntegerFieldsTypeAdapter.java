package com.google.gson.internal.bind;

import defpackage.nn4;
import defpackage.tl4;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class TypeAdapters$IntegerFieldsTypeAdapter<T> extends com.google.gson.b {
    public final List a;

    public TypeAdapters$IntegerFieldsTypeAdapter(String... strArr) {
        this.a = Arrays.asList(strArr);
    }

    public abstract Object a(long[] jArr);

    public abstract long[] b(Object obj);

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        if (tl4Var.peek() == 9) {
            tl4Var.nextNull();
            return null;
        }
        tl4Var.beginObject();
        List list = this.a;
        long[] jArr = new long[list.size()];
        while (tl4Var.peek() != 4) {
            int iIndexOf = list.indexOf(tl4Var.nextName());
            if (iIndexOf >= 0) {
                jArr[iIndexOf] = tl4Var.nextLong();
            } else {
                tl4Var.skipValue();
            }
        }
        tl4Var.endObject();
        return a(jArr);
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        if (obj == null) {
            nn4Var.r();
            return;
        }
        nn4Var.g();
        long[] jArrB = b(obj);
        int i = 0;
        while (true) {
            List list = this.a;
            if (i >= list.size()) {
                nn4Var.m();
                return;
            } else {
                nn4Var.n((String) list.get(i));
                nn4Var.G(jArrB[i]);
                i++;
            }
        }
    }
}
