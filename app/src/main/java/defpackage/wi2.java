package defpackage;

import android.content.DialogInterface;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wi2 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ wi2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                int i3 = DetailActivity.b0;
                ((vi2) obj).invoke();
                break;
            case 1:
                bt3 bt3Var = (bt3) obj;
                if (bt3Var != null) {
                    bt3Var.invoke();
                }
                break;
            case 2:
                int i4 = FolderDetailActivity.Z;
                dm3 dm3VarX = ((FolderDetailActivity) obj).U();
                zn4 zn4Var = zn4.a;
                zn4.c(new lf(dm3VarX, 21));
                break;
            default:
                ((jh6) obj).a = i;
                break;
        }
    }
}
