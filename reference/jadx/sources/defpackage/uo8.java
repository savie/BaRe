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
public final class uo8 {
    public final WallsDashActivity a;
    public final TextView b;
    public final QuickRecyclerView c;
    public final zx2 d;
    public final TextView e;
    public final RelativeLayout f;
    public final mo8 g;

    public uo8(WallsDashActivity wallsDashActivity, xp3 xp3Var) {
        this.a = wallsDashActivity;
        this.b = (TextView) xp3Var.f;
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) xp3Var.d;
        this.c = quickRecyclerView;
        zx2 zx2Var = (zx2) xp3Var.c;
        this.d = zx2Var;
        ImageView imageView = zx2Var.d;
        this.e = zx2Var.e;
        MaterialButton materialButton = zx2Var.b;
        this.f = (RelativeLayout) xp3Var.e;
        mo8 mo8Var = new mo8(wallsDashActivity, false);
        this.g = mo8Var;
        a();
        imageView.setImageResource(R.drawable.ic_no_backup);
        materialButton.setVisibility(8);
        quickRecyclerView.setLinearLayoutManager(0);
        quickRecyclerView.setAdapter(mo8Var);
    }

    public final void a() {
        String string = this.a.getString(R.string.device_backups);
        string.getClass();
        TextView textView = this.b;
        CharSequence text = textView.getText();
        if (text == null || text.length() == 0) {
            textView.setText(string);
        }
        zn4 zn4Var = zn4.a;
        zn4.b(null, new a11(this, string, null, 3));
    }
}
