package defpackage;

import android.content.DialogInterface;
import java.io.Serializable;
import org.swiftapps.swiftbackup.detail.DetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jb1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Serializable c;

    public /* synthetic */ jb1(Object obj, Serializable serializable, int i) {
        this.a = i;
        this.b = obj;
        this.c = serializable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Serializable serializable = this.c;
        Object obj = this.b;
        switch (i2) {
            case 0:
                ((mt3) obj).invoke(((lh6) serializable).a);
                break;
            default:
                iu iuVar = (iu) serializable;
                int i3 = DetailActivity.b0;
                mk2 mk2VarA0 = ((DetailActivity) obj).a0();
                iuVar.getClass();
                zn4 zn4Var = zn4.a;
                zn4.c(new y2(12, mk2VarA0, iuVar));
                break;
        }
    }
}
