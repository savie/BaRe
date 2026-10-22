package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yo0 implements Cloneable {
    public final String a;
    public final String b;
    public final dp0[] c;

    public yo0(String str, String str2, dp0[] dp0VarArr) {
        this.a = str;
        this.b = str2;
        if (dp0VarArr != null) {
            this.c = dp0VarArr;
        } else {
            this.c = new dp0[0];
        }
    }

    public final Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (obj != null) {
            if (this != obj) {
                if (obj instanceof yo0) {
                    yo0 yo0Var = (yo0) obj;
                    if (this.a.equals(yo0Var.a)) {
                        String str = yo0Var.b;
                        String str2 = this.b;
                        if (str2 == null ? str == null : str2.equals(str)) {
                            dp0[] dp0VarArr = yo0Var.c;
                            dp0[] dp0VarArr2 = this.c;
                            if (dp0VarArr2 == null) {
                                if (dp0VarArr == null) {
                                }
                            } else if (dp0VarArr != null && dp0VarArr2.length == dp0VarArr.length) {
                                for (int i = 0; i < dp0VarArr2.length; i++) {
                                    dp0 dp0Var = dp0VarArr2[i];
                                    dp0 dp0Var2 = dp0VarArr[i];
                                    if (dp0Var == null ? dp0Var2 == null : dp0Var.equals(dp0Var2)) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int iT = wx3.t(wx3.t(17, this.a), this.b);
        int i = 0;
        while (true) {
            dp0[] dp0VarArr = this.c;
            if (i >= dp0VarArr.length) {
                return iT;
            }
            iT = wx3.t(iT, dp0VarArr[i]);
            i++;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.a);
        String str = this.b;
        if (str != null) {
            sb.append("=");
            sb.append(str);
        }
        int i = 0;
        while (true) {
            dp0[] dp0VarArr = this.c;
            if (i >= dp0VarArr.length) {
                return sb.toString();
            }
            sb.append("; ");
            sb.append(dp0VarArr[i]);
            i++;
        }
    }
}
