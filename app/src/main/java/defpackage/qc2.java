package defpackage;

import android.content.SharedPreferences;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qc2 {
    public static final qc2 a = new qc2();

    public static void a() {
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences == null) {
            pe4.F("prefs");
            throw null;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.getClass();
        editorEdit.putBoolean("data_sync_fgs_timeout_override_active", false);
        editorEdit.remove("data_sync_fgs_timeout_override_original_exists");
        editorEdit.remove("data_sync_fgs_timeout_override_original_value");
        editorEdit.remove("data_sync_fgs_timeout_override_applied_at");
        editorEdit.commit();
    }

    public static boolean b() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("data_sync_fgs_timeout_override_active", false);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public static ly8 d(String str) {
        String string = str != null ? nq7.H0(str).toString() : null;
        if (string == null) {
            string = "";
        }
        if (string.length() == 0 || string.equalsIgnoreCase("null")) {
            return pc2.f;
        }
        for (int i = 0; i < string.length(); i++) {
            if (!Character.isDigit(string.charAt(i))) {
                return new nc2(string);
            }
        }
        return new oc2(string);
    }

    public static ms8 e(boolean z) {
        String string;
        List listJ = mp6.a.j(z, new String[]{"device_config get activity_manager data_sync_fgs_timeout_duration"}, ip6.SU);
        listJ.getClass();
        String str = (String) el1.U0(listJ);
        return (str == null || (string = nq7.H0(str).toString()) == null) ? mc2.d : new lc2(string);
    }

    public final synchronized void c(String str) {
        boolean z;
        if (b67.f() && b67.f()) {
            boolean zEquals = false;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences.getBoolean("extend_data_sync_fgs_timeout_for_schedules", false);
                if (z) {
                    if (!(mp6.g || mp6.d(mp6.a, false, false, 1))) {
                        vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Cannot apply override: root unavailable. reason=".concat(str), null, 4, null);
                        return;
                    }
                    ms8 ms8VarE = e(false);
                    if (!(ms8VarE instanceof lc2)) {
                        if (!ms8VarE.equals(mc2.d)) {
                            throw new mn5();
                        }
                        vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Cannot apply override: could not read current device_config value. reason=".concat(str), null, 4, null);
                        return;
                    }
                    String str2 = ((lc2) ms8VarE).d;
                    if (b()) {
                        if (d(str2).equals(new oc2("86400000"))) {
                            vr6.i$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Override already active. reason=".concat(str), null, 4, null);
                            return;
                        } else {
                            vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Clearing stale override marker; current=".concat(str2), null, 4, null);
                            a();
                        }
                    }
                    ly8 ly8VarD = d(str2);
                    if (ly8VarD instanceof nc2) {
                        vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Cannot apply override: current value is invalid. reason=".concat(str), null, 4, null);
                        return;
                    }
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                    editorEdit.getClass();
                    boolean z2 = ly8VarD instanceof oc2;
                    editorEdit.putBoolean("data_sync_fgs_timeout_override_original_exists", z2);
                    oc2 oc2Var = z2 ? (oc2) ly8VarD : null;
                    editorEdit.putString("data_sync_fgs_timeout_override_original_value", oc2Var != null ? oc2Var.f : null);
                    editorEdit.putLong("data_sync_fgs_timeout_override_applied_at", System.currentTimeMillis());
                    editorEdit.putBoolean("data_sync_fgs_timeout_override_active", true);
                    editorEdit.commit();
                    mp6.a.h(new String[]{"device_config put activity_manager data_sync_fgs_timeout_duration 86400000"}, ip6.SU);
                    ms8 ms8VarE2 = e(false);
                    if (ms8VarE2 instanceof lc2) {
                        zEquals = d(((lc2) ms8VarE2).d).equals(new oc2("86400000"));
                    } else if (!ms8VarE2.equals(mc2.d)) {
                        throw new mn5();
                    }
                    if (zEquals) {
                        vr6.i$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Applied dataSync FGS timeout override to 86400000ms. reason=".concat(str), null, 4, null);
                    } else {
                        vr6.e$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Failed to verify dataSync FGS timeout override. result=" + ms8VarE2 + ", reason=" + str, null, 4, null);
                        if (!ms8VarE2.equals(mc2.d)) {
                            a();
                        }
                    }
                }
            } catch (ClassCastException unused) {
                z = false;
            }
        }
    }

    public final synchronized void f(String str, boolean z) {
        boolean z2;
        Object objD;
        if (!b()) {
            return;
        }
        mp6 mp6Var = mp6.a;
        boolean zEquals = false;
        boolean z3 = true;
        if (!mp6.g && !mp6.d(mp6Var, false, z, 1)) {
            z3 = false;
        }
        if (!z3) {
            vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Cannot restore override yet: root unavailable. reason=".concat(str), null, 4, null);
            return;
        }
        ms8 ms8VarE = e(z);
        if (!(ms8VarE instanceof lc2)) {
            if (!ms8VarE.equals(mc2.d)) {
                throw new mn5();
            }
            vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Cannot restore override: could not read current device_config value. reason=".concat(str), null, 4, null);
            return;
        }
        String str2 = ((lc2) ms8VarE).d;
        if (!d(str2).equals(new oc2("86400000"))) {
            vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Not restoring override; value changed externally to " + str2 + ". reason=" + str, null, 4, null);
            a();
            return;
        }
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z2 = sharedPreferences.getBoolean("data_sync_fgs_timeout_override_original_exists", false);
            if (z2) {
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences2.getString("data_sync_fgs_timeout_override_original_value", null);
                    objD = d(string);
                } catch (ClassCastException unused) {
                }
            } else {
                objD = pc2.f;
            }
            mp6 mp6Var2 = mp6.a;
            String strConcat = "device_config delete activity_manager data_sync_fgs_timeout_duration";
            pc2 pc2Var = pc2.f;
            if (!objD.equals(pc2Var)) {
                if (objD instanceof oc2) {
                    strConcat = "device_config put activity_manager data_sync_fgs_timeout_duration ".concat(((oc2) objD).f);
                } else if (!(objD instanceof nc2)) {
                    throw new mn5();
                }
            }
            mp6.k(mp6Var2, z, new String[]{strConcat});
            ms8 ms8VarE2 = e(z);
            if (ms8VarE2 instanceof lc2) {
                if (objD instanceof nc2) {
                    objD = pc2Var;
                }
                zEquals = d(((lc2) ms8VarE2).d).equals(objD);
            }
            if (zEquals) {
                a();
                vr6.i$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Restored dataSync FGS timeout override. reason=".concat(str), null, 4, null);
                return;
            }
            vr6.e$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Failed to restore dataSync FGS timeout override. current=" + ms8VarE2 + ", reason=" + str, null, 4, null);
        } catch (ClassCastException unused2) {
            z2 = false;
        }
    }

    public final synchronized void h(String str, boolean z) {
        if (b()) {
            if (mp6.g) {
                f(str, z);
            } else {
                vr6.w$default(vr6.INSTANCE, "DataSyncFgsTimeoutOverride", "Cannot restore override yet: root not initialized. reason=".concat(str), null, 4, null);
            }
        }
    }
}
