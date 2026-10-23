package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z93 extends kv1 {
    public aa3 a;
    public Object b;
    public Object c;
    public ta3 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ aa3 f;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z93(aa3 aa3Var, kv1 kv1Var) {
        super(kv1Var);
        this.f = aa3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.k |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.f.b(null, this);
    }
}
