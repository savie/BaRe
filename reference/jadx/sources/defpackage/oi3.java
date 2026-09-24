package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class oi3 extends kv1 {
    public /* synthetic */ Object a;
    public int b;
    public final /* synthetic */ h80 c;
    public li3 d;
    public Serializable e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oi3(h80 h80Var, kv1 kv1Var) {
        super(kv1Var);
        this.c = h80Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        this.a = obj;
        this.b |= SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        return this.c.t(null, this);
    }
}
