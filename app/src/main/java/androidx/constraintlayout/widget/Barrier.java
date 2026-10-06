package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import defpackage.al0;
import defpackage.bt1;
import defpackage.ot1;
import defpackage.yd6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Barrier extends bt1 {
    public int n;
    public int p;
    public al0 q;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.q.t0;
    }

    public int getMargin() {
        return this.q.u0;
    }

    public int getType() {
        return this.n;
    }

    @Override // defpackage.bt1
    public final void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        al0 al0Var = new al0();
        al0Var.s0 = 0;
        al0Var.t0 = true;
        al0Var.u0 = 0;
        al0Var.v0 = false;
        this.q = al0Var;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, yd6.b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == 26) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == 25) {
                    this.q.t0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.q.u0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.d = this.q;
        k();
    }

    @Override // defpackage.bt1
    public final void i(ot1 ot1Var, boolean z) {
        int i = this.n;
        this.p = i;
        if (z) {
            if (i == 5) {
                this.p = 1;
            } else if (i == 6) {
                this.p = 0;
            }
        } else if (i == 5) {
            this.p = 0;
        } else if (i == 6) {
            this.p = 1;
        }
        if (ot1Var instanceof al0) {
            ((al0) ot1Var).s0 = this.p;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.q.t0 = z;
    }

    public void setDpMargin(int i) {
        this.q.u0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.q.u0 = i;
    }

    public void setType(int i) {
        this.n = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }
}
