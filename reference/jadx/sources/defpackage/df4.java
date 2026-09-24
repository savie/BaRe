package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.SnackbarContentLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class df4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntroActivity b;

    public /* synthetic */ df4(IntroActivity introActivity, int i) {
        this.a = i;
        this.b = introActivity;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:19:0x0046  */
    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    /* JADX WARN: Code duplicated, block: B:34:0x004c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x004a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:? A[LOOP:0: B:7:0x0022->B:38:?, LOOP_END, SYNTHETIC] */
    @Override // defpackage.bt3
    public final Object invoke() {
        ViewGroup viewGroup;
        Object parent;
        int i = this.a;
        IntroActivity introActivity = this.b;
        switch (i) {
            case 0:
                int i2 = IntroActivity.V;
                View view = introActivity.Q().a;
                int[] iArr = qi7.B;
                ViewGroup viewGroup2 = null;
                while (true) {
                    if (view instanceof CoordinatorLayout) {
                        viewGroup = (ViewGroup) view;
                    } else if (!(view instanceof FrameLayout)) {
                        if (view != null) {
                            parent = view.getParent();
                            if (parent instanceof View) {
                                view = (View) parent;
                            } else {
                                view = null;
                            }
                        }
                        if (view == null) {
                            viewGroup = viewGroup2;
                        }
                    } else if (view.getId() == 16908290) {
                        viewGroup = (ViewGroup) view;
                    } else {
                        viewGroup2 = (ViewGroup) view;
                        if (view != null) {
                            parent = view.getParent();
                            if (parent instanceof View) {
                                view = (View) parent;
                            } else {
                                view = null;
                            }
                        }
                        if (view == null) {
                            viewGroup = viewGroup2;
                        }
                    }
                }
                if (viewGroup == null) {
                    c6.f("No suitable parent found from the given view. Please provide a valid view.");
                    return null;
                }
                Context context = viewGroup.getContext();
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(qi7.B);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
                typedArrayObtainStyledAttributes.recycle();
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) layoutInflaterFrom.inflate((resourceId == -1 || resourceId2 == -1) ? R.layout.design_layout_snackbar_include : R.layout.mtrl_layout_snackbar_include, viewGroup, false);
                qi7 qi7Var = new qi7(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
                ((SnackbarContentLayout) qi7Var.i.getChildAt(0)).getMessageView().setText("");
                return qi7Var;
            default:
                int i3 = IntroActivity.V;
                dz5 dz5Var = dz5.a;
                dz5.o(introActivity, dz5.c(), false);
                return be8.a;
        }
    }
}
