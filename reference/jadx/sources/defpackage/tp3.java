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

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tp3 {
    public final TaskActivity a;
    public final cy7 b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final ShapeableImageView f;
    public final km5 g;
    public final CircularProgressIndicator h;
    public final TextView i;
    public final TextView j;
    public final TextView k;
    public final TextView l;
    public final TextView m;
    public final View n;
    public final ConstraintLayout o;

    public tp3(TaskActivity taskActivity, cy7 cy7Var) {
        taskActivity.getClass();
        cy7Var.getClass();
        this.a = taskActivity;
        this.b = cy7Var;
        this.c = cy7Var.q;
        this.d = cy7Var.r;
        this.e = cy7Var.n;
        this.f = cy7Var.e;
        this.g = new km5(cy7Var.f, 17);
        this.h = cy7Var.b;
        this.i = cy7Var.p;
        this.j = cy7Var.t;
        this.k = cy7Var.x;
        this.l = cy7Var.G;
        this.m = cy7Var.y;
        this.n = cy7Var.d;
        this.o = cy7Var.c;
    }

    public static final void a(tp3 tp3Var, int i) {
        TextView textView = tp3Var.i;
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

    public static final void b(ih6 ih6Var, ih6 ih6Var2, tp3 tp3Var) {
        boolean z = ih6Var.a || ih6Var2.a;
        sz8.d0(tp3Var.n, z);
        sz8.d0(tp3Var.o, z);
    }
}
