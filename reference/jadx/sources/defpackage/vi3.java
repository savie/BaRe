package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vi3 implements li3 {
    public final /* synthetic */ ih6 a;
    public final /* synthetic */ li3 b;
    public final /* synthetic */ t72 c;

    public vi3(ih6 ih6Var, li3 li3Var, t72 t72Var) {
        this.a = ih6Var;
        this.b = li3Var;
        this.c = t72Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) {
        ui3 ui3Var;
        if (jv1Var instanceof ui3) {
            ui3Var = (ui3) jv1Var;
            int i = ui3Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ui3Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                ui3Var = new ui3(this, jv1Var);
            }
        } else {
            ui3Var = new ui3(this, jv1Var);
        }
        Object objInvoke = ui3Var.b;
        int i2 = ui3Var.d;
        li3 li3Var = this.b;
        ih6 ih6Var = this.a;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(objInvoke);
            if (ih6Var.a) {
                ui3Var.a = null;
                ui3Var.d = 1;
                if (li3Var.c(obj, ui3Var) != yx1Var) {
                    return be8Var;
                }
            } else {
                ui3Var.a = obj;
                ui3Var.d = 2;
                objInvoke = this.c.invoke(obj, ui3Var);
                if (objInvoke != yx1Var) {
                }
            }
            return yx1Var;
        }
        if (i2 == 1) {
            lg7.H(objInvoke);
            return be8Var;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                lg7.H(objInvoke);
                return be8Var;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        obj = ui3Var.a;
        lg7.H(objInvoke);
        if (!((Boolean) objInvoke).booleanValue()) {
            ih6Var.a = true;
            ui3Var.a = null;
            ui3Var.d = 3;
            if (li3Var.c(obj, ui3Var) == yx1Var) {
                return yx1Var;
            }
        }
        return be8Var;
    }
}
