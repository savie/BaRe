package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pa7 extends fm0 implements t36 {
    public final gv7 G;
    public final gv7 H;
    public final gv7 I;
    public final gv7 J;
    public final Handler K;
    public i41 L;
    public boolean M;
    public final gv7 q;
    public final gv7 x;
    public final gv7 y;
    public final boolean p = true;
    public final gv7 r = new gv7(new mo3(this, 14));
    public final gv7 t = new gv7(new xq4(this, 14));

    public pa7() {
        final int i = 0;
        this.q = new gv7(new bt3(this) { // from class: ma7
            public final /* synthetic */ pa7 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                pa7 pa7Var = this.b;
                switch (i2) {
                    case 0:
                        Preference preferenceJ = pa7Var.j("app_theme");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = pa7Var.j("backup_storage_location");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        new gv7(new as4(this, 15));
        this.x = new gv7(new pr4(this, 11));
        this.y = new gv7(new yi5(this, 7));
        this.G = new gv7(new to5(this, 8));
        this.H = new gv7(new hs4(this, 12));
        final int i2 = 1;
        this.I = new gv7(new bt3(this) { // from class: ma7
            public final /* synthetic */ pa7 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                pa7 pa7Var = this.b;
                switch (i3) {
                    case 0:
                        Preference preferenceJ = pa7Var.j("app_theme");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = pa7Var.j("backup_storage_location");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        this.J = new gv7(new no5(this, 5));
        this.K = new Handler(Looper.getMainLooper());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        SettingsActivity settingsActivity;
        Boolean boolValueOf;
        SettingsActivity settingsActivity2;
        Boolean boolValueOf2;
        final SettingsActivity settingsActivity3;
        String str = preference.t;
        if (str != null) {
            int i = 2;
            Object objValueOf = 0;
            objValueOf = 0;
            boolValueOf = null;
            Boolean boolValueOf3 = null;
            switch (str.hashCode()) {
                case -1840647503:
                    if (str.equals("translation")) {
                        ai8.k(requireActivity(), "https://t.me/swifttranslators");
                    }
                    break;
                case -1725063209:
                    if (str.equals("encryption_password")) {
                        ai8.q(requireActivity(), PasswordStrategyActivity.class);
                        return false;
                    }
                    break;
                case -1613589672:
                    if (str.equals("language")) {
                        ai8.q(requireActivity(), LocaleActivity.class);
                        return false;
                    }
                    break;
                case -1600671021:
                    if (str.equals("app_backups")) {
                        int i2 = SettingsDetailActivity.R;
                        u uVarRequireActivity = requireActivity();
                        String string = getString(R.string.app_backups);
                        string.getClass();
                        jb9.g0(uVarRequireActivity, 1, string);
                        return false;
                    }
                    break;
                case -1329154016:
                    if (str.equals("folder_backups")) {
                        int i3 = SettingsDetailActivity.R;
                        u uVarRequireActivity2 = requireActivity();
                        String string2 = getString(R.string.folder_backups);
                        string2.getClass();
                        jb9.g0(uVarRequireActivity2, 8, string2);
                        return false;
                    }
                    break;
                case -1234012787:
                    if (str.equals("play_notification_sounds")) {
                        try {
                            SharedPreferences sharedPreferences = cz4.f;
                            if (sharedPreferences == null) {
                                pe4.F("prefs");
                                throw null;
                            }
                            sharedPreferences.getBoolean("play_notification_sounds", true);
                            ((MSwitchPreference) this.G.getValue()).getClass();
                            break;
                        } catch (ClassCastException unused) {
                        }
                    }
                    break;
                case -660139562:
                    if (str.equals("backup_storage_location")) {
                        ai8.q(requireActivity(), StorageSwitchActivity.class);
                        return false;
                    }
                    break;
                case -629482190:
                    if (str.equals("amoled_black_theme")) {
                        f28 f28Var = h28.Companion;
                        boolean z = ((MSwitchPreference) this.t.getValue()).f0;
                        f28Var.getClass();
                        SharedPreferences.Editor editor = cz4.k;
                        if (editor == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor.putBoolean("use_amoled_theme", z).apply();
                        q(true);
                        return false;
                    }
                    break;
                case -420925554:
                    if (str.equals("manage_notifications")) {
                        Intent intent = new Intent();
                        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
                        intent.putExtra("android.provider.extra.APP_PACKAGE", "org.swiftapps.swiftbackup");
                        SettingsActivity settingsActivity4 = (SettingsActivity) getActivity();
                        if (settingsActivity4 != null) {
                            try {
                                settingsActivity4.startActivity(intent);
                            } catch (ActivityNotFoundException e) {
                                Context applicationContext = settingsActivity4.getApplicationContext();
                                applicationContext.getClass();
                                String strValueOf = String.valueOf(e.getMessage());
                                zn4 zn4Var = zn4.a;
                                dj7.y(applicationContext, strValueOf);
                            }
                        }
                    }
                    break;
                case -123912693:
                    if (str.equals("sms_backups")) {
                        int i4 = SettingsDetailActivity.R;
                        u uVarRequireActivity3 = requireActivity();
                        String string3 = getString(R.string.messages_backups);
                        string3.getClass();
                        jb9.g0(uVarRequireActivity3, 2, string3);
                        return false;
                    }
                    break;
                case -5806736:
                    if (str.equals("dynamic_colors")) {
                        boolean z2 = ((MSwitchPreference) this.r.getValue()).f0;
                        SharedPreferences.Editor editor2 = cz4.k;
                        if (editor2 == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor2.putBoolean("dynamic_colors", z2).apply();
                        q(false);
                        return false;
                    }
                    break;
                case 3313798:
                    if (str.equals("labs")) {
                        int i5 = SettingsDetailActivity.R;
                        u uVarRequireActivity4 = requireActivity();
                        String string4 = getString(R.string.swift_labs);
                        string4.getClass();
                        jb9.g0(uVarRequireActivity4, 4, string4);
                        return false;
                    }
                    break;
                case 92611469:
                    if (str.equals("about")) {
                        int i6 = SettingsDetailActivity.R;
                        u uVarRequireActivity5 = requireActivity();
                        String string5 = getString(R.string.about);
                        string5.getClass();
                        jb9.g0(uVarRequireActivity5, 6, string5);
                        return false;
                    }
                    break;
                case 265143165:
                    if (str.equals("import_settings") && (settingsActivity = (SettingsActivity) getActivity()) != null) {
                        try {
                            d45.b.getClass();
                            MFirebaseUser mFirebaseUserA = d45.a();
                            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                            break;
                        } catch (Exception unused2) {
                        }
                        if (pe4.d(boolValueOf, Boolean.TRUE)) {
                            try {
                                d45.b.getClass();
                                MFirebaseUser mFirebaseUserA2 = d45.a();
                                if (mFirebaseUserA2 != null) {
                                    objValueOf = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                                }
                                break;
                            } catch (Exception unused3) {
                            }
                            if (pe4.d(objValueOf, Boolean.TRUE)) {
                                settingsActivity.W("application/json", new hj(settingsActivity, 26));
                            }
                        }
                    }
                    break;
                case 317768423:
                    if (str.equals("cloud_backups")) {
                        int i7 = SettingsDetailActivity.R;
                        u uVarRequireActivity6 = requireActivity();
                        String string6 = getString(R.string.cloud_backups);
                        string6.getClass();
                        jb9.g0(uVarRequireActivity6, 7, string6);
                        return false;
                    }
                    break;
                case 702255532:
                    if (str.equals("manage_space")) {
                        ai8.q(requireActivity(), ManageSpaceActivity.class);
                        return false;
                    }
                    break;
                case 761757459:
                    if (str.equals("help_center")) {
                        Const.B(requireActivity(), "https://www.swiftapps.org/help");
                        return false;
                    }
                    break;
                case 803973105:
                    if (str.equals("restart_app")) {
                        Const.K(requireActivity(), R.string.restart_app, new dl(18), null);
                        return false;
                    }
                    break;
                case 951526432:
                    if (str.equals("contact")) {
                        int i8 = SettingsDetailActivity.R;
                        u uVarRequireActivity7 = requireActivity();
                        String string7 = getString(R.string.contact);
                        string7.getClass();
                        jb9.g0(uVarRequireActivity7, 5, string7);
                        return false;
                    }
                    break;
                case 1536432483:
                    if (str.equals("swiftlogger")) {
                        ai8.q(requireActivity(), SLogActivity.class);
                        return false;
                    }
                    break;
                case 1558692942:
                    if (str.equals("export_settings") && (settingsActivity2 = (SettingsActivity) getActivity()) != null) {
                        try {
                            d45.b.getClass();
                            MFirebaseUser mFirebaseUserA3 = d45.a();
                            boolValueOf2 = mFirebaseUserA3 != null ? Boolean.valueOf(mFirebaseUserA3.isAnonymous()) : null;
                            break;
                        } catch (Exception unused4) {
                        }
                        if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                            try {
                                d45.b.getClass();
                                MFirebaseUser mFirebaseUserA4 = d45.a();
                                if (mFirebaseUserA4 != null) {
                                    boolValueOf3 = Boolean.valueOf(mFirebaseUserA4.isAnonymous());
                                }
                                break;
                            } catch (Exception unused5) {
                            }
                            if (pe4.d(boolValueOf3, Boolean.TRUE)) {
                                settingsActivity2.V("application/json", "swift_backup_settings.json", new nk(12));
                            }
                        }
                    }
                    break;
                case 1843099179:
                    if (str.equals("app_theme") && (settingsActivity3 = (SettingsActivity) getActivity()) != null) {
                        final hj hjVar = new hj(this, 25);
                        final ArrayList arrayListX1 = el1.x1(h28.getEntries());
                        if (Build.VERSION.SDK_INT < 28) {
                            arrayListX1.remove(h28.SYSTEM_DEFAULT);
                        }
                        ArrayList arrayList = new ArrayList(hl1.G0(arrayListX1, 10));
                        Iterator it = arrayListX1.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((h28) it.next()).asString());
                        }
                        CharSequence[] charSequenceArr = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
                        h28.Companion.getClass();
                        final int iIndexOf = arrayListX1.indexOf(f28.b());
                        s35 s35Var = new s35(settingsActivity3, R.style.M3AlertDialogTheme, new hv1(settingsActivity3, R.style.M3AlertDialogTheme), null);
                        s35Var.v(R.string.app_theme);
                        s35Var.u(charSequenceArr, iIndexOf, new DialogInterface.OnClickListener() { // from class: j28
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i9) {
                                dialogInterface.dismiss();
                                if (i9 != iIndexOf) {
                                    h28 h28Var = (h28) arrayListX1.get(i9);
                                    hjVar.invoke(h28Var);
                                    h28Var.getClass();
                                    h28.Companion.getClass();
                                    int themeId = h28Var.getThemeId();
                                    SharedPreferences.Editor editor3 = cz4.k;
                                    if (editor3 == null) {
                                        pe4.F("editor");
                                        throw null;
                                    }
                                    editor3.putInt("app_theme_mode", themeId).apply();
                                    ha7.a.c(AppSettings.Companion.withSavedSettings());
                                    SettingsActivity settingsActivity5 = settingsActivity3;
                                    Integer num = settingsActivity5.d;
                                    int iD = f28.d(settingsActivity5);
                                    if (num != null && num.intValue() == iD) {
                                        return;
                                    }
                                    Log.d(settingsActivity5.r(), "Theme changed, posting ForcedConfigChange");
                                    ny2.b().e(new tq3());
                                }
                            }
                        });
                        s35Var.m();
                        return false;
                    }
                    break;
                case 2014520848:
                    if (str.equals("call_backups")) {
                        int i9 = SettingsDetailActivity.R;
                        u uVarRequireActivity8 = requireActivity();
                        String string8 = getString(R.string.call_logs_backups);
                        string8.getClass();
                        jb9.g0(uVarRequireActivity8, 3, string8);
                        return false;
                    }
                    break;
                case 2023669121:
                    if (str.equals("battery_opt")) {
                        zn4 zn4Var2 = zn4.a;
                        zn4.b(null, new ff1(this, objValueOf, i));
                        return false;
                    }
                    break;
            }
        }
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        boolean z;
        Boolean boolValueOf;
        boolean z2;
        String string;
        int i;
        i(R.xml.settings);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        h28.Companion.getClass();
        ((Preference) this.q.getValue()).B(f28.b().asString());
        ((MSwitchPreference) this.t.getValue()).G(f28.e());
        SettingsActivity settingsActivity = (SettingsActivity) getActivity();
        if (settingsActivity == null) {
            c6.f("Required value was null.");
            return;
        }
        boolean z3 = false;
        if (b67.d()) {
            TypedArray typedArrayObtainStyledAttributes = settingsActivity.obtainStyledAttributes(new int[]{R.attr.dynamicColorThemeOverlay});
            typedArrayObtainStyledAttributes.getClass();
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            if (resourceId != 0) {
                z3 = true;
            }
        }
        gv7 gv7Var = this.r;
        ((MSwitchPreference) gv7Var.getValue()).C(z3);
        MSwitchPreference mSwitchPreference = (MSwitchPreference) gv7Var.getValue();
        Boolean boolValueOf2 = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("dynamic_colors", true);
            mSwitchPreference.G(z);
            Preference preference = (Preference) this.x.getValue();
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
            } catch (Exception unused) {
            }
            preference.C(!pe4.d(boolValueOf, Boolean.TRUE));
            MSwitchPreference mSwitchPreference2 = (MSwitchPreference) this.G.getValue();
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences2.getBoolean("play_notification_sounds", true);
                mSwitchPreference2.G(z2);
                try {
                    SharedPreferences sharedPreferences3 = cz4.f;
                    if (sharedPreferences3 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences3.getString("app_locale", null);
                    String displayLanguage = ((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a()).getDisplayLanguage();
                    Preference preference2 = (Preference) this.H.getValue();
                    if (displayLanguage == null || displayLanguage.length() == 0) {
                        displayLanguage = getString(R.string.default_word);
                    }
                    preference2.B(displayLanguage);
                    ((Preference) this.I.getValue()).B((String) zn7.q.d().f.getValue());
                    Preference preference3 = (Preference) this.J.getValue();
                    ux5 ux5VarJ = yx5.j();
                    ux5VarJ.getClass();
                    int i2 = xx5.a[ux5VarJ.ordinal()];
                    if (i2 == 1) {
                        i = R.string.password_strategy_standard_title;
                    } else {
                        if (i2 != 2) {
                            q.j();
                            return;
                        }
                        i = R.string.password_strategy_user_password_title;
                    }
                    SwiftApp.Companion companion = SwiftApp.d;
                    String string2 = SwiftApp.Companion.c().getString(i);
                    string2.getClass();
                    preference3.B(string2);
                    try {
                        d45.b.getClass();
                        MFirebaseUser mFirebaseUserA2 = d45.a();
                        if (mFirebaseUserA2 != null) {
                            boolValueOf2 = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                        }
                    } catch (Exception unused2) {
                    }
                    if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                        Preference preferenceJ = j("export_settings");
                        if (preferenceJ != null) {
                            preferenceJ.C(true);
                        }
                        Preference preferenceJ2 = j("import_settings");
                        if (preferenceJ2 != null) {
                            preferenceJ2.C(true);
                        }
                    }
                } catch (ClassCastException unused3) {
                    string = null;
                }
            } catch (ClassCastException unused4) {
                z2 = true;
            }
        } catch (ClassCastException unused5) {
            z = true;
        }
    }

    @Override // defpackage.c46, androidx.fragment.app.o
    public final void onStart() {
        int i;
        super.onStart();
        zn4.c(new n55(this, 8));
        Preference preference = (Preference) this.J.getValue();
        ux5 ux5VarJ = yx5.j();
        ux5VarJ.getClass();
        int i2 = xx5.a[ux5VarJ.ordinal()];
        if (i2 == 1) {
            i = R.string.password_strategy_standard_title;
        } else {
            if (i2 != 2) {
                q.j();
                return;
            }
            i = R.string.password_strategy_user_password_title;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(i);
        string.getClass();
        preference.B(string);
    }

    @Override // defpackage.fm0
    public final boolean p() {
        return this.p;
    }

    public final void q(boolean z) {
        this.M = this.M || z;
        i41 i41Var = this.L;
        Handler handler = this.K;
        if (i41Var != null) {
            handler.removeCallbacks(i41Var);
        }
        i41 i41Var2 = new i41(this, 4);
        this.L = i41Var2;
        handler.postDelayed(i41Var2, 300L);
    }
}
