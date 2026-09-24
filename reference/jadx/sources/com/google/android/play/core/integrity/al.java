package com.google.android.play.core.integrity;

import android.content.Context;
import defpackage.d09;
import defpackage.e09;
import defpackage.r09;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class al implements d09 {
    private final e09 a;
    private final e09 b;
    private final e09 c;
    private final e09 d;

    public al(e09 e09Var, e09 e09Var2, e09 e09Var3, e09 e09Var4) {
        this.a = e09Var;
        this.b = e09Var2;
        this.c = e09Var3;
        this.d = e09Var4;
    }

    @Override // defpackage.e09
    public final /* bridge */ /* synthetic */ Object a() {
        return new aj((Context) this.a.a(), (r09) this.b.a(), ((au) this.c).a(), new i());
    }
}
