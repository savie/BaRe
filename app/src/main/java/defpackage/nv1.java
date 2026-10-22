package defpackage;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nv1 implements es5, zt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ nv1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.zt3
    public final yt3 a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return new cu3(1, (ContributorRegActivity) obj, ContributorRegActivity.class, "onRemoteDetails", "onRemoteDetails(Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;)V", 0);
            case 1:
                return (oh1) obj;
            default:
                return (hl0) obj;
        }
    }

    @Override // defpackage.es5
    public final void b(Object obj) throws Exception {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ContributorRegistration contributorRegistration = (ContributorRegistration) obj;
                contributorRegistration.getClass();
                ContributorRegActivity contributorRegActivity = (ContributorRegActivity) obj2;
                gv7 gv7Var = contributorRegActivity.N;
                TextView textView = (TextView) contributorRegActivity.M.getValue();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) "Status: ");
                String str = contributorRegistration.get_status();
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan((str == null || !uq7.V(str, "ACTIVE", true)) ? contributorRegActivity.getColor(R.color.ambrdark) : sz8.x(contributorRegActivity));
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) contributorRegistration.get_status());
                spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
                textView.setText(spannableStringBuilder);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("Name", contributorRegistration.get_name());
                linkedHashMap.put("Registration type", contributorRegistration.getType().toDisplayString());
                List<Locale> locales = contributorRegistration.getLocales();
                if (locales != null && !locales.isEmpty() && contributorRegistration.isTranslator()) {
                    linkedHashMap.put("Languages", el1.Y0(locales, null, null, null, new nk(6), 31));
                }
                TextView textView2 = (TextView) gv7Var.getValue();
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                Context context = ((TextView) gv7Var.getValue()).getContext();
                context.getClass();
                int iZ = sz8.z(context);
                int iA = sz8.A(context);
                int i2 = 0;
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    int i3 = i2 + 1;
                    if (i2 > 0) {
                        spannableStringBuilder2.append((CharSequence) "\n\n");
                    }
                    ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(iA);
                    int length2 = spannableStringBuilder2.length();
                    RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(0.9f);
                    int length3 = spannableStringBuilder2.length();
                    spannableStringBuilder2.append((CharSequence) entry.getKey());
                    spannableStringBuilder2.setSpan(relativeSizeSpan, length3, spannableStringBuilder2.length(), 17);
                    spannableStringBuilder2.setSpan(foregroundColorSpan2, length2, spannableStringBuilder2.length(), 17);
                    ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(iZ);
                    int length4 = spannableStringBuilder2.length();
                    spannableStringBuilder2.append((CharSequence) "\n").append((CharSequence) entry.getValue());
                    spannableStringBuilder2.setSpan(foregroundColorSpan3, length4, spannableStringBuilder2.length(), 17);
                    i2 = i3;
                }
                textView2.setText(new SpannedString(spannableStringBuilder2));
                ((TextInputEditText) contributorRegActivity.O.getValue()).setText(contributorRegistration.getIdTelegram());
                sz8.d0(contributorRegActivity.N().k, contributorRegistration.isTranslator());
                if (contributorRegistration.isTranslator()) {
                    ((TextInputEditText) contributorRegActivity.P.getValue()).setText(contributorRegistration.getIdCrowdin());
                }
                ((TextInputEditText) contributorRegActivity.Q.getValue()).setText(contributorRegistration.getIdPaypal());
                break;
            case 1:
                ((oh1) obj2).invoke(obj);
                break;
            default:
                ((hl0) obj2).invoke(obj);
                break;
        }
    }

    public final boolean equals(Object obj) {
        switch (this.a) {
            case 0:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            case 1:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
            default:
                if ((obj instanceof es5) && (obj instanceof zt3)) {
                    return pe4.d(a(), ((zt3) obj).a());
                }
                return false;
        }
    }

    public final int hashCode() {
        switch (this.a) {
            case 0:
                break;
            case 1:
                break;
        }
        return a().hashCode();
    }
}
