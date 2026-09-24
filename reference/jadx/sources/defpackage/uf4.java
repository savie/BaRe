package defpackage;

import com.jcraft.jsch.SftpATTRS;
import org.swiftapps.swiftbackup.intro.d;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uf4 extends kv1 {
    public /* synthetic */ Object a;
    public final /* synthetic */ d b;
    public int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uf4(d dVar, kv1 kv1Var) {
        super(kv1Var);
        this.b = dVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.c |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.b.l(this);
    }
}
