package defpackage;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class vv8 extends y13 {
    public final WindowInsetsController h;
    public final Window i;

    public vv8(Window window, ge geVar) {
        this.h = window.getInsetsController();
        this.i = window;
    }

    @Override // defpackage.y13
    public void B(boolean z) {
        R(16, 16, z);
    }

    @Override // defpackage.y13
    public void C(boolean z) {
        R(8192, 8, z);
    }

    public final void R(int i, int i2, boolean z) {
        Window window = this.i;
        if (window == null) {
            WindowInsetsController windowInsetsController = this.h;
            if (z) {
                windowInsetsController.setSystemBarsAppearance(i2, i2);
                return;
            } else {
                windowInsetsController.setSystemBarsAppearance(0, i2);
                return;
            }
        }
        if (z) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        } else {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility((~i) & decorView2.getSystemUiVisibility());
        }
    }

    @Override // defpackage.y13
    public boolean q() {
        Window window = this.i;
        if (window == null) {
            this.h.setSystemBarsAppearance(0, 0);
            if ((this.h.getSystemBarsAppearance() & 8) != 0) {
                return true;
            }
        } else if ((window.getDecorView().getSystemUiVisibility() & 8192) != 0) {
            return true;
        }
        return false;
    }
}
