package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p26 extends kv1 {
    public long a;
    public bt3 b;
    public lh6 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ r26 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p26(r26 r26Var, kv1 kv1Var) {
        super(kv1Var);
        this.e = r26Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.e.b(0L, null, this);
    }
}
