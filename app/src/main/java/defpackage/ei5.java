package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.FileInputStream;
import java.nio.channels.FileLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ei5 extends kv1 {
    public mj5 a;
    public FileInputStream b;
    public FileLock c;
    public boolean d;
    public /* synthetic */ Object e;
    public final /* synthetic */ fi5 f;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ei5(fi5 fi5Var, kv1 kv1Var) {
        super(kv1Var);
        this.f = fi5Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.k |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.f.d(null, this);
    }
}
