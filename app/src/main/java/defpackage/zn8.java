package defpackage;

import android.graphics.ColorFilter;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zn8 implements vk6 {
    public final /* synthetic */ WallApplyActivity a;

    public zn8(WallApplyActivity wallApplyActivity) {
        this.a = wallApplyActivity;
    }

    @Override // defpackage.vk6
    public final void f(fy3 fy3Var, px7 px7Var) {
        px7Var.getClass();
    }

    @Override // defpackage.vk6
    public final void i(Object obj, Object obj2, px7 px7Var, int i) {
        obj2.getClass();
        px7Var.getClass();
        if (i == 0) {
            throw null;
        }
        ao8 ao8Var = WallApplyActivity.O;
        WallApplyActivity wallApplyActivity = this.a;
        wallApplyActivity.N().d.setColorFilter((ColorFilter) null);
        zn4 zn4Var = zn4.a;
        zn4.f(300L, new u14(wallApplyActivity, 12));
        wallApplyActivity.N().c.setOnClickListener(new h00(wallApplyActivity, 14));
    }
}
