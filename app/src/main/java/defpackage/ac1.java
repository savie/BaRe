package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.listitem.ListItemLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.ProviderChipGroup;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ac1 extends gm7 {
    public final il0 l;
    public final xf m;

    public ac1(il0 il0Var, xf xfVar) {
        super(null);
        this.l = il0Var;
        this.m = xfVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        boolean z;
        final zb1 zb1Var = (zb1) fh6Var;
        final bc1 bc1Var = (bc1) m(i);
        bc1Var.getClass();
        List<dc1> list = bc1Var.d;
        dd1 dd1Var = bc1Var.a;
        final ac1 ac1Var = zb1Var.D;
        boolean zQ = ac1Var.q(bc1Var);
        SwiftListItemCardView swiftListItemCardView = zb1Var.v;
        int i2 = 1;
        swiftListItemCardView.setCheckable(true);
        swiftListItemCardView.setChecked(zQ);
        TextView textView = zb1Var.w;
        StringBuilder sb = new StringBuilder();
        sb.append(dd1Var.getDisplayName());
        if (dd1Var.getReleaseState().compareTo(xi6.Production) < 0) {
            sb.append(" (" + dd1Var.getReleaseState().getDisplayString() + ")");
        }
        textView.setText(sb.toString());
        TextView textView2 = zb1Var.x;
        String str = bc1Var.b;
        sz8.d0(textView2, !(str == null || str.length() == 0));
        if (sz8.I(textView2)) {
            textView2.setText(str);
        }
        TextView textView3 = zb1Var.y;
        String str2 = bc1Var.c;
        sz8.d0(textView3, !(str2 == null || str2.length() == 0));
        if (sz8.I(textView3)) {
            textView3.setText(str2);
        }
        zb1Var.z.setImageResource(dd1Var.getBrandingIconRes());
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((dc1) it.next()).c) {
                        if (!zQ) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                break;
            }
        }
        z = false;
        break;
        FlexboxLayout flexboxLayout = zb1Var.A;
        flexboxLayout.removeAllViews();
        sz8.d0(flexboxLayout, z);
        if (z) {
            int dimensionPixelSize = flexboxLayout.getResources().getDimensionPixelSize(R.dimen.s3_provider_collapsed_icon_size);
            int dimensionPixelSize2 = flexboxLayout.getResources().getDimensionPixelSize(R.dimen.spacing_low);
            ArrayList<dc1> arrayList = new ArrayList();
            for (Object obj : list) {
                if (((dc1) obj).c) {
                    arrayList.add(obj);
                }
            }
            for (dc1 dc1Var : arrayList) {
                ImageView imageView = new ImageView(flexboxLayout.getContext());
                y13.D(imageView, dc1Var.b, dc1Var.a, 2.0f);
                sh3 sh3Var = new sh3(new ViewGroup.LayoutParams(dimensionPixelSize, dimensionPixelSize));
                sh3Var.a = 1;
                sh3Var.b = 0.0f;
                sh3Var.c = 1.0f;
                sh3Var.d = -1;
                sh3Var.e = -1.0f;
                sh3Var.f = -1;
                sh3Var.k = -1;
                sh3Var.n = 16777215;
                sh3Var.p = 16777215;
                sh3Var.setMargins(0, dimensionPixelSize2, dimensionPixelSize2, 0);
                imageView.setLayoutParams(sh3Var);
                flexboxLayout.addView(imageView);
            }
        }
        boolean z2 = !list.isEmpty() && zQ;
        ProviderChipGroup providerChipGroup = zb1Var.B;
        sz8.d0(providerChipGroup, z2);
        if (z2) {
            ArrayList arrayList2 = new ArrayList(hl1.G0(list, 10));
            for (dc1 dc1Var2 : list) {
                arrayList2.add(new ha6(dc1Var2.a, dc1Var2.b));
            }
            providerChipGroup.setChips(arrayList2);
        } else {
            providerChipGroup.setChips(ov2.a);
        }
        MaterialButton materialButton = zb1Var.C;
        sz8.d0(materialButton, zQ);
        materialButton.setEnabled(dd1Var.getSupportsCurrentAndroidSdk());
        materialButton.setOnClickListener((materialButton.isEnabled() && zQ) ? new h10(i2, ac1Var, bc1Var) : null);
        final boolean supportsCurrentAndroidSdk = dd1Var.getSupportsCurrentAndroidSdk();
        zb1Var.a.setEnabled(supportsCurrentAndroidSdk);
        swiftListItemCardView.setEnabled(supportsCurrentAndroidSdk);
        swiftListItemCardView.setAlpha(supportsCurrentAndroidSdk ? 1.0f : 0.5f);
        swiftListItemCardView.setOnClickListener(new View.OnClickListener() { // from class: yb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (supportsCurrentAndroidSdk) {
                    ac1 ac1Var2 = ac1Var;
                    bc1 bc1Var2 = bc1Var;
                    if (!ac1Var2.q(bc1Var2)) {
                        zb1Var.D.l.y(new Class[0]);
                    }
                    ac1Var2.t(sz8.Y(bc1Var2.a.getConstant()));
                }
            }
        });
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.cloud_connect_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.btn_connect_service;
        MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.btn_connect_service);
        if (materialButton != null) {
            ListItemLayout listItemLayout = (ListItemLayout) view;
            i2 = R.id.content_container;
            if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
                i2 = R.id.item_card;
                SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                if (swiftListItemCardView != null) {
                    i2 = R.id.iv_icon;
                    ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
                    if (imageView != null) {
                        i2 = R.id.s3_provider_chips;
                        ProviderChipGroup providerChipGroup = (ProviderChipGroup) ms8.u(view, R.id.s3_provider_chips);
                        if (providerChipGroup != null) {
                            i2 = R.id.s3_provider_icons;
                            FlexboxLayout flexboxLayout = (FlexboxLayout) ms8.u(view, R.id.s3_provider_icons);
                            if (flexboxLayout != null) {
                                i2 = R.id.tv_subtitle;
                                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                                if (textView != null) {
                                    i2 = R.id.tv_title;
                                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                                    if (textView2 != null) {
                                        i2 = R.id.tv_warning;
                                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_warning);
                                        if (textView3 != null) {
                                            return new zb1(this, new cc1(listItemLayout, materialButton, swiftListItemCardView, imageView, providerChipGroup, flexboxLayout, textView, textView2, textView3));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
