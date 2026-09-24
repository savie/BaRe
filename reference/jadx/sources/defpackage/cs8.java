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
public final class cs8 {
    public final WifiActivity a;
    public final iu8 b;
    public final TextView c;
    public final QuickRecyclerView d;
    public final ConstraintLayout e;
    public final MaterialButton f;
    public final zx2 g;
    public final TextView h;
    public final ImageView i;
    public final MaterialButton j;
    public final gv7 k;

    public cs8(WifiActivity wifiActivity, yr8 yr8Var, iu8 iu8Var) {
        iu8Var.getClass();
        this.a = wifiActivity;
        this.b = iu8Var;
        this.c = yr8Var.k;
        QuickRecyclerView quickRecyclerView = yr8Var.e;
        this.d = quickRecyclerView;
        this.e = yr8Var.f;
        MaterialButton materialButton = yr8Var.b;
        this.f = yr8Var.c;
        zx2 zx2Var = yr8Var.d;
        this.g = zx2Var;
        this.h = zx2Var.e;
        ImageView imageView = zx2Var.d;
        this.i = imageView;
        MaterialButton materialButton2 = zx2Var.b;
        this.j = materialButton2;
        this.k = new gv7(new qb5(this, 13));
        a(null);
        quickRecyclerView.setLinearLayoutManager(0);
        materialButton.setVisibility(8);
        imageView.setImageResource(R.drawable.ic_wifi_off);
        materialButton2.setVisibility(8);
    }

    public final void a(Integer num) {
        String string = this.a.getString(R.string.wifi_on_device);
        string.getClass();
        if (num != null && num.intValue() > 0) {
            string = string + " (" + num + ")";
        }
        this.c.setText(string);
    }
}
