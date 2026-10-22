package defpackage;

import android.view.View;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ui extends vi {
    public final MaterialButton u;
    public final /* synthetic */ wi v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ui(wi wiVar, View view) {
        super(view);
        this.v = wiVar;
        o(false);
        this.u = (MaterialButton) view;
    }

    @Override // defpackage.vi
    public final void r(pi piVar, int i) {
        Integer numValueOf;
        piVar.getClass();
        oi oiVar = (oi) piVar;
        boolean z = oiVar.e;
        float f = z ? 1.0f : 0.5f;
        View view = this.a;
        view.setAlpha(f);
        Integer num = oiVar.c;
        if (num != null) {
            numValueOf = Integer.valueOf(view.getContext().getColor(num.intValue()));
        } else {
            numValueOf = null;
        }
        Integer numValueOf2 = numValueOf != null ? Integer.valueOf(sz8.U(numValueOf.intValue(), 20)) : null;
        MaterialButton materialButton = this.u;
        if (numValueOf2 != null) {
            materialButton.setBackgroundColor(numValueOf2.intValue());
        }
        if (numValueOf != null) {
            materialButton.setRippleColor(sz8.h0(sz8.U(numValueOf.intValue(), 10)));
            materialButton.setIconTint(sz8.h0(numValueOf.intValue()));
            materialButton.setTextColor(numValueOf.intValue());
        }
        materialButton.setText(oiVar.b);
        materialButton.setIconResource(oiVar.d);
        if (z) {
            materialButton.setOnClickListener(new ti(this.v, i, 0, piVar));
        } else {
            materialButton.setOnClickListener(null);
        }
    }
}
