package com.microsoft.identity.common.java.adal.cache;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.dm4;
import defpackage.gl4;
import defpackage.kl4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DateTimeAdapter implements pj4, dm4 {
    private final SimpleDateFormat mEnUs24HourFormat;
    private final DateFormat mEnUsFormat;
    private final SimpleDateFormat mISO8601Format;
    private final SimpleDateFormat mLocal24HourFormat;
    private final DateFormat mLocalFormat;

    public DateTimeAdapter() {
        Locale locale = Locale.US;
        this.mEnUsFormat = DateFormat.getDateTimeInstance(2, 2, locale);
        this.mLocalFormat = DateFormat.getDateTimeInstance(2, 2);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", locale);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.mISO8601Format = simpleDateFormat;
        this.mEnUs24HourFormat = new SimpleDateFormat("MMM dd, yyyy HH:mm:ss", locale);
        this.mLocal24HourFormat = new SimpleDateFormat("MMM dd, yyyy HH:mm:ss", Locale.getDefault());
    }

    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        Date date;
        synchronized (this) {
            String strO = qj4Var.o();
            try {
                date = this.mISO8601Format.parse(strO);
            } catch (ParseException unused) {
                Logger.verbose("DateTimeAdapter", "Cannot parse with ISO8601, try again with local format.");
                try {
                    return this.mLocalFormat.parse(strO);
                } catch (ParseException unused2) {
                    Logger.verbose("DateTimeAdapter", "Cannot parse with local format, try again with local 24 hour format.");
                    try {
                        return this.mLocal24HourFormat.parse(strO);
                    } catch (ParseException unused3) {
                        Logger.verbose("DateTimeAdapter", "Cannot parse with local 24 hour format, try again with en us format.");
                        try {
                            return this.mEnUsFormat.parse(strO);
                        } catch (ParseException unused4) {
                            Logger.verbose("DateTimeAdapter", "Cannot parse with en us format, try again with en us 24 hour format.");
                            try {
                                return this.mEnUs24HourFormat.parse(strO);
                            } catch (ParseException e) {
                                Logger.error("DateTimeAdapter", "Could not parse date: " + e.getMessage(), e);
                                throw new gl4("Could not parse date: " + strO);
                            }
                        }
                    }
                }
            }
        }
        return date;
    }

    @Override // defpackage.dm4
    public final qj4 serialize(Object obj, z28 z28Var) {
        kl4 kl4Var;
        Date date = (Date) obj;
        synchronized (this) {
            kl4Var = new kl4(this.mISO8601Format.format(date));
        }
        return kl4Var;
    }
}
