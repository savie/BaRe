package com.bare.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/**
 * P3 swipe-action container reconstructed from the Reference app-item surface.
 *
 * Swipe only reveals the already-present action controls. It deliberately does
 * not execute backup/restore/package-management side effects.
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

    public void reveal(View reveal, boolean open) {
        if (reveal == null) return;
        reveal.setVisibility(open ? VISIBLE : GONE);
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
            float distance = start
                    ? Math.max(96f, startView == null ? 96f : startView.getWidth())
                    : -Math.max(96f, endView == null ? 96f : endView.getWidth());
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
                    performClick();
                    return true;
                }
                performClick();
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
}
