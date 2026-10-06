package defpackage;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.animation.PathInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.appbar.MaterialToolbar;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s60 implements Runnable {
    public final /* synthetic */ int a = 2;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public s60(ConstraintLayout constraintLayout, int[] iArr, HomeSearchActivity homeSearchActivity) {
        this.b = iArr;
        this.c = homeSearchActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((t60) obj).invalidateDrawable((Drawable) obj2);
                break;
            case 1:
                Typeface typeface = (Typeface) obj;
                g67 g67Var = (g67) ((km5) obj2).b;
                if (g67Var != null) {
                    g67Var.y(typeface);
                }
                break;
            case 2:
                int[] iArr = (int[]) obj2;
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj;
                if (iArr != null) {
                    PathInterpolator pathInterpolator = HomeSearchActivity.X;
                    int left = homeSearchActivity.X().J.getLeft();
                    int top = homeSearchActivity.X().J.getTop();
                    int width = homeSearchActivity.X().J.getWidth();
                    if (width < 1) {
                        width = 1;
                    }
                    int height = homeSearchActivity.X().J.getHeight();
                    if (height < 1) {
                        height = 1;
                    }
                    MaterialToolbar materialToolbar = homeSearchActivity.X().J;
                    materialToolbar.setPivotX(0.0f);
                    materialToolbar.setPivotY(0.0f);
                    materialToolbar.setTranslationX(iArr[0] - left);
                    materialToolbar.setTranslationY(iArr[1] - top);
                    materialToolbar.setScaleX(l73.g((iArr[2] - iArr[0]) / width, 0.04f, 2.0f));
                    materialToolbar.setScaleY(l73.g((iArr[3] - iArr[1]) / height, 0.04f, 2.0f));
                    materialToolbar.animate().translationX(0.0f).translationY(0.0f).scaleX(1.0f).scaleY(1.0f).setDuration(260L).setInterpolator(HomeSearchActivity.X).withEndAction(new w8(homeSearchActivity, 2)).start();
                } else {
                    PathInterpolator pathInterpolator2 = HomeSearchActivity.X;
                    homeSearchActivity.X().f.requestFocus();
                    homeSearchActivity.X().f.post(new is(homeSearchActivity, 5));
                }
                break;
            default:
                wc2 wc2Var = (wc2) obj;
                TaskCompletionSource taskCompletionSource = ((ci8) obj2).a;
                if (wc2Var == null) {
                    taskCompletionSource.setResult(null);
                } else {
                    taskCompletionSource.setException(wc2Var.c());
                }
                break;
        }
    }

    public s60(km5 km5Var, Typeface typeface) {
        this.b = km5Var;
        this.c = typeface;
    }

    public s60(t60 t60Var, Drawable drawable) {
        this.c = t60Var;
        this.b = drawable;
    }

    public s60(ci8 ci8Var, wc2 wc2Var, zc2 zc2Var) {
        this.b = ci8Var;
        this.c = wc2Var;
    }
}
