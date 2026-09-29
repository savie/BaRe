package com.bare.appslist.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

/**
 * Reference-shaped label-chip rendering boundary.
 * Label data comes from the existing Labels domain; no new persistence is added.
 */
public class AppRowLabelsView extends View {
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private String text = "";

    public AppRowLabelsView(Context context) { super(context); }
    public AppRowLabelsView(Context context, AttributeSet attrs) { super(context, attrs); }
    public AppRowLabelsView(Context context, AttributeSet attrs, int defStyleAttr) { super(context, attrs, defStyleAttr); }

    public void setLabelText(String value) {
        text = value == null ? "" : value;
        requestLayout();
        invalidate();
    }

    @Override protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (text.isEmpty()) return;
        paint.setTextSize(11 * getResources().getDisplayMetrics().scaledDensity);
        paint.setColor(0xff666666);
        canvas.drawText(text, getPaddingStart(), paint.getTextSize() + getPaddingTop(), paint);
    }

    @Override protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int h = text.isEmpty() ? 0 : (int)(28 * getResources().getDisplayMetrics().density);
        setMeasuredDimension(MeasureSpec.getSize(widthMeasureSpec), resolveSize(h, heightMeasureSpec));
    }
}
