package defpackage;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.slider.Slider;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cj5 implements jk8 {
    public final MaterialCardView a;
    public final LinearLayoutCompat b;
    public final ConstraintLayout c;
    public final MaterialRadioButton d;
    public final MaterialRadioButton e;
    public final MaterialRadioButton f;
    public final RadioGroup k;
    public final Slider n;
    public final TextView p;
    public final TextView q;
    public final TextView r;

    public cj5(MaterialCardView materialCardView, LinearLayoutCompat linearLayoutCompat, ConstraintLayout constraintLayout, MaterialRadioButton materialRadioButton, MaterialRadioButton materialRadioButton2, MaterialRadioButton materialRadioButton3, RadioGroup radioGroup, Slider slider, TextView textView, TextView textView2, TextView textView3) {
        this.a = materialCardView;
        this.b = linearLayoutCompat;
        this.c = constraintLayout;
        this.d = materialRadioButton;
        this.e = materialRadioButton2;
        this.f = materialRadioButton3;
        this.k = radioGroup;
        this.n = slider;
        this.p = textView;
        this.q = textView2;
        this.r = textView3;
    }

    public static cj5 a(View view) {
        MaterialCardView materialCardView = (MaterialCardView) view;
        int i = R.id.container_conditions;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ms8.u(view, R.id.container_conditions);
        if (linearLayoutCompat != null) {
            i = R.id.container_slider;
            ConstraintLayout constraintLayout = (ConstraintLayout) ms8.u(view, R.id.container_slider);
            if (constraintLayout != null) {
                i = R.id.rb_any_change;
                MaterialRadioButton materialRadioButton = (MaterialRadioButton) ms8.u(view, R.id.rb_any_change);
                if (materialRadioButton != null) {
                    i = R.id.rb_apk_changes;
                    MaterialRadioButton materialRadioButton2 = (MaterialRadioButton) ms8.u(view, R.id.rb_apk_changes);
                    if (materialRadioButton2 != null) {
                        i = R.id.rb_data_changes;
                        MaterialRadioButton materialRadioButton3 = (MaterialRadioButton) ms8.u(view, R.id.rb_data_changes);
                        if (materialRadioButton3 != null) {
                            i = R.id.rg_conditions;
                            RadioGroup radioGroup = (RadioGroup) ms8.u(view, R.id.rg_conditions);
                            if (radioGroup != null) {
                                i = R.id.slider_num_of_backups;
                                Slider slider = (Slider) ms8.u(view, R.id.slider_num_of_backups);
                                if (slider != null) {
                                    i = R.id.tv_conditions_title;
                                    if (((TextView) ms8.u(view, R.id.tv_conditions_title)) != null) {
                                        i = R.id.tv_num_of_backups;
                                        TextView textView = (TextView) ms8.u(view, R.id.tv_num_of_backups);
                                        if (textView != null) {
                                            i = R.id.tv_slider_title;
                                            if (((TextView) ms8.u(view, R.id.tv_slider_title)) != null) {
                                                i = R.id.tv_subtitle;
                                                TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle);
                                                if (textView2 != null) {
                                                    i = R.id.tv_title;
                                                    TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                                                    if (textView3 != null) {
                                                        return new cj5(materialCardView, linearLayoutCompat, constraintLayout, materialRadioButton, materialRadioButton2, materialRadioButton3, radioGroup, slider, textView, textView2, textView3);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
