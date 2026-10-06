package com.google.android.play.core.integrity;

import android.content.Context;
import defpackage.c09;
import defpackage.e09;
import defpackage.f6;
import defpackage.id4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class w implements aw {
    private final w a = this;
    private final e09 b;
    private final e09 c;
    private final e09 d;
    private final e09 e;
    private final e09 f;
    private final e09 g;

    public w(Context context, v vVar) {
        if (context == null) {
            f6.n("instance cannot be null");
            throw null;
        }
        id4 id4Var = new id4(context);
        this.b = id4Var;
        c09 c09VarB = c09.b(bb.a);
        this.c = c09VarB;
        au auVar = new au(id4Var, n.a);
        this.d = auVar;
        c09 c09VarB2 = c09.b(new bp(id4Var, c09VarB, auVar, n.a));
        this.e = c09VarB2;
        c09 c09VarB3 = c09.b(new bu(c09VarB2));
        this.f = c09VarB3;
        this.g = c09.b(new ba(c09VarB2, c09VarB3));
    }

    @Override // com.google.android.play.core.integrity.aw
    public final StandardIntegrityManager a() {
        return (StandardIntegrityManager) this.g.a();
    }
}
