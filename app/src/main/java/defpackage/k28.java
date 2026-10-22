package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k28 extends zm {
    public Integer d;
    public final gv7 a = new gv7(new hs4(this, 15));
    public final boolean b = true;
    public final boolean c = true;
    public final boolean e = true;
    public final gv7 f = new gv7(new b56(this, 1));
    public final gv7 k = new gv7(new no5(this, 7));

    public final void n(View... viewArr) {
        if (t()) {
            int iP = p();
            io4.a(this).setBackgroundColor(iP);
            Iterator it = ((ArrayList) x50.p0(viewArr)).iterator();
            while (it.hasNext()) {
                ((View) it.next()).setBackgroundColor(iP);
            }
            if (b67.f()) {
                return;
            }
            getWindow().setStatusBarColor(iP);
        }
    }

    public final boolean o() {
        TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(ge6.j);
        typedArrayObtainStyledAttributes.getClass();
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(117);
        typedArrayObtainStyledAttributes.recycle();
        if (!zHasValue) {
            finishAffinity();
            Context applicationContext = getApplicationContext();
            applicationContext.getClass();
            zn4 zn4Var = zn4.a;
            zn4.e(new l30(15, applicationContext, "Theme error: You need to use a Theme.AppCompat theme (or descendant) with this activity."));
        }
        return zHasValue;
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        ActivityManager.TaskDescription taskDescriptionA;
        y13 vv8Var;
        if (u()) {
            h28.Companion.getClass();
            int iD = f28.d(this);
            setTheme(iD);
            this.d = Integer.valueOf(iD);
            if (o()) {
                String str = null;
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z = sharedPreferences.getBoolean("dynamic_colors", true);
                    if (z && b67.d()) {
                        TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(new int[]{R.attr.dynamicColorThemeOverlay});
                        typedArrayObtainStyledAttributes.getClass();
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                        typedArrayObtainStyledAttributes.recycle();
                        if (resourceId != 0) {
                            try {
                                TypedArray typedArrayObtainStyledAttributes2 = obtainStyledAttributes(new int[]{R.attr.dynamicColorThemeOverlay});
                                typedArrayObtainStyledAttributes2.getClass();
                                int resourceId2 = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                                typedArrayObtainStyledAttributes2.recycle();
                                if (resourceId2 != 0) {
                                    setTheme(resourceId2);
                                }
                            } catch (Exception e) {
                                Log.e(r(), "Couldn't apply dynamic colors", e);
                            }
                        }
                    }
                    if (s() && t()) {
                        int iP = p();
                        if (!b67.f()) {
                            getWindow().setStatusBarColor(iP);
                        }
                    }
                    int i = Build.VERSION.SDK_INT;
                    if (i <= 26) {
                        boolean z2 = !v();
                        Window window = getWindow();
                        ge geVar = new ge(getWindow().getDecorView());
                        int i2 = Build.VERSION.SDK_INT;
                        if (i2 >= 35) {
                            vv8Var = new xv8(window, geVar);
                        } else {
                            vv8Var = i2 >= 30 ? new vv8(window, geVar) : new uv8(window, geVar);
                        }
                        vv8Var.C(z2);
                    }
                    int i3 = R.color.blk;
                    if (i < 27) {
                        int color = getColor(R.color.blk);
                        if (!b67.f()) {
                            getWindow().setNavigationBarColor(color);
                        }
                    }
                    if (i < 28) {
                        if (!v()) {
                            i3 = R.color.wht;
                        }
                        int color2 = getColor(i3);
                        if (i < 28) {
                            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher);
                            String packageName = getPackageName();
                            packageName.getClass();
                            try {
                                PackageManager packageManager = getPackageManager();
                                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                                applicationInfo.getClass();
                                CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                                applicationLabel.getClass();
                                str = (String) applicationLabel;
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                            taskDescriptionA = new ActivityManager.TaskDescription(str, bitmapDecodeResource, color2);
                        } else {
                            String packageName2 = getPackageName();
                            packageName2.getClass();
                            try {
                                PackageManager packageManager2 = getPackageManager();
                                ApplicationInfo applicationInfo2 = packageManager2.getApplicationInfo(packageName2, 0);
                                applicationInfo2.getClass();
                                CharSequence applicationLabel2 = packageManager2.getApplicationLabel(applicationInfo2);
                                applicationLabel2.getClass();
                                str = (String) applicationLabel2;
                            } catch (PackageManager.NameNotFoundException unused2) {
                            }
                            taskDescriptionA = qs1.a(color2, str);
                        }
                        setTaskDescription(taskDescriptionA);
                    }
                    if (b67.f()) {
                        w13.r(getWindow(), !q());
                    } else if (b67.b()) {
                        if (!b67.f()) {
                            getWindow().setNavigationBarColor(0);
                        }
                        ((ViewGroup) findViewById(android.R.id.content)).setSystemUiVisibility(768);
                    }
                } catch (ClassCastException unused3) {
                    z = true;
                }
            }
        }
        super.onCreate(bundle);
    }

    public final int p() {
        return ((Number) this.k.getValue()).intValue();
    }

    public boolean q() {
        return this.b;
    }

    public final String r() {
        Object value = this.a.getValue();
        value.getClass();
        return (String) value;
    }

    public boolean s() {
        return this.c;
    }

    @Override // defpackage.zm, defpackage.io1, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        n(view);
    }

    public boolean t() {
        return u() && !((Boolean) this.f.getValue()).booleanValue();
    }

    public boolean u() {
        return this.e;
    }

    public final boolean v() {
        Integer num = this.d;
        if (num == null) {
            return false;
        }
        int iIntValue = num.intValue();
        return iIntValue == R.style.SwiftThemeDark || iIntValue == R.style.SwiftThemeBlack || iIntValue == R.style.HomeThemeDark || iIntValue == R.style.HomeThemeBlack;
    }

    @Override // defpackage.zm, defpackage.io1, android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        n(new View[0]);
    }

    @Override // defpackage.zm, defpackage.io1, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        n(view);
    }
}
