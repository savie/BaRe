package com.bare.appslist.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/**
 * P3 label-chip renderer for an app row.
 *
 * The Reference renders label chips from provider-backed LabelParams. BaRe only
 * renders text explicitly supplied by the caller; it does not invent labels.
 */
public class AppRowLabelsView extends View {
    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint stroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF rect = new RectF();
    private String text = "";

    private final int chipHeight;
    private final float cornerRadius;
    private final int horizontalPadding;
    private final int gap;

    public AppRowLabelsView(Context context) { this(context, null); }
    public AppRowLabelsView(Context context, AttributeSet attrs) { this(context, attrs, 0); }
    public AppRowLabelsView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        chipHeight = getResources().getDimensionPixelSize(com.bare.R.dimen.label_chip_min_height);
        cornerRadius = getResources().getDimension(com.bare.R.dimen.label_chip_corner_radius);
        horizontalPadding = getResources().getDimensionPixelSize(com.bare.R.dimen.spacing_medium);
        gap = getResources().getDimensionPixelSize(com.bare.R.dimen.spacing_low_more);

        fill.setStyle(Paint.Style.FILL);
        stroke.setStyle(Paint.Style.STROKE);
        stroke.setStrokeWidth(getResources().getDimension(com.bare.R.dimen.label_chip_stroke_width));
        textPaint.setTextSize(getResources().getDimension(com.bare.R.dimen.subtitle_smaller));
        textPaint.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        textPaint.setLetterSpacing(0.05f);
        setWillNotDraw(false);
    }

    public void setLabelText(String value) {
        text = value == null ? "" : value.trim();
        requestLayout();
        invalidate();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (text.isEmpty()) {
            setMeasuredDimension(
                    MeasureSpec.getSize(widthMeasureSpec),
                    resolveSize(0, heightMeasureSpec));
            return;
        }
        float textWidth = textPaint.measureText(text.toUpperCase(java.util.Locale.getDefault()));
        int width = (int) Math.ceil(textWidth + horizontalPadding * 2f);
        setMeasuredDimension(
                resolveSize(MeasureSpec.getSize(widthMeasureSpec), widthMeasureSpec),
                resolveSize(chipHeight, heightMeasureSpec));
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (text.isEmpty()) return;

        String value = text.toUpperCase(java.util.Locale.getDefault());
        float textWidth = textPaint.measureText(value);
        float chipWidth = textWidth + horizontalPadding * 2f;
        float top = getPaddingTop();
        rect.set(getPaddingStart(), top, getPaddingStart() + chipWidth, top + chipHeight);

        fill.setColor(0x12000000);
        stroke.setColor(0x55000000);
        textPaint.setColor(0xff444444);

        canvas.drawRoundRect(rect, cornerRadius, cornerRadius, fill);
        canvas.drawRoundRect(rect, cornerRadius, cornerRadius, stroke);

        Paint.FontMetrics fm = textPaint.getFontMetrics();
        float baseline = top + (chipHeight - (fm.descent - fm.ascent)) / 2f - fm.ascent;
        canvas.drawText(value, rect.left + horizontalPadding, baseline, textPaint);
    }
}
