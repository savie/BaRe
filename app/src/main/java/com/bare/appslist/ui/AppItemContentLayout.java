package com.bare.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/**
 * P3 app-row content geometry reconstructed from the Reference custom
 * AppItemContentLayout. It only lays out already-bound row controls; it does
 * not create or mutate app data.
 */
public class AppItemContentLayout extends ViewGroup {
    private View subtitle1;
    private View title;
    private View subtitle2;
    private View subtitle3;
    private View labels;
    private View checkbox;
    private View icon;
    private View favorite;
    private View menu;
    private View menuClick;

    private int normalSpacing;

    public AppItemContentLayout(Context context) {
        this(context, null);
    }

    public AppItemContentLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AppItemContentLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        normalSpacing = getResources().getDimensionPixelSize(com.bare.R.dimen.spacing_normal);
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        subtitle1 = findViewById(com.bare.R.id.tv_subtitle1);
        title = findViewById(com.bare.R.id.tv_title);
        subtitle2 = findViewById(com.bare.R.id.tv_subtitle2);
        subtitle3 = findViewById(com.bare.R.id.tv_subtitle3);
        labels = findViewById(com.bare.R.id.rv_labels);
        checkbox = findViewById(com.bare.R.id.cb);
        icon = findViewById(com.bare.R.id.image_icon);
        favorite = findViewById(com.bare.R.id.iv_favorite);
        menu = findViewById(com.bare.R.id.iv_menu);
        menuClick = findViewById(com.bare.R.id.iv_menu_click_listener);
    }

    private static boolean visible(View v) {
        return v != null && v.getVisibility() != GONE;
    }

    private static int widthWithMargins(View v) {
        if (!visible(v)) return 0;
        MarginLayoutParams lp = (MarginLayoutParams) v.getLayoutParams();
        return v.getMeasuredWidth() + lp.leftMargin + lp.rightMargin;
    }

    private static int heightWithMargins(View v) {
        if (!visible(v)) return 0;
        MarginLayoutParams lp = (MarginLayoutParams) v.getLayoutParams();
        return v.getMeasuredHeight() + lp.topMargin + lp.bottomMargin;
    }

    private void measureNormal(View v, int width, int parentHeightSpec) {
        if (!visible(v)) return;
        MarginLayoutParams lp = (MarginLayoutParams) v.getLayoutParams();
        int childWidth = Math.max(0, width - lp.leftMargin - lp.rightMargin);
        int childSpec = MeasureSpec.makeMeasureSpec(childWidth, MeasureSpec.EXACTLY);
        int heightSpec = getChildMeasureSpec(
                parentHeightSpec,
                getPaddingTop() + getPaddingBottom() + lp.topMargin + lp.bottomMargin,
                lp.height);
        v.measure(childSpec, heightSpec);
    }

    private void measureWrap(View v, int parentWidthSpec, int parentHeightSpec) {
        if (!visible(v)) return;
        measureChildWithMargins(v, parentWidthSpec, 0, parentHeightSpec, 0);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int availableWidth = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.UNSPECIFIED
                ? getSuggestedMinimumWidth()
                : Math.max(0, MeasureSpec.getSize(widthMeasureSpec) - getPaddingLeft() - getPaddingRight());

        measureWrap(icon, widthMeasureSpec, heightMeasureSpec);
        measureWrap(favorite, widthMeasureSpec, heightMeasureSpec);
        measureWrap(menu, widthMeasureSpec, heightMeasureSpec);
        measureWrap(menuClick, widthMeasureSpec, heightMeasureSpec);
        measureWrap(checkbox, widthMeasureSpec, heightMeasureSpec);

        int leftReserved = widthWithMargins(icon);
        int rightReserved = Math.max(widthWithMargins(menuClick), widthWithMargins(menu));
        if (visible(checkbox)) rightReserved += widthWithMargins(checkbox);
        int textWidth = Math.max(0, availableWidth - leftReserved - rightReserved - normalSpacing);

        measureNormal(subtitle1, textWidth, heightMeasureSpec);
        measureNormal(title, textWidth, heightMeasureSpec);
        measureNormal(subtitle2, textWidth, heightMeasureSpec);
        measureNormal(subtitle3, textWidth, heightMeasureSpec);
        measureNormal(labels, textWidth, heightMeasureSpec);

        int textHeight = getPaddingTop();
        textHeight += heightWithMargins(subtitle1);
        textHeight += heightWithMargins(title);
        textHeight += heightWithMargins(subtitle2);
        textHeight += heightWithMargins(subtitle3);
        textHeight += heightWithMargins(labels);
        textHeight += getPaddingBottom() + normalSpacing;

        int sideHeight = Math.max(
                Math.max(heightWithMargins(icon), heightWithMargins(checkbox)),
                Math.max(heightWithMargins(menu), heightWithMargins(menuClick)));
        int desiredHeight = Math.max(textHeight, getPaddingTop() + sideHeight + getPaddingBottom() + normalSpacing);

        int measuredWidth = resolveSizeAndState(
                Math.max(getSuggestedMinimumWidth(), availableWidth + getPaddingLeft() + getPaddingRight()),
                widthMeasureSpec, 0);
        int measuredHeight = resolveSizeAndState(desiredHeight, heightMeasureSpec, 0);
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    private void place(View v, int left, int top) {
        if (!visible(v)) return;
        MarginLayoutParams lp = (MarginLayoutParams) v.getLayoutParams();
        left += lp.leftMargin;
        top += lp.topMargin;
        if (getLayoutDirection() == LAYOUT_DIRECTION_RTL) {
            left = getMeasuredWidth() - getPaddingRight() - (left - getPaddingLeft()) - v.getMeasuredWidth();
        }
        v.layout(left, top, left + v.getMeasuredWidth(), top + v.getMeasuredHeight());
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int contentWidth = getMeasuredWidth() - getPaddingLeft() - getPaddingRight();

        if (visible(icon)) {
            MarginLayoutParams lp = (MarginLayoutParams) icon.getLayoutParams();
            place(icon, lp.leftMargin, getPaddingTop() + lp.topMargin);
        }

        int textLeft = getPaddingLeft() + (visible(icon) ? widthWithMargins(icon) : 0);
        if (visible(icon)) textLeft += normalSpacing;

        int rightInset = getPaddingRight();
        if (visible(menuClick)) rightInset += widthWithMargins(menuClick);
        else if (visible(menu)) rightInset += widthWithMargins(menu);
        if (visible(checkbox)) rightInset += widthWithMargins(checkbox);

        int textWidth = Math.max(0, contentWidth - (textLeft - getPaddingLeft()) - rightInset);
        int y = getPaddingTop();

        View[] textViews = {subtitle1, title, subtitle2, subtitle3, labels};
        for (View v : textViews) {
            if (!visible(v)) continue;
            MarginLayoutParams lp = (MarginLayoutParams) v.getLayoutParams();
            y += lp.topMargin;
            int x = textLeft + lp.leftMargin;
            if (getLayoutDirection() == LAYOUT_DIRECTION_RTL) {
                x = getMeasuredWidth() - getPaddingRight() - rightInset - v.getMeasuredWidth();
            }
            v.layout(x, y, x + Math.min(v.getMeasuredWidth(), textWidth), y + v.getMeasuredHeight());
            y += v.getMeasuredHeight() + lp.bottomMargin;
        }

        int centerY = getPaddingTop() + Math.max(0, (getMeasuredHeight() - getPaddingTop() - getPaddingBottom()) / 2);

        if (visible(menu)) {
            MarginLayoutParams lp = (MarginLayoutParams) menu.getLayoutParams();
            int x = getMeasuredWidth() - getPaddingRight() - lp.rightMargin - menu.getMeasuredWidth();
            place(menu, x - getPaddingLeft(), centerY - menu.getMeasuredHeight() / 2);
        }

        if (visible(menuClick)) {
            MarginLayoutParams lp = (MarginLayoutParams) menuClick.getLayoutParams();
            int x = getMeasuredWidth() - getPaddingRight() - lp.rightMargin - menuClick.getMeasuredWidth();
            place(menuClick, x - getPaddingLeft(), centerY - menuClick.getMeasuredHeight() / 2);
        }

        if (visible(checkbox)) {
            MarginLayoutParams lp = (MarginLayoutParams) checkbox.getLayoutParams();
            int rightEdge = getMeasuredWidth() - getPaddingRight()
                    - (visible(menuClick) ? widthWithMargins(menuClick) : (visible(menu) ? widthWithMargins(menu) : 0));
            int x = rightEdge - lp.rightMargin - checkbox.getMeasuredWidth();
            place(checkbox, x - getPaddingLeft(), centerY - checkbox.getMeasuredHeight() / 2);
        }

        if (visible(favorite) && visible(icon)) {
            int x = getPaddingLeft()
                    + ((icon.getMeasuredWidth() - favorite.getMeasuredWidth()) / 2);
            int yFav = getPaddingTop() + icon.getMeasuredHeight()
                    - favorite.getMeasuredHeight() / 2;
            place(favorite, x - getPaddingLeft(), yFav);
        }
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof MarginLayoutParams;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
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
