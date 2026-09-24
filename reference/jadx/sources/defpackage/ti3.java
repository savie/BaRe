package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ti3 implements li3 {
    public final /* synthetic */ li3 a;
    public final /* synthetic */ lh6 b;

    public ti3(li3 li3Var, lh6 lh6Var) {
        this.a = li3Var;
        this.b = lh6Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [be8, java.lang.Object] */
    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) {
        si3 si3Var;
        if (jv1Var instanceof si3) {
            si3Var = (si3) jv1Var;
            int i = si3Var.c;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                si3Var.c = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                si3Var = new si3(this, jv1Var);
            }
        } else {
            si3Var = new si3(this, jv1Var);
        }
        Object obj2 = si3Var.a;
        int i2 = si3Var.c;
        try {
            if (i2 == 0) {
                lg7.H(obj2);
                li3 li3Var = this.a;
                si3Var.c = 1;
                Object objC = li3Var.c(obj, si3Var);
                yx1 yx1Var = yx1.a;
                if (objC == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj2);
            }
            this = be8.a;
            return this;
        } catch (Throwable th) {
            this.b.a = th;
            throw th;
        }
    }
}
