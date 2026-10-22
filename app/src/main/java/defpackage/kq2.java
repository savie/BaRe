package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kq2 extends IOException {
    public final int a;
    public final String b;
    public final Long c;
    public final gv7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kq2(String str, String str2, int i, String str3, Long l) {
        super("Dropbox API " + str + " failed with HTTP " + i + ": " + str3);
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str3;
        this.c = l;
        this.d = new gv7(new kf(this, 25));
    }

    public final String a() {
        fl4 fl4Var = (fl4) this.d.getValue();
        if (fl4Var != null) {
            return jd4.H(fl4Var, "error_summary");
        }
        return null;
    }

    public final boolean b() {
        if (this.a == 401) {
            if (a() == null) {
                return true;
            }
            String strA = a();
            if (strA == null) {
                strA = "";
            }
            if (uq7.V(strA, "expired_access_token", false)) {
                return true;
            }
            String strA2 = a();
            if (uq7.V(strA2 != null ? strA2 : "", "invalid_access_token", false)) {
                return true;
            }
        }
        return false;
    }

    public final boolean c() {
        if (this.a == 409) {
            String strA = a();
            if (strA == null) {
                strA = "";
            }
            if (uq7.V(strA, "path_lookup/not_found", false)) {
                return true;
            }
            String strA2 = a();
            if (strA2 == null) {
                strA2 = "";
            }
            if (uq7.V(strA2, "path/not_found", false)) {
                return true;
            }
            String strA3 = a();
            if (uq7.V(strA3 != null ? strA3 : "", "not_found", false)) {
                return true;
            }
        }
        return false;
    }

    public final boolean d() {
        int i = this.a;
        if (i == 429) {
            return true;
        }
        if (500 <= i && i < 600) {
            return true;
        }
        String strA = a();
        if (strA == null) {
            strA = "";
        }
        return uq7.V(strA, "too_many_write_operations", false);
    }
}
