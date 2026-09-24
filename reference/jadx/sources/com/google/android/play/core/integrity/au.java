package com.google.android.play.core.integrity;

import defpackage.d09;
import defpackage.e09;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class au implements d09 {
    private final e09 a;
    private final e09 b;

    public au(e09 e09Var, e09 e09Var2) {
        this.a = e09Var;
        this.b = e09Var2;
    }

    @Override // defpackage.e09
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final at a() {
        return new at(this.a, this.b);
    }
}
