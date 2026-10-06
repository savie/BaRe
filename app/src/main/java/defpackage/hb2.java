package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hb2 extends kv1 {
    public Object a;
    public Object b;
    public Object c;
    public lh6 d;
    public ic2 e;
    public /* synthetic */ Object f;
    public final /* synthetic */ ib2 k;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hb2(ib2 ib2Var, kv1 kv1Var) {
        super(kv1Var);
        this.k = ib2Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.n |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.k.a(null, this);
    }
}
