package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ll3 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ll3(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                FolderDetailActivity.a0(((ml3) obj2).a, ((ul3) obj).a, null, 2);
                break;
            case 1:
                qt3 qt3Var = (qt3) ((ee5) obj2).m;
                view.getClass();
                qt3Var.invoke(view, (vd5) obj);
                break;
            case 2:
                Context context = ((TextView) obj2).getContext();
                context.getClass();
                Const.B(context, (String) obj);
                break;
            default:
                zc6 zc6Var = (zc6) obj;
                kd6 kd6Var = ((dd6) obj2).n;
                if (kd6Var != null) {
                    kd6Var.invoke(zc6Var);
                }
                break;
        }
    }
}
