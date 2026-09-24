package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ui3 extends kv1 {
    public Object a;
    public /* synthetic */ Object b;
    public final /* synthetic */ vi3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ui3(vi3 vi3Var, jv1 jv1Var) {
        super(jv1Var);
        this.c = vi3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.c(null, this);
    }
}
