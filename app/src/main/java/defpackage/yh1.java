package defpackage;

import com.jcraft.jsch.SftpATTRS;
import org.swiftapps.swiftbackup.cloud.orphans.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yh1 extends kv1 {
    public ih6 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ a c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yh1(a aVar, kv1 kv1Var) {
        super(kv1Var);
        this.c = aVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return a.l(this.c, 0L, null, null, this);
    }
}
