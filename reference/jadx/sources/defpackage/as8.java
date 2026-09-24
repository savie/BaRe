package defpackage;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class as8 {
    public final WifiActivity a;
    public final iu8 b;
    public final TextView c;
    public final QuickRecyclerView d;
    public final ConstraintLayout e;
    public final MaterialButton f;
    public final MaterialButton g;
    public final zx2 h;
    public final TextView i;
    public final MaterialButton j;
    public final us8 k;

    public as8(WifiActivity wifiActivity, yr8 yr8Var, iu8 iu8Var) {
        iu8Var.getClass();
        this.a = wifiActivity;
        this.b = iu8Var;
        this.c = yr8Var.k;
        QuickRecyclerView quickRecyclerView = yr8Var.e;
        this.d = quickRecyclerView;
        this.e = yr8Var.f;
        this.f = yr8Var.b;
        this.g = yr8Var.c;
        zx2 zx2Var = yr8Var.d;
        this.h = zx2Var;
        this.i = zx2Var.e;
        ImageView imageView = zx2Var.d;
        MaterialButton materialButton = zx2Var.b;
        this.j = materialButton;
        this.k = iu8Var.j();
        a(null);
        quickRecyclerView.setLinearLayoutManager(0);
        imageView.setImageResource(R.drawable.ic_cloud);
        materialButton.setVisibility(8);
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
