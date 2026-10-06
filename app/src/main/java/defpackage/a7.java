package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a7 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, final int i) {
        String string;
        Drawable drawable;
        z6 z6Var = (z6) fh6Var;
        final q7 q7Var = (q7) this.e.a.get(i);
        q7Var.getClass();
        Integer num = q7Var.d;
        Context context = z6Var.a.getContext();
        TextView textView = z6Var.w;
        Integer num2 = q7Var.b;
        if ((num2 == null || (string = context.getString(num2.intValue())) == null) && (string = q7Var.c) == null) {
            string = "";
        }
        textView.setText(string);
        ImageView imageView = z6Var.x;
        if (num == null) {
            drawable = null;
        } else {
            context.getClass();
            drawable = context.getDrawable(num.intValue());
            drawable.getClass();
        }
        imageView.setImageDrawable(drawable);
        SwiftListItemCardView swiftListItemCardView = z6Var.v;
        final a7 a7Var = z6Var.y;
        swiftListItemCardView.setOnClickListener(new View.OnClickListener() { // from class: y6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                qt3 qt3Var = this.a.j;
                if (qt3Var != null) {
                    qt3Var.invoke(q7Var, Integer.valueOf(i));
                }
            }
        });
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.more_list_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new z6(this, view);
    }
}
