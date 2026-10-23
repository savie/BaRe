package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uj1 {
    public final HomeActivity a;
    public final tf1 b;
    public final ng1 c;
    public final TextView d;
    public final MaterialButton e;
    public final LinearLayout f;
    public final ConstraintLayout g;
    public final TextView h;

    public uj1(HomeActivity homeActivity, tf1 tf1Var, ng1 ng1Var) {
        ng1Var.getClass();
        this.a = homeActivity;
        this.b = tf1Var;
        this.c = ng1Var;
        gm1 gm1Var = tf1Var.n;
        this.d = (TextView) gm1Var.f;
        MaterialButton materialButton = tf1Var.k;
        this.e = materialButton;
        this.f = tf1Var.b;
        this.g = tf1Var.d;
        this.h = tf1Var.p;
        ((ImageView) gm1Var.c).setImageResource(R.drawable.ic_tag);
        ((TextView) gm1Var.e).setText(R.string.active_backup_tag);
        a();
        ((MaterialCardView) gm1Var.a).setOnClickListener(new nf(this, 4));
        materialButton.setBackgroundColor(sz8.r(homeActivity));
        materialButton.setOnClickListener(new g7(this, 8));
    }

    public static final d71 b(String str, int i, int i2, int i3) {
        d71 d71Var = new d71();
        d71Var.a = i;
        d71Var.b = str;
        d71Var.c = i2;
        d71Var.d = i3;
        return d71Var;
    }

    public static final String c(int i, String str) {
        return str + " (" + i + ")";
    }

    public final void a() {
        TextView textView = this.h;
        tb1 tb1Var = tb1.a;
        String strE = qb1.e();
        this.d.setText(strE);
        HomeActivity homeActivity = this.a;
        this.e.setText(homeActivity.getString(R.string.delete_active_tag, strE));
        try {
            String string = homeActivity.getString(R.string.backups_tagged_with, strE);
            string.getClass();
            String strT = uq7.T(string, "'", "");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strT);
            int iH0 = nq7.h0(strT, strE, 0, false, 6);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(sz8.x(homeActivity)), iH0, strE.length() + iH0, 33);
            textView.setText(spannableStringBuilder);
        } catch (Exception e) {
            Log.e("updateActiveTag", io4.b(e));
            textView.setText(homeActivity.getString(R.string.backups_tagged_with, strE));
        }
    }
}
