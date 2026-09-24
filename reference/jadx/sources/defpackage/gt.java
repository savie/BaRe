package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gt extends fh6 {
    public final float u;
    public final boolean v;
    public final boolean w;
    public final ht x;
    public final MaterialCardView y;
    public final TextView z;

    public gt(View view, float f, boolean z, boolean z2, ht htVar) {
        super(view);
        this.u = f;
        this.v = z;
        this.w = z2;
        this.x = htVar;
        ur urVarA = ur.a(view);
        this.y = urVarA.a;
        this.z = urVarA.b;
    }

    public final void r(LabelParams labelParams) {
        labelParams.getClass();
        int textColor = labelParams.getTextColor(this.v);
        int i = labelParams.isBuiltInLabel() ? textColor : 0;
        MaterialCardView materialCardView = this.y;
        materialCardView.setStrokeColor(i);
        Context context = materialCardView.getContext();
        context.getClass();
        materialCardView.setStrokeWidth(tu0.v((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 1.5f));
        materialCardView.setCardBackgroundColor(labelParams.isBuiltInLabel() ? 0 : labelParams.getColorInt());
        Context context2 = materialCardView.getContext();
        context2.getClass();
        materialCardView.setRippleColor(sz8.h0(labelParams.getRippleColor(context2, textColor)));
        ht htVar = this.x;
        if ((htVar != null ? htVar.e : null) != null) {
            materialCardView.setOnClickListener(new er(1, this, labelParams));
        }
        TextView textView = this.z;
        textView.setTextColor(textColor);
        textView.setAlpha(htVar != null ? htVar.f : this.u);
        if (this.w) {
            int iG = xl1.g(textColor, 200);
            Context context3 = textView.getContext();
            context3.getClass();
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, Const.w(context3, R.drawable.ic_label_close, iG), (Drawable) null);
        }
        String name = labelParams.getName();
        if (name == null && (name = labelParams.getId()) == null) {
            name = "Unknown";
        }
        textView.setText(name);
    }
}
