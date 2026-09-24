package com.google.android.play.core.integrity;

import android.content.Context;
import defpackage.c09;
import defpackage.e09;
import defpackage.f6;
import defpackage.id4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class s {
    private final s a = this;
    private final e09 b;
    private final e09 c;
    private final e09 d;
    private final e09 e;
    private final e09 f;

    public s(Context context, r rVar) {
        if (context == null) {
            f6.n("instance cannot be null");
            throw null;
        }
        id4 id4Var = new id4(context);
        this.b = id4Var;
        c09 c09VarB = c09.b(ac.a);
        this.c = c09VarB;
        au auVar = new au(id4Var, l.a);
        this.d = auVar;
        c09 c09VarB2 = c09.b(new al(id4Var, c09VarB, auVar, l.a));
        this.e = c09VarB2;
        this.f = c09.b(new ab(c09VarB2));
    }

    public final IntegrityManager a() {
        return (IntegrityManager) this.f.a();
    }
}
