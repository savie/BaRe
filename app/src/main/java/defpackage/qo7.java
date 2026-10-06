package defpackage;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.model.StorageInfoLocal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qo7 extends gm7 {
    public final il0 l;

    public qo7(il0 il0Var) {
        super(null);
        this.l = il0Var;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x022e  */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        int iZ;
        String string;
        float f;
        po7 po7Var = (po7) fh6Var;
        so7 so7Var = (so7) m(i);
        MaterialCardView materialCardView = po7Var.C;
        so7Var.getClass();
        boolean z = so7Var.c;
        String str = so7Var.d;
        StorageInfoLocal.Success success = so7Var.b;
        zn7 zn7Var = so7Var.a;
        qo7 qo7Var = po7Var.E;
        boolean zQ = qo7Var.q(so7Var);
        il0 il0Var = qo7Var.l;
        MaterialCardView materialCardView2 = po7Var.v;
        materialCardView2.setStrokeWidth(tu0.v(materialCardView2.getContext().getResources().getDimension(zQ ? R.dimen.card_stroke_width_selected : R.dimen.card_stroke_width)));
        int i2 = zQ ? R.attr.colorPrimary : R.attr.cardStrokeColor;
        Context context = materialCardView2.getContext();
        context.getClass();
        materialCardView2.setStrokeColor(context.getColor(sz8.y(context, i2)));
        TextView textView = po7Var.y;
        textView.setText((String) zn7Var.f.getValue());
        if (zQ) {
            Context context2 = textView.getContext();
            context2.getClass();
            iZ = sz8.x(context2);
        } else {
            Context context3 = textView.getContext();
            context3.getClass();
            iZ = sz8.z(context3);
        }
        textView.setTextColor(iZ);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (pe4.d(str, "vfat") || pe4.d(str, "sdfat")) {
            il0Var.getClass();
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(il0Var.getColor(sz8.y(il0Var, R.attr.colorOnWarnContainer)));
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) "FAT32 (Max. file size 4 GB)");
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        } else if (str != null && str.length() != 0) {
            String upperCase = str.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            spannableStringBuilder.append((CharSequence) upperCase);
        }
        if (z != 0 && !mp6.g) {
            if (spannableStringBuilder.length() > 0 && !nq7.j0(spannableStringBuilder)) {
                spannableStringBuilder.append((CharSequence) "\n");
            }
            il0Var.getClass();
            ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(io4.c(il0Var, il0Var.getColor(R.color.red)));
            int length2 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.root_access_needed));
            spannableStringBuilder.setSpan(foregroundColorSpan2, length2, spannableStringBuilder.length(), 17);
        }
        SpannedString spannedString = new SpannedString(spannableStringBuilder);
        TextView textView2 = po7Var.x;
        sz8.d0(textView2, spannedString.length() > 0 && !nq7.j0(spannedString));
        textView2.setText(spannedString);
        LinearProgressIndicator linearProgressIndicator = po7Var.D;
        int usedPercent = success != null ? success.getUsedPercent() : 0;
        linearProgressIndicator.getClass();
        sz8.Z(linearProgressIndicator, usedPercent, true, true, true);
        po7Var.w.setImageResource(((Number) zn7Var.p.getValue()).intValue());
        TextView textView3 = po7Var.z;
        if (success == null || (string = success.getUsageString()) == null) {
            string = po7Var.a.getContext().getString(R.string.not_available);
            string.getClass();
        }
        String appUsageString = null;
        if (success != null) {
            StorageInfoLocal.Success success2 = success.getAppUsage() >= 0 ? success : null;
            if (success2 != null) {
                appUsageString = success2.getAppUsageString();
            }
        }
        textView3.setText(el1.Y0(x50.p0(new String[]{string, appUsageString}), "\n", null, null, null, 62));
        TextView textView4 = po7Var.A;
        StringBuilder sb = new StringBuilder();
        sb.append(il0Var.getString(R.string.backup_folder_location));
        if (z != 0) {
            sb.append(" (" + il0Var.getString(R.string.root_access_needed) + ")");
        }
        textView4.setText(sb.toString());
        TextView textView5 = po7Var.B;
        String str2 = ry5.u;
        textView5.setText(qy5.d(zn7Var));
        sz8.d0(materialCardView, pe4.d(str, "vfat") || pe4.d(str, "sdfat"));
        if (sz8.I(materialCardView)) {
            materialCardView.setCardBackgroundColor(il0Var.getColor(sz8.y(il0Var, R.attr.colorWarnContainer)));
            ((TextView) po7Var.u.c).setTextColor(il0Var.getColor(sz8.y(il0Var, R.attr.colorOnWarnContainer)));
        }
        if (success == null) {
            f = 0.5f;
        } else {
            if (z ? mp6.g : true) {
                f = 1.0f;
            } else {
                f = 0.5f;
            }
        }
        materialCardView2.setAlpha(f);
        materialCardView2.setOnClickListener(new l56(so7Var, qo7Var, po7Var, 1));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.storage_switch_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new po7(this, view);
    }
}
