package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ic5 implements ls7 {
    public lr7 G;
    public MenuItem.OnMenuItemClickListener H;
    public CharSequence I;
    public CharSequence J;
    public int Q;
    public View R;
    public jc5 S;
    public MenuItem.OnActionExpandListener T;
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public CharSequence e;
    public CharSequence f;
    public Intent k;
    public char n;
    public char q;
    public Drawable t;
    public final fc5 y;
    public int p = 4096;
    public int r = 4096;
    public int x = 0;
    public ColorStateList K = null;
    public PorterDuff.Mode L = null;
    public boolean M = false;
    public boolean N = false;
    public boolean O = false;
    public int P = 16;
    public boolean U = false;

    public ic5(fc5 fc5Var, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.y = fc5Var;
        this.a = i2;
        this.b = i;
        this.c = i3;
        this.d = i4;
        this.e = charSequence;
        this.Q = i5;
    }

    public static void c(int i, int i2, String str, StringBuilder sb) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    @Override // defpackage.ls7
    public final ls7 a(jc5 jc5Var) {
        this.R = null;
        this.S = jc5Var;
        this.y.p(true);
        jc5 jc5Var2 = this.S;
        if (jc5Var2 != null) {
            jc5Var2.a = new om5(this);
            jc5Var2.b.setVisibilityListener(jc5Var2);
        }
        return this;
    }

    @Override // defpackage.ls7
    public final jc5 b() {
        return this.S;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.Q & 8) == 0) {
            return false;
        }
        if (this.R == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.T;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.y.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.O && (this.M || this.N)) {
            drawable = drawable.mutate();
            if (this.M) {
                drawable.setTintList(this.K);
            }
            if (this.N) {
                drawable.setTintMode(this.L);
            }
            this.O = false;
        }
        return drawable;
    }

    public final boolean e() {
        jc5 jc5Var;
        if ((this.Q & 8) != 0) {
            if (this.R == null && (jc5Var = this.S) != null) {
                this.R = jc5Var.b.onCreateActionView(this);
            }
            if (this.R != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.T;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.y.f(this);
        }
        return false;
    }

    public final void f(boolean z) {
        int i = this.P;
        if (z) {
            this.P = i | 32;
        } else {
            this.P = i & (-33);
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.R;
        if (view != null) {
            return view;
        }
        jc5 jc5Var = this.S;
        if (jc5Var == null) {
            return null;
        }
        View viewOnCreateActionView = jc5Var.b.onCreateActionView(this);
        this.R = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.r;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.q;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.I;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.t;
        if (drawable != null) {
            return d(drawable);
        }
        int i = this.x;
        if (i == 0) {
            return null;
        }
        Drawable drawableM = iz1.m(this.y.a, i);
        this.x = 0;
        this.t = drawableM;
        return d(drawableM);
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.K;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.L;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.p;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.n;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.G;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.e;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.J;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.G != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.U;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.P & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.P & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.P & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        jc5 jc5Var = this.S;
        if (jc5Var == null || !jc5Var.b.overridesItemVisibility()) {
            return (this.P & 8) == 0;
        }
        return (this.P & 8) == 0 && this.S.b.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        int i2;
        fc5 fc5Var = this.y;
        Context context = fc5Var.a;
        View viewInflate = LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false);
        this.R = viewInflate;
        this.S = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i2 = this.a) > 0) {
            viewInflate.setId(i2);
        }
        fc5Var.r = true;
        fc5Var.p(true);
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.q == c && this.r == i) {
            return this;
        }
        this.q = Character.toLowerCase(c);
        this.r = KeyEvent.normalizeMetaState(i);
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.P;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.P = i2;
        if (i != i2) {
            this.y.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        int i = this.P;
        int i2 = i & 4;
        fc5 fc5Var = this.y;
        if (i2 == 0) {
            int i3 = (i & (-3)) | (z ? 2 : 0);
            this.P = i3;
            if (i != i3) {
                fc5Var.p(false);
            }
            return this;
        }
        ArrayList arrayList = fc5Var.f;
        int size = arrayList.size();
        fc5Var.w();
        for (int i4 = 0; i4 < size; i4++) {
            ic5 ic5Var = (ic5) arrayList.get(i4);
            if (ic5Var.b == this.b && (ic5Var.P & 4) != 0 && ic5Var.isCheckable()) {
                boolean z2 = ic5Var == this;
                int i5 = ic5Var.P;
                int i6 = (z2 ? 2 : 0) | (i5 & (-3));
                ic5Var.P = i6;
                if (i5 != i6) {
                    ic5Var.y.p(false);
                }
            }
        }
        fc5Var.v();
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final ls7 setContentDescription(CharSequence charSequence) {
        this.I = charSequence;
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        int i = this.P;
        if (z) {
            this.P = i | 16;
        } else {
            this.P = i & (-17);
        }
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.t = null;
        this.x = i;
        this.O = true;
        this.y.p(false);
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.K = colorStateList;
        this.M = true;
        this.O = true;
        this.y.p(false);
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.L = mode;
        this.N = true;
        this.O = true;
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.k = intent;
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        if (this.n == c && this.p == i) {
            return this;
        }
        this.n = c;
        this.p = KeyEvent.normalizeMetaState(i);
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.T = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.H = onMenuItemClickListener;
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.n = c;
        this.p = KeyEvent.normalizeMetaState(i);
        this.q = Character.toLowerCase(c2);
        this.r = KeyEvent.normalizeMetaState(i2);
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            c6.f("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
            return;
        }
        this.Q = i;
        fc5 fc5Var = this.y;
        fc5Var.r = true;
        fc5Var.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.e = charSequence;
        this.y.p(false);
        lr7 lr7Var = this.G;
        if (lr7Var != null) {
            lr7Var.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.y.p(false);
        return this;
    }

    @Override // defpackage.ls7, android.view.MenuItem
    public final ls7 setTooltipText(CharSequence charSequence) {
        this.J = charSequence;
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.P;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.P = i2;
        if (i != i2) {
            fc5 fc5Var = this.y;
            fc5Var.n = true;
            fc5Var.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.x = 0;
        this.t = drawable;
        this.O = true;
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        setTitle(this.y.a.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        if (this.n == c) {
            return this;
        }
        this.n = c;
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.n = c;
        this.q = Character.toLowerCase(c2);
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.q == c) {
            return this;
        }
        this.q = Character.toLowerCase(c);
        this.y.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i;
        this.R = view;
        this.S = null;
        if (view != null && view.getId() == -1 && (i = this.a) > 0) {
            view.setId(i);
        }
        fc5 fc5Var = this.y;
        fc5Var.r = true;
        fc5Var.p(true);
        return this;
    }
}
