package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bh3 extends kv1 {
    public Map a;
    public Iterator b;
    public h97 c;
    public Map d;
    public Object e;
    public /* synthetic */ Object f;
    public final /* synthetic */ ch3 k;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bh3(ch3 ch3Var, kv1 kv1Var) {
        super(kv1Var);
        this.k = ch3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.n |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.k.b(this);
    }
}
