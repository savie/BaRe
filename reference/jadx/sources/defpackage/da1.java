package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.timepicker.ClockFaceView;
import com.google.android.material.timepicker.ClockHandView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class da1 extends w5 {
    public final /* synthetic */ ClockFaceView d;

    public da1(ClockFaceView clockFaceView) {
        this.d = clockFaceView;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (iIntValue > 0) {
            accessibilityNodeInfo.setTraversalAfter((View) this.d.P.get(iIntValue - 1));
        }
        m6Var.j(om5.e(view.isSelected(), 0, 1, iIntValue, 1));
        accessibilityNodeInfo.setClickable(true);
        m6Var.b(g6.g);
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        ClockFaceView clockFaceView = this.d;
        ClockHandView clockHandView = clockFaceView.L;
        Rect rect = clockFaceView.M;
        if (i != 16) {
            return super.g(view, i, bundle);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        view.getHitRect(rect);
        float fCenterX = rect.centerX();
        float fCenterY = rect.centerY();
        clockHandView.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
        clockHandView.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
        return true;
    }
}
