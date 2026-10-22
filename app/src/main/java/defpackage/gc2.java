package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gc2 extends kv1 {
    public jh6 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ic2 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gc2(ic2 ic2Var, kv1 kv1Var) {
        super(kv1Var);
        this.c = ic2Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.j(null, false, this);
    }
}
