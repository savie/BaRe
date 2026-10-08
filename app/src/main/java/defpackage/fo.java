package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fo extends nn implements dc5, LayoutInflater.Factory2 {
    public ks7 G;
    public CharSequence H;
    public ActionBarOverlayLayout I;
    public jq6 J;
    public ln5 K;
    public s8 L;
    public ActionBarContextView M;
    public PopupWindow N;
    public qn O;
    public boolean Q;
    public ViewGroup R;
    public TextView S;
    public View T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public eo[] c0;
    public eo d0;
    public boolean e0;
    public boolean f0;
    public boolean g0;
    public boolean h0;
    public Configuration i0;
    public final int j0;
    public int k0;
    public int l0;
    public boolean m0;
    public bo n0;
    public yn o0;
    public boolean p0;
    public final Object q;
    public int q0;
    public final Context r;
    public boolean s0;
    public Window t;
    public Rect t0;
    public Rect u0;
    public bq v0;
    public OnBackInvokedDispatcher w0;
    public xn x;
    public OnBackInvokedCallback x0;
    public nc8 y;
    public static final dg7 y0 = new dg7(0);
    public static final int[] z0 = {R.attr.windowBackground};
    public static final boolean A0 = !"robolectric".equals(Build.FINGERPRINT);
    public lm8 P = null;
    public final on r0 = new on(this, 0);

    public fo(Context context, Window window, dn dnVar, Object obj) {
        zm zmVar = null;
        this.j0 = -100;
        this.r = context;
        this.q = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof zm)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    zmVar = (zm) context;
                    break;
                }
            }
            if (zmVar != null) {
                this.j0 = ((fo) zmVar.getDelegate()).j0;
            }
        }
        if (this.j0 == -100) {
            String name = this.q.getClass().getName();
            dg7 dg7Var = y0;
            Integer num = (Integer) dg7Var.get(name);
            if (num != null) {
                this.j0 = num.intValue();
                dg7Var.remove(this.q.getClass().getName());
            }
        }
        if (window != null) {
            o(window);
        }
        jo.d();
    }

    public static h05 p(Context context) {
        h05 h05Var;
        h05 h05VarC;
        if (Build.VERSION.SDK_INT >= 33 || (h05Var = nn.c) == null) {
            return null;
        }
        i05 i05Var = h05Var.a;
        h05 h05VarB = un.b(context.getApplicationContext().getResources().getConfiguration());
        if (i05Var.a.isEmpty()) {
            h05VarC = h05.b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i = 0;
            while (i < h05VarB.a.a.size() + i05Var.a.size()) {
                Locale localeB = i < i05Var.a.size() ? h05Var.b(i) : h05VarB.b(i - i05Var.a.size());
                if (localeB != null) {
                    linkedHashSet.add(localeB);
                }
                i++;
            }
            h05VarC = h05.c(new LocaleList((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()])));
        }
        return h05VarC.a.a.isEmpty() ? h05VarB : h05VarC;
    }

    public static Configuration t(Context context, int i, h05 h05Var, Configuration configuration, boolean z) {
        int i2;
        if (i == 1) {
            i2 = 16;
        } else if (i != 2) {
            i2 = z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i2 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (h05Var != null) {
            un.d(configuration2, h05Var);
        }
        return configuration2;
    }

    public final void A() {
        w();
        if (this.W && this.y == null) {
            Object obj = this.q;
            if (obj instanceof Activity) {
                this.y = new ou8((Activity) obj, this.X);
            } else if (obj instanceof Dialog) {
                this.y = new ou8((Dialog) obj);
            }
            nc8 nc8Var = this.y;
            if (nc8Var != null) {
                nc8Var.Y(this.s0);
            }
        }
    }

    public final void B(int i) {
        this.q0 = (1 << i) | this.q0;
        if (this.p0) {
            return;
        }
        View decorView = this.t.getDecorView();
        WeakHashMap weakHashMap = dl8.a;
        decorView.postOnAnimation(this.r0);
        this.p0 = true;
    }

    public final int C(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 1 && i != 2) {
                        if (i != 3) {
                            l0.e("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                            return 0;
                        }
                        if (this.o0 == null) {
                            this.o0 = new yn(this, context);
                        }
                        return this.o0.g();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return y(context).g();
                }
            }
            return i;
        }
        return -1;
    }

    public final boolean D() {
        boolean z = this.e0;
        this.e0 = false;
        eo eoVarZ = z(0);
        if (!eoVarZ.m) {
            s8 s8Var = this.L;
            if (s8Var != null) {
                s8Var.a();
                return true;
            }
            A();
            nc8 nc8Var = this.y;
            if (nc8Var == null || !nc8Var.l()) {
                return false;
            }
        } else if (!z) {
            s(eoVarZ, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0176, code lost:
    
        if (r2.f.getCount() > 0) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(defpackage.eo r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fo.E(eo, android.view.KeyEvent):void");
    }

    public final boolean F(eo eoVar, int i, KeyEvent keyEvent) {
        fc5 fc5Var;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((eoVar.k || G(eoVar, keyEvent)) && (fc5Var = eoVar.h) != null) {
            return fc5Var.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:71:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:74:0x0101 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x0103  */
    /* JADX WARN: Code duplicated, block: B:82:0x0116  */
    public final boolean G(eo eoVar, KeyEvent keyEvent) {
        fc5 fc5Var;
        ActionBarOverlayLayout actionBarOverlayLayout;
        ActionBarOverlayLayout actionBarOverlayLayout2;
        Resources.Theme themeNewTheme;
        ActionBarOverlayLayout actionBarOverlayLayout3;
        ActionBarOverlayLayout actionBarOverlayLayout4;
        if (!this.h0) {
            boolean z = eoVar.k;
            int i = eoVar.a;
            if (z) {
                return true;
            }
            eo eoVar2 = this.d0;
            if (eoVar2 != null && eoVar2 != eoVar) {
                s(eoVar2, false);
            }
            Window.Callback callback = this.t.getCallback();
            if (callback != null) {
                eoVar.g = callback.onCreatePanelView(i);
            }
            boolean z2 = i == 0 || i == 108;
            if (z2 && (actionBarOverlayLayout4 = this.I) != null) {
                actionBarOverlayLayout4.k();
                ((r88) actionBarOverlayLayout4.e).l = true;
            }
            if (eoVar.g == null && (!z2 || !(this.y instanceof o88))) {
                fc5 fc5Var2 = eoVar.h;
                if (fc5Var2 == null || eoVar.o) {
                    if (fc5Var2 == null) {
                        Context context = this.r;
                        if ((i == 0 || i == 108) && this.I != null) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(org.swiftapps.swiftbackup.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                                themeNewTheme.resolveAttribute(org.swiftapps.swiftbackup.R.attr.actionBarWidgetTheme, typedValue, true);
                            } else {
                                theme.resolveAttribute(org.swiftapps.swiftbackup.R.attr.actionBarWidgetTheme, typedValue, true);
                                themeNewTheme = null;
                            }
                            if (typedValue.resourceId != 0) {
                                if (themeNewTheme == null) {
                                    themeNewTheme = context.getResources().newTheme();
                                    themeNewTheme.setTo(theme);
                                }
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                            }
                            if (themeNewTheme != null) {
                                hv1 hv1Var = new hv1(context, 0);
                                hv1Var.getTheme().setTo(themeNewTheme);
                                context = hv1Var;
                            }
                        }
                        fc5 fc5Var3 = new fc5(context);
                        fc5Var3.e = this;
                        fc5 fc5Var4 = eoVar.h;
                        if (fc5Var3 != fc5Var4) {
                            if (fc5Var4 != null) {
                                fc5Var4.r(eoVar.i);
                            }
                            eoVar.h = fc5Var3;
                            mx4 mx4Var = eoVar.i;
                            if (mx4Var != null) {
                                fc5Var3.b(mx4Var, fc5Var3.a);
                            }
                        }
                        if (eoVar.h != null) {
                            if (z2 && (actionBarOverlayLayout2 = this.I) != null) {
                                if (this.J == null) {
                                    this.J = new jq6(this, 2);
                                }
                                actionBarOverlayLayout2.l(eoVar.h, this.J);
                            }
                            eoVar.h.w();
                            if (callback.onCreatePanelMenu(i, eoVar.h)) {
                                eoVar.o = false;
                            } else {
                                fc5Var = eoVar.h;
                                if (fc5Var != null) {
                                    if (fc5Var != null) {
                                        fc5Var.r(eoVar.i);
                                    }
                                    eoVar.h = null;
                                }
                                if (z2 && (actionBarOverlayLayout = this.I) != null) {
                                    actionBarOverlayLayout.l(null, this.J);
                                }
                            }
                        }
                    } else {
                        if (z2) {
                            if (this.J == null) {
                                this.J = new jq6(this, 2);
                            }
                            actionBarOverlayLayout2.l(eoVar.h, this.J);
                        }
                        eoVar.h.w();
                        if (callback.onCreatePanelMenu(i, eoVar.h)) {
                            fc5Var = eoVar.h;
                            if (fc5Var != null) {
                                if (fc5Var != null) {
                                    fc5Var.r(eoVar.i);
                                }
                                eoVar.h = null;
                            }
                            if (z2) {
                                actionBarOverlayLayout.l(null, this.J);
                            }
                        } else {
                            eoVar.o = false;
                        }
                    }
                }
                eoVar.h.w();
                Bundle bundle = eoVar.p;
                if (bundle != null) {
                    eoVar.h.s(bundle);
                    eoVar.p = null;
                }
                if (!callback.onPreparePanel(0, eoVar.g, eoVar.h)) {
                    if (z2 && (actionBarOverlayLayout3 = this.I) != null) {
                        actionBarOverlayLayout3.l(null, this.J);
                    }
                    eoVar.h.v();
                    return false;
                }
                eoVar.h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
                eoVar.h.v();
            }
            eoVar.k = true;
            eoVar.l = false;
            this.d0 = eoVar;
            return true;
        }
        return false;
    }

    public final void H() {
        if (this.Q) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void I() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.w0 != null && (z(0).m || this.L != null)) {
                z = true;
            }
            if (z && this.x0 == null) {
                this.x0 = wn.b(this.w0, this);
            } else {
                if (z || (onBackInvokedCallback = this.x0) == null) {
                    return;
                }
                wn.c(this.w0, onBackInvokedCallback);
                this.x0 = null;
            }
        }
    }

    @Override // defpackage.nn
    public final void a() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.r);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof fo) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // defpackage.nn
    public final void b() {
        if (this.y != null) {
            A();
            if (this.y.F()) {
                return;
            }
            B(0);
        }
    }

    @Override // defpackage.nn
    public final void d() {
        String strJ;
        this.f0 = true;
        n(false, true);
        x();
        Object obj = this.q;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strJ = rs9.j(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                strJ = null;
            }
            if (strJ != null) {
                nc8 nc8Var = this.y;
                if (nc8Var == null) {
                    this.s0 = true;
                } else {
                    nc8Var.Y(true);
                }
            }
            synchronized (nn.n) {
                nn.g(this);
                nn.k.add(new WeakReference(this));
            }
        }
        this.i0 = new Configuration(this.r.getResources().getConfiguration());
        this.g0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    @Override // defpackage.dc5
    public final boolean e(fc5 fc5Var, MenuItem menuItem) {
        eo eoVar;
        Window.Callback callback = this.t.getCallback();
        if (callback != null && !this.h0) {
            fc5 fc5VarK = fc5Var.k();
            eo[] eoVarArr = this.c0;
            int length = eoVarArr != null ? eoVarArr.length : 0;
            for (int i = 0; i < length; i++) {
                eoVar = eoVarArr[i];
                if (eoVar != null && eoVar.h == fc5VarK) {
                    if (eoVar != null) {
                        return callback.onMenuItemSelected(eoVar.a, menuItem);
                    }
                }
            }
            eoVar = null;
            if (eoVar != null) {
                return callback.onMenuItemSelected(eoVar.a, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // defpackage.nn
    public final void f() {
        if (this.q instanceof Activity) {
            synchronized (nn.n) {
                nn.g(this);
            }
        }
        if (this.p0) {
            this.t.getDecorView().removeCallbacks(this.r0);
        }
        this.h0 = true;
        if (this.j0 != -100) {
            Object obj = this.q;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                y0.put(this.q.getClass().getName(), Integer.valueOf(this.j0));
            } else {
                y0.remove(this.q.getClass().getName());
            }
        } else {
            y0.remove(this.q.getClass().getName());
        }
        nc8 nc8Var = this.y;
        if (nc8Var != null) {
            nc8Var.O();
        }
        bo boVar = this.n0;
        if (boVar != null) {
            boVar.d();
        }
        yn ynVar = this.o0;
        if (ynVar != null) {
            ynVar.d();
        }
    }

    @Override // defpackage.nn
    public final boolean h(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.a0 && i == 108) {
            return false;
        }
        if (this.W && i == 1) {
            this.W = false;
        }
        if (i == 1) {
            H();
            this.a0 = true;
            return true;
        }
        if (i == 2) {
            H();
            this.U = true;
            return true;
        }
        if (i == 5) {
            H();
            this.V = true;
            return true;
        }
        if (i == 10) {
            H();
            this.Y = true;
            return true;
        }
        if (i == 108) {
            H();
            this.W = true;
            return true;
        }
        if (i != 109) {
            return this.t.requestFeature(i);
        }
        H();
        this.X = true;
        return true;
    }

    @Override // defpackage.nn
    public final void i(int i) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.r).inflate(i, viewGroup);
        this.x.a(this.t.getCallback());
    }

    @Override // defpackage.nn
    public final void j(View view) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.x.a(this.t.getCallback());
    }

    @Override // defpackage.nn
    public final void k(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.x.a(this.t.getCallback());
    }

    @Override // defpackage.nn
    public final void l(CharSequence charSequence) {
        this.H = charSequence;
        ActionBarOverlayLayout actionBarOverlayLayout = this.I;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setWindowTitle(charSequence);
            return;
        }
        nc8 nc8Var = this.y;
        if (nc8Var != null) {
            nc8Var.g0(charSequence);
            return;
        }
        TextView textView = this.S;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
    
        if (r6.k() != false) goto L20;
     */
    @Override // defpackage.dc5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(defpackage.fc5 r6) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fo.m(fc5):void");
    }

    /* JADX WARN: Code duplicated, block: B:71:0x00f7  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean n(boolean z, boolean z2) {
        int i;
        boolean z3;
        int i2 = 0;
        if (this.h0) {
            return false;
        }
        int i3 = this.j0;
        if (i3 == -100) {
            i3 = nn.b;
        }
        Context context = this.r;
        int iC = C(context, i3);
        int i4 = Build.VERSION.SDK_INT;
        h05 h05VarP = i4 < 33 ? p(context) : null;
        if (!z2 && h05VarP != null) {
            h05VarP = un.b(context.getResources().getConfiguration());
        }
        Configuration configurationT = t(context, iC, h05VarP, null, false);
        boolean z4 = this.m0;
        boolean z5 = true;
        Object obj = this.q;
        if (z4 || !(obj instanceof Activity)) {
            this.m0 = true;
            i = this.l0;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj.getClass()), i4 >= 29 ? 269221888 : 786432);
                    if (activityInfo != null) {
                        this.l0 = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
                    this.l0 = 0;
                }
                this.m0 = true;
                i = this.l0;
            }
        }
        Configuration configuration = this.i0;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i5 = configuration.uiMode & 48;
        int i6 = configurationT.uiMode & 48;
        h05 h05VarB = un.b(configuration);
        h05 h05VarB2 = h05VarP == null ? null : un.b(configurationT);
        int i7 = i5 != i6 ? 512 : 0;
        if (h05VarB2 != null && !h05VarB.equals(h05VarB2)) {
            i7 |= 8196;
        }
        if (((~i) & i7) != 0 && z && this.f0 && ((A0 || this.g0) && (obj instanceof Activity))) {
            Activity activity = (Activity) obj;
            if (activity.isChild()) {
                z3 = false;
            } else {
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 31 && (i7 & 8192) != 0) {
                    activity.getWindow().getDecorView().setLayoutDirection(configurationT.getLayoutDirection());
                }
                if (i8 >= 28) {
                    activity.recreate();
                } else {
                    new Handler(activity.getMainLooper()).post(new a9(activity, i2));
                }
                z3 = true;
            }
        } else {
            z3 = false;
        }
        if (z3 || i7 == 0) {
            z5 = z3;
        } else {
            i2 = (i7 & i) == i7 ? 1 : 0;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i6;
            if (h05VarB2 != null) {
                un.d(configuration2, h05VarB2);
            }
            resources.updateConfiguration(configuration2, null);
            int i9 = this.k0;
            if (i9 != 0) {
                context.setTheme(i9);
                context.getTheme().applyStyle(this.k0, true);
            }
            if (i2 != 0 && (obj instanceof Activity)) {
                Activity activity2 = (Activity) obj;
                if (activity2 instanceof fu4) {
                    if (((fu4) activity2).getLifecycle().d.compareTo(st4.c) >= 0) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.g0 && !this.h0) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
        }
        if (h05VarB2 != null) {
            un.c(un.b(context.getResources().getConfiguration()));
        }
        if (i3 == 0) {
            y(context).n();
        } else {
            bo boVar = this.n0;
            if (boVar != null) {
                boVar.d();
            }
        }
        yn ynVar = this.o0;
        if (i3 == 3) {
            if (ynVar == null) {
                this.o0 = new yn(this, context);
            }
            this.o0.n();
        } else if (ynVar != null) {
            ynVar.d();
        }
        return z5;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0074  */
    public final void o(Window window) {
        Drawable drawableE;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.t != null) {
            l0.e("AppCompat has already installed itself into the Window");
            return;
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof xn) {
            l0.e("AppCompat has already installed itself into the Window");
            return;
        }
        xn xnVar = new xn(this, callback);
        this.x = xnVar;
        window.setCallback(xnVar);
        Context context = this.r;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, z0);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableE = null;
        } else {
            jo joVarA = jo.a();
            synchronized (joVarA) {
                drawableE = joVarA.a.e(context, resourceId, true);
            }
        }
        if (drawableE != null) {
            window.setBackgroundDrawable(drawableE);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.t = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.w0) != null) {
            return;
        }
        Object obj = this.q;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.x0) != null) {
            wn.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.x0 = null;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.w0 = wn.a(activity);
            } else {
                this.w0 = null;
            }
        } else {
            this.w0 = null;
        }
        I();
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View toVar;
        View view2 = null;
        if (this.v0 == null) {
            int[] iArr = ge6.j;
            Context context2 = this.r;
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            String string = typedArrayObtainStyledAttributes.getString(116);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.v0 = new bq();
            } else {
                try {
                    this.v0 = (bq) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.v0 = new bq();
                }
            }
        }
        bq bqVar = this.v0;
        int i = sj8.a;
        bqVar.getClass();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, ge6.y, 0, 0);
        byte b = 4;
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(4, 0);
        if (resourceId != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes2.recycle();
        Context hv1Var = (resourceId == 0 || ((context instanceof hv1) && ((hv1) context).a == resourceId)) ? context : new hv1(context, resourceId);
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                b = !str.equals("RatingBar") ? (byte) -1 : (byte) 0;
                break;
            case -1455429095:
                b = !str.equals("CheckedTextView") ? (byte) -1 : (byte) 1;
                break;
            case -1346021293:
                b = !str.equals("MultiAutoCompleteTextView") ? (byte) -1 : (byte) 2;
                break;
            case -938935918:
                b = !str.equals("TextView") ? (byte) -1 : (byte) 3;
                break;
            case -937446323:
                if (!str.equals("ImageButton")) {
                    b = -1;
                }
                break;
            case -658531749:
                b = !str.equals("SeekBar") ? (byte) -1 : (byte) 5;
                break;
            case -339785223:
                b = !str.equals("Spinner") ? (byte) -1 : (byte) 6;
                break;
            case 776382189:
                b = !str.equals("RadioButton") ? (byte) -1 : (byte) 7;
                break;
            case 799298502:
                b = !str.equals("ToggleButton") ? (byte) -1 : (byte) 8;
                break;
            case 1125864064:
                b = !str.equals("ImageView") ? (byte) -1 : (byte) 9;
                break;
            case 1413872058:
                b = !str.equals("AutoCompleteTextView") ? (byte) -1 : (byte) 10;
                break;
            case 1601505219:
                b = !str.equals("CheckBox") ? (byte) -1 : (byte) 11;
                break;
            case 1666676343:
                b = !str.equals("EditText") ? (byte) -1 : (byte) 12;
                break;
            case 2001146706:
                b = !str.equals("Button") ? (byte) -1 : (byte) 13;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                toVar = new to(hv1Var, attributeSet);
                break;
            case 1:
                toVar = new fn(hv1Var, attributeSet);
                break;
            case 2:
                toVar = new po(hv1Var, attributeSet);
                break;
            case 3:
                toVar = bqVar.e(hv1Var, attributeSet);
                break;
            case 4:
                toVar = new no(hv1Var, attributeSet, org.swiftapps.swiftbackup.R.attr.imageButtonStyle);
                break;
            case 5:
                toVar = new vo(hv1Var, attributeSet);
                break;
            case 6:
                toVar = new ip(hv1Var, attributeSet);
                break;
            case 7:
                toVar = bqVar.d(hv1Var, attributeSet);
                break;
            case 8:
                toVar = new zp(hv1Var, attributeSet);
                break;
            case XmlPullParser.COMMENT /* 9 */:
                toVar = new AppCompatImageView(hv1Var, attributeSet);
                break;
            case 10:
                toVar = bqVar.a(hv1Var, attributeSet);
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                toVar = bqVar.c(hv1Var, attributeSet);
                break;
            case 12:
                toVar = new lo(hv1Var, attributeSet, org.swiftapps.swiftbackup.R.attr.editTextStyle);
                break;
            case 13:
                toVar = bqVar.b(hv1Var, attributeSet);
                break;
            default:
                toVar = null;
                break;
        }
        if (toVar == null && context != hv1Var) {
            Object[] objArr = bqVar.a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = hv1Var;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i2 = 0;
                    while (true) {
                        String[] strArr = bq.g;
                        if (i2 < 3) {
                            View viewF = bqVar.f(hv1Var, str, strArr[i2]);
                            if (viewF != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = viewF;
                            } else {
                                i2++;
                            }
                        } else {
                            objArr[0] = null;
                            objArr[1] = null;
                        }
                    }
                } else {
                    View viewF2 = bqVar.f(hv1Var, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused) {
                objArr[0] = null;
                objArr[1] = null;
            } catch (Throwable th2) {
                objArr[0] = null;
                objArr[1] = null;
                throw th2;
            }
            toVar = view2;
        }
        if (toVar != null) {
            Context context3 = toVar.getContext();
            if ((context3 instanceof ContextWrapper) && toVar.hasOnClickListeners()) {
                TypedArray typedArrayObtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, bq.c);
                String string2 = typedArrayObtainStyledAttributes3.getString(0);
                if (string2 != null) {
                    toVar.setOnClickListener(new aq(toVar, string2));
                }
                typedArrayObtainStyledAttributes3.recycle();
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray typedArrayObtainStyledAttributes4 = hv1Var.obtainStyledAttributes(attributeSet, bq.d);
                if (typedArrayObtainStyledAttributes4.hasValue(0)) {
                    boolean z = typedArrayObtainStyledAttributes4.getBoolean(0, false);
                    WeakHashMap weakHashMap = dl8.a;
                    new qk8(org.swiftapps.swiftbackup.R.id.tag_accessibility_heading, Boolean.class, 0, 28).g(toVar, Boolean.valueOf(z));
                }
                typedArrayObtainStyledAttributes4.recycle();
                TypedArray typedArrayObtainStyledAttributes5 = hv1Var.obtainStyledAttributes(attributeSet, bq.e);
                if (typedArrayObtainStyledAttributes5.hasValue(0)) {
                    dl8.o(toVar, typedArrayObtainStyledAttributes5.getString(0));
                }
                typedArrayObtainStyledAttributes5.recycle();
                TypedArray typedArrayObtainStyledAttributes6 = hv1Var.obtainStyledAttributes(attributeSet, bq.f);
                if (typedArrayObtainStyledAttributes6.hasValue(0)) {
                    boolean z2 = typedArrayObtainStyledAttributes6.getBoolean(0, false);
                    WeakHashMap weakHashMap2 = dl8.a;
                    new nk8(org.swiftapps.swiftbackup.R.id.tag_screen_reader_focusable, Boolean.class, 0, 28).g(toVar, Boolean.valueOf(z2));
                }
                typedArrayObtainStyledAttributes6.recycle();
            }
        }
        return toVar;
    }

    public final void q(int i, eo eoVar, fc5 fc5Var) {
        if (fc5Var == null) {
            if (eoVar == null && i >= 0) {
                eo[] eoVarArr = this.c0;
                if (i < eoVarArr.length) {
                    eoVar = eoVarArr[i];
                }
            }
            if (eoVar != null) {
                fc5Var = eoVar.h;
            }
        }
        if ((eoVar == null || eoVar.m) && !this.h0) {
            xn xnVar = this.x;
            Window.Callback callback = this.t.getCallback();
            xnVar.getClass();
            try {
                xnVar.e = true;
                callback.onPanelClosed(i, fc5Var);
            } finally {
                xnVar.e = false;
            }
        }
    }

    public final void r(fc5 fc5Var) {
        o8 o8Var;
        if (this.b0) {
            return;
        }
        this.b0 = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.I;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((r88) actionBarOverlayLayout.e).a.a;
        if (actionMenuView != null && (o8Var = actionMenuView.L) != null) {
            o8Var.b();
            g8 g8Var = o8Var.M;
            if (g8Var != null && g8Var.b()) {
                g8Var.j.dismiss();
            }
        }
        Window.Callback callback = this.t.getCallback();
        if (callback != null && !this.h0) {
            callback.onPanelClosed(108, fc5Var);
        }
        this.b0 = false;
    }

    public final void s(eo eoVar, boolean z) {
        co coVar;
        ActionBarOverlayLayout actionBarOverlayLayout;
        if (z && eoVar.a == 0 && (actionBarOverlayLayout = this.I) != null) {
            actionBarOverlayLayout.k();
            if (((r88) actionBarOverlayLayout.e).a.o()) {
                r(eoVar.h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.r.getSystemService("window");
        if (windowManager != null && eoVar.m && (coVar = eoVar.e) != null) {
            windowManager.removeView(coVar);
            if (z) {
                q(eoVar.a, eoVar, null);
            }
        }
        eoVar.k = false;
        eoVar.l = false;
        eoVar.m = false;
        eoVar.f = null;
        eoVar.n = true;
        if (this.d0 == eoVar) {
            this.d0 = null;
        }
        if (eoVar.a == 0) {
            I();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    /* JADX WARN: Code duplicated, block: B:23:0x004a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x007b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0085  */
    /* JADX WARN: Code duplicated, block: B:68:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:85:0x0113  */
    /* JADX WARN: Code duplicated, block: B:87:0x0121  */
    /* JADX WARN: Code duplicated, block: B:89:0x0125  */
    /* JADX WARN: Code duplicated, block: B:91:0x012d  */
    /* JADX WARN: Code duplicated, block: B:94:0x0134 A[RETURN] */
    public final boolean u(KeyEvent keyEvent) {
        View decorView;
        int keyCode;
        eo eoVarZ;
        ActionBarOverlayLayout actionBarOverlayLayout;
        Context context;
        boolean z;
        boolean zU;
        boolean zG;
        AudioManager audioManager;
        Toolbar toolbar;
        ActionMenuView actionMenuView;
        o8 o8Var;
        eo eoVarZ2;
        Object obj = this.q;
        if ((!(obj instanceof mo4) && !(obj instanceof ho)) || (decorView = this.t.getDecorView()) == null || !tu0.h(decorView, keyEvent)) {
            if (keyEvent.getKeyCode() == 82) {
                xn xnVar = this.x;
                Window.Callback callback = this.t.getCallback();
                xnVar.getClass();
                try {
                    xnVar.d = true;
                    boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                    xnVar.d = false;
                    if (!zDispatchKeyEvent) {
                        keyCode = keyEvent.getKeyCode();
                        if (keyEvent.getAction() == 0) {
                            if (keyCode != 4) {
                                this.e0 = (keyEvent.getFlags() & 128) != 0;
                                return false;
                            }
                            if (keyCode == 82) {
                                if (keyEvent.getRepeatCount() == 0) {
                                    eoVarZ2 = z(0);
                                    if (!eoVarZ2.m) {
                                        G(eoVarZ2, keyEvent);
                                        return true;
                                    }
                                }
                            }
                            return false;
                        }
                        if (keyCode != 4) {
                            if (keyCode == 82) {
                                if (this.L == null) {
                                    eoVarZ = z(0);
                                    actionBarOverlayLayout = this.I;
                                    context = this.r;
                                    if (actionBarOverlayLayout != null) {
                                        actionBarOverlayLayout.k();
                                        toolbar = ((r88) actionBarOverlayLayout.e).a;
                                        if (toolbar.getVisibility() == 0 || (actionMenuView = toolbar.a) == null || !actionMenuView.K || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                                            z = eoVarZ.m;
                                            if (!z || eoVarZ.l) {
                                                s(eoVarZ, true);
                                                zU = z;
                                            } else {
                                                if (eoVarZ.k) {
                                                    if (eoVarZ.o) {
                                                        eoVarZ.k = false;
                                                        zG = G(eoVarZ, keyEvent);
                                                    } else {
                                                        zG = true;
                                                    }
                                                    if (zG) {
                                                        E(eoVarZ, keyEvent);
                                                        zU = true;
                                                    }
                                                }
                                                zU = false;
                                            }
                                        } else {
                                            ActionBarOverlayLayout actionBarOverlayLayout2 = this.I;
                                            actionBarOverlayLayout2.k();
                                            if (((r88) actionBarOverlayLayout2.e).a.o()) {
                                                ActionBarOverlayLayout actionBarOverlayLayout3 = this.I;
                                                actionBarOverlayLayout3.k();
                                                ActionMenuView actionMenuView2 = ((r88) actionBarOverlayLayout3.e).a.a;
                                                if (actionMenuView2 != null && (o8Var = actionMenuView2.L) != null && o8Var.b()) {
                                                    zU = true;
                                                }
                                            } else if (!this.h0 && G(eoVarZ, keyEvent)) {
                                                ActionBarOverlayLayout actionBarOverlayLayout4 = this.I;
                                                actionBarOverlayLayout4.k();
                                                zU = ((r88) actionBarOverlayLayout4.e).a.u();
                                            }
                                            zU = false;
                                        }
                                    } else {
                                        z = eoVarZ.m;
                                        if (z) {
                                        }
                                        s(eoVarZ, true);
                                        zU = z;
                                    }
                                    if (zU) {
                                        audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                                        if (audioManager != null) {
                                            audioManager.playSoundEffect(0);
                                            return true;
                                        }
                                        Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                        return true;
                                    }
                                }
                            }
                            return false;
                        }
                        if (D()) {
                            return false;
                        }
                    }
                } catch (Throwable th) {
                    xnVar.d = false;
                    throw th;
                }
            } else {
                keyCode = keyEvent.getKeyCode();
                if (keyEvent.getAction() == 0) {
                    if (keyCode != 4) {
                        this.e0 = (keyEvent.getFlags() & 128) != 0;
                        return false;
                    }
                    if (keyCode == 82) {
                        if (keyEvent.getRepeatCount() == 0) {
                            eoVarZ2 = z(0);
                            if (!eoVarZ2.m) {
                                G(eoVarZ2, keyEvent);
                                return true;
                            }
                        }
                    }
                    return false;
                }
                if (keyCode != 4) {
                    if (keyCode == 82) {
                        if (this.L == null) {
                            eoVarZ = z(0);
                            actionBarOverlayLayout = this.I;
                            context = this.r;
                            if (actionBarOverlayLayout != null) {
                                actionBarOverlayLayout.k();
                                toolbar = ((r88) actionBarOverlayLayout.e).a;
                                if (toolbar.getVisibility() == 0) {
                                    z = eoVarZ.m;
                                    if (z) {
                                    }
                                    s(eoVarZ, true);
                                    zU = z;
                                } else {
                                    z = eoVarZ.m;
                                    if (z) {
                                    }
                                    s(eoVarZ, true);
                                    zU = z;
                                }
                            } else {
                                z = eoVarZ.m;
                                if (z) {
                                }
                                s(eoVarZ, true);
                                zU = z;
                            }
                            if (zU) {
                                audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                                if (audioManager != null) {
                                    audioManager.playSoundEffect(0);
                                    return true;
                                }
                                Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                return true;
                            }
                        }
                    }
                    return false;
                }
                if (D()) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void v(int i) {
        eo eoVarZ = z(i);
        if (eoVarZ.h != null) {
            Bundle bundle = new Bundle();
            eoVarZ.h.t(bundle);
            if (bundle.size() > 0) {
                eoVarZ.p = bundle;
            }
            eoVarZ.h.w();
            eoVarZ.h.clear();
        }
        eoVarZ.o = true;
        eoVarZ.n = true;
        if ((i == 108 || i == 0) && this.I != null) {
            eo eoVarZ2 = z(0);
            eoVarZ2.k = false;
            G(eoVarZ2, null);
        }
    }

    public final void w() {
        ViewGroup viewGroup;
        if (this.Q) {
            return;
        }
        Context context = this.r;
        int[] iArr = ge6.j;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            l0.e("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
            return;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            h(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            h(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            h(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            h(10);
        }
        this.Z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        x();
        this.t.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.a0) {
            viewGroup = this.Y ? (ViewGroup) layoutInflaterFrom.inflate(org.swiftapps.swiftbackup.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(org.swiftapps.swiftbackup.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.Z) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(org.swiftapps.swiftbackup.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.X = false;
            this.W = false;
        } else if (this.W) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(org.swiftapps.swiftbackup.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new hv1(context, typedValue.resourceId) : context).inflate(org.swiftapps.swiftbackup.R.layout.abc_screen_toolbar, (ViewGroup) null);
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) viewGroup.findViewById(org.swiftapps.swiftbackup.R.id.decor_content_parent);
            this.I = actionBarOverlayLayout;
            actionBarOverlayLayout.setWindowCallback(this.t.getCallback());
            if (this.X) {
                this.I.j(109);
            }
            if (this.U) {
                this.I.j(2);
            }
            if (this.V) {
                this.I.j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            StringBuilder sb = new StringBuilder("AppCompat does not support the current theme features: { windowActionBar: ");
            sb.append(this.W);
            sb.append(", windowActionBarOverlay: ");
            sb.append(this.X);
            sb.append(", android:windowIsFloating: ");
            sb.append(this.Z);
            sb.append(", windowActionModeOverlay: ");
            sb.append(this.Y);
            sb.append(", windowNoTitle: ");
            c6.f(dj7.p(sb, this.a0, " }"));
            return;
        }
        int i = 4;
        rb rbVar = new rb(this, i);
        WeakHashMap weakHashMap = dl8.a;
        uk8.c(viewGroup, rbVar);
        if (this.I == null) {
            this.S = (TextView) viewGroup.findViewById(org.swiftapps.swiftbackup.R.id.title);
        }
        boolean z = xm8.a;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException e) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(org.swiftapps.swiftbackup.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.t.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.t.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new zq8(this, i));
        this.R = viewGroup;
        Object obj = this.q;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.H;
        if (!TextUtils.isEmpty(title)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.I;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setWindowTitle(title);
            } else {
                nc8 nc8Var = this.y;
                if (nc8Var != null) {
                    nc8Var.g0(title);
                } else {
                    TextView textView = this.S;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.R.findViewById(R.id.content);
        View decorView = this.t.getDecorView();
        contentFrameLayout2.k.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.Q = true;
        eo eoVarZ = z(0);
        if (this.h0 || eoVarZ.h != null) {
            return;
        }
        B(108);
    }

    public final void x() {
        if (this.t == null) {
            Object obj = this.q;
            if (obj instanceof Activity) {
                o(((Activity) obj).getWindow());
            }
        }
        if (this.t != null) {
            return;
        }
        l0.e("We have not been given a Window");
    }

    public final ao y(Context context) {
        if (this.n0 == null) {
            if (bp0.d == null) {
                Context applicationContext = context.getApplicationContext();
                LocationManager locationManager = (LocationManager) applicationContext.getSystemService("location");
                bp0 bp0Var = new bp0();
                bp0Var.c = new rb8();
                bp0Var.a = applicationContext;
                bp0Var.b = locationManager;
                bp0.d = bp0Var;
            }
            this.n0 = new bo(this, bp0.d);
        }
        return this.n0;
    }

    public final eo z(int i) {
        eo[] eoVarArr = this.c0;
        if (eoVarArr == null || eoVarArr.length <= i) {
            eo[] eoVarArr2 = new eo[i + 1];
            if (eoVarArr != null) {
                System.arraycopy(eoVarArr, 0, eoVarArr2, 0, eoVarArr.length);
            }
            this.c0 = eoVarArr2;
            eoVarArr = eoVarArr2;
        }
        eo eoVar = eoVarArr[i];
        if (eoVar != null) {
            return eoVar;
        }
        eo eoVar2 = new eo();
        eoVar2.a = i;
        eoVar2.n = false;
        eoVarArr[i] = eoVar2;
        return eoVar2;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
