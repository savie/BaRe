package defpackage;

import android.view.KeyEvent;
import android.view.View;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kn0 implements Runnable {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ KeyEvent.Callback c;

    public kn0(on0 on0Var) {
        this.a = 0;
        this.c = on0Var;
        this.b = -1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view;
        int i = this.a;
        KeyEvent.Callback callback = this.c;
        switch (i) {
            case 0:
                ((on0) callback).n.w(this.b, 4);
                break;
            default:
                int i2 = LabelsActivity.Z;
                fh6 fh6VarG = ((LabelsActivity) callback).P().G(this.b);
                if (fh6VarG != null && (view = fh6VarG.a) != null) {
                    view.startAnimation(Const.j(6));
                    break;
                }
                break;
        }
    }

    public kn0(LabelsActivity labelsActivity, int i) {
        this.a = 1;
        this.c = labelsActivity;
        this.b = i;
    }
}
