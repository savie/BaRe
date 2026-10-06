package defpackage;

import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l31 extends Property {
    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        return null;
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        s31 s31Var = (s31) obj;
        PointF pointF = (PointF) obj2;
        s31Var.getClass();
        s31Var.a = Math.round(pointF.x);
        int iRound = Math.round(pointF.y);
        s31Var.b = iRound;
        int i = s31Var.f + 1;
        s31Var.f = i;
        if (i == s31Var.g) {
            wm8.a(s31Var.e, s31Var.a, iRound, s31Var.c, s31Var.d);
            s31Var.f = 0;
            s31Var.g = 0;
        }
    }
}
