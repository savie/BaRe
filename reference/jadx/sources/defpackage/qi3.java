package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: loaded from: classes.dex */
public final class qi3 extends kv1 {
    public /* synthetic */ Object a;
    public int b;
    public final /* synthetic */ ro c;
    public li3 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qi3(ro roVar, kv1 kv1Var) {
        super(kv1Var);
        this.c = roVar;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.t(null, this);
    }
}
