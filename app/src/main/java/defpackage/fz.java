package defpackage;

import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fz {
    public final TaskActivity a;
    public final cy7 b;
    public final TextView c;
    public final TextView d;
    public final QuickRecyclerView e;
    public final TextView f;
    public final ShapeableImageView g;
    public final km5 h;
    public final CircularProgressIndicator i;
    public final TextView j;
    public final TextView k;
    public final TextView l;
    public final TextView m;
    public final TextView n;
    public final View o;
    public final ConstraintLayout p;

    public fz(TaskActivity taskActivity, cy7 cy7Var) {
        taskActivity.getClass();
        cy7Var.getClass();
        this.a = taskActivity;
        this.b = cy7Var;
        this.c = cy7Var.q;
        this.d = cy7Var.r;
        this.e = cy7Var.k;
        this.f = cy7Var.n;
        this.g = cy7Var.e;
        this.h = new km5(cy7Var.f, 17);
        this.i = cy7Var.b;
        this.j = cy7Var.p;
        this.k = cy7Var.t;
        this.l = cy7Var.x;
        this.m = cy7Var.G;
        this.n = cy7Var.y;
        this.o = cy7Var.d;
        this.p = cy7Var.c;
    }

    public static final void a(fz fzVar, int i) {
        TextView textView = fzVar.j;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) String.valueOf(i));
        RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(0.7f);
        int length = spannableStringBuilder.length();
        StyleSpan styleSpan = new StyleSpan(1);
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) "%");
        spannableStringBuilder.setSpan(styleSpan, length2, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(relativeSizeSpan, length, spannableStringBuilder.length(), 17);
        textView.setText(new SpannedString(spannableStringBuilder));
    }

    public static final void b(ih6 ih6Var, ih6 ih6Var2, fz fzVar) {
        boolean z = ih6Var.a || ih6Var2.a;
        sz8.d0(fzVar.o, z);
        sz8.d0(fzVar.p, z);
    }
}
