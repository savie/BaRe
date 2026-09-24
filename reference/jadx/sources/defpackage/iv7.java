package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv7 extends View {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ lv7 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iv7(lv7 lv7Var, Context context, ViewGroup viewGroup) {
        super(context);
        this.b = lv7Var;
        this.a = viewGroup;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        lv7 lv7Var = this.b;
        ArrayList arrayList = lv7Var.b;
        Drawable background = this.a.getBackground();
        int color = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        if (lv7Var.e != color) {
            lv7Var.e = color;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((k96) arrayList.get(size)).b(color);
            }
        }
    }
}
