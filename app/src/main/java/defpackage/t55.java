package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class t55 extends gm7 {
    public final int l;

    public t55() {
        super(null);
        this.l = 1;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        if (((u55) m(i)).e) {
            return this.l;
        }
        return 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        String strK;
        s55 s55Var = (s55) fh6Var;
        u55 u55Var = (u55) m(i);
        MaterialButton materialButton = s55Var.x;
        u55Var.getClass();
        TextView textView = s55Var.u;
        String str = u55Var.b;
        textView.setText(str);
        TextView textView2 = s55Var.v;
        Long l = u55Var.c;
        if (l != null) {
            p93 p93Var = p93.a;
            strK = eq3.k(" (", p93.c(l), ")");
        } else {
            strK = "";
        }
        textView2.setText(strK);
        s55Var.w.setText(u55Var.d);
        materialButton.setVisibility(u55Var.f ? 8 : 0);
        if (materialButton.getVisibility() == 0) {
            materialButton.setText(str);
            materialButton.setEnabled(l == null || l.longValue() > 0);
            materialButton.setOnClickListener(materialButton.isEnabled() ? new ti(s55Var.y, i, 3, u55Var) : null);
            materialButton.setAlpha(materialButton.isEnabled() ? 1.0f : 0.5f);
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return i == 0 ? R.layout.manage_space_item_normal : R.layout.manage_space_item_dangerous;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.tv_title;
        if (i == 0) {
            MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_action);
            if (materialButton != null) {
                MaterialCardView materialCardView = (MaterialCardView) view;
                TextView textView = (TextView) ms8.u(view, R.id.tv_size);
                if (textView != null) {
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle1);
                    if (textView2 != null) {
                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new s55(this, new km5(materialCardView, materialButton, textView, textView2, textView3), textView3, textView, textView2, materialButton);
                        }
                    } else {
                        i2 = R.id.tv_subtitle1;
                    }
                } else {
                    i2 = R.id.tv_size;
                }
            } else {
                i2 = R.id.btn_action;
            }
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
            return null;
        }
        MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_action);
        if (materialButton2 != null) {
            MaterialCardView materialCardView2 = (MaterialCardView) view;
            TextView textView4 = (TextView) ms8.u(view, R.id.tv_size);
            if (textView4 != null) {
                TextView textView5 = (TextView) ms8.u(view, R.id.tv_subtitle1);
                if (textView5 != null) {
                    TextView textView6 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView6 != null) {
                        return new s55(this, new tr9(materialCardView2, materialButton2, textView4, textView5, textView6), textView6, textView4, textView5, materialButton2);
                    }
                } else {
                    i2 = R.id.tv_subtitle1;
                }
            } else {
                i2 = R.id.tv_size;
            }
        } else {
            i2 = R.id.btn_action;
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
