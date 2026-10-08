package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fg3 extends kv1 {
    public long a;
    public long b;
    public /* synthetic */ Object c;
    public final /* synthetic */ gg3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fg3(gg3 gg3Var, kv1 kv1Var) {
        super(kv1Var);
        this.d = gg3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.d.k(0L, this);
    }
}
