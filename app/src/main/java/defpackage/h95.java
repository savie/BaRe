package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h95 extends tp {
    @Override // defpackage.tp, android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (jm1.Q(context, R.attr.textAppearanceLineHeightEnabled, true)) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i, td6.G);
            Context context2 = getContext();
            int[] iArr = {2, 4};
            int iO = -1;
            for (int i2 = 0; i2 < 2 && iO < 0; i2++) {
                iO = k55.o(context2, typedArrayObtainStyledAttributes, iArr[i2], -1);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (iO >= 0) {
                setLineHeight(iO);
            }
        }
    }
}
