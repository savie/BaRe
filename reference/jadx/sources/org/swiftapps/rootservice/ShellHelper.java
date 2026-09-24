package org.swiftapps.rootservice;

import com.topjohnwu.superuser.Shell;
import defpackage.ex0;
import defpackage.od7;
import defpackage.vy5;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ShellHelper {
    public static final ShellHelper INSTANCE = new ShellHelper();

    private ShellHelper() {
    }

    public static final Shell getShShell() {
        ex0 ex0Var = new ex0();
        ex0Var.b = 9;
        ex0Var.a = 10L;
        return ex0Var.a();
    }

    public final od7 sh(String... strArr) {
        strArr.getClass();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        int i = Shell.UNKNOWN;
        vy5 vy5Var = new vy5(false);
        vy5Var.a(strArr2);
        return vy5Var;
    }

    public final od7 su(String... strArr) {
        strArr.getClass();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        int i = Shell.UNKNOWN;
        vy5 vy5Var = new vy5(true);
        vy5Var.a(strArr2);
        return vy5Var;
    }
}
