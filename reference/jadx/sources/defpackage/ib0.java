package defpackage;

import android.animation.ValueAnimator;
import android.os.SystemClock;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.warkiz.widget.IndicatorSeekBar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ib0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ib0(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View viewD;
        int width;
        switch (this.a) {
            case 0:
                qy4 qy4Var = (qy4) this.b;
                bq2 bq2Var = qy4Var.c;
                hb0 hb0Var = qy4Var.a;
                if (qy4Var.G) {
                    if (qy4Var.x) {
                        qy4Var.x = false;
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        hb0Var.e = jCurrentAnimationTimeMillis;
                        hb0Var.g = -1L;
                        hb0Var.f = jCurrentAnimationTimeMillis;
                        hb0Var.h = 0.5f;
                    }
                    if ((hb0Var.g > 0 && AnimationUtils.currentAnimationTimeMillis() > hb0Var.g + ((long) hb0Var.i)) || !qy4Var.e()) {
                        qy4Var.G = false;
                        return;
                    }
                    if (qy4Var.y) {
                        qy4Var.y = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        bq2Var.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (hb0Var.f == 0) {
                        g84.h("Cannot compute scroll delta before calling start()");
                        return;
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = hb0Var.a(jCurrentAnimationTimeMillis2);
                    long j = jCurrentAnimationTimeMillis2 - hb0Var.f;
                    hb0Var.f = jCurrentAnimationTimeMillis2;
                    qy4Var.I.scrollListBy((int) (j * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * hb0Var.d));
                    WeakHashMap weakHashMap = dl8.a;
                    bq2Var.postOnAnimation(this);
                    return;
                }
                return;
            case 1:
                km0 km0Var = (km0) this.b;
                ((gp2) km0Var.getCurrentDrawable()).d(false, false, true);
                if ((km0Var.getProgressDrawable() == null || !km0Var.getProgressDrawable().isVisible()) && (km0Var.getIndeterminateDrawable() == null || !km0Var.getIndeterminateDrawable().isVisible())) {
                    km0Var.setVisibility(4);
                }
                km0Var.f = -1L;
                return;
            case 2:
                qp2 qp2Var = (qp2) this.b;
                DrawerLayout drawerLayout = qp2Var.i;
                int i = qp2Var.g.o;
                int i2 = qp2Var.f;
                boolean z = i2 == 3;
                if (z) {
                    viewD = drawerLayout.d(3);
                    width = (viewD != null ? -viewD.getWidth() : 0) + i;
                } else {
                    viewD = drawerLayout.d(5);
                    width = drawerLayout.getWidth() - i;
                }
                if (viewD != null) {
                    if (((!z || viewD.getLeft() >= width) && (z || viewD.getLeft() <= width)) || drawerLayout.f(viewD) != 0) {
                        return;
                    }
                    np2 np2Var = (np2) viewD.getLayoutParams();
                    qp2Var.g.r(viewD, width, viewD.getTop());
                    np2Var.c = true;
                    drawerLayout.invalidate();
                    View viewD2 = drawerLayout.d(i2 == 3 ? 5 : 3);
                    if (viewD2 != null) {
                        drawerLayout.b(viewD2);
                    }
                    if (drawerLayout.I) {
                        return;
                    }
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        drawerLayout.getChildAt(i3).dispatchTouchEvent(motionEventObtain2);
                    }
                    motionEventObtain2.recycle();
                    drawerLayout.I = true;
                    return;
                }
                return;
            case 3:
                ((ws2) this.b).p();
                return;
            case 4:
                r53 r53Var = (r53) this.b;
                ValueAnimator valueAnimator = r53Var.z;
                int i4 = r53Var.A;
                if (i4 == 1) {
                    valueAnimator.cancel();
                } else if (i4 != 2) {
                    return;
                }
                r53Var.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500L);
                valueAnimator.start();
                return;
            case 5:
                ViewParent parent = ((yq3) this.b).d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    return;
                }
                return;
            case 6:
                ((IndicatorSeekBar) this.b).requestLayout();
                return;
            case 7:
                if (((i35) this.b).d == null) {
                    return;
                }
                g35 g35Var = ((i35) this.b).d;
                Object obj = g35Var.a;
                i35 i35Var = (i35) this.b;
                if (obj != null) {
                    synchronized (i35Var) {
                        Iterator it = new ArrayList(i35Var.a).iterator();
                        while (it.hasNext()) {
                            ((e35) it.next()).onResult(obj);
                        }
                    }
                    return;
                }
                Throwable th = g35Var.b;
                synchronized (i35Var) {
                    ArrayList arrayList = new ArrayList(i35Var.b);
                    if (arrayList.isEmpty()) {
                        m15.c("Lottie encountered an error but no failure listener was added:", th);
                        return;
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((e35) it2.next()).onResult(th);
                    }
                    return;
                }
            case 8:
                TextView textView = (TextView) ((ib) this.b).c;
                textView.setText(textView.getText());
                return;
            case XmlPullParser.COMMENT /* 9 */:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.b).c.k;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 10:
                o88 o88Var = (o88) this.b;
                Window.Callback callback = o88Var.f;
                Menu menuX0 = o88Var.x0();
                fc5 fc5Var = menuX0 instanceof fc5 ? (fc5) menuX0 : null;
                if (fc5Var != null) {
                    fc5Var.w();
                }
                try {
                    menuX0.clear();
                    if (!callback.onCreatePanelMenu(0, menuX0) || !callback.onPreparePanel(0, null, menuX0)) {
                        menuX0.clear();
                    }
                    if (fc5Var != null) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (fc5Var != null) {
                        fc5Var.v();
                    }
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                nr8 nr8Var = (nr8) this.b;
                u00 u00Var = nr8Var.j;
                if (nr8Var.b || nr8Var.c) {
                    return;
                }
                if (u00Var.e()) {
                    u00Var.c("timed out on connect", null, new Object[0]);
                }
                ((ar8) nr8Var.a.b).a();
                return;
            default:
                ((q19) this.b).n.b(new hs1(4, null, null));
                return;
        }
    }
}
