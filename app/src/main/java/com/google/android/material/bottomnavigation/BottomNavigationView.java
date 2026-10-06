package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.jcraft.jsch.SftpATTRS;
import defpackage.fl5;
import defpackage.jd4;
import defpackage.lv1;
import defpackage.ol5;
import defpackage.td6;
import defpackage.u94;
import defpackage.wt0;
import defpackage.xt0;
import defpackage.yc9;
import defpackage.yt0;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationView extends ol5 {
    public BottomNavigationView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        u94 u94VarC = jd4.C(getContext(), attributeSet, td6.e, i, i2, new int[0]);
        TypedArray typedArray = (TypedArray) u94VarC.b;
        setItemHorizontalTranslationEnabled(typedArray.getBoolean(2, true));
        if (typedArray.hasValue(0)) {
            setMinimumHeight(typedArray.getDimensionPixelSize(0, 0));
        }
        u94VarC.f();
        yc9.k(this, new lv1(8));
    }

    @Override // defpackage.ol5
    public final fl5 a(Context context) {
        return new wt0(context);
    }

    @Override // defpackage.ol5
    public int getMaxItemCount() {
        return 6;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i2) == 1073741824 || suggestedMinimumHeight <= 0) {
            iMakeMeasureSpec = i2;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(View.MeasureSpec.getSize(i2), getPaddingBottom() + getPaddingTop() + suggestedMinimumHeight), SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        }
        super.onMeasure(i, iMakeMeasureSpec);
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            setMeasuredDimension(getMeasuredWidth(), Math.max(getMeasuredHeight(), getPaddingBottom() + getPaddingTop() + getSuggestedMinimumHeight()));
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        wt0 wt0Var = (wt0) getMenuView();
        if (wt0Var.x0 != z) {
            wt0Var.setItemHorizontalTranslationEnabled(z);
            getPresenter().c(false);
        }
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(xt0 xt0Var) {
        setOnItemReselectedListener(xt0Var);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(yt0 yt0Var) {
        setOnItemSelectedListener(yt0Var);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Widget_Design_BottomNavigationView);
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }
}
