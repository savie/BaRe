package defpackage;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.u;
import com.nimbusds.jose.crypto.impl.XC20P;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zm extends u implements dn {
    private fo mDelegate;

    public zm() {
        getSavedStateRegistry().h("androidx:appcompat", new xm(this));
        addOnContextAvailableListener(new ym(this));
    }

    @Override // defpackage.io1, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        fo foVar = (fo) getDelegate();
        foVar.w();
        ((ViewGroup) foVar.R.findViewById(R.id.content)).addView(view, layoutParams);
        foVar.x.a(foVar.t.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0193  */
    /* JADX WARN: Code duplicated, block: B:105:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:108:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:111:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:114:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:117:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:118:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:122:0x01de  */
    /* JADX WARN: Code duplicated, block: B:124:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:136:0x020d A[Catch: all -> 0x0201, TRY_LEAVE, TryCatch #0 {, blocks: (B:127:0x01ef, B:129:0x01f3, B:135:0x020b, B:136:0x020d, B:138:0x0211, B:144:0x0221, B:143:0x0218, B:134:0x0204), top: B:154:0x01ef, inners: #5 }] */
    /* JADX WARN: Code duplicated, block: B:154:0x01ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x01f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x0211 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0098  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:60:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:66:0x0105  */
    /* JADX WARN: Code duplicated, block: B:69:0x010d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0115  */
    /* JADX WARN: Code duplicated, block: B:75:0x011d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0125  */
    /* JADX WARN: Code duplicated, block: B:81:0x012d  */
    /* JADX WARN: Code duplicated, block: B:84:0x0139  */
    /* JADX WARN: Code duplicated, block: B:87:0x0148  */
    /* JADX WARN: Code duplicated, block: B:90:0x0157  */
    /* JADX WARN: Code duplicated, block: B:93:0x0166  */
    /* JADX WARN: Code duplicated, block: B:96:0x0175  */
    /* JADX WARN: Code duplicated, block: B:99:0x0184  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Configuration configuration;
        Configuration configuration2;
        Configuration configuration3;
        hv1 hv1Var;
        Resources.Theme theme;
        Method method;
        float f;
        float f2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        fo foVar = (fo) getDelegate();
        foVar.f0 = true;
        int i41 = foVar.j0;
        if (i41 == -100) {
            i41 = nn.b;
        }
        int iC = foVar.C(context, i41);
        int i42 = 0;
        if (nn.c(context) && nn.c(context)) {
            if (Build.VERSION.SDK_INT < 33) {
                synchronized (nn.p) {
                    try {
                        h05 h05Var = nn.c;
                        if (h05Var == null) {
                            if (nn.d == null) {
                                nn.d = h05.a(iz1.x(context));
                            }
                            if (!nn.d.a.a.isEmpty()) {
                                nn.c = nn.d;
                            }
                        } else if (!h05Var.equals(nn.d)) {
                            h05 h05Var2 = nn.c;
                            nn.d = h05Var2;
                            iz1.r(context, h05Var2.a.a.toLanguageTags());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (!nn.f) {
                nn.a.execute(new in(context, i42));
            }
        }
        h05 h05VarP = fo.p(context);
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(fo.t(context, iC, h05VarP, null, false));
            } catch (IllegalStateException unused) {
                if (context instanceof hv1) {
                    try {
                        ((hv1) context).a(fo.t(context, iC, h05VarP, null, false));
                    } catch (IllegalStateException unused2) {
                        if (fo.A0) {
                            Configuration configuration4 = new Configuration();
                            configuration4.uiMode = -1;
                            configuration4.fontScale = 0.0f;
                            configuration = context.createConfigurationContext(configuration4).getResources().getConfiguration();
                            configuration2 = context.getResources().getConfiguration();
                            configuration.uiMode = configuration2.uiMode;
                            if (configuration.equals(configuration2)) {
                                configuration3 = null;
                            } else {
                                configuration3 = new Configuration();
                                configuration3.fontScale = 0.0f;
                                if (configuration.diff(configuration2) != 0) {
                                    f = configuration.fontScale;
                                    f2 = configuration2.fontScale;
                                    if (f != f2) {
                                        configuration3.fontScale = f2;
                                    }
                                    i = configuration.mcc;
                                    i2 = configuration2.mcc;
                                    if (i != i2) {
                                        configuration3.mcc = i2;
                                    }
                                    i3 = configuration.mnc;
                                    i4 = configuration2.mnc;
                                    if (i3 != i4) {
                                        configuration3.mnc = i4;
                                    }
                                    un.a(configuration, configuration2, configuration3);
                                    i5 = configuration.touchscreen;
                                    i6 = configuration2.touchscreen;
                                    if (i5 != i6) {
                                        configuration3.touchscreen = i6;
                                    }
                                    i7 = configuration.keyboard;
                                    i8 = configuration2.keyboard;
                                    if (i7 != i8) {
                                        configuration3.keyboard = i8;
                                    }
                                    i9 = configuration.keyboardHidden;
                                    i10 = configuration2.keyboardHidden;
                                    if (i9 != i10) {
                                        configuration3.keyboardHidden = i10;
                                    }
                                    i11 = configuration.navigation;
                                    i12 = configuration2.navigation;
                                    if (i11 != i12) {
                                        configuration3.navigation = i12;
                                    }
                                    i13 = configuration.navigationHidden;
                                    i14 = configuration2.navigationHidden;
                                    if (i13 != i14) {
                                        configuration3.navigationHidden = i14;
                                    }
                                    i15 = configuration.orientation;
                                    i16 = configuration2.orientation;
                                    if (i15 != i16) {
                                        configuration3.orientation = i16;
                                    }
                                    i17 = configuration.screenLayout & 15;
                                    i18 = configuration2.screenLayout & 15;
                                    if (i17 != i18) {
                                        configuration3.screenLayout |= i18;
                                    }
                                    i19 = configuration.screenLayout & XC20P.IV_BIT_LENGTH;
                                    i20 = configuration2.screenLayout & XC20P.IV_BIT_LENGTH;
                                    if (i19 != i20) {
                                        configuration3.screenLayout |= i20;
                                    }
                                    i21 = configuration.screenLayout & 48;
                                    i22 = configuration2.screenLayout & 48;
                                    if (i21 != i22) {
                                        configuration3.screenLayout |= i22;
                                    }
                                    i23 = configuration.screenLayout & 768;
                                    i24 = configuration2.screenLayout & 768;
                                    if (i23 != i24) {
                                        configuration3.screenLayout |= i24;
                                    }
                                    i25 = configuration.colorMode & 3;
                                    i26 = configuration2.colorMode & 3;
                                    if (i25 != i26) {
                                        configuration3.colorMode |= i26;
                                    }
                                    i27 = configuration.colorMode & 12;
                                    i28 = configuration2.colorMode & 12;
                                    if (i27 != i28) {
                                        configuration3.colorMode |= i28;
                                    }
                                    i29 = configuration.uiMode & 15;
                                    i30 = configuration2.uiMode & 15;
                                    if (i29 != i30) {
                                        configuration3.uiMode |= i30;
                                    }
                                    i31 = configuration.uiMode & 48;
                                    i32 = configuration2.uiMode & 48;
                                    if (i31 != i32) {
                                        configuration3.uiMode |= i32;
                                    }
                                    i33 = configuration.screenWidthDp;
                                    i34 = configuration2.screenWidthDp;
                                    if (i33 != i34) {
                                        configuration3.screenWidthDp = i34;
                                    }
                                    i35 = configuration.screenHeightDp;
                                    i36 = configuration2.screenHeightDp;
                                    if (i35 != i36) {
                                        configuration3.screenHeightDp = i36;
                                    }
                                    i37 = configuration.smallestScreenWidthDp;
                                    i38 = configuration2.smallestScreenWidthDp;
                                    if (i37 != i38) {
                                        configuration3.smallestScreenWidthDp = i38;
                                    }
                                    i39 = configuration.densityDpi;
                                    i40 = configuration2.densityDpi;
                                    if (i39 != i40) {
                                        configuration3.densityDpi = i40;
                                    }
                                }
                            }
                            Configuration configurationT = fo.t(context, iC, h05VarP, configuration3, true);
                            hv1Var = new hv1(context, org.swiftapps.swiftbackup.R.style.Theme_AppCompat_Empty);
                            hv1Var.a(configurationT);
                            try {
                                if (context.getTheme() != null) {
                                    theme = hv1Var.getTheme();
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        du.h(theme);
                                    } else {
                                        synchronized (xh8.k) {
                                            if (xh8.p) {
                                                method = xh8.n;
                                                if (method != null) {
                                                    method.invoke(theme, null);
                                                }
                                            } else {
                                                try {
                                                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                                    xh8.n = declaredMethod;
                                                    declaredMethod.setAccessible(true);
                                                } catch (NoSuchMethodException e) {
                                                    Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                                                }
                                                xh8.p = true;
                                                method = xh8.n;
                                                if (method != null) {
                                                    try {
                                                        method.invoke(theme, null);
                                                    } catch (IllegalAccessException | InvocationTargetException e2) {
                                                        Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                                                        xh8.n = null;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } catch (NullPointerException unused3) {
                            }
                            context = hv1Var;
                        }
                    }
                } else if (fo.A0) {
                    Configuration configuration5 = new Configuration();
                    configuration5.uiMode = -1;
                    configuration5.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration5).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (configuration.equals(configuration2)) {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f = configuration.fontScale;
                            f2 = configuration2.fontScale;
                            if (f != f2) {
                                configuration3.fontScale = f2;
                            }
                            i = configuration.mcc;
                            i2 = configuration2.mcc;
                            if (i != i2) {
                                configuration3.mcc = i2;
                            }
                            i3 = configuration.mnc;
                            i4 = configuration2.mnc;
                            if (i3 != i4) {
                                configuration3.mnc = i4;
                            }
                            un.a(configuration, configuration2, configuration3);
                            i5 = configuration.touchscreen;
                            i6 = configuration2.touchscreen;
                            if (i5 != i6) {
                                configuration3.touchscreen = i6;
                            }
                            i7 = configuration.keyboard;
                            i8 = configuration2.keyboard;
                            if (i7 != i8) {
                                configuration3.keyboard = i8;
                            }
                            i9 = configuration.keyboardHidden;
                            i10 = configuration2.keyboardHidden;
                            if (i9 != i10) {
                                configuration3.keyboardHidden = i10;
                            }
                            i11 = configuration.navigation;
                            i12 = configuration2.navigation;
                            if (i11 != i12) {
                                configuration3.navigation = i12;
                            }
                            i13 = configuration.navigationHidden;
                            i14 = configuration2.navigationHidden;
                            if (i13 != i14) {
                                configuration3.navigationHidden = i14;
                            }
                            i15 = configuration.orientation;
                            i16 = configuration2.orientation;
                            if (i15 != i16) {
                                configuration3.orientation = i16;
                            }
                            i17 = configuration.screenLayout & 15;
                            i18 = configuration2.screenLayout & 15;
                            if (i17 != i18) {
                                configuration3.screenLayout |= i18;
                            }
                            i19 = configuration.screenLayout & XC20P.IV_BIT_LENGTH;
                            i20 = configuration2.screenLayout & XC20P.IV_BIT_LENGTH;
                            if (i19 != i20) {
                                configuration3.screenLayout |= i20;
                            }
                            i21 = configuration.screenLayout & 48;
                            i22 = configuration2.screenLayout & 48;
                            if (i21 != i22) {
                                configuration3.screenLayout |= i22;
                            }
                            i23 = configuration.screenLayout & 768;
                            i24 = configuration2.screenLayout & 768;
                            if (i23 != i24) {
                                configuration3.screenLayout |= i24;
                            }
                            i25 = configuration.colorMode & 3;
                            i26 = configuration2.colorMode & 3;
                            if (i25 != i26) {
                                configuration3.colorMode |= i26;
                            }
                            i27 = configuration.colorMode & 12;
                            i28 = configuration2.colorMode & 12;
                            if (i27 != i28) {
                                configuration3.colorMode |= i28;
                            }
                            i29 = configuration.uiMode & 15;
                            i30 = configuration2.uiMode & 15;
                            if (i29 != i30) {
                                configuration3.uiMode |= i30;
                            }
                            i31 = configuration.uiMode & 48;
                            i32 = configuration2.uiMode & 48;
                            if (i31 != i32) {
                                configuration3.uiMode |= i32;
                            }
                            i33 = configuration.screenWidthDp;
                            i34 = configuration2.screenWidthDp;
                            if (i33 != i34) {
                                configuration3.screenWidthDp = i34;
                            }
                            i35 = configuration.screenHeightDp;
                            i36 = configuration2.screenHeightDp;
                            if (i35 != i36) {
                                configuration3.screenHeightDp = i36;
                            }
                            i37 = configuration.smallestScreenWidthDp;
                            i38 = configuration2.smallestScreenWidthDp;
                            if (i37 != i38) {
                                configuration3.smallestScreenWidthDp = i38;
                            }
                            i39 = configuration.densityDpi;
                            i40 = configuration2.densityDpi;
                            if (i39 != i40) {
                                configuration3.densityDpi = i40;
                            }
                        }
                    } else {
                        configuration3 = null;
                    }
                    Configuration configurationT2 = fo.t(context, iC, h05VarP, configuration3, true);
                    hv1Var = new hv1(context, org.swiftapps.swiftbackup.R.style.Theme_AppCompat_Empty);
                    hv1Var.a(configurationT2);
                    if (context.getTheme() != null) {
                        theme = hv1Var.getTheme();
                        if (Build.VERSION.SDK_INT >= 29) {
                            du.h(theme);
                        } else {
                            synchronized (xh8.k) {
                                if (xh8.p) {
                                    Method declaredMethod2 = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                    xh8.n = declaredMethod2;
                                    declaredMethod2.setAccessible(true);
                                    xh8.p = true;
                                    method = xh8.n;
                                    if (method != null) {
                                        method.invoke(theme, null);
                                    }
                                } else {
                                    method = xh8.n;
                                    if (method != null) {
                                        method.invoke(theme, null);
                                    }
                                }
                            }
                        }
                    }
                    context = hv1Var;
                }
            }
        } else if (context instanceof hv1) {
            ((hv1) context).a(fo.t(context, iC, h05VarP, null, false));
        } else if (fo.A0) {
            Configuration configuration6 = new Configuration();
            configuration6.uiMode = -1;
            configuration6.fontScale = 0.0f;
            configuration = context.createConfigurationContext(configuration6).getResources().getConfiguration();
            configuration2 = context.getResources().getConfiguration();
            configuration.uiMode = configuration2.uiMode;
            if (configuration.equals(configuration2)) {
                configuration3 = new Configuration();
                configuration3.fontScale = 0.0f;
                if (configuration.diff(configuration2) != 0) {
                    f = configuration.fontScale;
                    f2 = configuration2.fontScale;
                    if (f != f2) {
                        configuration3.fontScale = f2;
                    }
                    i = configuration.mcc;
                    i2 = configuration2.mcc;
                    if (i != i2) {
                        configuration3.mcc = i2;
                    }
                    i3 = configuration.mnc;
                    i4 = configuration2.mnc;
                    if (i3 != i4) {
                        configuration3.mnc = i4;
                    }
                    un.a(configuration, configuration2, configuration3);
                    i5 = configuration.touchscreen;
                    i6 = configuration2.touchscreen;
                    if (i5 != i6) {
                        configuration3.touchscreen = i6;
                    }
                    i7 = configuration.keyboard;
                    i8 = configuration2.keyboard;
                    if (i7 != i8) {
                        configuration3.keyboard = i8;
                    }
                    i9 = configuration.keyboardHidden;
                    i10 = configuration2.keyboardHidden;
                    if (i9 != i10) {
                        configuration3.keyboardHidden = i10;
                    }
                    i11 = configuration.navigation;
                    i12 = configuration2.navigation;
                    if (i11 != i12) {
                        configuration3.navigation = i12;
                    }
                    i13 = configuration.navigationHidden;
                    i14 = configuration2.navigationHidden;
                    if (i13 != i14) {
                        configuration3.navigationHidden = i14;
                    }
                    i15 = configuration.orientation;
                    i16 = configuration2.orientation;
                    if (i15 != i16) {
                        configuration3.orientation = i16;
                    }
                    i17 = configuration.screenLayout & 15;
                    i18 = configuration2.screenLayout & 15;
                    if (i17 != i18) {
                        configuration3.screenLayout |= i18;
                    }
                    i19 = configuration.screenLayout & XC20P.IV_BIT_LENGTH;
                    i20 = configuration2.screenLayout & XC20P.IV_BIT_LENGTH;
                    if (i19 != i20) {
                        configuration3.screenLayout |= i20;
                    }
                    i21 = configuration.screenLayout & 48;
                    i22 = configuration2.screenLayout & 48;
                    if (i21 != i22) {
                        configuration3.screenLayout |= i22;
                    }
                    i23 = configuration.screenLayout & 768;
                    i24 = configuration2.screenLayout & 768;
                    if (i23 != i24) {
                        configuration3.screenLayout |= i24;
                    }
                    i25 = configuration.colorMode & 3;
                    i26 = configuration2.colorMode & 3;
                    if (i25 != i26) {
                        configuration3.colorMode |= i26;
                    }
                    i27 = configuration.colorMode & 12;
                    i28 = configuration2.colorMode & 12;
                    if (i27 != i28) {
                        configuration3.colorMode |= i28;
                    }
                    i29 = configuration.uiMode & 15;
                    i30 = configuration2.uiMode & 15;
                    if (i29 != i30) {
                        configuration3.uiMode |= i30;
                    }
                    i31 = configuration.uiMode & 48;
                    i32 = configuration2.uiMode & 48;
                    if (i31 != i32) {
                        configuration3.uiMode |= i32;
                    }
                    i33 = configuration.screenWidthDp;
                    i34 = configuration2.screenWidthDp;
                    if (i33 != i34) {
                        configuration3.screenWidthDp = i34;
                    }
                    i35 = configuration.screenHeightDp;
                    i36 = configuration2.screenHeightDp;
                    if (i35 != i36) {
                        configuration3.screenHeightDp = i36;
                    }
                    i37 = configuration.smallestScreenWidthDp;
                    i38 = configuration2.smallestScreenWidthDp;
                    if (i37 != i38) {
                        configuration3.smallestScreenWidthDp = i38;
                    }
                    i39 = configuration.densityDpi;
                    i40 = configuration2.densityDpi;
                    if (i39 != i40) {
                        configuration3.densityDpi = i40;
                    }
                }
            } else {
                configuration3 = null;
            }
            Configuration configurationT3 = fo.t(context, iC, h05VarP, configuration3, true);
            hv1Var = new hv1(context, org.swiftapps.swiftbackup.R.style.Theme_AppCompat_Empty);
            hv1Var.a(configurationT3);
            if (context.getTheme() != null) {
                theme = hv1Var.getTheme();
                if (Build.VERSION.SDK_INT >= 29) {
                    du.h(theme);
                } else {
                    synchronized (xh8.k) {
                        if (xh8.p) {
                            Method declaredMethod3 = Resources.Theme.class.getDeclaredMethod("rebase", null);
                            xh8.n = declaredMethod3;
                            declaredMethod3.setAccessible(true);
                            xh8.p = true;
                            method = xh8.n;
                            if (method != null) {
                                method.invoke(theme, null);
                            }
                        } else {
                            method = xh8.n;
                            if (method != null) {
                                method.invoke(theme, null);
                            }
                        }
                    }
                }
            }
            context = hv1Var;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        nc8 supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.i()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // defpackage.ho1, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        nc8 supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.S(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final <T extends View> T findViewById(int i) {
        fo foVar = (fo) getDelegate();
        foVar.w();
        return (T) foVar.t.findViewById(i);
    }

    public final nn getDelegate() {
        if (this.mDelegate == null) {
            mn mnVar = nn.a;
            this.mDelegate = new fo(this, null, this, this);
        }
        return this.mDelegate;
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        fo foVar = (fo) getDelegate();
        if (foVar.G == null) {
            foVar.A();
            nc8 nc8Var = foVar.y;
            foVar.G = new ks7(nc8Var != null ? nc8Var.C() : foVar.r);
        }
        return foVar.G;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = sj8.a;
        return super.getResources();
    }

    public final nc8 getSupportActionBar() {
        fo foVar = (fo) getDelegate();
        foVar.A();
        return foVar.y;
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        getDelegate().b();
    }

    @Override // defpackage.io1, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        fo foVar = (fo) getDelegate();
        if (foVar.W && foVar.Q) {
            foVar.A();
            nc8 nc8Var = foVar.y;
            if (nc8Var != null) {
                nc8Var.N();
            }
        }
        jo joVarA = jo.a();
        Context context = foVar.r;
        synchronized (joVarA) {
            yl6 yl6Var = joVarA.a;
            synchronized (yl6Var) {
                v15 v15Var = (v15) yl6Var.b.get(context);
                if (v15Var != null) {
                    v15Var.a();
                }
            }
        }
        foVar.i0 = new Configuration(foVar.r.getResources().getConfiguration());
        foVar.n(false, false);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().f();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent intentH;
        if (!super.onMenuItemSelected(i, menuItem)) {
            nc8 supportActionBar = getSupportActionBar();
            if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.B() & 4) == 0 || (intentH = rs9.h(this)) == null) {
                return false;
            }
            if (!shouldUpRecreateTask(intentH)) {
                navigateUpTo(intentH);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent intentH2 = rs9.h(this);
            if (intentH2 == null) {
                intentH2 = rs9.h(this);
            }
            if (intentH2 != null) {
                ComponentName component = intentH2.getComponent();
                if (component == null) {
                    component = intentH2.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent intentI = rs9.i(this, component);
                    while (intentI != null) {
                        arrayList.add(size, intentI);
                        intentI = rs9.i(this, intentI.getComponent());
                    }
                    arrayList.add(intentH2);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e);
                }
            }
            if (arrayList.isEmpty()) {
                l0.e("No intents added to TaskStackBuilder; cannot startActivities");
                return false;
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            startActivities(intentArr, null);
            try {
                finishAffinity();
            } catch (IllegalStateException unused) {
                finish();
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((fo) getDelegate()).w();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        fo foVar = (fo) getDelegate();
        foVar.A();
        nc8 nc8Var = foVar.y;
        if (nc8Var != null) {
            nc8Var.c0(true);
        }
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onStart() {
        super.onStart();
        ((fo) getDelegate()).n(true, false);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onStop() {
        super.onStop();
        fo foVar = (fo) getDelegate();
        foVar.A();
        nc8 nc8Var = foVar.y;
        if (nc8Var != null) {
            nc8Var.c0(false);
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().l(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        nc8 supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.U()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public void setContentView(int i) {
        initializeViewTreeOwners();
        getDelegate().i(i);
    }

    public final void setSupportActionBar(Toolbar toolbar) {
        fo foVar = (fo) getDelegate();
        if (foVar.q instanceof Activity) {
            foVar.A();
            nc8 nc8Var = foVar.y;
            if (nc8Var instanceof ou8) {
                l0.e("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
                return;
            }
            foVar.G = null;
            if (nc8Var != null) {
                nc8Var.O();
            }
            foVar.y = null;
            if (toolbar != null) {
                Object obj = foVar.q;
                o88 o88Var = new o88(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : foVar.H, foVar.x);
                foVar.y = o88Var;
                foVar.x.b = o88Var.g;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                foVar.x.b = null;
            }
            foVar.b();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((fo) getDelegate()).k0 = i;
    }

    @Override // defpackage.io1, android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        getDelegate().j(view);
    }

    @Override // defpackage.io1, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().k(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }
}
