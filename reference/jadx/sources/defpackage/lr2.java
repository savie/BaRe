package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lr2 extends qw2 {
    public final int e;
    public final int f;
    public final TimeInterpolator g;
    public AutoCompleteTextView h;
    public final dj i;
    public final n91 j;
    public final kr2 k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public AccessibilityManager p;
    public ValueAnimator q;
    public ValueAnimator r;

    /* JADX WARN: Type inference failed for: r0v2, types: [kr2] */
    public lr2(pw2 pw2Var) {
        super(pw2Var);
        this.i = new dj(this, 7);
        this.j = new n91(this, 1);
        this.k = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: kr2
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                lr2 lr2Var = this.a;
                AutoCompleteTextView autoCompleteTextView = lr2Var.h;
                if (autoCompleteTextView == null || autoCompleteTextView.getInputType() != 0) {
                    return;
                }
                lr2Var.d.setImportantForAccessibility(z ? 2 : 1);
            }
        };
        this.o = Long.MAX_VALUE;
        this.f = ji8.F(pw2Var.getContext(), R.attr.motionDurationShort3, 67);
        this.e = ji8.F(pw2Var.getContext(), R.attr.motionDurationShort3, 50);
        this.g = ji8.G(pw2Var.getContext(), R.attr.motionEasingLinearInterpolator, ed.a);
    }

    @Override // defpackage.qw2
    public final void a() {
        if (this.p.isTouchExplorationEnabled() && g67.v(this.h) && !this.d.hasFocus()) {
            this.h.dismissDropDown();
        }
        this.h.post(new is(this, 4));
    }

    @Override // defpackage.qw2
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // defpackage.qw2
    public final int d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // defpackage.qw2
    public final View.OnFocusChangeListener e() {
        return this.j;
    }

    @Override // defpackage.qw2
    public final View.OnClickListener f() {
        return this.i;
    }

    @Override // defpackage.qw2
    public final AccessibilityManager.TouchExplorationStateChangeListener h() {
        return this.k;
    }

    @Override // defpackage.qw2
    public final boolean i(int i) {
        return i != 0;
    }

    @Override // defpackage.qw2
    public final boolean k() {
        return this.n;
    }

    @Override // defpackage.qw2
    public final void l(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            g84.h("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            return;
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: ir2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    lr2 lr2Var = this.a;
                    long j = jUptimeMillis - lr2Var.o;
                    if (j < 0 || j > 300) {
                        lr2Var.m = false;
                    }
                    lr2Var.t();
                    lr2Var.m = true;
                    lr2Var.o = SystemClock.uptimeMillis();
                }
                return false;
            }
        });
        this.h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: jr2
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                lr2 lr2Var = this.a;
                lr2Var.m = true;
                lr2Var.o = SystemClock.uptimeMillis();
                lr2Var.s(false);
            }
        });
        this.h.setThreshold(0);
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (editText.getInputType() == 0 && this.p.isTouchExplorationEnabled()) {
            this.d.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // defpackage.qw2
    public final void m(m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        if (!g67.v(this.h)) {
            m6Var.i(Spinner.class.getName());
        }
        if (accessibilityNodeInfo.isShowingHintText()) {
            accessibilityNodeInfo.setHintText(null);
        }
    }

    @Override // defpackage.qw2
    public final void n(AccessibilityEvent accessibilityEvent) {
        if (!this.p.isEnabled() || g67.v(this.h)) {
            return;
        }
        boolean z = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.n && !this.h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            t();
            this.m = true;
            this.o = SystemClock.uptimeMillis();
        }
    }

    @Override // defpackage.qw2
    public final void q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f);
        int i = 0;
        valueAnimatorOfFloat.addUpdateListener(new hr2(this, i));
        this.r = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(this.e);
        valueAnimatorOfFloat2.addUpdateListener(new hr2(this, i));
        this.q = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new v7(this, 1));
        this.p = (AccessibilityManager) this.c.getSystemService("accessibility");
    }

    @Override // defpackage.qw2
    public final void r() {
        AutoCompleteTextView autoCompleteTextView = this.h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.h.setOnDismissListener(null);
        }
    }

    public final void s(boolean z) {
        if (this.n != z) {
            this.n = z;
            this.r.cancel();
            this.q.start();
        }
    }

    public final void t() {
        if (this.h == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.o;
        if (jUptimeMillis < 0 || jUptimeMillis > 300) {
            this.m = false;
        }
        if (this.m) {
            this.m = false;
            return;
        }
        s(!this.n);
        boolean z = this.n;
        AutoCompleteTextView autoCompleteTextView = this.h;
        if (!z) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            this.h.showDropDown();
        }
    }
}
