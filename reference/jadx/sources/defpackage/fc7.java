package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fc7 extends lc7 {
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ Matrix d;

    public fc7(ArrayList arrayList, Matrix matrix) {
        this.c = arrayList;
        this.d = matrix;
    }

    @Override // defpackage.lc7
    public final void a(Matrix matrix, qb7 qb7Var, int i, Canvas canvas) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((lc7) it.next()).a(this.d, qb7Var, i, canvas);
        }
    }
}
