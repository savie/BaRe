package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cj3 extends kv1 {
    public lh6 a;
    public bj3 b;
    public /* synthetic */ Object c;
    public int d;

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return xx3.e(null, this);
    }
}
