package defpackage;

import com.jcraft.jsch.SftpATTRS;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y72 extends kv1 {
    public MDatabase_Impl a;
    public t34 b;
    public boolean c;
    public /* synthetic */ Object d;
    public int e;

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.e |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return g67.A(null, false, null, this);
    }
}
