package defpackage;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.warkiz.widget.ArrowView;
import com.warkiz.widget.IndicatorSeekBar;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vb4 {
    public final int a;
    public final int[] b = new int[2];
    public final ArrowView c;
    public TextView d;
    public PopupWindow e;
    public final LinearLayout f;
    public final int g;
    public final int h;
    public final Context i;
    public final int j;
    public final IndicatorSeekBar k;
    public final View l;

    public vb4(Context context, IndicatorSeekBar indicatorSeekBar, int i, int i2, int i3, int i4, View view, View view2) {
        View viewFindViewById;
        this.i = context;
        this.k = indicatorSeekBar;
        this.h = i;
        this.j = i2;
        float f = i3;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.a = windowManager != null ? windowManager.getDefaultDisplay().getWidth() : 0;
        this.g = tu0.j(context, 2.0f);
        if (i2 == 4) {
            if (view == null) {
                c6.f("the attr：indicator_custom_layout must be set while you set the indicator type to CUSTOM.");
                throw null;
            }
            this.l = view;
            int identifier = context.getResources().getIdentifier("isb_progress", "id", context.getApplicationContext().getPackageName());
            if (identifier <= 0 || (viewFindViewById = this.l.findViewById(identifier)) == null) {
                return;
            }
            if (!(viewFindViewById instanceof TextView)) {
                throw new ClassCastException("the view identified by isb_progress in indicator custom layout can not be cast to TextView");
            }
            TextView textView = (TextView) viewFindViewById;
            this.d = textView;
            textView.setText(indicatorSeekBar.getIndicatorTextString());
            this.d.setTextSize((int) ((f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f));
            this.d.setTextColor(i4);
            return;
        }
        if (i2 == 1) {
            a71 a71Var = new a71(context, null, 0);
            a71Var.a = i4;
            a71Var.b = i;
            Paint paint = new Paint();
            a71Var.d = paint;
            paint.setAntiAlias(true);
            a71Var.d.setStrokeWidth(1.0f);
            a71Var.d.setTextAlign(Paint.Align.CENTER);
            a71Var.d.setTextSize(f);
            Rect rect = new Rect();
            a71Var.d.getTextBounds("1000", 0, 4, rect);
            a71Var.e = tu0.j(context, 4.0f) + rect.width();
            float fJ = tu0.j(context, 36.0f);
            if (a71Var.e < fJ) {
                a71Var.e = fJ;
            }
            a71Var.k = rect.height();
            a71Var.f = a71Var.e * 1.2f;
            a71Var.c = new Path();
            float f2 = a71Var.e;
            a71Var.c.arcTo(new RectF(0.0f, 0.0f, f2, f2), 135.0f, 270.0f);
            a71Var.c.lineTo(a71Var.e / 2.0f, a71Var.f);
            a71Var.c.close();
            this.l = a71Var;
            a71Var.setProgress(indicatorSeekBar.getIndicatorTextString());
            return;
        }
        View viewInflate = View.inflate(context, R.layout.isb_indicator, null);
        this.l = viewInflate;
        this.f = (LinearLayout) viewInflate.findViewById(R.id.indicator_container);
        ArrowView arrowView = (ArrowView) this.l.findViewById(R.id.indicator_arrow);
        this.c = arrowView;
        arrowView.setColor(i);
        TextView textView2 = (TextView) this.l.findViewById(R.id.isb_progress);
        this.d = textView2;
        textView2.setText(indicatorSeekBar.getIndicatorTextString());
        this.d.setTextSize((int) ((f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f));
        this.d.setTextColor(i4);
        this.f.setBackground(b());
        if (view2 != null) {
            int identifier2 = context.getResources().getIdentifier("isb_progress", "id", context.getApplicationContext().getPackageName());
            if (identifier2 <= 0) {
                e(view2, null);
                return;
            }
            View viewFindViewById2 = view2.findViewById(identifier2);
            if (viewFindViewById2 == null || !(viewFindViewById2 instanceof TextView)) {
                e(view2, null);
            } else {
                e(view2, (TextView) viewFindViewById2);
            }
        }
    }

    public static void d(View view, int i, int i2, int i3, int i4) {
        if (view != null && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            if (i == -1) {
                i = marginLayoutParams.leftMargin;
            }
            if (i2 == -1) {
                i2 = marginLayoutParams.topMargin;
            }
            if (i3 == -1) {
                i3 = marginLayoutParams.rightMargin;
            }
            if (i4 == -1) {
                i4 = marginLayoutParams.bottomMargin;
            }
            marginLayoutParams.setMargins(i, i2, i3, i4);
            view.requestLayout();
        }
    }

    public final void a(float f) {
        int i = this.j;
        if (i == 4 || i == 1) {
            return;
        }
        IndicatorSeekBar indicatorSeekBar = this.k;
        int[] iArr = this.b;
        indicatorSeekBar.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        float f2 = i2 + f;
        float measuredWidth = this.e.getContentView().getMeasuredWidth() / 2;
        ArrowView arrowView = this.c;
        if (f2 < measuredWidth) {
            d(arrowView, -((int) (((this.e.getContentView().getMeasuredWidth() / 2) - i2) - f)), -1, -1, -1);
            return;
        }
        float f3 = (this.a - i2) - f;
        if (f3 < this.e.getContentView().getMeasuredWidth() / 2) {
            d(arrowView, (int) ((this.e.getContentView().getMeasuredWidth() / 2) - f3), -1, -1, -1);
        } else {
            d(arrowView, 0, 0, 0, 0);
        }
    }

    public final GradientDrawable b() {
        int i = this.j;
        Context context = this.i;
        GradientDrawable gradientDrawable = i == 2 ? (GradientDrawable) context.getResources().getDrawable(R.drawable.isb_indicator_rounded_corners) : (GradientDrawable) context.getResources().getDrawable(R.drawable.isb_indicator_square_corners);
        gradientDrawable.setColor(this.h);
        return gradientDrawable;
    }

    public final void c() {
        String indicatorTextString = this.k.getIndicatorTextString();
        View view = this.l;
        if (view instanceof a71) {
            ((a71) view).setProgress(indicatorTextString);
            return;
        }
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(indicatorTextString);
        }
    }

    public final void e(View view, TextView textView) {
        this.d = textView;
        LinearLayout linearLayout = this.f;
        linearLayout.removeAllViews();
        view.setBackground(b());
        linearLayout.addView(view);
    }
}
