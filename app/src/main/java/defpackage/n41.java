package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n41 extends kv1 {
    public Object a;
    public ox1 b;
    public Object c;
    public /* synthetic */ Object d;
    public int e;

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.e |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return ji8.O(null, null, null, null, this);
    }
}
