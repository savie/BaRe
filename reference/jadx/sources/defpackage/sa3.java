package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.FileOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sa3 extends kv1 {
    public FileOutputStream a;
    public FileOutputStream b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ta3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sa3(ta3 ta3Var, kv1 kv1Var) {
        super(kv1Var);
        this.d = ta3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.d.b(null, this);
    }
}
