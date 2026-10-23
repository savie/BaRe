package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ln3 extends u35 {
    public static final /* synthetic */ int b0 = 0;
    public final il0 Q;
    public final String R;
    public final boolean S;
    public final mt3 T;
    public final gv7 U;
    public final gv7 V;
    public final gv7 W;
    public final gv7 X;
    public FolderRestoreStrategy Y;
    public q63 Z;
    public qt3 a0;

    public ln3(il0 il0Var, String str, boolean z, mt3 mt3Var) {
        str.getClass();
        Object obj = null;
        View viewInflate = View.inflate(il0Var, R.layout.folder_restore_dialog, null);
        int i = R.id.btn_action;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_action);
        if (materialButton != null) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
            i = R.id.restore_location;
            View viewU = ms8.u(viewInflate, R.id.restore_location);
            if (viewU != null) {
                int i2 = R.id.btn_restore_location_action;
                ImageButton imageButton = (ImageButton) ms8.u(viewU, R.id.btn_restore_location_action);
                if (imageButton != null) {
                    MaterialCardView materialCardView = (MaterialCardView) viewU;
                    i2 = R.id.tv_path;
                    TextView textView = (TextView) ms8.u(viewU, R.id.tv_path);
                    if (textView != null) {
                        i2 = R.id.tv_title;
                        TextView textView2 = (TextView) ms8.u(viewU, R.id.tv_title);
                        if (textView2 != null) {
                            fp1 fp1Var = new fp1(materialCardView, imageButton, materialCardView, textView, textView2);
                            i = R.id.strategy_merge;
                            View viewU2 = ms8.u(viewInflate, R.id.strategy_merge);
                            if (viewU2 != null) {
                                cp1 cp1VarE = cp1.e(viewU2);
                                i = R.id.strategy_missing;
                                View viewU3 = ms8.u(viewInflate, R.id.strategy_missing);
                                if (viewU3 != null) {
                                    cp1 cp1VarE2 = cp1.e(viewU3);
                                    i = R.id.strategy_replace;
                                    View viewU4 = ms8.u(viewInflate, R.id.strategy_replace);
                                    if (viewU4 != null) {
                                        cp1 cp1VarE3 = cp1.e(viewU4);
                                        i = R.id.tv_restore_location_section_title;
                                        TextView textView3 = (TextView) ms8.u(viewInflate, R.id.tv_restore_location_section_title);
                                        if (textView3 != null) {
                                            super(il0Var, new mn3(nestedScrollView, materialButton, fp1Var, cp1VarE, cp1VarE2, cp1VarE3, textView3), 12);
                                            this.Q = il0Var;
                                            this.R = str;
                                            this.S = z;
                                            this.T = mt3Var;
                                            this.U = new gv7(new dk(this, 27));
                                            this.V = new gv7(new kn3(this, 0));
                                            this.W = new gv7(new ah(this, 28));
                                            this.X = new gv7(new bh(this, 26));
                                            z3 z3Var = (z3) FolderRestoreStrategy.getEntries();
                                            z3Var.getClass();
                                            w3 w3Var = new w3(z3Var);
                                            while (w3Var.hasNext()) {
                                                Object next = w3Var.next();
                                                if (((FolderRestoreStrategy) next).isCheckedInExpansion()) {
                                                    obj = next;
                                                    break;
                                                }
                                            }
                                            FolderRestoreStrategy folderRestoreStrategy = (FolderRestoreStrategy) obj;
                                            if (folderRestoreStrategy == null) {
                                                FolderRestoreStrategy.Companion.getClass();
                                                folderRestoreStrategy = FolderRestoreStrategy.MISSING_ONLY;
                                            }
                                            this.Y = folderRestoreStrategy;
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewU.getResources().getResourceName(i2)));
                throw null;
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    public final void j(ao3 ao3Var, FolderRestoreStrategy folderRestoreStrategy) {
        ao3Var.a(folderRestoreStrategy.getTitleStringRes(), folderRestoreStrategy.getDescriptionStringRes(), this.Y == folderRestoreStrategy, false, false, new rm(7, this, folderRestoreStrategy));
    }

    public final void k() {
        for (FolderRestoreStrategy folderRestoreStrategy : FolderRestoreStrategy.getEntries()) {
            folderRestoreStrategy.setCheckedInExpansion(folderRestoreStrategy == this.Y);
        }
        qt3 qt3Var = this.a0;
        if (qt3Var == null) {
            pe4.F("onConfirm");
            throw null;
        }
        FolderRestoreStrategy folderRestoreStrategy2 = this.Y;
        q63 q63Var = this.Z;
        qt3Var.invoke(folderRestoreStrategy2, q63Var != null ? q63Var.v() : null);
        dismiss();
    }

    public final void l() {
        int iC;
        int color;
        int iZ;
        j((ao3) this.U.getValue(), FolderRestoreStrategy.MISSING_ONLY);
        j((ao3) this.V.getValue(), FolderRestoreStrategy.OVERWRITE);
        j((ao3) this.W.getValue(), FolderRestoreStrategy.FULL_RESTORE);
        mn3 mn3Var = (mn3) this.K;
        TextView textView = mn3Var.k;
        boolean z = this.S;
        textView.setVisibility(z ? 0 : 8);
        ((MaterialCardView) mn3Var.c.a).setVisibility(z ? 0 : 8);
        if (z) {
            q63 q63Var = this.Z;
            final boolean z2 = q63Var != null;
            final String strV = q63Var != null ? q63Var.v() : this.R;
            int i = z2 ? R.string.folder_restore_custom_location : R.string.folder_restore_original_location;
            int i2 = z2 ? R.drawable.ic_restart : R.drawable.ic_edit_pencil;
            int i3 = z2 ? R.string.reset : R.string.select_folder;
            fp1 fp1Var = mn3Var.c;
            MaterialCardView materialCardView = (MaterialCardView) fp1Var.a;
            if (this.Q.v()) {
                Context context = materialCardView.getContext();
                context.getClass();
                iC = z85.p(context, io4.c(context, Color.parseColor("#FBC02D"))).a;
            } else {
                Context context2 = materialCardView.getContext();
                context2.getClass();
                iC = io4.c(context2, context2.getColor(R.color.org));
            }
            MaterialCardView materialCardView2 = (MaterialCardView) fp1Var.c;
            TextView textView2 = (TextView) fp1Var.e;
            materialCardView2.setCardBackgroundColor(z2 ? sz8.U(iC, 10) : 0);
            materialCardView2.setStrokeWidth(tu0.v(materialCardView2.getContext().getResources().getDimension(R.dimen.card_stroke_width)));
            if (z2) {
                color = iC;
            } else {
                Context context3 = materialCardView2.getContext();
                context3.getClass();
                color = context3.getColor(sz8.y(context3, R.attr.chipStrokeColor));
            }
            materialCardView2.setStrokeColor(color);
            materialCardView2.setOnClickListener(new fr(6, this, strV));
            if (z2) {
                iZ = iC;
            } else {
                Context context4 = materialCardView.getContext();
                context4.getClass();
                iZ = sz8.z(context4);
            }
            textView2.setTextColor(iZ);
            textView2.setText(i);
            ((TextView) fp1Var.d).setText(strV);
            ImageButton imageButton = (ImageButton) fp1Var.b;
            imageButton.setImageResource(i2);
            imageButton.setContentDescription(materialCardView.getContext().getString(i3));
            if (!z2) {
                Context context5 = materialCardView.getContext();
                context5.getClass();
                iC = sz8.A(context5);
            }
            imageButton.setImageTintList(sz8.h0(iC));
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: jn3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z3 = z2;
                    ln3 ln3Var = this;
                    if (!z3) {
                        ln3Var.T.invoke(strV);
                    } else {
                        ln3Var.Z = null;
                        ln3Var.l();
                    }
                }
            });
            ((MaterialButton) this.X.getValue()).setText(z2 ? R.string.folder_restore_to_custom_location : R.string.restore);
        }
    }
}
