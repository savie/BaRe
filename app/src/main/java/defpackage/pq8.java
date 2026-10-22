package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pq8 extends ArrayAdapter {
    public final LayoutInflater a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq8(Context context, List list) {
        super(context, R.layout.s3_provider_dropdown_item, list);
        list.getClass();
        this.a = LayoutInflater.from(context);
    }

    public final View a(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.a.inflate(R.layout.s3_provider_dropdown_item, viewGroup, false);
        }
        oq8 oq8Var = (oq8) getItem(i);
        if (oq8Var == null) {
            oq8Var = oq8.i;
        }
        View viewFindViewById = view.findViewById(R.id.divider);
        viewFindViewById.getClass();
        sz8.d0(viewFindViewById, pe4.d(el1.V0(i, oq8.m), el1.U0(oq8.l)));
        View viewFindViewById2 = view.findViewById(R.id.iv_icon);
        viewFindViewById2.getClass();
        int i2 = oq8Var.c;
        String str = oq8Var.b;
        y13.D((ImageView) viewFindViewById2, i2, str, 3.0f);
        ((TextView) view.findViewById(R.id.tv_title)).setText(str);
        return view;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        viewGroup.getClass();
        return a(i, view, viewGroup);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        viewGroup.getClass();
        return a(i, view, viewGroup);
    }
}
