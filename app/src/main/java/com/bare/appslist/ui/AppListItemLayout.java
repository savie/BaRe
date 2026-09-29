package com.bare.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/**
 * P3 app-row shell reconstructed from the Reference ListItemLayout.
 *
 * The row measures from the card/content first, then gives reveal groups the
 * resolved row height. Swipe only exposes already-present controls.
 */
public class AppListItemLayout extends FrameLayout {
    private static final int SWIPE_DISTANCE_PX = 80;
    private float downX;
    private float downY;

    public AppListItemLayout(Context context) { super(context); init(); }
    public AppListItemLayout(Context context, AttributeSet attrs) { super(context, attrs); init(); }
    public AppListItemLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        View card = findViewById(com.bare.R.id.item_card);
        if (card == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }

        measureChildWithMargins(card, widthMeasureSpec, 0, heightMeasureSpec, 0);
        MarginLayoutParams lp = (MarginLayoutParams) card.getLayoutParams();

        int desiredWidth = card.getMeasuredWidth()
                + getPaddingLeft() + getPaddingRight()
                + lp.leftMargin + lp.rightMargin;
        int desiredHeight = card.getMeasuredHeight()
                + getPaddingTop() + getPaddingBottom()
                + lp.topMargin + lp.bottomMargin;

        int measuredWidth = resolveSizeAndState(
                Math.max(desiredWidth, getSuggestedMinimumWidth()),
                widthMeasureSpec,
                card.getMeasuredState());
        int measuredHeight = resolveSizeAndState(
                Math.max(desiredHeight, getSuggestedMinimumHeight()),
                heightMeasureSpec,
                card.getMeasuredState() << 16);
        setMeasuredDimension(measuredWidth, measuredHeight);

        int rowHeight = Math.max(0, getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
        int revealSpec = MeasureSpec.makeMeasureSpec(rowHeight, MeasureSpec.EXACTLY);
        for (int i = 0; i < getChildCount(); i++) {
            View child = getChildAt(i);
            if (child == card || child.getVisibility() == GONE) continue;
            if (child instanceof AppSwipeActionRevealLayout) {
                measureChildWithMargins(child, widthMeasureSpec, 0, revealSpec, 0);
            }
        }
    }

    public void reveal(View reveal, boolean open) {
        if (reveal == null) return;
        reveal.setVisibility(open ? VISIBLE : GONE);
        requestLayout();
    }

    public void bindSwipeTo(View card) {
        if (card == null) return;
        card.setOnTouchListener(new OnTouchListener() {
            private float downX;
            private float downY;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        downX = event.getRawX();
                        downY = event.getRawY();
                        return false;
                    case MotionEvent.ACTION_UP:
                        float dx = event.getRawX() - downX;
                        float dy = event.getRawY() - downY;
                        if (Math.abs(dx) >= SWIPE_DISTANCE_PX && Math.abs(dx) > Math.abs(dy)) {
                            revealFromSwipe(dx > 0f);
                            return true;
                        }
                        return false;
                    default:
                        return false;
                }
            }
        });
    }

    public void closeReveals() {
        reveal(findViewById(com.bare.R.id.reveal_start), false);
        reveal(findViewById(com.bare.R.id.reveal_end), false);
        View card = findViewById(com.bare.R.id.item_card);
        if (card != null) card.animate().translationX(0f).setDuration(120L).start();
    }

    public void revealFromSwipe(boolean start) {
        View startView = findViewById(com.bare.R.id.reveal_start);
        View endView = findViewById(com.bare.R.id.reveal_end);
        reveal(startView, start);
        reveal(endView, !start);
        View card = findViewById(com.bare.R.id.item_card);
        if (card != null) {
            int fallback = getResources().getDimensionPixelSize(com.bare.R.dimen.app_list_icon_size) * 2;
            float distance = start
                    ? Math.max((float) fallback, startView == null ? fallback : startView.getWidth())
                    : -Math.max((float) fallback, endView == null ? fallback : endView.getWidth());
            card.animate().translationX(distance).setDuration(140L).start();
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                downX = event.getX();
                downY = event.getY();
                return true;
            case MotionEvent.ACTION_UP:
                float dx = event.getX() - downX;
                float dy = event.getY() - downY;
                if (Math.abs(dx) >= SWIPE_DISTANCE_PX && Math.abs(dx) > Math.abs(dy)) {
                    revealFromSwipe(dx > 0f);
                } else {
                    performClick();
                }
                return true;
            case MotionEvent.ACTION_CANCEL:
                return false;
            default:
                return true;
        }
    }

    @Override
    public boolean performClick() {
        super.performClick();
        return true;
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof MarginLayoutParams;
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
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
