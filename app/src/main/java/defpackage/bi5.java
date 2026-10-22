package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.FileOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bi5 extends kv1 {
    public FileOutputStream a;
    public long b;
    public /* synthetic */ Object c;
    public int d;

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return sl4.v(null, this);
    }
}
