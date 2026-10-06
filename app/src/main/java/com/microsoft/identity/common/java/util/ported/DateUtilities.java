package com.microsoft.identity.common.java.util.ported;

import defpackage.f6;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class DateUtilities {
    public static final Object LOCALE_CHANGE_LOCK = new Object();
    private static final HashSet NON_GREGORIAN_CALENDAR_LOCALES = new HashSet(Arrays.asList("ar", "as", "bn", "dz", "fa", "ks", "mr", "my", "ne", "pa", "ps", "ur", "uz"));

    public static boolean isLocaleCalendarNonGregorian(Locale locale) {
        if (locale != null) {
            return NON_GREGORIAN_CALENDAR_LOCALES.contains(locale.getLanguage());
        }
        f6.n("inputLocale is marked non-null but is null");
        return false;
    }
}
