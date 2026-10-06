package org.swiftapps.swiftbackup.views;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.fm6;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.tp;
import defpackage.uq7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LocaleTextView extends tp {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LocaleTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
        context.getClass();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        if (pe4.d(getTextLocale().getLanguage(), "en")) {
            return;
        }
        setTypeface(fm6.a(getContext(), org.swiftapps.swiftbackup.R.font.condensed_regular));
        setTextSize(11.0f);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (charSequence != null && nq7.Z(charSequence, TokenAuthenticationScheme.SCHEME_DELIMITER, false)) {
            charSequence = uq7.T(charSequence.toString(), TokenAuthenticationScheme.SCHEME_DELIMITER, "\n");
        }
        super.setText(charSequence, bufferType);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocaleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocaleTextView(Context context) {
        super(context, null);
        context.getClass();
    }
}
