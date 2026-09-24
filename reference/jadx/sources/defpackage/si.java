package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class si extends vi {
    public final ImageView A;
    public final SwiftBackupMaterialSwitch B;
    public final /* synthetic */ wi C;
    public final View u;
    public final TextView v;
    public final TextView w;
    public final View x;
    public final ImageView y;
    public final QuickRecyclerView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si(wi wiVar, View view) {
        super(view);
        this.C = wiVar;
        o(false);
        int i = R.id.click_listener;
        View viewU = ms8.u(view, R.id.click_listener);
        if (viewU != null) {
            i = R.id.content;
            if (((LinearLayout) ms8.u(view, R.id.content)) != null) {
                i = R.id.divider;
                View viewU2 = ms8.u(view, R.id.divider);
                if (viewU2 != null) {
                    i = R.id.image_icon;
                    ImageView imageView = (ImageView) ms8.u(view, R.id.image_icon);
                    if (imageView != null) {
                        i = R.id.image_icon_help;
                        ImageView imageView2 = (ImageView) ms8.u(view, R.id.image_icon_help);
                        if (imageView2 != null) {
                            i = R.id.rv_labels;
                            QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_labels);
                            if (quickRecyclerView != null) {
                                i = R.id.swch;
                                SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(view, R.id.swch);
                                if (swiftBackupMaterialSwitch != null) {
                                    i = R.id.tv_subtitle;
                                    TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                                    if (textView != null) {
                                        i = R.id.tv_title;
                                        TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                                        if (textView2 != null) {
                                            this.u = viewU;
                                            this.v = textView2;
                                            this.w = textView;
                                            this.x = viewU2;
                                            this.y = imageView;
                                            this.z = quickRecyclerView;
                                            this.A = imageView2;
                                            this.B = swiftBackupMaterialSwitch;
                                            return;
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
        throw null;
    }

    @Override // defpackage.vi
    public final void r(pi piVar, int i) {
        ColorStateList colorStateListH0;
        ColorStateList colorStateListH1;
        piVar.getClass();
        ki kiVar = (ki) piVar;
        Integer num = kiVar.g;
        qt3 qt3Var = kiVar.d;
        String str = kiVar.c;
        this.a.setAlpha(1.0f);
        sz8.d0(this.x, kiVar.k);
        String str2 = kiVar.b;
        TextView textView = this.v;
        textView.setText(str2);
        wi wiVar = this.C;
        k28 k28Var = wiVar.f;
        textView.setTextColor(sz8.h0(sz8.z(k28Var)));
        int i2 = 0;
        boolean z = str == null || str.length() == 0;
        TextView textView2 = this.w;
        sz8.d0(textView2, !z);
        if (sz8.I(textView2)) {
            textView2.setText(str);
        }
        int i3 = kiVar.e;
        ImageView imageView = this.y;
        imageView.setImageResource(i3);
        Integer num2 = kiVar.f;
        if (num2 != null) {
            int iIntValue = num2.intValue();
            Context context = imageView.getContext();
            context.getClass();
            colorStateListH0 = sz8.h0(io4.c(context, context.getColor(iIntValue)));
        } else {
            Context context2 = imageView.getContext();
            context2.getClass();
            colorStateListH0 = sz8.h0(sz8.A(context2));
        }
        imageView.setImageTintList(colorStateListH0);
        boolean z2 = qt3Var != null;
        QuickRecyclerView quickRecyclerView = this.z;
        sz8.d0(quickRecyclerView, z2);
        if (qt3Var != null) {
            qt3Var.invoke(quickRecyclerView, Boolean.valueOf(k28Var.v()));
        }
        boolean z3 = num != null;
        ImageView imageView2 = this.A;
        sz8.d0(imageView2, z3);
        if (sz8.I(imageView2)) {
            num.getClass();
            imageView2.setImageResource(num.intValue());
            Integer num3 = kiVar.h;
            if (num3 == null || (colorStateListH1 = k28Var.getColorStateList(num3.intValue())) == null) {
                colorStateListH1 = sz8.h0(sz8.A(k28Var));
            }
            imageView2.setImageTintList(colorStateListH1);
            if (wiVar.g != null) {
                imageView2.setOnClickListener(new qi(i2, wiVar, piVar));
            } else {
                imageView2.setOnClickListener(null);
            }
        }
        SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = this.B;
        swiftBackupMaterialSwitch.setOnCheckedChangeListener(null);
        swiftBackupMaterialSwitch.setClickable(false);
        sz8.d0(swiftBackupMaterialSwitch, kiVar.i);
        if (sz8.I(swiftBackupMaterialSwitch)) {
            swiftBackupMaterialSwitch.setChecked(pe4.d(kiVar.j, Boolean.TRUE));
        }
        this.u.setOnClickListener(new ri(wiVar, i, i2, piVar));
    }
}
