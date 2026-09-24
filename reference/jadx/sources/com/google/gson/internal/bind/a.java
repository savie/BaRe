package com.google.gson.internal.bind;

import defpackage.de2;
import defpackage.xb8;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final de2 b = new de2(Date.class);
    public final Class a;

    public a(Class cls) {
        this.a = cls;
    }

    public final xb8 a(int i, int i2) {
        DefaultDateTypeAdapter defaultDateTypeAdapter = new DefaultDateTypeAdapter(this, i, i2);
        xb8 xb8Var = b.a;
        return new TypeAdapters$30(this.a, defaultDateTypeAdapter);
    }

    public abstract Date b(Date date);
}
