package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dx0 {
    public final Context a;
    public final int d;
    public final int e;
    public final int g;
    public final int j;
    public final int m;
    public final int p;
    public final int b = Color.parseColor("#FF4081");
    public final int c = Color.parseColor("#FFFFFF");
    public final int f = Color.parseColor("#D7D7D7");
    public final int h = Color.parseColor("#FF4081");
    public final int i = Color.parseColor("#FF4081");
    public final int k = Color.parseColor("#FF4081");
    public final int l = Color.parseColor("#FF4081");
    public final Typeface n = Typeface.DEFAULT;
    public final int o = Color.parseColor("#FF4081");

    public dx0(Context context) {
        this.d = 0;
        this.e = 0;
        this.g = 0;
        this.j = 0;
        this.m = 0;
        this.p = 0;
        this.a = context;
        this.d = (int) ((context.getResources().getDisplayMetrics().scaledDensity * 14.0f) + 0.5f);
        this.e = tu0.j(context, 2.0f);
        this.g = tu0.j(context, 2.0f);
        this.p = tu0.j(context, 10.0f);
        this.m = (int) ((13.0f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
        this.j = tu0.j(context, 14.0f);
    }
}
