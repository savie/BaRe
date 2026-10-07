package defpackage;
import android.view.ViewTreeObserver;
import com.google.android.material.slider.Slider;
public final class hn0 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final Slider a;
    public hn0(Slider owner){this.a=owner;}
    @Override public final void onGlobalLayout(){this.a.F();}
}
