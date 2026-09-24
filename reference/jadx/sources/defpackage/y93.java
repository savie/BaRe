package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y93 extends kv1 {
    public aa3 a;
    public i93 b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ aa3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y93(aa3 aa3Var, kv1 kv1Var) {
        super(kv1Var);
        this.e = aa3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.e.a(null, this);
    }
}
