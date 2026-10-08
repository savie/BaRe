package defpackage;

import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class to8 {
    public final WallsDashActivity a;
    public final pp8 b;
    public final TextView c;
    public final QuickRecyclerView d;
    public final zx2 e;
    public final TextView f;
    public final MaterialButton g;
    public final RelativeLayout h;
    public final mo8 i;

    public to8(WallsDashActivity wallsDashActivity, xp3 xp3Var, pp8 pp8Var) {
        pp8Var.getClass();
        this.a = wallsDashActivity;
        this.b = pp8Var;
        this.c = (TextView) xp3Var.f;
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) xp3Var.d;
        this.d = quickRecyclerView;
        zx2 zx2Var = (zx2) xp3Var.c;
        this.e = zx2Var;
        ImageView imageView = zx2Var.d;
        this.f = zx2Var.e;
        this.g = zx2Var.b;
        this.h = (RelativeLayout) xp3Var.e;
        mo8 mo8Var = new mo8(wallsDashActivity, false);
        this.i = mo8Var;
        a(null);
        imageView.setImageResource(R.drawable.ic_cloud);
        quickRecyclerView.setLinearLayoutManager(0);
        quickRecyclerView.setAdapter(mo8Var);
    }

    public final void a(Integer num) {
        String string = this.a.getString(R.string.cloud_backups);
        string.getClass();
        if (num != null && num.intValue() > 0) {
            string = string + " (" + num + ")";
        }
        this.c.setText(string);
    }
}
