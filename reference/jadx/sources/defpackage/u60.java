package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u60 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ u60(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Rect rect;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                TextView textView = (TextView) obj;
                textView.setText(textView.getText());
                break;
            case 1:
                fo0 fo0Var = (fo0) obj;
                eo0 eo0Var = fo0Var.i;
                if (eo0Var != null) {
                    WindowManager windowManager = (WindowManager) fo0Var.h.getSystemService("window");
                    if (Build.VERSION.SDK_INT >= 30) {
                        rect = h6.b(windowManager);
                    } else {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        Point point = new Point();
                        defaultDisplay.getRealSize(point);
                        rect = new Rect();
                        rect.right = point.x;
                        rect.bottom = point.y;
                    }
                    int iHeight = rect.height();
                    int[] iArr = new int[2];
                    eo0Var.getLocationInWindow(iArr);
                    int height = (iHeight - (eo0Var.getHeight() + iArr[1])) + ((int) eo0Var.getTranslationY());
                    int i2 = fo0Var.o;
                    if (height < i2) {
                        ViewGroup.LayoutParams layoutParams = eo0Var.getLayoutParams();
                        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                            Log.w(fo0.y, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                        } else {
                            int i3 = fo0Var.o;
                            fo0Var.p = i3;
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            marginLayoutParams.bottomMargin = (i3 - height) + marginLayoutParams.bottomMargin;
                            eo0Var.requestLayout();
                        }
                    } else {
                        fo0Var.p = i2;
                    }
                }
                break;
            default:
                ((gl8) obj).o(0);
                break;
        }
    }
}
