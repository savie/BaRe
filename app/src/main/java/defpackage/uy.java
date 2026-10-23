package defpackage;

import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.o;
import androidx.fragment.app.u;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uy extends o {
    public wy a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        Primary,
        Secondary;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public final void i(qy qyVar, TextView textView, TextView textView2, LinearLayout linearLayout, MaterialButton materialButton, MaterialButton materialButton2, FrameLayout frameLayout, boolean z) {
        String string;
        String string2;
        oy oyVar = qyVar.a;
        oy oyVar2 = qyVar.b;
        if (oyVar == null || (string = oy.title$default(oyVar, requireContext(), null, 2, null)) == null) {
            string = getString(R.string.none);
            string.getClass();
        }
        textView.setText(string);
        if (oyVar2 == null || (string2 = oy.title$default(oyVar2, requireContext(), null, 2, null)) == null) {
            string2 = getString(R.string.none);
            string2.getClass();
        }
        textView2.setText(string2);
        linearLayout.setEnabled(oyVar != null);
        linearLayout.setAlpha(oyVar == null ? 0.5f : 1.0f);
        j(materialButton, oyVar);
        j(materialButton2, oyVar2);
        int size = qyVar.a().size() * getResources().getDimensionPixelSize(R.dimen.swipe_preview_action_width);
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        if (layoutParams == null) {
            f6.n("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(z ? 0 : size);
        marginLayoutParams.setMarginEnd(z ? size : 0);
        frameLayout.setLayoutParams(marginLayoutParams);
    }

    public final void j(MaterialButton materialButton, oy oyVar) {
        int iW;
        sz8.d0(materialButton, oyVar != null);
        if (oyVar == null) {
            return;
        }
        int i = vy.b[oyVar.getTone().ordinal()];
        if (i == 1) {
            iW = sz8.w(requireContext());
        } else if (i == 2) {
            iW = sz8.r(requireContext());
        } else {
            if (i != 3) {
                q.j();
                return;
            }
            iW = sz8.x(requireContext());
        }
        materialButton.setIcon(requireContext().getDrawable(oyVar.getIconRes()));
        materialButton.setIconTint(ColorStateList.valueOf(iW));
    }

    public final wy k() {
        wy wyVar = this.a;
        if (wyVar != null) {
            return wyVar;
        }
        c6.f("Required value was null.");
        return null;
    }

    public final void l() {
        i(ho6.o(xy.Right), k().x, k().G, k().y, k().q, k().r, k().p, false);
        i(ho6.o(xy.Left), k().f, k().n, k().k, k().c, k().d, k().b, true);
    }

    public final void m(final xy xyVar, final a aVar) {
        oy oyVar;
        String string;
        final qy qyVarO = ho6.o(xyVar);
        final ArrayList<oy> arrayListG1 = el1.g1(nc8.I(null), oy.getEntries());
        int i = vy.a[aVar.ordinal()];
        if (i == 1) {
            oyVar = qyVarO.a;
        } else {
            if (i != 2) {
                q.j();
                return;
            }
            oyVar = qyVarO.b;
        }
        final jh6 jh6Var = new jh6();
        int iIndexOf = arrayListG1.indexOf(oyVar);
        int i2 = 0;
        if (iIndexOf < 0) {
            iIndexOf = 0;
        }
        jh6Var.a = iIndexOf;
        u uVarRequireActivity = requireActivity();
        s35 s35Var = new s35(uVarRequireActivity, R.style.M3AlertDialogTheme, new hv1(uVarRequireActivity, R.style.M3AlertDialogTheme), null);
        s35Var.v(aVar == a.Primary ? R.string.primary_action : R.string.secondary_action);
        ArrayList arrayList = new ArrayList(hl1.G0(arrayListG1, 10));
        for (oy oyVar2 : arrayListG1) {
            if (oyVar2 == null || (string = oy.title$default(oyVar2, requireContext(), null, 2, null)) == null) {
                string = getString(R.string.none);
                string.getClass();
            }
            arrayList.add(string);
        }
        s35Var.u((CharSequence[]) arrayList.toArray(new String[0]), jh6Var.a, new sy(jh6Var, i2));
        s35Var.s(R.string.ok, new DialogInterface.OnClickListener() { // from class: ty
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                qy qyVar = qyVarO;
                oy oyVar3 = qyVar.b;
                oy oyVar4 = qyVar.a;
                oy oyVar5 = (oy) arrayListG1.get(jh6Var.a);
                int i4 = vy.a[aVar.ordinal()];
                oy oyVar6 = null;
                int i5 = 2;
                if (i4 != 1) {
                    if (i4 != 2) {
                        q.j();
                        return;
                    }
                    if (oyVar5 == null) {
                        qyVar = qy.b(qyVar, null, null, 1);
                    } else if (oyVar4 == null) {
                        qyVar = new qy(oyVar5, i5);
                    } else if (oyVar5 != oyVar4) {
                        qyVar = qy.b(qyVar, null, oyVar5, 1);
                    } else if (oyVar3 != null) {
                        qyVar = new qy(oyVar3, oyVar5);
                    }
                } else if (oyVar5 == null) {
                    qyVar = new qy(oyVar6, 3);
                } else {
                    qyVar = oyVar5 == oyVar3 ? new qy(oyVar5, oyVar4) : qy.b(qyVar, oyVar5, null, 2);
                }
                ho6.S(xyVar, qyVar);
                this.l();
            }
        });
        s35Var.q(R.string.cancel, null);
        s35Var.m();
    }

    @Override // androidx.fragment.app.o
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.app_swipe_actions_fragment, viewGroup, false);
        int i = R.id.left_preview_content;
        FrameLayout frameLayout = (FrameLayout) ms8.u(viewInflate, R.id.left_preview_content);
        if (frameLayout != null) {
            i = R.id.left_preview_primary;
            MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.left_preview_primary);
            if (materialButton != null) {
                i = R.id.left_preview_secondary;
                MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.left_preview_secondary);
                if (materialButton2 != null) {
                    i = R.id.left_primary_action;
                    LinearLayout linearLayout = (LinearLayout) ms8.u(viewInflate, R.id.left_primary_action);
                    if (linearLayout != null) {
                        i = R.id.left_primary_value;
                        TextView textView = (TextView) ms8.u(viewInflate, R.id.left_primary_value);
                        if (textView != null) {
                            i = R.id.left_secondary_action;
                            LinearLayout linearLayout2 = (LinearLayout) ms8.u(viewInflate, R.id.left_secondary_action);
                            if (linearLayout2 != null) {
                                i = R.id.left_secondary_value;
                                TextView textView2 = (TextView) ms8.u(viewInflate, R.id.left_secondary_value);
                                if (textView2 != null) {
                                    i = R.id.left_swipe_preview;
                                    if (((MaterialCardView) ms8.u(viewInflate, R.id.left_swipe_preview)) != null) {
                                        i = R.id.right_preview_content;
                                        FrameLayout frameLayout2 = (FrameLayout) ms8.u(viewInflate, R.id.right_preview_content);
                                        if (frameLayout2 != null) {
                                            i = R.id.right_preview_primary;
                                            MaterialButton materialButton3 = (MaterialButton) ms8.u(viewInflate, R.id.right_preview_primary);
                                            if (materialButton3 != null) {
                                                i = R.id.right_preview_secondary;
                                                MaterialButton materialButton4 = (MaterialButton) ms8.u(viewInflate, R.id.right_preview_secondary);
                                                if (materialButton4 != null) {
                                                    i = R.id.right_primary_action;
                                                    LinearLayout linearLayout3 = (LinearLayout) ms8.u(viewInflate, R.id.right_primary_action);
                                                    if (linearLayout3 != null) {
                                                        i = R.id.right_primary_value;
                                                        TextView textView3 = (TextView) ms8.u(viewInflate, R.id.right_primary_value);
                                                        if (textView3 != null) {
                                                            i = R.id.right_secondary_action;
                                                            LinearLayout linearLayout4 = (LinearLayout) ms8.u(viewInflate, R.id.right_secondary_action);
                                                            if (linearLayout4 != null) {
                                                                i = R.id.right_secondary_value;
                                                                TextView textView4 = (TextView) ms8.u(viewInflate, R.id.right_secondary_value);
                                                                if (textView4 != null) {
                                                                    i = R.id.right_swipe_preview;
                                                                    if (((MaterialCardView) ms8.u(viewInflate, R.id.right_swipe_preview)) != null) {
                                                                        this.a = new wy((NestedScrollView) viewInflate, frameLayout, materialButton, materialButton2, linearLayout, textView, linearLayout2, textView2, frameLayout2, materialButton3, materialButton4, linearLayout3, textView3, linearLayout4, textView4);
                                                                        NestedScrollView nestedScrollView = k().a;
                                                                        nestedScrollView.getClass();
                                                                        return nestedScrollView;
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
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.o
    public final void onDestroyView() {
        this.a = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        NestedScrollView nestedScrollView = k().a;
        nestedScrollView.getClass();
        sz8.b(nestedScrollView, 7);
        int i = 1;
        k().t.setOnClickListener(new nf(this, i));
        int i2 = 3;
        k().y.setOnClickListener(new g7(this, i2));
        k().e.setOnClickListener(new h7(this, i2));
        k().k.setOnClickListener(new of(this, i));
        l();
    }
}
