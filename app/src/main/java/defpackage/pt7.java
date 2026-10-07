package defpackage;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

public final class pt7 implements View.OnTouchListener {
    public final View a;
    public pt7(SwiftSegmentedCardGroup owner, View view) { this.a = view; }

    @Override public final boolean onTouch(View view, MotionEvent event) {
        int ignored = SwiftSegmentedCardGroup.k;
        view.getClass(); event.getClass();
        View target = this.a;
        Rect hotspot = null;
        rt7 point;
        if (target.equals(view)) {
            point = new rt7(event.getX(), event.getY());
        } else {
            ViewGroup parent = target instanceof ViewGroup ? (ViewGroup) target : null;
            if (parent == null) {
                point = new rt7(event.getX(), event.getY());
            } else {
                Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
                parent.offsetDescendantRectToMyCoords(view, rect);
                point = new rt7(event.getX() + rect.left, event.getY() + rect.top);
            }
        }
        Drawable foreground = target.getForeground();
        RippleDrawable ripple = foreground instanceof RippleDrawable ? (RippleDrawable) foreground : null;
        if (ripple != null) ripple.setHotspot(point.a, point.b);
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            target.setPressed(true);
        } else if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            target.post(new mr3(target, 4));
        }
        return false;
    }
}
