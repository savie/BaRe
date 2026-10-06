package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: loaded from: classes2.dex */
public final class wi3 extends kv1 {
    public /* synthetic */ Object a;
    public int b;
    public final /* synthetic */ la c;
    public yi3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wi3(la laVar, kv1 kv1Var) {
        super(kv1Var);
        this.c = laVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.t(null, this);
    }
}
