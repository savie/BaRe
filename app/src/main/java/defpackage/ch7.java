package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ch7 extends kv1 {
    public mj5 a;
    public boolean b;
    public /* synthetic */ Object c;
    public final /* synthetic */ eh7 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ch7(eh7 eh7Var, kv1 kv1Var) {
        super(kv1Var);
        this.d = eh7Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.d.d(null, this);
    }
}
