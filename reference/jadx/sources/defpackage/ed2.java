package defpackage;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ed2 extends h58 implements iv1 {
    public final Boolean d;
    public final DateFormat e;
    public final AtomicReference f;

    public ed2(Class cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this.d = bool;
        this.e = dateFormat;
        this.f = dateFormat == null ? null : new AtomicReference();
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) throws ag4 {
        Class cls = this.a;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, cls);
        v77 v77Var = c87Var.a;
        if (bk4VarK != null) {
            String str = bk4VarK.d;
            Locale locale = bk4VarK.c;
            String str2 = bk4VarK.a;
            ak4 ak4Var = bk4VarK.b;
            TimeZone timeZone = null;
            if (ak4Var.a()) {
                return r(Boolean.TRUE, null);
            }
            if (str2 != null && str2.length() > 0) {
                if (locale == null) {
                    locale = v77Var.b.f;
                }
                DateFormat simpleDateFormat = new SimpleDateFormat(str2, locale);
                if (bk4VarK.b()) {
                    TimeZone timeZone2 = bk4VarK.k;
                    if (timeZone2 != null) {
                        timeZone = timeZone2;
                    } else if (str != null) {
                        timeZone = TimeZone.getTimeZone(str);
                        bk4VarK.k = timeZone;
                    }
                } else {
                    v77Var.b.getClass();
                    timeZone = en0.n;
                }
                simpleDateFormat.setTimeZone(timeZone);
                return r(Boolean.FALSE, simpleDateFormat);
            }
            boolean z = locale != null;
            boolean zB = bk4VarK.b();
            boolean z2 = ak4Var == ak4.e;
            if (z || zB || z2) {
                DateFormat dateFormat = v77Var.b.e;
                if (dateFormat instanceof mn7) {
                    mn7 mn7Var = (mn7) dateFormat;
                    if (locale != null && !locale.equals(mn7Var.b)) {
                        mn7Var = new mn7(mn7Var.a, locale, mn7Var.c, mn7Var.f);
                    }
                    if (bk4VarK.b()) {
                        TimeZone timeZone3 = bk4VarK.k;
                        if (timeZone3 != null) {
                            timeZone = timeZone3;
                        } else if (str != null) {
                            timeZone = TimeZone.getTimeZone(str);
                            bk4VarK.k = timeZone;
                        }
                        if (timeZone == null) {
                            timeZone = mn7.q;
                        }
                        TimeZone timeZone4 = mn7Var.a;
                        if (timeZone != timeZone4 && !timeZone.equals(timeZone4)) {
                            mn7Var = new mn7(timeZone, mn7Var.b, mn7Var.c, mn7Var.f);
                        }
                    }
                    return r(Boolean.FALSE, mn7Var);
                }
                if (!(dateFormat instanceof SimpleDateFormat)) {
                    c87Var.A(cls, "Configured `DateFormat` (" + dateFormat.getClass().getName() + ") not a `SimpleDateFormat`; cannot configure `Locale` or `TimeZone`");
                    throw null;
                }
                SimpleDateFormat simpleDateFormat2 = (SimpleDateFormat) dateFormat;
                DateFormat simpleDateFormat3 = z ? new SimpleDateFormat(simpleDateFormat2.toPattern(), locale) : (SimpleDateFormat) simpleDateFormat2.clone();
                TimeZone timeZone5 = bk4VarK.k;
                if (timeZone5 != null) {
                    timeZone = timeZone5;
                } else if (str != null) {
                    timeZone = TimeZone.getTimeZone(str);
                    bk4VarK.k = timeZone;
                }
                if (timeZone != null && !timeZone.equals(simpleDateFormat3.getTimeZone())) {
                    simpleDateFormat3.setTimeZone(timeZone);
                }
                return r(Boolean.FALSE, simpleDateFormat3);
            }
        }
        return this;
    }

    @Override // defpackage.h58, defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return false;
    }

    public final boolean p(c87 c87Var) {
        Boolean bool = this.d;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.e == null) {
            if (c87Var != null) {
                return c87Var.a.l(x77.WRITE_DATES_AS_TIMESTAMPS);
            }
            c6.f("Null SerializerProvider passed for ".concat(this.a.getName()));
        }
        return false;
    }

    public final void q(Date date, fk4 fk4Var, c87 c87Var) {
        DateFormat dateFormat = this.e;
        if (dateFormat == null) {
            c87Var.getClass();
            if (c87Var.a.l(x77.WRITE_DATES_AS_TIMESTAMPS)) {
                fk4Var.G(date.getTime());
                return;
            } else {
                fk4Var.b0(c87Var.d().format(date));
                return;
            }
        }
        AtomicReference atomicReference = this.f;
        DateFormat dateFormat2 = (DateFormat) atomicReference.getAndSet(null);
        if (dateFormat2 == null) {
            dateFormat2 = (DateFormat) dateFormat.clone();
        }
        fk4Var.b0(dateFormat2.format(date));
        while (!atomicReference.compareAndSet(null, dateFormat2) && atomicReference.get() == null) {
        }
    }

    public abstract ed2 r(Boolean bool, DateFormat dateFormat);
}
