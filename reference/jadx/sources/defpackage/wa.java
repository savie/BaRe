package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wa extends ho implements DialogInterface {
    public final ua k;

    public wa(ContextThemeWrapper contextThemeWrapper, int i) {
        super(contextThemeWrapper, h(contextThemeWrapper, i));
        this.k = new ua(getContext(), this, getWindow());
    }

    public static int h(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public final Button f(int i) {
        ua uaVar = this.k;
        if (i == -3) {
            return uaVar.o;
        }
        if (i == -2) {
            return uaVar.l;
        }
        if (i == -1) {
            return uaVar.i;
        }
        uaVar.getClass();
        return null;
    }

    public void i(CharSequence charSequence) {
        ua uaVar = this.k;
        uaVar.e = charSequence;
        TextView textView = uaVar.v;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // defpackage.ho, defpackage.ko1, android.app.Dialog
    public void onCreate(Bundle bundle) {
        int i;
        ListAdapter listAdapter;
        View viewFindViewById;
        super.onCreate(bundle);
        ua uaVar = this.k;
        uaVar.b.setContentView(uaVar.z);
        Context context = uaVar.a;
        Window window = uaVar.c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View view = uaVar.g;
        if (view == null) {
            view = null;
        }
        boolean z = view != null;
        if (!z || !ua.a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (uaVar.h) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (uaVar.f != null) {
                ((LinearLayout.LayoutParams) ((tu4) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupB = ua.b(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupB2 = ua.b(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupB3 = ua.b(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        uaVar.r = nestedScrollView;
        nestedScrollView.setFocusable(false);
        uaVar.r.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupB2.findViewById(android.R.id.message);
        uaVar.v = textView;
        if (textView != null) {
            CharSequence charSequence = uaVar.e;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                uaVar.r.removeView(uaVar.v);
                if (uaVar.f != null) {
                    ViewGroup viewGroup2 = (ViewGroup) uaVar.r.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(uaVar.r);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(uaVar.f, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupB2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupB3.findViewById(android.R.id.button1);
        uaVar.i = button;
        na naVar = uaVar.G;
        button.setOnClickListener(naVar);
        boolean zIsEmpty = TextUtils.isEmpty(uaVar.j);
        Button button2 = uaVar.i;
        if (zIsEmpty) {
            button2.setVisibility(8);
            i = 0;
        } else {
            button2.setText(uaVar.j);
            uaVar.i.setVisibility(0);
            i = 1;
        }
        Button button3 = (Button) viewGroupB3.findViewById(android.R.id.button2);
        uaVar.l = button3;
        button3.setOnClickListener(naVar);
        boolean zIsEmpty2 = TextUtils.isEmpty(uaVar.m);
        Button button4 = uaVar.l;
        if (zIsEmpty2) {
            button4.setVisibility(8);
        } else {
            button4.setText(uaVar.m);
            uaVar.l.setVisibility(0);
            i |= 2;
        }
        Button button5 = (Button) viewGroupB3.findViewById(android.R.id.button3);
        uaVar.o = button5;
        button5.setOnClickListener(naVar);
        boolean zIsEmpty3 = TextUtils.isEmpty(uaVar.p);
        Button button6 = uaVar.o;
        if (zIsEmpty3) {
            button6.setVisibility(8);
        } else {
            button6.setText(uaVar.p);
            uaVar.o.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button7 = uaVar.i;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button7.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button7.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button8 = uaVar.l;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button8.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button8.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button9 = uaVar.o;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button9.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button9.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            viewGroupB3.setVisibility(8);
        }
        if (uaVar.w != null) {
            viewGroupB.addView(uaVar.w, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            uaVar.t = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(uaVar.d) || !uaVar.E) {
                window.findViewById(R.id.title_template).setVisibility(8);
                uaVar.t.setVisibility(8);
                viewGroupB.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                uaVar.u = textView2;
                textView2.setText(uaVar.d);
                Drawable drawable = uaVar.s;
                if (drawable != null) {
                    uaVar.t.setImageDrawable(drawable);
                } else {
                    uaVar.u.setPadding(uaVar.t.getPaddingLeft(), uaVar.t.getPaddingTop(), uaVar.t.getPaddingRight(), uaVar.t.getPaddingBottom());
                    uaVar.t.setVisibility(8);
                }
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i2 = (viewGroupB == null || viewGroupB.getVisibility() == 8) ? 0 : 1;
        boolean z3 = viewGroupB3.getVisibility() != 8;
        if (!z3 && (viewFindViewById = viewGroupB2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i2 != 0) {
            NestedScrollView nestedScrollView2 = uaVar.r;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (uaVar.e == null && uaVar.f == null) ? null : viewGroupB.findViewById(R.id.titleDividerNoCustom);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupB2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = uaVar.f;
        if (alertController$RecycleListView != null && (!z3 || i2 == 0)) {
            alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i2 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.a, alertController$RecycleListView.getPaddingRight(), z3 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.b);
        }
        if (!z2) {
            View view2 = uaVar.f;
            if (view2 == null) {
                view2 = uaVar.r;
            }
            if (view2 != null) {
                int i3 = z3 ? 2 : 0;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = dl8.a;
                view2.setScrollIndicators(i2 | i3, 3);
                if (viewFindViewById11 != null) {
                    viewGroupB2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupB2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = uaVar.f;
        if (alertController$RecycleListView2 == null || (listAdapter = uaVar.x) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i4 = uaVar.y;
        if (i4 > -1) {
            alertController$RecycleListView2.setItemChecked(i4, true);
            alertController$RecycleListView2.setSelection(i4);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.k.r;
        if (nestedScrollView == null || !nestedScrollView.i(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.k.r;
        if (nestedScrollView == null || !nestedScrollView.i(keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // defpackage.ho, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        ua uaVar = this.k;
        uaVar.d = charSequence;
        TextView textView = uaVar.u;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
