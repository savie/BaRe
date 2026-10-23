package defpackage;

import android.content.res.Resources;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gf1 implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ gf1(int i) {
        this.a = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        switch (this.a) {
            case 0:
                md1 md1Var = (md1) obj;
                sd1 sd1Var = md1Var.a.a;
                rd1 rd1Var = md1Var.c;
                String str = md1Var.d;
                if (str == null) {
                    str = "";
                }
                return sd1Var + ":" + rd1Var + ":" + str;
            case 1:
                String str2 = (String) obj;
                str2.getClass();
                return Boolean.valueOf(uq7.V(str2, "220", false));
            case 2:
                mx1 mx1Var = (mx1) obj;
                if (mx1Var instanceof rx1) {
                    return (rx1) mx1Var;
                }
                return null;
            case 3:
                ((Integer) obj).getClass();
                return be8.a;
            case 4:
                return Integer.valueOf(nv6.count$lambda$0("SELECT COUNT(*) FROM smessage", (fw6) obj));
            default:
                Resources resources = (Resources) obj;
                resources.getClass();
                return Boolean.valueOf((resources.getConfiguration().uiMode & 48) == 32);
        }
    }
}
