package defpackage;

import android.content.Context;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hz4 {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final AlphaAnimation c;
    public Integer d;
    public boolean e;

    public hz4() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setStartOffset(20L);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        this.c = alphaAnimation;
    }

    public final void a(boolean z) {
        Animation animation;
        ArrayList<View> arrayList = this.a;
        ArrayList<w18> arrayList2 = this.b;
        if (z) {
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                animation = this.c;
                if (!zHasNext) {
                    break;
                }
                View view = (View) it.next();
                b(view);
                view.startAnimation(animation);
            }
            if (!this.e || arrayList2.isEmpty()) {
                return;
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                TextView textView = ((w18) it2.next()).a;
                textView.setTextColor(0);
                b(textView);
                textView.startAnimation(animation);
            }
            return;
        }
        for (View view2 : arrayList) {
            if (!(view2 instanceof Button)) {
                view2.setBackgroundColor(0);
            }
            view2.clearAnimation();
        }
        if (!this.e || arrayList2.isEmpty()) {
            return;
        }
        for (w18 w18Var : arrayList2) {
            TextView textView2 = w18Var.a;
            textView2.setTextColor(w18Var.b);
            if (!(textView2 instanceof Button)) {
                textView2.setBackgroundColor(0);
            }
            textView2.clearAnimation();
        }
    }

    public final void b(View view) {
        int color;
        if (view instanceof Button) {
            return;
        }
        Integer num = this.d;
        if (num != null) {
            color = num.intValue();
        } else {
            Context context = view.getContext();
            context.getClass();
            color = context.getColor(sz8.y(context, R.attr.dividerColor));
        }
        view.setBackgroundColor(color);
    }
}
