package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jb8 extends kv1 {
    public t26 a;
    public String b;
    public String[] c;
    public int d;
    public int e;
    public /* synthetic */ Object f;
    public final /* synthetic */ mb8 k;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb8(mb8 mb8Var, kv1 kv1Var) {
        super(kv1Var);
        this.k = mb8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.n |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return mb8.d(this.k, null, 0, this);
    }
}
