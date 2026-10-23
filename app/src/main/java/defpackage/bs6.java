package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bs6 extends gm7 implements p53 {
    public final k28 l;
    public final boolean m;
    public final int n;

    public bs6(k28 k28Var, boolean z) {
        super(null);
        this.l = k28Var;
        this.m = z;
        this.n = sz8.z(k28Var);
    }

    @Override // defpackage.p53
    public final String a(int i) {
        return Const.s(((jv6) m(i)).getTime());
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        as6 as6Var = (as6) fh6Var;
        jv6 jv6Var = (jv6) m(i);
        bs6 bs6Var = as6Var.x;
        int iR = bs6Var.n;
        k28 k28Var = bs6Var.l;
        jv6Var.getClass();
        as6Var.u.setText(jv6Var.getTimeString(false));
        TextView textView = as6Var.v;
        String string$default = jv6.toString$default(jv6Var, false, false, false, 6, null);
        string$default.getClass();
        if (string$default.length() > 16384) {
            StringBuilder sb = new StringBuilder(16384);
            int length = string$default.length();
            if (8173 <= length) {
                length = 8173;
            }
            if (1 <= length && length < string$default.length() && Character.isHighSurrogate(string$default.charAt(length - 1)) && Character.isLowSurrogate(string$default.charAt(length))) {
                length--;
            }
            sb.append(string$default.substring(0, length));
            sb.append("\n… [SwiftLogger preview truncated] …\n");
            int length2 = string$default.length() - 8174;
            if (length2 < 0) {
                length2 = 0;
            }
            if (1 <= length2 && length2 < string$default.length() && Character.isHighSurrogate(string$default.charAt(length2 - 1)) && Character.isLowSurrogate(string$default.charAt(length2))) {
                length2++;
            }
            sb.append(string$default.substring(length2));
            string$default = sb.toString();
        }
        vr6.a logColor = jv6Var.getLogColor();
        if (logColor != null) {
            int i2 = zr6.a[logColor.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    iR = sz8.w(k28Var);
                } else if (i2 == 3) {
                    k28Var.getClass();
                    iR = io4.c(k28Var, k28Var.getColor(R.color.ambrdark));
                } else {
                    if (i2 != 4) {
                        q.j();
                        return;
                    }
                    iR = sz8.r(k28Var);
                }
            }
        } else if (jv6Var.getMessageType() == 6) {
            iR = sz8.r(k28Var);
        }
        textView.setTextColor(iR);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (jv6Var.getMessageType() == 5) {
            StyleSpan styleSpan = new StyleSpan(1);
            int length3 = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) string$default);
            spannableStringBuilder.setSpan(styleSpan, length3, spannableStringBuilder.length(), 17);
        } else {
            spannableStringBuilder.append((CharSequence) string$default);
        }
        textView.setText(spannableStringBuilder);
        if (bs6Var.m) {
            sz8.d0(as6Var.w, i == bs6Var.b() - 1);
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.slog_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.extra_bottom_space;
        View viewU = ms8.u(view, R.id.extra_bottom_space);
        if (viewU != null) {
            i2 = R.id.text_views;
            if (((LinearLayout) ms8.u(view, R.id.text_views)) != null) {
                i2 = R.id.tv_message;
                TextView textView = (TextView) ms8.u(view, R.id.tv_message);
                if (textView != null) {
                    i2 = R.id.tv_time;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_time);
                    if (textView2 != null) {
                        return new as6(this, new kc((LinearLayout) view, viewU, textView, textView2, 5));
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
