package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r3 extends kv1 {
    public sw6 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ tr9 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(tr9 tr9Var, kv1 kv1Var) {
        super(kv1Var);
        this.c = tr9Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.t(null, this);
    }
}
