package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mi3 extends kv1 {
    public li3 a;
    public h41 b;
    public tw0 c;
    public boolean d;
    public /* synthetic */ Object e;
    public int f;

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.f |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return jd4.m(null, null, false, this);
    }
}
