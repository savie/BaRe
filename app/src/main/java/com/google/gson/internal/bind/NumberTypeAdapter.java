package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.km4;
import defpackage.nn4;
import defpackage.tl4;
import defpackage.u48;
import defpackage.xb8;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NumberTypeAdapter extends com.google.gson.b {
    public static final xb8 b = a(2);
    public final int a;

    public NumberTypeAdapter(int i) {
        this.a = i;
    }

    public static xb8 a(int i) {
        return new xb8() { // from class: com.google.gson.internal.bind.NumberTypeAdapter.1
            @Override // defpackage.xb8
            public final com.google.gson.b create(com.google.gson.a aVar, TypeToken typeToken) {
                if (typeToken.getRawType() == Number.class) {
                    return NumberTypeAdapter.this;
                }
                return null;
            }
        };
    }

    @Override // com.google.gson.b
    public final Object read(tl4 tl4Var) throws IOException {
        int iPeek = tl4Var.peek();
        int iA = dj7.A(iPeek);
        if (iA == 5 || iA == 6) {
            return u48.a(this.a, tl4Var);
        }
        if (iA == 8) {
            tl4Var.nextNull();
            return null;
        }
        throw new km4("Expecting number, got: " + eq3.u(iPeek) + "; at path " + tl4Var.getPath());
    }

    @Override // com.google.gson.b
    public final void write(nn4 nn4Var, Object obj) throws IOException {
        nn4Var.O((Number) obj);
    }
}
