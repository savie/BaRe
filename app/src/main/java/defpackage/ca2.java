package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.io.File;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ca2 implements jk8 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public ca2(xf1 xf1Var) {
        this.a = (yf1) xf1Var.c;
        this.b = (File) xf1Var.d;
        this.c = (File) xf1Var.e;
        this.d = (File) xf1Var.f;
        this.e = (File) xf1Var.b;
        this.f = (File) xf1Var.k;
    }

    public static ca2 a(View view) {
        int i = R.id.iv_switch;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_switch);
        if (imageView != null) {
            i = R.id.progressBarStorage;
            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ms8.u(view, R.id.progressBarStorage);
            if (linearProgressIndicator != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = R.id.tv_storage_type;
                TextView textView = (TextView) ms8.u(view, R.id.tv_storage_type);
                if (textView != null) {
                    i = R.id.tvUsage;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tvUsage);
                    if (textView2 != null) {
                        i = R.id.tvUsedPercent;
                        TextView textView3 = (TextView) ms8.u(view, R.id.tvUsedPercent);
                        if (textView3 != null) {
                            return new ca2(constraintLayout, imageView, linearProgressIndicator, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ConstraintLayout) this.a;
    }

    public ca2(ConstraintLayout constraintLayout, ImageView imageView, LinearProgressIndicator linearProgressIndicator, TextView textView, TextView textView2, TextView textView3) {
        this.a = constraintLayout;
        this.b = imageView;
        this.c = linearProgressIndicator;
        this.d = textView;
        this.e = textView2;
        this.f = textView3;
    }
}
