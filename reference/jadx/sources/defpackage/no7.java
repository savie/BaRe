package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class no7 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ StorageSwitchActivity b;
    public final /* synthetic */ zn7 c;
    public final /* synthetic */ zn7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public no7(StorageSwitchActivity storageSwitchActivity, zn7 zn7Var, zn7 zn7Var2, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = storageSwitchActivity;
        this.c = zn7Var;
        this.d = zn7Var2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new no7(this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((no7) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            final StorageSwitchActivity storageSwitchActivity = this.b;
            storageSwitchActivity.U().h(R.string.preparing);
            String str = ry5.u;
            final String strD = qy5.d(this.c);
            zn7 zn7Var = this.d;
            final String strD2 = qy5.d(zn7Var);
            final Long lC = qy5.c(zn7Var.n());
            final long jF = p93.a.f(strD);
            storageSwitchActivity.U().f();
            zn4 zn4Var = zn4.a;
            bt3 bt3Var = new bt3() { // from class: lo7
                @Override // defpackage.bt3
                public final Object invoke() {
                    String[] list;
                    Long l = lC;
                    final StorageSwitchActivity storageSwitchActivity2 = storageSwitchActivity;
                    be8 be8Var = be8.a;
                    final int i2 = 0;
                    if (l == null) {
                        s35 s35Var = new s35(storageSwitchActivity2, R.style.M3AlertDialogTheme, new hv1(storageSwitchActivity2, R.style.M3AlertDialogTheme), null);
                        s35Var.v(R.string.error);
                        s35Var.n(R.string.could_not_get_available_space);
                        final int i3 = 1;
                        s35Var.s(R.string.ok, new DialogInterface.OnClickListener() { // from class: jo7
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i4) {
                                int i5 = i3;
                                StorageSwitchActivity storageSwitchActivity3 = storageSwitchActivity2;
                                switch (i5) {
                                    case 0:
                                        int i6 = StorageSwitchActivity.f0;
                                        Const.F(storageSwitchActivity3);
                                        break;
                                    default:
                                        Const.F(storageSwitchActivity3);
                                        break;
                                }
                            }
                        });
                        ((ra) s35Var.b).m = false;
                        s35Var.m();
                        return be8Var;
                    }
                    if (l.longValue() <= jF) {
                        s35 s35Var2 = new s35(storageSwitchActivity2, R.style.M3AlertDialogTheme, new hv1(storageSwitchActivity2, R.style.M3AlertDialogTheme), null);
                        s35Var2.v(R.string.warning);
                        ((ra) s35Var2.b).m = false;
                        s35Var2.n(R.string.not_enough_free_space_in_new_storage_msg);
                        s35Var2.s(R.string.ok, new DialogInterface.OnClickListener() { // from class: mo7
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i4) {
                                Const.F(storageSwitchActivity2);
                            }
                        });
                        s35Var2.m();
                        return be8Var;
                    }
                    int i4 = StorageSwitchActivity.f0;
                    StringBuilder sb = new StringBuilder(storageSwitchActivity2.getString(R.string.copy_move_files_message));
                    String str2 = strD2;
                    int i5 = 2;
                    q63 q63Var = new q63(str2, 2);
                    if (q63Var.j() && (list = q63Var.n().getFile().list()) != null && list.length != 0) {
                        sb.append("\n\n");
                        sb.append(storageSwitchActivity2.getString(R.string.overwrite_files_warning));
                    }
                    s35 s35Var3 = new s35(storageSwitchActivity2, R.style.M3AlertDialogTheme, new hv1(storageSwitchActivity2, R.style.M3AlertDialogTheme), null);
                    ra raVar = (ra) s35Var3.b;
                    s35Var3.v(R.string.move_files);
                    raVar.m = false;
                    raVar.f = sb.toString();
                    String str3 = strD;
                    s35Var3.s(R.string.copy, new vq1(i5, storageSwitchActivity2, str3, str2));
                    s35Var3.q(R.string.move, new rj1(4, storageSwitchActivity2, str3, str2));
                    s35Var3.r(R.string.do_nothing, new DialogInterface.OnClickListener() { // from class: jo7
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i6) {
                            int i7 = i2;
                            StorageSwitchActivity storageSwitchActivity3 = storageSwitchActivity2;
                            switch (i7) {
                                case 0:
                                    int i8 = StorageSwitchActivity.f0;
                                    Const.F(storageSwitchActivity3);
                                    break;
                                default:
                                    Const.F(storageSwitchActivity3);
                                    break;
                            }
                        }
                    });
                    s35Var3.m();
                    return be8Var;
                }
            };
            this.a = 1;
            Object objG = zn4.g(bt3Var, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
