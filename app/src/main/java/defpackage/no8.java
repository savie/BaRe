package defpackage;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.github.chrisbanes.photoview.PhotoView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class no8 implements jk8 {
    public final CoordinatorLayout a;
    public final AppBarLayout b;
    public final FloatingActionButton c;
    public final PhotoView d;
    public final Toolbar e;

    public no8(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton, PhotoView photoView, Toolbar toolbar) {
        this.a = coordinatorLayout;
        this.b = appBarLayout;
        this.c = floatingActionButton;
        this.d = photoView;
        this.e = toolbar;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
