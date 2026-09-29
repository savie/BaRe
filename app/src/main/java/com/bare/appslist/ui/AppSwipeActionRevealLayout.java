package com.bare.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/**
 * P3 swipe-action reveal boundary matching the Reference child sizing model.
 *
 * The Reference reveal layout sizes action children from the row height. BaRe
 * mirrors that geometry while leaving action/provider side effects outside P3.
 */
public class AppSwipeActionRevealLayout extends ViewGroup {
    public AppSwipeActionRevealLayout(Context context) { this(context, null); }
    public AppSwipeActionRevealLayout(Context context, AttributeSet attrs) { this(context, attrs, 0); }
    public AppSwipeActionRevealLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setClipToPadding(false);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY
                ? MeasureSpec.getSize(heightMeasureSpec)
                : 0;

        int childCount = getChildCount();
        int childWidth = height > 0 ? height : getResources().getDimensionPixelSize(com.bare.R.dimen.app_list_icon_size);

        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == GONE) continue;
            ViewGroup.LayoutParams lp = child.getLayoutParams();
            lp.width = childWidth;
            child.measure(
                    MeasureSpec.makeMeasureSpec(childWidth, MeasureSpec.EXACTLY),
                    MeasureSpec.makeMeasureSpec(Math.max(0, height), MeasureSpec.EXACTLY));
        }

        int totalWidth = 0;
        for (int i = 0; i < childCount; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == GONE) continue;
            MarginLayoutParams lp = (MarginLayoutParams) child.getLayoutParams();
            totalWidth += child.getMeasuredWidth() + lp.leftMargin + lp.rightMargin;
        }

        setMeasuredDimension(
                resolveSize(totalWidth + getPaddingLeft() + getPaddingRight(), widthMeasureSpec),
                resolveSize(height + getPaddingTop() + getPaddingBottom(), heightMeasureSpec));
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int x = getPaddingLeft();
        int centerHeight = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            if (child.getVisibility() == GONE) continue;
            MarginLayoutParams lp = (MarginLayoutParams) child.getLayoutParams();
            x += lp.leftMargin;
            int y = getPaddingTop() + lp.topMargin;
            child.layout(x, y, x + child.getMeasuredWidth(), y + Math.min(child.getMeasuredHeight(), centerHeight));
            x += child.getMeasuredWidth() + lp.rightMargin;
        }
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof MarginLayoutParams;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.MATCH_PARENT);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new MarginLayoutParams(getContext(), attrs);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return new MarginLayoutParams(p);
    }
}
