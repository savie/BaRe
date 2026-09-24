package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import defpackage.dt1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Guideline extends View {
    public boolean a;

    public Guideline(Context context) {
        super(context);
        this.a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z) {
        this.a = z;
    }

    public void setGuidelineBegin(int i) {
        dt1 dt1Var = (dt1) getLayoutParams();
        if (this.a && dt1Var.a == i) {
            return;
        }
        dt1Var.a = i;
        setLayoutParams(dt1Var);
    }

    public void setGuidelineEnd(int i) {
        dt1 dt1Var = (dt1) getLayoutParams();
        if (this.a && dt1Var.b == i) {
            return;
        }
        dt1Var.b = i;
        setLayoutParams(dt1Var);
    }

    public void setGuidelinePercent(float f) {
        dt1 dt1Var = (dt1) getLayoutParams();
        if (this.a && dt1Var.c == f) {
            return;
        }
        dt1Var.c = f;
        setLayoutParams(dt1Var);
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
