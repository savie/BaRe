package defpackage;

import android.content.Context;
import android.view.View;
import android.view.animation.PathInterpolator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z75 {
    public final PathInterpolator a = new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
    public final View b;
    public final int c;
    public final int d;
    public final int e;
    public xj0 f;

    public z75(View view) {
        this.b = view;
        Context context = view.getContext();
        this.c = ji8.F(context, R.attr.motionDurationMedium2, 300);
        this.d = ji8.F(context, R.attr.motionDurationShort3, 150);
        this.e = ji8.F(context, R.attr.motionDurationShort2, 100);
    }
}
