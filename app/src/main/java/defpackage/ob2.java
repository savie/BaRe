package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ob2 implements li3 {
    public final /* synthetic */ li3 a;

    public ob2(li3 li3Var) {
        this.a = li3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) throws Throwable {
        nb2 nb2Var;
        if (jv1Var instanceof nb2) {
            nb2Var = (nb2) jv1Var;
            int i = nb2Var.b;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                nb2Var.b = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                nb2Var = new nb2(this, jv1Var);
            }
        } else {
            nb2Var = new nb2(this, jv1Var);
        }
        Object obj2 = nb2Var.a;
        int i2 = nb2Var.b;
        if (i2 == 0) {
            lg7.H(obj2);
            em7 em7Var = (em7) obj;
            if (em7Var instanceof jf6) {
                throw ((jf6) em7Var).b;
            }
            if (!(em7Var instanceof ga2)) {
                if (em7Var instanceof ne3 ? true : em7Var instanceof od8) {
                    l0.e("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                    return null;
                }
                q.j();
                return null;
            }
            Object obj3 = ((ga2) em7Var).b;
            nb2Var.b = 1;
            Object objC = this.a.c(obj3, nb2Var);
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
        return be8.a;
    }
}
