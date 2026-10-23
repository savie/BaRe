package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: loaded from: classes.dex */
public final class xi3 extends kv1 {
    public /* synthetic */ Object a;
    public int b;
    public final /* synthetic */ yi3 c;
    public Object d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xi3(yi3 yi3Var, jv1 jv1Var) {
        super(jv1Var);
        this.c = yi3Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.c(null, this);
    }
}
