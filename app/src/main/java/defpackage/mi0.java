package defpackage;

import android.view.View;
import android.widget.Toast;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mi0 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mi0(Object obj, int i, int i2, Object obj2) {
        this.a = i2;
        this.c = obj;
        this.d = obj2;
        this.b = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                oi0 oi0Var = (oi0) obj2;
                li0 li0Var = (li0) obj;
                ao aoVar = li0Var.k;
                if (li0Var.b()) {
                    li0Var.f = aoVar instanceof ji0;
                    String str = (String) aoVar.a;
                    if (str != null) {
                        Toast toast = oi0Var.h;
                        if (toast != null) {
                            toast.cancel();
                        }
                        SwiftApp.Companion companion = SwiftApp.d;
                        Toast toastMakeText = Toast.makeText(SwiftApp.Companion.c(), str, 0);
                        oi0Var.h = toastMakeText;
                        if (toastMakeText != null) {
                            toastMakeText.show();
                        }
                    }
                    bt3 bt3Var = (bt3) aoVar.b;
                    if (bt3Var != null) {
                        bt3Var.invoke();
                    }
                } else {
                    li0Var.f = !li0Var.a();
                }
                oi0Var.f(i2);
                at5 at5Var = oi0Var.g;
                if (at5Var != null) {
                    at5Var.d(li0Var);
                }
                break;
            default:
                zc6 zc6Var = (zc6) obj2;
                dd6 dd6Var = (dd6) obj;
                if (zc6Var.f) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        Const.N(dd6Var.l);
                    }
                }
                qt3 qt3Var = dd6Var.j;
                if (qt3Var != null) {
                    qt3Var.invoke(zc6Var, Integer.valueOf(i2));
                }
                break;
        }
    }
}
