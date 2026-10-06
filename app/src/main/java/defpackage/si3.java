package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class si3 extends kv1 {
    public /* synthetic */ Object a;
    public final /* synthetic */ ti3 b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si3(ti3 ti3Var, jv1 jv1Var) {
        super(jv1Var);
        this.b = ti3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.b.c(null, this);
    }
}
