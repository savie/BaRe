package defpackage;

import android.widget.TextView;
import java.io.Serializable;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class le1 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Serializable e;

    public /* synthetic */ le1(Object obj, Object obj2, Object obj3, Serializable serializable, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = serializable;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Serializable serializable = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                ke keVar = (ke) obj4;
                sd1 sd1Var = (sd1) obj3;
                Long l = (Long) obj;
                String string = ((we1) obj2).a.getString(R.string.cloud_diagnostics_upload_progress, we1.n(l != null ? l.longValue() : 0L), we1.n(((q63) serializable).A()));
                string.getClass();
                keVar.g(sd1Var, string);
                break;
            default:
                qp3 qp3Var = (qp3) obj4;
                tp3 tp3Var = (tp3) obj3;
                TextView textView = tp3Var.m;
                ih6 ih6Var = (ih6) obj2;
                ih6 ih6Var2 = (ih6) serializable;
                String str = (String) obj;
                boolean z = (str == null || str.length() == 0 || qp3Var.e().isComplete()) ? false : true;
                sz8.d0(textView, z);
                ih6Var.a = z;
                tp3.b(ih6Var, ih6Var2, tp3Var);
                if (z) {
                    textView.setText(str);
                }
                break;
        }
        return be8Var;
    }
}
