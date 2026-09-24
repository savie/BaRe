package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p76 extends kv1 {
    public w93 a;
    public /* synthetic */ Object b;
    public int c;

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.c |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return zv1.a(null, null, this);
    }
}
