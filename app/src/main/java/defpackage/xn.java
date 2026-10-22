package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xn implements Window.Callback {
    public final Window.Callback a;
    public tr9 b;
    public boolean c;
    public boolean d;
    public boolean e;
    public final /* synthetic */ fo f;

    public xn(fo foVar, Window.Callback callback) {
        this.f = foVar;
        if (callback != null) {
            this.a = callback;
        } else {
            c6.f("Window callback may not be null");
            throw null;
        }
    }

    public final void a(Window.Callback callback) {
        try {
            this.c = true;
            callback.onContentChanged();
        } finally {
            this.c = false;
        }
    }

    public final boolean b(int i, Menu menu) {
        return this.a.onMenuOpened(i, menu);
    }

    public final void c(int i, Menu menu) {
        this.a.onPanelClosed(i, menu);
    }

    public final void d(List list, Menu menu, int i) {
        ku8.a(this.a, list, menu, i);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = this.d;
        Window.Callback callback = this.a;
        if (z) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        return this.f.u(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (!this.a.dispatchKeyShortcutEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            fo foVar = this.f;
            foVar.A();
            nc8 nc8Var = foVar.y;
            if (nc8Var == null || !nc8Var.Q(keyCode, keyEvent)) {
                eo eoVar = foVar.d0;
                if (eoVar == null || !foVar.F(eoVar, keyEvent.getKeyCode(), keyEvent)) {
                    if (foVar.d0 == null) {
                        eo eoVarZ = foVar.z(0);
                        foVar.G(eoVarZ, keyEvent);
                        boolean zF = foVar.F(eoVarZ, keyEvent.getKeyCode(), keyEvent);
                        eoVarZ.k = false;
                        if (zF) {
                        }
                    }
                    return false;
                }
                eo eoVar2 = foVar.d0;
                if (eoVar2 != null) {
                    eoVar2.l = true;
                    return true;
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.c) {
            this.a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0 || (menu instanceof fc5)) {
            return this.a.onCreatePanelMenu(i, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i) {
        tr9 tr9Var = this.b;
        if (tr9Var != null) {
            View view = i == 0 ? new View(((o88) tr9Var.b).e.a.getContext()) : null;
            if (view != null) {
                return view;
            }
        }
        return this.a.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.a.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i, Menu menu) {
        b(i, menu);
        if (i == 108) {
            fo foVar = this.f;
            foVar.A();
            nc8 nc8Var = foVar.y;
            if (nc8Var != null) {
                nc8Var.v(true);
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        if (this.e) {
            this.a.onPanelClosed(i, menu);
            return;
        }
        c(i, menu);
        fo foVar = this.f;
        if (i == 108) {
            foVar.A();
            nc8 nc8Var = foVar.y;
            if (nc8Var != null) {
                nc8Var.v(false);
                return;
            }
            return;
        }
        if (i == 0) {
            eo eoVarZ = foVar.z(i);
            if (eoVarZ.m) {
                foVar.s(eoVarZ, false);
            }
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z) {
        lu8.a(this.a, z);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        fc5 fc5Var = menu instanceof fc5 ? (fc5) menu : null;
        if (i == 0 && fc5Var == null) {
            return false;
        }
        if (fc5Var != null) {
            fc5Var.Q = true;
        }
        tr9 tr9Var = this.b;
        if (tr9Var != null && i == 0) {
            o88 o88Var = (o88) tr9Var.b;
            if (!o88Var.h) {
                o88Var.e.l = true;
                o88Var.h = true;
            }
        }
        boolean zOnPreparePanel = this.a.onPreparePanel(i, view, menu);
        if (fc5Var != null) {
            fc5Var.Q = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        fc5 fc5Var = this.f.z(0).h;
        if (fc5Var != null) {
            d(list, fc5Var, i);
        } else {
            d(list, menu, i);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return ju8.a(this.a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.a.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        ViewGroup viewGroup;
        fo foVar = this.f;
        Context context = foVar.r;
        if (i != 0) {
            return ju8.b(this.a, callback, i);
        }
        x91 x91Var = new x91();
        x91Var.c = context;
        x91Var.a = callback;
        x91Var.b = new ArrayList();
        x91Var.d = new dg7(0);
        s8 s8Var = foVar.L;
        if (s8Var != null) {
            s8Var.a();
        }
        h80 h80Var = new h80(1, foVar, x91Var);
        foVar.A();
        nc8 nc8Var = foVar.y;
        if (nc8Var != null) {
            foVar.L = nc8Var.j0(h80Var);
        }
        if (foVar.L == null) {
            lm8 lm8Var = foVar.P;
            if (lm8Var != null) {
                lm8Var.b();
            }
            s8 s8Var2 = foVar.L;
            if (s8Var2 != null) {
                s8Var2.a();
            }
            if (foVar.M == null) {
                if (foVar.Z) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = context.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        hv1 hv1Var = new hv1(context, 0);
                        hv1Var.getTheme().setTo(themeNewTheme);
                        context = hv1Var;
                    }
                    foVar.M = new ActionBarContextView(context);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    foVar.N = popupWindow;
                    popupWindow.setWindowLayoutType(2);
                    foVar.N.setContentView(foVar.M);
                    foVar.N.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    foVar.M.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    foVar.N.setHeight(-2);
                    foVar.O = new qn(foVar, 0);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) foVar.R.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        foVar.A();
                        nc8 nc8Var2 = foVar.y;
                        Context contextC = nc8Var2 != null ? nc8Var2.C() : null;
                        if (contextC != null) {
                            context = contextC;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        foVar.M = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (foVar.M != null) {
                lm8 lm8Var2 = foVar.P;
                if (lm8Var2 != null) {
                    lm8Var2.b();
                }
                foVar.M.e();
                Context context2 = foVar.M.getContext();
                ActionBarContextView actionBarContextView = foVar.M;
                al7 al7Var = new al7();
                al7Var.c = context2;
                al7Var.d = actionBarContextView;
                al7Var.e = h80Var;
                fc5 fc5Var = new fc5(actionBarContextView.getContext());
                fc5Var.t = 1;
                al7Var.n = fc5Var;
                fc5Var.e = al7Var;
                if (((x91) h80Var.b).h(al7Var, fc5Var)) {
                    al7Var.h();
                    foVar.M.c(al7Var);
                    foVar.L = al7Var;
                    int i2 = (foVar.Q && (viewGroup = foVar.R) != null && viewGroup.isLaidOut()) ? 1 : 0;
                    ActionBarContextView actionBarContextView2 = foVar.M;
                    if (i2 != 0) {
                        actionBarContextView2.setAlpha(0.0f);
                        lm8 lm8VarA = dl8.a(foVar.M);
                        lm8VarA.a(1.0f);
                        foVar.P = lm8VarA;
                        lm8VarA.d(new rn(foVar));
                    } else {
                        actionBarContextView2.setAlpha(1.0f);
                        foVar.M.setVisibility(0);
                        if (foVar.M.getParent() instanceof View) {
                            View view = (View) foVar.M.getParent();
                            WeakHashMap weakHashMap = dl8.a;
                            view.requestApplyInsets();
                        }
                    }
                    if (foVar.N != null) {
                        foVar.t.getDecorView().post(foVar.O);
                    }
                } else {
                    foVar.L = null;
                }
            }
            foVar.I();
            foVar.L = foVar.L;
        }
        foVar.I();
        s8 s8Var3 = foVar.L;
        if (s8Var3 != null) {
            return x91Var.e(s8Var3);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
