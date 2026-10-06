package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import defpackage.fc5;
import defpackage.ge6;
import defpackage.ic5;
import defpackage.u94;
import defpackage.yc5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements yc5, AbsListView.SelectionBoundsAdjuster {
    public final boolean G;
    public LayoutInflater H;
    public boolean I;
    public ic5 a;
    public ImageView b;
    public RadioButton c;
    public TextView d;
    public CheckBox e;
    public TextView f;
    public ImageView k;
    public ImageView n;
    public LinearLayout p;
    public final Drawable q;
    public final int r;
    public final Context t;
    public boolean x;
    public final Drawable y;

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        u94 u94VarE = u94.e(i, 0, getContext(), attributeSet, ge6.r);
        this.q = u94VarE.b(5);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        this.r = typedArray.getResourceId(1, -1);
        this.x = typedArray.getBoolean(7, false);
        this.t = context;
        this.y = u94VarE.b(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, org.swiftapps.swiftbackup.R.attr.dropDownListViewStyle, 0);
        this.G = typedArrayObtainStyledAttributes.hasValue(0);
        u94VarE.f();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.H == null) {
            this.H = LayoutInflater.from(getContext());
        }
        return this.H;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.k;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    @Override // defpackage.yc5
    public final void a(ic5 ic5Var) {
        boolean z;
        int i;
        String string;
        this.a = ic5Var;
        boolean zIsVisible = ic5Var.isVisible();
        fc5 fc5Var = ic5Var.y;
        setVisibility(zIsVisible ? 0 : 8);
        setTitle(ic5Var.e);
        setCheckable(ic5Var.isCheckable());
        if (fc5Var.o()) {
            if ((fc5Var.n() ? ic5Var.q : ic5Var.n) != 0) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        fc5Var.n();
        if (z) {
            ic5 ic5Var2 = this.a;
            fc5 fc5Var2 = ic5Var2.y;
            if (fc5Var2.o()) {
                i = (fc5Var2.n() ? ic5Var2.q : ic5Var2.n) == 0 ? 8 : 0;
            }
        }
        if (i == 0) {
            TextView textView = this.f;
            ic5 ic5Var3 = this.a;
            fc5 fc5Var3 = ic5Var3.y;
            Context context = fc5Var3.a;
            char c = fc5Var3.n() ? ic5Var3.q : ic5Var3.n;
            if (c == 0) {
                string = "";
            } else {
                Resources resources = context.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                    sb.append(resources.getString(org.swiftapps.swiftbackup.R.string.abc_prepend_shortcut_label));
                }
                int i2 = fc5Var3.n() ? ic5Var3.r : ic5Var3.p;
                ic5.c(i2, 65536, resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_meta_shortcut_label), sb);
                ic5.c(i2, 4096, resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_ctrl_shortcut_label), sb);
                ic5.c(i2, 2, resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_alt_shortcut_label), sb);
                ic5.c(i2, 1, resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_shift_shortcut_label), sb);
                ic5.c(i2, 4, resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_sym_shortcut_label), sb);
                ic5.c(i2, 8, resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_function_shortcut_label), sb);
                if (c == '\b') {
                    sb.append(resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_delete_shortcut_label));
                } else if (c == '\n') {
                    sb.append(resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_enter_shortcut_label));
                } else if (c != ' ') {
                    sb.append(c);
                } else {
                    sb.append(resources.getString(org.swiftapps.swiftbackup.R.string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.f.getVisibility() != i) {
            this.f.setVisibility(i);
        }
        setIcon(ic5Var.getIcon());
        setEnabled(ic5Var.isEnabled());
        setSubMenuArrowVisible(ic5Var.hasSubMenu());
        setContentDescription(ic5Var.I);
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.n;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.n.getLayoutParams();
        rect.top = this.n.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    @Override // defpackage.yc5
    public ic5 getItemData() {
        return this.a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.q);
        TextView textView = (TextView) findViewById(org.swiftapps.swiftbackup.R.id.title);
        this.d = textView;
        int i = this.r;
        if (i != -1) {
            textView.setTextAppearance(this.t, i);
        }
        this.f = (TextView) findViewById(org.swiftapps.swiftbackup.R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(org.swiftapps.swiftbackup.R.id.submenuarrow);
        this.k = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.y);
        }
        this.n = (ImageView) findViewById(org.swiftapps.swiftbackup.R.id.group_divider);
        this.p = (LinearLayout) findViewById(org.swiftapps.swiftbackup.R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.b != null && this.x) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.c == null && this.e == null) {
            return;
        }
        if ((this.a.P & 4) != 0) {
            if (this.c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(org.swiftapps.swiftbackup.R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.c = radioButton;
                LinearLayout linearLayout = this.p;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.c;
            view = this.e;
        } else {
            if (this.e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(org.swiftapps.swiftbackup.R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.e = checkBox;
                LinearLayout linearLayout2 = this.p;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.e;
            view = this.c;
        }
        if (z) {
            compoundButton.setChecked(this.a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.a.P & 4) != 0) {
            if (this.c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(org.swiftapps.swiftbackup.R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.c = radioButton;
                LinearLayout linearLayout = this.p;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.c;
        } else {
            if (this.e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(org.swiftapps.swiftbackup.R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.e = checkBox;
                LinearLayout linearLayout2 = this.p;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.I = z;
        this.x = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.n;
        if (imageView != null) {
            imageView.setVisibility((this.G || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.a.y.K || this.I;
        if (z || this.x) {
            ImageView imageView = this.b;
            if (imageView == null && drawable == null && !this.x) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(org.swiftapps.swiftbackup.R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.b = imageView2;
                LinearLayout linearLayout = this.p;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.x) {
                this.b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.b;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.b.getVisibility() != 0) {
                this.b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        TextView textView = this.d;
        if (charSequence == null) {
            if (textView.getVisibility() != 8) {
                this.d.setVisibility(8);
            }
        } else {
            textView.setText(charSequence);
            if (this.d.getVisibility() != 0) {
                this.d.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.listMenuViewStyle);
    }
}
