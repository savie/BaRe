package defpackage;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bo0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ bo0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                fo0 fo0Var = (fo0) obj;
                eo0 eo0Var = fo0Var.i;
                if (eo0Var != null) {
                    int i2 = 0;
                    if (eo0Var.getParent() != null) {
                        eo0Var.setVisibility(0);
                    }
                    if (eo0Var.getAnimationMode() != 1) {
                        int height = eo0Var.getHeight();
                        ViewGroup.LayoutParams layoutParams = eo0Var.getLayoutParams();
                        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                            height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        }
                        eo0Var.setTranslationY(height);
                        ValueAnimator valueAnimator = new ValueAnimator();
                        valueAnimator.setIntValues(height, 0);
                        valueAnimator.setInterpolator(fo0Var.e);
                        valueAnimator.setDuration(fo0Var.c);
                        valueAnimator.addListener(new un0(fo0Var, i2));
                        valueAnimator.addUpdateListener(new vn0(fo0Var));
                        valueAnimator.start();
                    } else {
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat.setInterpolator(fo0Var.d);
                        valueAnimatorOfFloat.addUpdateListener(new sn0(fo0Var));
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
                        valueAnimatorOfFloat2.setInterpolator(fo0Var.f);
                        valueAnimatorOfFloat2.addUpdateListener(new tn0(fo0Var, i2));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
                        animatorSet.setDuration(fo0Var.a);
                        animatorSet.addListener(new co0(fo0Var, i2));
                        animatorSet.start();
                    }
                    break;
                }
                break;
            case 1:
                yq3 yq3Var = (yq3) obj;
                yq3Var.a();
                View view = yq3Var.d;
                if (view.isEnabled() && !view.isLongClickable() && yq3Var.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    yq3Var.k = true;
                    break;
                }
                break;
            case 2:
                RecyclerView recyclerView = ((c46) obj).c;
                recyclerView.focusableViewAvailable(recyclerView);
                break;
            case 3:
                ((Runnable) obj).run();
                break;
            default:
                nr8 nr8Var = (nr8) obj;
                c00 c00Var = nr8Var.a;
                if (c00Var != null) {
                    c00Var.p("0");
                    nr8Var.e();
                }
                break;
        }
    }

    public String toString() {
        switch (this.a) {
            case 3:
                return ((Runnable) this.b).toString();
            default:
                return super.toString();
        }
    }
}
