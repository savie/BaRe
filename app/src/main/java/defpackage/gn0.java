package defpackage;
import android.view.ViewTreeObserver;
import com.google.android.material.slider.Slider;
public final class gn0 implements ViewTreeObserver.OnScrollChangedListener {
    public final Slider a;
    public gn0(Slider owner){this.a=owner;}
    @Override public final void onScrollChanged(){this.a.F();}
}
