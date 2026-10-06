package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.dl8;
import defpackage.ew1;
import defpackage.g6;
import defpackage.gl8;
import defpackage.jq6;
import defpackage.s79;
import defpackage.tt7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends ew1 {
    public gl8 a;
    public jq6 b;
    public boolean c;
    public boolean d;
    public int e = 2;
    public float f = 0.0f;
    public float g = 0.5f;
    public final tt7 h = new tt7(this);

    @Override // defpackage.ew1
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zP = this.c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zP = coordinatorLayout.p(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.c = zP;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.c = false;
        }
        if (zP) {
            if (this.a == null) {
                this.a = new gl8(coordinatorLayout.getContext(), coordinatorLayout, this.h);
            }
            if (!this.d && this.a.q(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ew1
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            dl8.k(view, 1048576);
            dl8.h(view, 0);
            if (w(view)) {
                dl8.l(view, g6.k, new s79(this, 9));
            }
        }
        return false;
    }

    @Override // defpackage.ew1
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.a == null) {
            return false;
        }
        if (this.d && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.a.j(motionEvent);
        return true;
    }

    public boolean w(View view) {
        return true;
    }
}
