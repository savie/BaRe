package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jm7 extends kv1 {
    public li3 a;
    public lm7 b;
    public oh4 c;
    public Object d;
    public Object e;
    public /* synthetic */ Object f;
    public final /* synthetic */ km7 k;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jm7(km7 km7Var, kv1 kv1Var) {
        super(kv1Var);
        this.k = km7Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.n |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.k.t(null, this);
        return yx1.a;
    }
}
