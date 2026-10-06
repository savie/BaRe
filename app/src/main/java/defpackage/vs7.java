package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum vs7 {
    SURFACE_0(R.dimen.m3_sys_elevation_level0),
    SURFACE_1(R.dimen.m3_sys_elevation_level1),
    SURFACE_2(R.dimen.m3_sys_elevation_level2),
    SURFACE_3(R.dimen.m3_sys_elevation_level3),
    /* JADX INFO: Fake field, exist only in values array */
    SURFACE_4(R.dimen.m3_sys_elevation_level4),
    /* JADX INFO: Fake field, exist only in values array */
    SURFACE_5(R.dimen.m3_sys_elevation_level5);

    public final int a;

    vs7(int i) {
        this.a = i;
    }

    public final int a(Context context) {
        float dimension = context.getResources().getDimension(this.a);
        xt2 xt2Var = new xt2(context);
        Integer numN = z85.n(context, R.attr.colorSurface);
        return xt2Var.a(numN != null ? numN.intValue() : 0, dimension);
    }
}
