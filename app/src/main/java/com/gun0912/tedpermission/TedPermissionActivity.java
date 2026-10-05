package com.gun0912.tedpermission;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import defpackage.cz5;
import defpackage.lz7;
import defpackage.mz7;
import defpackage.nz7;
import defpackage.od2;
import defpackage.oz7;
import defpackage.pz7;
import defpackage.qz7;
import defpackage.ra;
import defpackage.rz7;
import defpackage.va;
import defpackage.zh8;
import defpackage.zm;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TedPermissionActivity extends zm {
    public static ArrayDeque x;
    public CharSequence a;
    public CharSequence b;
    public CharSequence c;
    public CharSequence d;
    public String[] e;
    public String f;
    public boolean k;
    public String n;
    public String p;
    public String q;
    public boolean r;
    public int t;

    @Override // android.app.Activity
    public final void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public final void n(boolean z) {
        ArrayList arrayList = new ArrayList();
        String[] strArr = this.e;
        int length = strArr.length;
        int i = 0;
        while (true) {
            boolean zCanDrawOverlays = true;
            if (i >= length) {
                break;
            }
            String str = strArr[i];
            if (!str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                Context context = rz7.a;
                if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                    zCanDrawOverlays = Settings.canDrawOverlays(context);
                } else if (zh8.e(context, str) != 0) {
                    zCanDrawOverlays = false;
                }
                if (!zCanDrawOverlays) {
                    arrayList.add(str);
                }
            } else if (!Settings.canDrawOverlays(getApplicationContext())) {
                arrayList.add(str);
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            o(null);
            return;
        }
        if (z) {
            o(arrayList);
            return;
        }
        if (arrayList.size() == 1 && arrayList.contains("android.permission.SYSTEM_ALERT_WINDOW")) {
            o(arrayList);
            return;
        }
        if (this.r || TextUtils.isEmpty(this.b)) {
            zh8.H(this, (String[]) arrayList.toArray(new String[arrayList.size()]), 10);
            return;
        }
        va vaVar = new va(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.a;
        ra raVar = (ra) vaVar.b;
        raVar.d = charSequence;
        raVar.f = this.b;
        raVar.m = false;
        vaVar.h(this.q, new mz7(this, arrayList));
        vaVar.m();
        this.r = true;
    }

    public final void o(ArrayList arrayList) {
        finish();
        overridePendingTransition(0, 0);
        ArrayDeque arrayDeque = x;
        if (arrayDeque != null) {
            cz5 cz5Var = (cz5) arrayDeque.pop();
            if (od2.p(arrayList)) {
                cz5Var.a.b(true, false);
            } else {
                cz5Var.getClass();
                arrayList.getClass();
                Iterator it = arrayList.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    if (!cz5Var.b.shouldShowRequestPermissionRationale((String) it.next())) {
                        z = true;
                    }
                }
                cz5Var.a.b(false, z);
            }
            if (x.size() == 0) {
                x = null;
            }
        }
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i != 30) {
            if (i == 31) {
                n(false);
                return;
            } else if (i != 2000) {
                super.onActivityResult(i, i2, intent);
                return;
            } else {
                n(true);
                return;
            }
        }
        if (Settings.canDrawOverlays(getApplicationContext()) || TextUtils.isEmpty(this.d)) {
            n(false);
            return;
        }
        va vaVar = new va(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.d;
        ra raVar = (ra) vaVar.b;
        raVar.f = charSequence;
        raVar.m = false;
        vaVar.h(this.p, new pz7(this));
        if (this.k) {
            if (TextUtils.isEmpty(this.n)) {
                this.n = getString(R.string.tedpermission_setting);
            }
            vaVar.j(this.n, new qz7(this));
        }
        vaVar.m();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        getWindow().addFlags(16);
        if (bundle != null) {
            this.e = bundle.getStringArray("permissions");
            this.a = bundle.getCharSequence("rationale_title");
            this.b = bundle.getCharSequence("rationale_message");
            this.c = bundle.getCharSequence("deny_title");
            this.d = bundle.getCharSequence("deny_message");
            this.f = bundle.getString("package_name");
            this.k = bundle.getBoolean("setting_button", true);
            this.q = bundle.getString("rationale_confirm_text");
            this.p = bundle.getString("denied_dialog_close_text");
            this.n = bundle.getString("setting_button_text");
            this.t = bundle.getInt("screen_orientation", -1);
        } else {
            Intent intent = getIntent();
            this.e = intent.getStringArrayExtra("permissions");
            this.a = intent.getCharSequenceExtra("rationale_title");
            this.b = intent.getCharSequenceExtra("rationale_message");
            this.c = intent.getCharSequenceExtra("deny_title");
            this.d = intent.getCharSequenceExtra("deny_message");
            this.f = intent.getStringExtra("package_name");
            this.k = intent.getBooleanExtra("setting_button", true);
            this.q = intent.getStringExtra("rationale_confirm_text");
            this.p = intent.getStringExtra("denied_dialog_close_text");
            this.n = intent.getStringExtra("setting_button_text");
            this.t = intent.getIntExtra("screen_orientation", -1);
        }
        String[] strArr = this.e;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else {
                if (strArr[i].equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                    z = !Settings.canDrawOverlays(getApplicationContext());
                    break;
                }
                i++;
            }
        }
        if (z) {
            Intent intent2 = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.fromParts("package", this.f, null));
            if (TextUtils.isEmpty(this.b)) {
                startActivityForResult(intent2, 30);
            } else {
                va vaVar = new va(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
                CharSequence charSequence = this.b;
                ra raVar = (ra) vaVar.b;
                raVar.f = charSequence;
                raVar.m = false;
                vaVar.h(this.q, new lz7(this, intent2));
                vaVar.m();
                this.r = true;
            }
        } else {
            n(false);
        }
        setRequestedOrientation(this.t);
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        Context context = rz7.a;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Context context2 = rz7.a;
            if (!(str.equals("android.permission.SYSTEM_ALERT_WINDOW") ? Settings.canDrawOverlays(context2) : zh8.e(context2, str) == 0)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            o(null);
            return;
        }
        if (TextUtils.isEmpty(this.d)) {
            o(arrayList);
            return;
        }
        va vaVar = new va(this, R.style.Theme_AppCompat_Light_Dialog_Alert);
        CharSequence charSequence = this.c;
        ra raVar = (ra) vaVar.b;
        raVar.d = charSequence;
        raVar.f = this.d;
        raVar.m = false;
        vaVar.h(this.p, new nz7(this, arrayList));
        if (this.k) {
            if (TextUtils.isEmpty(this.n)) {
                this.n = getString(R.string.tedpermission_setting);
            }
            vaVar.j(this.n, new oz7(this));
        }
        vaVar.m();
    }

    @Override // defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putStringArray("permissions", this.e);
        bundle.putCharSequence("rationale_title", this.a);
        bundle.putCharSequence("rationale_message", this.b);
        bundle.putCharSequence("deny_title", this.c);
        bundle.putCharSequence("deny_message", this.d);
        bundle.putString("package_name", this.f);
        bundle.putBoolean("setting_button", this.k);
        bundle.putString("denied_dialog_close_text", this.p);
        bundle.putString("rationale_confirm_text", this.q);
        bundle.putString("setting_button_text", this.n);
        super.onSaveInstanceState(bundle);
    }
}
