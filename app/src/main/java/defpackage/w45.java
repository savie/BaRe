package defpackage;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.NumberFormat;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w45 extends wa implements eu4 {
    public final NumberFormat G;
    public int H;
    public int I;
    public int J;
    public int K;
    public CharSequence L;
    public boolean M;
    public v45 N;
    public final io1 n;
    public ProgressBar p;
    public TextView q;
    public int r;
    public TextView t;
    public String x;
    public TextView y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w45(io1 io1Var) {
        super(io1Var, 0);
        io1Var.getClass();
        this.n = io1Var;
        this.x = "%1d/%2d";
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        this.G = percentInstance;
        percentInstance.getClass();
        percentInstance.setMaximumFractionDigits(0);
    }

    @Override // defpackage.wa
    public final void i(CharSequence charSequence) {
        charSequence.getClass();
        if (this.p == null) {
            this.L = charSequence;
        } else {
            if (this.r == 1) {
                super.i(charSequence);
                return;
            }
            TextView textView = this.q;
            textView.getClass();
            textView.setText(charSequence);
        }
    }

    public final void j() {
        v45 v45Var;
        if (this.r != 1 || (v45Var = this.N) == null || v45Var.hasMessages(0)) {
            return;
        }
        v45 v45Var2 = this.N;
        v45Var2.getClass();
        v45Var2.sendEmptyMessage(0);
    }

    public final void k(boolean z) {
        this.M = z;
        ProgressBar progressBar = this.p;
        if (progressBar != null) {
            progressBar.setIndeterminate(z);
        }
    }

    public final void l(int i) {
        this.H = i;
        ProgressBar progressBar = this.p;
        if (progressBar != null) {
            progressBar.setMax(i);
            j();
        }
    }

    public final void m(int i) {
        this.I = i;
        ProgressBar progressBar = this.p;
        if (progressBar != null) {
            progressBar.setProgress(i);
            j();
        }
    }

    public final void n(String str) {
        this.x = str;
        j();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00d1 A[PHI: r1
      0x00d1: PHI (r1v3 int) = (r1v2 int), (r1v4 int) binds: [B:14:0x006d, B:16:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.wa, defpackage.ho, defpackage.ko1, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.n);
        int i = this.r;
        ua uaVar = this.k;
        int i2 = R.id.progress;
        if (i != 1) {
            View viewInflate = layoutInflaterFrom.inflate(R.layout.progress_dialog_material, (ViewGroup) null);
            int i3 = R.id.body;
            if (((LinearLayout) ms8.u(viewInflate, R.id.body)) != null) {
                i3 = R.id.message;
                TextView textView = (TextView) ms8.u(viewInflate, R.id.message);
                if (textView != null) {
                    ProgressBar progressBar = (ProgressBar) ms8.u(viewInflate, R.id.progress);
                    if (progressBar != null) {
                        this.p = progressBar;
                        this.q = textView;
                        uaVar.g = (FrameLayout) viewInflate;
                        uaVar.h = false;
                    }
                } else {
                    i2 = i3;
                }
            } else {
                i2 = i3;
            }
            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
            return;
        }
        this.N = new v45(this);
        View viewInflate2 = layoutInflaterFrom.inflate(R.layout.alert_dialog_progress_material, (ViewGroup) null);
        ProgressBar progressBar2 = (ProgressBar) ms8.u(viewInflate2, R.id.progress);
        if (progressBar2 != null) {
            i2 = R.id.progress_number;
            TextView textView2 = (TextView) ms8.u(viewInflate2, R.id.progress_number);
            if (textView2 != null) {
                i2 = R.id.progress_percent;
                TextView textView3 = (TextView) ms8.u(viewInflate2, R.id.progress_percent);
                if (textView3 != null) {
                    this.p = progressBar2;
                    this.t = textView2;
                    this.y = textView3;
                    uaVar.g = (RelativeLayout) viewInflate2;
                    uaVar.h = false;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i2)));
        return;
        int i4 = this.H;
        if (i4 > 0) {
            l(i4);
        }
        int i5 = this.I;
        if (i5 > 0) {
            m(i5);
        }
        int i6 = this.J;
        if (i6 > 0) {
            ProgressBar progressBar3 = this.p;
            if (progressBar3 != null) {
                progressBar3.incrementProgressBy(i6);
                j();
            } else {
                this.J = i6 + i6;
            }
        }
        int i7 = this.K;
        if (i7 > 0) {
            ProgressBar progressBar4 = this.p;
            if (progressBar4 != null) {
                progressBar4.incrementSecondaryProgressBy(i7);
                j();
            } else {
                this.K = i7 + i7;
            }
        }
        CharSequence charSequence = this.L;
        if (charSequence != null) {
            i(charSequence);
        }
        k(this.M);
        j();
        super.onCreate(bundle);
    }

    @ct5(rt4.ON_DESTROY)
    public final void onLifecycleDestroy() {
        dismiss();
    }

    @Override // android.app.Dialog
    public final void show() {
        io1 io1Var = this.n;
        io1Var.getLifecycle().a(this);
        super.show();
        Typeface typefaceA = fm6.a(io1Var, R.font.main_regular);
        Typeface typefaceA2 = fm6.a(io1Var, R.font.main_medium);
        TextView textView = (TextView) findViewById(R.id.alertTitle);
        if (textView != null) {
            textView.setTypeface(typefaceA2);
        }
        TextView textView2 = (TextView) findViewById(android.R.id.message);
        if (textView2 != null) {
            textView2.setTypeface(typefaceA);
        }
        TextView textView3 = this.q;
        if (textView3 != null) {
            textView3.setTypeface(typefaceA);
        }
        TextView textView4 = this.t;
        if (textView4 != null) {
            textView4.setTypeface(typefaceA);
        }
        TextView textView5 = this.y;
        if (textView5 != null) {
            textView5.setTypeface(typefaceA);
        }
        Button buttonF = f(-1);
        if (buttonF != null) {
            buttonF.setTypeface(typefaceA2);
        }
        Button buttonF2 = f(-2);
        if (buttonF2 != null) {
            buttonF2.setTypeface(typefaceA2);
        }
        Button buttonF3 = f(-3);
        if (buttonF3 != null) {
            buttonF3.setTypeface(typefaceA2);
        }
    }
}
