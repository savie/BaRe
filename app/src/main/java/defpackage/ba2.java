package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ba2 extends hg6 {
    public final List d;
    public final boolean e;
    public qt3 f;

    public ba2(List list, boolean z) {
        list.getClass();
        this.d = list;
        this.e = z;
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.d.size();
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        aa2 aa2Var = (aa2) fh6Var;
        d71 d71Var = (d71) this.d.get(i);
        d71Var.getClass();
        View view = aa2Var.a;
        view.getClass();
        z92 z92Var = new z92(aa2Var.u, i);
        Context context = view.getContext();
        context.getClass();
        int iC = io4.c(context, context.getColor(d71Var.d));
        MaterialButton materialButton = (MaterialButton) view.findViewById(R.id.btn);
        materialButton.setBackgroundColor(sz8.U(iC, 5));
        materialButton.setStrokeColor(sz8.h0(sz8.U(iC, 20)));
        int i2 = d71Var.c;
        String str = d71Var.b;
        w01 w01Var = new w01(5, z92Var, view);
        str.getClass();
        ImageView imageView = (ImageView) view.findViewById(R.id.image_icon);
        imageView.setImageResource(i2);
        imageView.setImageTintList(ColorStateList.valueOf(iC));
        imageView.setBackgroundTintList(ColorStateList.valueOf(xl1.g(iC, 75)));
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(R.id.btn);
        materialButton2.setText(str);
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(xl1.g(iC, 77));
        colorStateListValueOf.getClass();
        materialButton2.setRippleColor(colorStateListValueOf);
        materialButton2.setOnClickListener(new g7(w01Var, 16));
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.e ? R.layout.dash_shortcut_item_compact : R.layout.dash_shortcut_item_normal, viewGroup, false);
        viewInflate.getClass();
        return new aa2(this, viewInflate);
    }
}
