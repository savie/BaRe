package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cj6 extends kv1 {
    public kj5 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ dj6 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cj6(dj6 dj6Var, kv1 kv1Var) {
        super(kv1Var);
        this.c = dj6Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.a(this);
    }
}
