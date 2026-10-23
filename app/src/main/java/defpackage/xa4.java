package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Currency;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xa4 implements jl0 {
    private final int btnBackgroundColor;
    private final Integer btnIconRes;
    private final int btnTextRes;
    private final v76 details;
    private final boolean isEnabled;
    private final boolean isPending;
    private final boolean isPurchased;
    private final boolean isSubscription;
    private final bt3 onButtonClick;

    public xa4(v76 v76Var, boolean z, boolean z2, boolean z3, int i, int i2, Integer num, bt3 bt3Var) {
        v76Var.getClass();
        this.details = v76Var;
        this.isPurchased = z;
        this.isPending = z2;
        this.isEnabled = z3;
        this.btnTextRes = i;
        this.btnBackgroundColor = i2;
        this.btnIconRes = num;
        this.onButtonClick = bt3Var;
        this.isSubscription = pe4.d(v76Var.d, "subs");
    }

    public static /* synthetic */ xa4 copy$default(xa4 xa4Var, v76 v76Var, boolean z, boolean z2, boolean z3, int i, int i2, Integer num, bt3 bt3Var, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            v76Var = xa4Var.details;
        }
        if ((i3 & 2) != 0) {
            z = xa4Var.isPurchased;
        }
        if ((i3 & 4) != 0) {
            z2 = xa4Var.isPending;
        }
        if ((i3 & 8) != 0) {
            z3 = xa4Var.isEnabled;
        }
        if ((i3 & 16) != 0) {
            i = xa4Var.btnTextRes;
        }
        if ((i3 & 32) != 0) {
            i2 = xa4Var.btnBackgroundColor;
        }
        if ((i3 & 64) != 0) {
            num = xa4Var.btnIconRes;
        }
        if ((i3 & 128) != 0) {
            bt3Var = xa4Var.onButtonClick;
        }
        Integer num2 = num;
        bt3 bt3Var2 = bt3Var;
        int i4 = i;
        int i5 = i2;
        return xa4Var.copy(v76Var, z, z2, z3, i4, i5, num2, bt3Var2);
    }

    private final t76 getFinalSubscriptionPricingPhase() {
        u76 u76Var;
        rb rbVar;
        ArrayList arrayList;
        ArrayList arrayList2 = this.details.h;
        if (arrayList2 == null || (u76Var = (u76) el1.b1(arrayList2)) == null || (rbVar = u76Var.b) == null || (arrayList = (ArrayList) rbVar.b) == null) {
            return null;
        }
        return (t76) el1.b1(arrayList);
    }

    private final String getMonthlyEquivalentPrice() {
        t76 finalSubscriptionPricingPhase = getFinalSubscriptionPricingPhase();
        String string = null;
        if (finalSubscriptionPricingPhase != null) {
            long j = finalSubscriptionPricingPhase.b;
            Long lValueOf = Long.valueOf(j);
            if (j <= 0) {
                lValueOf = null;
            }
            if (lValueOf != null) {
                long jLongValue = lValueOf.longValue();
                try {
                    Currency currency = Currency.getInstance(finalSubscriptionPricingPhase.c);
                    BigDecimal bigDecimalDivide = new BigDecimal(jLongValue).divide(new BigDecimal(12000000L), 6, RoundingMode.HALF_UP);
                    int defaultFractionDigits = currency.getDefaultFractionDigits();
                    Integer numValueOf = Integer.valueOf(defaultFractionDigits);
                    if (defaultFractionDigits < 0) {
                        numValueOf = null;
                    }
                    int iIntValue = numValueOf != null ? numValueOf.intValue() : 2;
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        string = sharedPreferences.getString("app_locale", null);
                        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
                        currencyInstance.setCurrency(currency);
                        currencyInstance.setMinimumFractionDigits(iIntValue);
                        currencyInstance.setMaximumFractionDigits(iIntValue);
                        return currencyInstance.format(bigDecimalDivide);
                    } catch (ClassCastException unused) {
                    }
                } catch (IllegalArgumentException unused2) {
                }
            }
        }
        return null;
    }

    public final v76 component1() {
        return this.details;
    }

    public final boolean component2() {
        return this.isPurchased;
    }

    public final boolean component3() {
        return this.isPending;
    }

    public final boolean component4() {
        return this.isEnabled;
    }

    public final int component5() {
        return this.btnTextRes;
    }

    public final int component6() {
        return this.btnBackgroundColor;
    }

    public final Integer component7() {
        return this.btnIconRes;
    }

    public final bt3 component8() {
        return this.onButtonClick;
    }

    public final xa4 copy(v76 v76Var, boolean z, boolean z2, boolean z3, int i, int i2, Integer num, bt3 bt3Var) {
        v76Var.getClass();
        return new xa4(v76Var, z, z2, z3, i, i2, num, bt3Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xa4)) {
            return false;
        }
        xa4 xa4Var = (xa4) obj;
        return pe4.d(this.details, xa4Var.details) && this.isPurchased == xa4Var.isPurchased && this.isPending == xa4Var.isPending && this.isEnabled == xa4Var.isEnabled && this.btnTextRes == xa4Var.btnTextRes && this.btnBackgroundColor == xa4Var.btnBackgroundColor && pe4.d(this.btnIconRes, xa4Var.btnIconRes) && pe4.d(this.onButtonClick, xa4Var.onButtonClick);
    }

    public final String getActionButtonText(Context context) {
        context.getClass();
        int i = this.btnTextRes;
        if (i == R.string.purchase) {
            String string = context.getString(R.string.purchase_plan, getDisplayTitle(context));
            string.getClass();
            return string;
        }
        if (i == R.string.subscribe) {
            String string2 = context.getString(R.string.subscribe_to_plan, getDisplayTitle(context));
            string2.getClass();
            return string2;
        }
        String string3 = context.getString(i);
        string3.getClass();
        return string3;
    }

    public final int getBtnBackgroundColor() {
        return this.btnBackgroundColor;
    }

    public final Integer getBtnIconRes() {
        return this.btnIconRes;
    }

    public final int getBtnTextRes() {
        return this.btnTextRes;
    }

    @Override // defpackage.jl0
    public jl0 getCopy() {
        return copy$default(this, null, false, false, false, 0, 0, null, null, 255, null);
    }

    public final v76 getDetails() {
        return this.details;
    }

    public final CharSequence getDisplayPrice(Context context) {
        String str;
        String str2;
        context.getClass();
        String str3 = "---";
        if (!this.isSubscription) {
            s76 s76VarA = this.details.a();
            return (s76VarA == null || (str2 = s76VarA.a) == null) ? "---" : str2;
        }
        t76 finalSubscriptionPricingPhase = getFinalSubscriptionPricingPhase();
        if (finalSubscriptionPricingPhase != null && (str = finalSubscriptionPricingPhase.a) != null) {
            str3 = str;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.year);
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            String lowerCase = strG.toLowerCase((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
            lowerCase.getClass();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) str3);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(sz8.A(context));
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) "/").append((CharSequence) lowerCase);
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
            return spannableStringBuilder;
        } catch (ClassCastException unused) {
        }
    }

    public final String getDisplayTitle(Context context) {
        context.getClass();
        String string = context.getString(this.isSubscription ? R.string.premium_plan_yearly : R.string.premium_plan_lifetime);
        string.getClass();
        return string;
    }

    public final String getDisplayTitleShort(Context context) {
        context.getClass();
        String string = context.getString(this.isSubscription ? R.string.premium_plan_yearly_label : R.string.premium_plan_lifetime_label);
        string.getClass();
        return string;
    }

    @Override // defpackage.jl0
    public String getItemId() {
        String str = this.details.c;
        str.getClass();
        return str;
    }

    public final String getMonthlyEquivalentText(Context context) {
        context.getClass();
        String monthlyEquivalentPrice = getMonthlyEquivalentPrice();
        if (monthlyEquivalentPrice == null) {
            return null;
        }
        return context.getString(R.string.yearly_plan_monthly_equivalent, monthlyEquivalentPrice);
    }

    public final bt3 getOnButtonClick() {
        return this.onButtonClick;
    }

    public final String getSubtitle(Context context) {
        context.getClass();
        String string = context.getString(this.isSubscription ? R.string.recurring_plan : R.string.one_time_purchase);
        string.getClass();
        return string;
    }

    public final String getSubtitleShort(Context context) {
        context.getClass();
        String string = context.getString(this.isSubscription ? R.string.billed_yearly : R.string.lifetime_payment_forever);
        string.getClass();
        return string;
    }

    public int hashCode() {
        int iD = eq3.d(this.btnBackgroundColor, eq3.d(this.btnTextRes, fz5.h(fz5.h(fz5.h(this.details.a.hashCode() * 31, 31, this.isPurchased), 31, this.isPending), 31, this.isEnabled), 31), 31);
        Integer num = this.btnIconRes;
        int iHashCode = (iD + (num == null ? 0 : num.hashCode())) * 31;
        bt3 bt3Var = this.onButtonClick;
        return iHashCode + (bt3Var != null ? bt3Var.hashCode() : 0);
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isLifetime() {
        return !this.isSubscription;
    }

    public final boolean isPending() {
        return this.isPending;
    }

    public final boolean isPurchased() {
        return this.isPurchased;
    }

    public String toString() {
        v76 v76Var = this.details;
        boolean z = this.isPurchased;
        boolean z2 = this.isPending;
        boolean z3 = this.isEnabled;
        int i = this.btnTextRes;
        int i2 = this.btnBackgroundColor;
        Integer num = this.btnIconRes;
        bt3 bt3Var = this.onButtonClick;
        StringBuilder sb = new StringBuilder("InAppItem(details=");
        sb.append(v76Var);
        sb.append(", isPurchased=");
        sb.append(z);
        sb.append(", isPending=");
        sb.append(z2);
        sb.append(", isEnabled=");
        sb.append(z3);
        sb.append(", btnTextRes=");
        xs1.s(sb, i, ", btnBackgroundColor=", i2, ", btnIconRes=");
        sb.append(num);
        sb.append(", onButtonClick=");
        sb.append(bt3Var);
        sb.append(")");
        return sb.toString();
    }
}
