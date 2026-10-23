package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ad6 extends cd6 {
    public final Group A;
    public final MaterialButton B;
    public final MaterialButton C;
    public final /* synthetic */ dd6 D;
    public final SwiftListItemCardView v;
    public final ImageView w;
    public final ImageView x;
    public final TextView y;
    public final TextView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad6(dd6 dd6Var, View view) {
        super(view);
        this.D = dd6Var;
        int i = R.id.barrier_bottom;
        if (((Barrier) ms8.u(view, R.id.barrier_bottom)) != null) {
            i = R.id.barrier_for_buttons;
            if (((Barrier) ms8.u(view, R.id.barrier_for_buttons)) != null) {
                i = R.id.bottom_view;
                Group group = (Group) ms8.u(view, R.id.bottom_view);
                if (group != null) {
                    i = R.id.btn_from_cloud;
                    MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_from_cloud);
                    if (materialButton != null) {
                        i = R.id.btn_from_local;
                        MaterialButton materialButton2 = (MaterialButton) ms8.u(view, R.id.btn_from_local);
                        if (materialButton2 != null) {
                            i = R.id.content_container;
                            if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
                                i = R.id.item_card;
                                SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                                if (swiftListItemCardView != null) {
                                    i = R.id.iv_pin;
                                    ImageView imageView = (ImageView) ms8.u(view, R.id.iv_pin);
                                    if (imageView != null) {
                                        i = R.id.iv_root_needed;
                                        ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_root_needed);
                                        if (imageView2 != null) {
                                            i = R.id.space_bottom;
                                            if (((Space) ms8.u(view, R.id.space_bottom)) != null) {
                                                i = R.id.tv_subtitle1;
                                                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                                                if (textView != null) {
                                                    i = R.id.tv_title;
                                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                                                    if (textView2 != null) {
                                                        this.v = swiftListItemCardView;
                                                        this.w = imageView2;
                                                        this.x = imageView;
                                                        this.y = textView2;
                                                        this.z = textView;
                                                        this.A = group;
                                                        this.B = materialButton2;
                                                        this.C = materialButton;
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
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0025  */
    @Override // defpackage.cd6
    public final void s(zc6 zc6Var, int i) {
        int i2;
        zc6Var.getClass();
        int i3 = zc6Var.d;
        boolean z = zc6Var.t;
        boolean z2 = zc6Var.f;
        ImageView imageView = this.w;
        sz8.d0(imageView, z2);
        boolean zI = sz8.I(imageView);
        dd6 dd6Var = this.D;
        if (zI) {
            if (z2) {
                mp6 mp6Var = mp6.a;
                if (mp6.f()) {
                    i2 = R.attr.colorPrimary;
                } else {
                    i2 = R.attr.colorError2;
                }
            } else {
                i2 = R.attr.colorError2;
            }
            Context context = imageView.getContext();
            context.getClass();
            imageView.setBackgroundTintList(sz8.h0(io4.d(context, i2)));
            imageView.setOnClickListener(new gs(dd6Var, 8));
        }
        boolean z3 = dd6Var.m;
        ImageView imageView2 = this.x;
        sz8.d0(imageView2, z3);
        int i4 = 3;
        float f = 1.0f;
        if (sz8.I(imageView2)) {
            imageView2.setImageResource(z ? R.drawable.ic_pin_full : R.drawable.ic_pin_outline);
            sa1 sa1Var = dd6Var.l;
            imageView2.setImageTintList(sz8.h0(z ? io4.d(sa1Var, R.attr.colorPrimary) : sz8.A(sa1Var)));
            imageView2.setAlpha(z ? 1.0f : 0.5f);
            imageView2.setOnClickListener(new ll3(i4, dd6Var, zc6Var));
        }
        this.y.setText(zc6Var.c);
        TextView textView = this.z;
        if (i3 > 0) {
            sz8.c0(textView);
            textView.setText(i3);
        } else {
            sz8.W(textView);
        }
        boolean zG = zc6Var.g();
        int i5 = R.style.M3ButtonTonal;
        int i6 = zG ? 2132017510 : R.style.M3ButtonTonal;
        MaterialButton materialButton = this.B;
        sz8.a0(materialButton, i6);
        materialButton.setText(zc6.q(zc6Var, false, false, 3583).n ? R.string.from_device : R.string.to_device);
        if (zc6Var.g()) {
            i5 = 2132017510;
        }
        MaterialButton materialButton2 = this.C;
        sz8.a0(materialButton2, i5);
        int i7 = 1;
        materialButton2.setText(zc6.q(zc6Var, true, false, 3583).n ? R.string.from_cloud : R.string.to_cloud);
        sz8.d0(this.A, zc6Var.k);
        if (z2) {
            mp6 mp6Var2 = mp6.a;
            if (!mp6.f()) {
                f = 0.6f;
            }
        }
        SwiftListItemCardView swiftListItemCardView = this.v;
        swiftListItemCardView.setAlpha(f);
        swiftListItemCardView.setOnClickListener(new mi0(zc6Var, i, i7, dd6Var));
        materialButton.setOnClickListener(new ri(zc6Var, i, i4, dd6Var));
        materialButton2.setOnClickListener(new p10(zc6Var, i, i7, dd6Var));
    }
}
