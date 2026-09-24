package com.google.gson;

import defpackage.nn4;
import defpackage.tl4;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public final b nullSafe() {
        return !(this instanceof TypeAdapter$NullSafeTypeAdapter) ? new b() { // from class: com.google.gson.TypeAdapter$NullSafeTypeAdapter
            @Override // com.google.gson.b
            public final Object read(tl4 tl4Var) throws IOException {
                if (tl4Var.peek() != 9) {
                    return this.a.read(tl4Var);
                }
                tl4Var.nextNull();
                return null;
            }

            public final String toString() {
                return "NullSafeTypeAdapter[" + this.a + "]";
            }

            @Override // com.google.gson.b
            public final void write(nn4 nn4Var, Object obj) throws IOException {
                if (obj == null) {
                    nn4Var.r();
                } else {
                    this.a.write(nn4Var, obj);
                }
            }
        } : this;
    }

    public abstract Object read(tl4 tl4Var);

    public abstract void write(nn4 nn4Var, Object obj);
}
