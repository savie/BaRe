package defpackage;

import java.util.Calendar;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oz0 {
    public final Calendar a;
    public final Locale b;

    static {
        new oz0(Calendar.getInstance(), Locale.getDefault());
    }

    public oz0(Calendar calendar, Locale locale) {
        Objects.requireNonNull(calendar, "calendar");
        this.a = calendar;
        Objects.requireNonNull(locale, "locale");
        this.b = locale;
    }
}
