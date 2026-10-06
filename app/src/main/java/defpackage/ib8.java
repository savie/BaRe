package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ib8 extends kv1 {
    public t26 a;
    public String b;
    public String[] c;
    public int d;
    public int e;
    public int f;
    public /* synthetic */ Object k;
    public final /* synthetic */ mb8 n;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ib8(mb8 mb8Var, kv1 kv1Var) {
        super(kv1Var);
        this.n = mb8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.p |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return mb8.c(this.n, null, 0, this);
    }
}
