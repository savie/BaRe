package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class es1 extends kv1 {
    public boolean a;
    public Object b;
    public Object c;
    public lh6 d;
    public ox1 e;
    public lh6 f;
    public hx0 k;
    public /* synthetic */ Object n;
    public final /* synthetic */ gs1 p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public es1(gs1 gs1Var, kv1 kv1Var) {
        super(kv1Var);
        this.p = gs1Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.q |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.p.w(false, null, this);
    }
}
