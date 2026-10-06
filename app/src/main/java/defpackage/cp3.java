package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cp3 extends gm7 {
    public final boolean l;
    public final boolean m;
    public jp3 n;

    public /* synthetic */ cp3(int i) {
        this((i & 1) == 0, false);
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, final int i) {
        bp3 bp3Var = (bp3) fh6Var;
        final zk3 zk3Var = (zk3) m(i);
        View view = bp3Var.D;
        zk3Var.getClass();
        Context context = bp3Var.a.getContext();
        TextView textView = bp3Var.x;
        int i2 = bp3Var.E;
        textView.setTextColor(i2);
        FolderItem folderItem = zk3Var.a;
        textView.setText(folderItem.getSourceFolder());
        bp3Var.y.setText(folderItem.getDisplayName());
        TextView textView2 = bp3Var.z;
        final cp3 cp3Var = bp3Var.F;
        boolean z = cp3Var.m;
        if (z) {
            sz8.W(textView2);
        } else {
            sz8.c0(textView2);
            long j = zk3Var.b;
            Long lValueOf = Long.valueOf(j);
            if (j <= 0) {
                lValueOf = null;
            }
            if (lValueOf != null) {
                textView2.setText(context.getString(R.string.last_backup) + ": " + Const.s(lValueOf.longValue()));
                textView2.setTextColor(sz8.w(context));
            } else {
                textView2.setText(context.getString(R.string.no_backup_on_device));
                textView2.setTextColor(i2);
            }
        }
        TextView textView3 = bp3Var.A;
        if (!z && zm5.q().a == xk3.SetupDate) {
            sz8.c0(textView3);
            textView3.setTextColor(i2);
            long setupCreationTime = folderItem.getSetupCreationTime();
            String string = context.getString(R.string.folder_setup_creation_date);
            string.getClass();
            textView3.setText(string + ": " + Const.s(setupCreationTime));
        } else {
            sz8.W(textView3);
        }
        jp3 jp3Var = cp3Var.n;
        ImageView imageView = bp3Var.C;
        int i3 = 1;
        if (jp3Var != null) {
            sz8.c0(imageView);
            sz8.c0(view);
            view.setOnClickListener(new jr(jp3Var, bp3Var, zk3Var, i3));
        } else {
            sz8.W(imageView);
            sz8.W(view);
            view.setOnClickListener(null);
        }
        bp3Var.s(zk3Var);
        boolean z2 = cp3Var.l;
        View view2 = bp3Var.w;
        if (z2) {
            view2.setOnClickListener(new cn3(i3, bp3Var, cp3Var, zk3Var));
        } else {
            view2.setOnClickListener(new View.OnClickListener() { // from class: ap3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    qt3 qt3Var = this.a.j;
                    if (qt3Var != null) {
                        qt3Var.invoke(zk3Var, Integer.valueOf(i));
                    }
                }
            });
        }
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.folders_dash_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        int i2 = R.id.cb;
        MCheckBox mCheckBox = (MCheckBox) ms8.u(view, R.id.cb);
        if (mCheckBox != null) {
            i2 = R.id.click_listener;
            View viewU = ms8.u(view, R.id.click_listener);
            if (viewU != null) {
                ListItemLayout listItemLayout = (ListItemLayout) view;
                i2 = R.id.content_container;
                if (((ConstraintLayout) ms8.u(view, R.id.content_container)) != null) {
                    i2 = R.id.image_icon;
                    if (((ImageView) ms8.u(view, R.id.image_icon)) != null) {
                        i2 = R.id.item_card;
                        SwiftListItemCardView swiftListItemCardView = (SwiftListItemCardView) ms8.u(view, R.id.item_card);
                        if (swiftListItemCardView != null) {
                            i2 = R.id.iv_menu;
                            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_menu);
                            if (imageView != null) {
                                i2 = R.id.iv_menu_click_listener;
                                View viewU2 = ms8.u(view, R.id.iv_menu_click_listener);
                                if (viewU2 != null) {
                                    i2 = R.id.space_bottom;
                                    if (((Space) ms8.u(view, R.id.space_bottom)) != null) {
                                        i2 = R.id.space_top;
                                        if (((Space) ms8.u(view, R.id.space_top)) != null) {
                                            i2 = R.id.tv_subtitle1;
                                            TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle1);
                                            if (textView != null) {
                                                i2 = R.id.tv_subtitle2;
                                                TextView textView2 = (TextView) ms8.u(view, R.id.tv_subtitle2);
                                                if (textView2 != null) {
                                                    i2 = R.id.tv_subtitle3;
                                                    TextView textView3 = (TextView) ms8.u(view, R.id.tv_subtitle3);
                                                    if (textView3 != null) {
                                                        i2 = R.id.tv_title;
                                                        TextView textView4 = (TextView) ms8.u(view, R.id.tv_title);
                                                        if (textView4 != null) {
                                                            return new bp3(this, new op3(listItemLayout, mCheckBox, viewU, swiftListItemCardView, imageView, viewU2, textView, textView2, textView3, textView4));
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
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }

    public cp3(boolean z, boolean z2) {
        super(null);
        this.l = z;
        this.m = z2;
    }
}
