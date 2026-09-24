package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zb2 extends kv1 {
    public Object a;
    public Object b;
    public Serializable c;
    public lh6 d;
    public boolean e;
    public int f;
    public /* synthetic */ Object k;
    public final /* synthetic */ ic2 n;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zb2(ic2 ic2Var, kv1 kv1Var) {
        super(kv1Var);
        this.n = ic2Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.p |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return ic2.f(this.n, false, this);
    }
}
