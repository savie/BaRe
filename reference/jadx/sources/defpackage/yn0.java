package defpackage;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.snackbar.BaseTransientBottomBar$Behavior;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yn0 implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        int i = message.what;
        int i2 = 0;
        if (i == 0) {
            fo0 fo0Var = (fo0) message.obj;
            eo0 eo0Var = fo0Var.i;
            if (eo0Var.getParent() == null) {
                ViewGroup.LayoutParams layoutParams = eo0Var.getLayoutParams();
                if (layoutParams instanceof hw1) {
                    hw1 hw1Var = (hw1) layoutParams;
                    BaseTransientBottomBar$Behavior baseTransientBottomBar$Behavior = new BaseTransientBottomBar$Behavior();
                    nh nhVar = baseTransientBottomBar$Behavior.i;
                    nhVar.getClass();
                    nhVar.b = fo0Var.s;
                    baseTransientBottomBar$Behavior.b = new jq6(fo0Var, 5);
                    hw1Var.b(baseTransientBottomBar$Behavior);
                    hw1Var.g = 80;
                }
                ViewGroup viewGroup = fo0Var.g;
                eo0Var.r = true;
                viewGroup.addView(eo0Var);
                eo0Var.r = false;
                fo0Var.g();
                eo0Var.setVisibility(4);
            }
            if (eo0Var.isLaidOut()) {
                fo0Var.f();
                return true;
            }
            fo0Var.q = true;
            return true;
        }
        if (i != 1) {
            return false;
        }
        fo0 fo0Var2 = (fo0) message.obj;
        int i3 = message.arg1;
        eo0 eo0Var2 = fo0Var2.i;
        AccessibilityManager accessibilityManager = fo0Var2.r;
        if ((accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) || eo0Var2.getVisibility() != 0) {
            fo0Var2.d();
            return true;
        }
        if (eo0Var2.getAnimationMode() == 1) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat.setInterpolator(fo0Var2.d);
            valueAnimatorOfFloat.addUpdateListener(new sn0(fo0Var2));
            valueAnimatorOfFloat.setDuration(fo0Var2.b);
            valueAnimatorOfFloat.addListener(new rn0(fo0Var2, i3));
            valueAnimatorOfFloat.start();
            return true;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        eo0 eo0Var3 = fo0Var2.i;
        int height = eo0Var3.getHeight();
        ViewGroup.LayoutParams layoutParams2 = eo0Var3.getLayoutParams();
        if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
            height += ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
        }
        valueAnimator.setIntValues(0, height);
        valueAnimator.setInterpolator(fo0Var2.e);
        valueAnimator.setDuration(fo0Var2.c);
        valueAnimator.addListener(new wn0(fo0Var2, i3));
        valueAnimator.addUpdateListener(new xn0(fo0Var2, i2));
        valueAnimator.start();
        return true;
    }
}
