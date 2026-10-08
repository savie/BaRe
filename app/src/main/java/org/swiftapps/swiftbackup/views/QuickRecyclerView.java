package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class QuickRecyclerView extends RecyclerView {
    public static final /* synthetic */ int c1 = 0;
    public boolean b1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        setHasFixedSize(true);
        setOverScrollMode(2);
        setNestedScrollingEnabled(false);
    }

    @Override // android.view.View
    public int getBottomPaddingOffset() {
        if (getClipToPadding()) {
            return 0;
        }
        return getPaddingBottom();
    }

    @Override // android.view.View
    public int getLeftPaddingOffset() {
        if (getClipToPadding()) {
            return 0;
        }
        return -getPaddingLeft();
    }

    @Override // android.view.View
    public int getRightPaddingOffset() {
        if (getClipToPadding()) {
            return 0;
        }
        return getPaddingRight();
    }

    @Override // android.view.View
    public int getTopPaddingOffset() {
        if (getClipToPadding()) {
            return 0;
        }
        return -getPaddingTop();
    }

    @Override // android.view.View
    public final boolean isPaddingOffsetRequired() {
        return !getClipToPadding();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.b1) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setGridLayoutManager(int i) {
        Context context = getContext();
        context.getClass();
        setLayoutManager(new PreCachingGridLayoutManager(context, i));
    }

    public final void setLinearLayoutManager(int i) {
        Context context = getContext();
        context.getClass();
        setLayoutManager(new PreCachingLinearLayoutManager(context, i));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QuickRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QuickRecyclerView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ QuickRecyclerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
