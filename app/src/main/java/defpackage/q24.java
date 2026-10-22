package defpackage;

import android.util.Log;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q24 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q24(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ((r24) obj3).c.removeCallbacks((ln) obj2);
                return be8Var;
            case 1:
                ff5 ff5Var = (ff5) obj3;
                if5 if5Var = (if5) obj2;
                TextView textView = if5Var.i;
                String str = (String) obj;
                boolean z = (str == null || str.length() == 0 || ff5Var.e().isComplete()) ? false : true;
                sz8.d0(textView, z);
                sz8.d0(if5Var.j, z);
                sz8.d0(if5Var.k, z);
                if (z) {
                    textView.setText(str);
                }
                return be8Var;
            default:
                ji7 ji7Var = (ji7) obj3;
                String str2 = (String) obj2;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    String strC = ji7Var.C(str2);
                    return og1.g(wm2Var.j(strC), strC);
                } catch (Exception e) {
                    Log.e("SmbService", "getFile", e);
                    vr6.e$default(vr6.INSTANCE, "SmbService", "getFile: ".concat(io4.b(e)), null, 4, null);
                    return null;
                }
        }
    }
}
