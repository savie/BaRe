package defpackage;

import java.io.OutputStream;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rk extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rk(Object obj) {
        super(0, obj, nf4.class, "onPermissionGrantFinished", "onPermissionGrantFinished()V", 0);
        this.a = 4;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        String strO;
        switch (this.a) {
            case 0:
                AppBackupLimitsActivity.N((AppBackupLimitsActivity) this.receiver);
                return be8.a;
            case 1:
                ((b82) this.receiver).getClass();
                Object obj = b82.i;
                nq2 nq2VarM = lg7.m();
                if (nq2VarM == null) {
                    return null;
                }
                String str = nq2VarM.a;
                return (!nq2.a(nq2VarM) || (strO = b82.o(str)) == null) ? str : strO;
            case 2:
                return Boolean.valueOf(((fu3) this.receiver).u());
            case 3:
                return Boolean.valueOf(((pu3) this.receiver).e());
            case 4:
                nf4 nf4Var = (nf4) this.receiver;
                synchronized (nf4Var) {
                    if (!nf4Var.h && nf4Var.g == mf4.GRANTING_PERMISSIONS) {
                        nf4Var.a(mf4.IDLE);
                    }
                    break;
                }
                return be8.a;
            default:
                gt8 gt8Var = (gt8) this.receiver;
                q63 q63Var = gt8Var.b;
                q63 q63Var2 = gt8Var.a;
                boolean zJ = false;
                if (q63Var2.j()) {
                    try {
                        x45 x45Var = new x45(q63Var2.v());
                        OutputStream outputStreamF = q63Var.F(true);
                        try {
                            try {
                                cy0.j(x45Var, outputStreamF, 262144);
                                outputStreamF.close();
                                x45Var.close();
                                zJ = q63Var.j();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    rs9.c(outputStreamF, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(x45Var, th3);
                                throw th4;
                            }
                        }
                    } catch (Exception e) {
                        vr6.e$default(vr6.INSTANCE, "WifiPasswordParser", "readFromSystem: Couldn't copy config file at " + q63Var2 + ": " + e.getMessage(), null, 4, null);
                    }
                } else {
                    vr6.e$default(vr6.INSTANCE, "WifiPasswordParser", xs1.i(q63Var2, "readFromSystem: Wifi config file not found at "), null, 4, null);
                }
                return Boolean.valueOf(zJ);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rk(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }
}
