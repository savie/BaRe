package com.topjohnwu.superuser;

import android.text.TextUtils;
import defpackage.od7;
import defpackage.rh4;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ShellUtils {
    public static void a(InputStream inputStream) {
        while (inputStream.available() != 0) {
            try {
                inputStream.skip(inputStream.available());
            } catch (IOException unused) {
                return;
            }
        }
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder("'");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\'') {
                sb.append("'\\''");
            } else {
                sb.append(cCharAt);
            }
        }
        sb.append('\'');
        return sb.toString();
    }

    public static String fastCmd(Shell shell, String... strArr) {
        od7 od7VarNewJob = shell.newJob();
        od7VarNewJob.a(strArr);
        rh4 rh4Var = (rh4) od7VarNewJob;
        rh4Var.a = new ArrayList();
        rh4Var.b = null;
        rh4Var.e = true;
        List listA = od7VarNewJob.b().a();
        if (listA == null || listA.size() == 0) {
            return "";
        }
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            if (!TextUtils.isEmpty((String) it.next())) {
                return (String) listA.get(listA.size() - 1);
            }
        }
        return "";
    }
}
