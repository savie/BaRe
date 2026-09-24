package defpackage;

import android.util.Log;
import android.widget.TextView;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yy implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Serializable d;
    public final /* synthetic */ Serializable e;

    public /* synthetic */ yy(Object obj, Object obj2, Serializable serializable, Serializable serializable2, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = serializable;
        this.e = serializable2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws Exception {
        int i = this.a;
        be8 be8Var = be8.a;
        Serializable serializable = this.e;
        Serializable serializable2 = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                c40 c40Var = (c40) obj3;
                fz fzVar = (fz) obj2;
                TextView textView = fzVar.n;
                ih6 ih6Var = (ih6) serializable2;
                ih6 ih6Var2 = (ih6) serializable;
                String str = (String) obj;
                boolean z = (str == null || str.length() == 0 || c40Var.e().isComplete()) ? false : true;
                sz8.d0(textView, z);
                ih6Var.a = z;
                fz.b(ih6Var, ih6Var2, fzVar);
                if (z) {
                    textView.setText(str);
                }
                return be8Var;
            default:
                ji7 ji7Var = (ji7) obj3;
                String str2 = (String) obj2;
                String str3 = (String) serializable2;
                String str4 = (String) serializable;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    ji7Var.w(str2);
                    ji7.A(wm2Var, str3, str4);
                    return be8Var;
                } catch (Exception e) {
                    Log.e("SmbService", "move", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "move: ".concat(io4.b(e)), null, 4, null);
                    throw e;
                }
        }
    }
}
