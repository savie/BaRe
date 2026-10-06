package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xb7 {
    public final ArrayList a;
    public PointF b;
    public boolean c;

    public xb7(PointF pointF, boolean z, List list) {
        this.b = pointF;
        this.c = z;
        this.a = new ArrayList(list);
    }

    public final String toString() {
        return "ShapeData{numCurves=" + this.a.size() + "closed=" + this.c + '}';
    }

    public xb7() {
        this.a = new ArrayList();
    }
}
