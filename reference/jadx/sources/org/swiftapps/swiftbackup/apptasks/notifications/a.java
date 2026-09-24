package org.swiftapps.swiftbackup.apptasks.notifications;

import defpackage.c6;
import defpackage.f6;
import defpackage.ly8;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.uq7;
import defpackage.xs1;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static b a(String[] strArr) {
        NotificationPolicyProxy.a aVar;
        if (strArr.length != 4) {
            c6.f("Expected mode, userId, packageName, payloadFile");
            return null;
        }
        String str = strArr[0];
        if (pe4.d(str, "backup")) {
            aVar = NotificationPolicyProxy.a.Backup;
        } else {
            if (!pe4.d(str, "restore")) {
                throw new IllegalStateException(("Unknown mode: " + strArr[0]).toString());
            }
            aVar = NotificationPolicyProxy.a.Restore;
        }
        Integer numX = uq7.X(strArr[1]);
        if (numX == null || numX.intValue() < 0) {
            f6.g(xs1.j("Invalid userId: ", strArr[1]));
            return null;
        }
        String str2 = strArr[2];
        if (!nq7.j0(str2)) {
            for (int i = 0; i < str2.length(); i++) {
                char cCharAt = str2.charAt(i);
                if (!ly8.C(cCharAt) && cCharAt != '\"' && cCharAt != '\'' && cCharAt != '<' && cCharAt != '>' && cCharAt != '&') {
                }
            }
            return new b(aVar, numX.intValue(), str2, new File(strArr[3]));
        }
        f6.g("Unsafe package name: ".concat(str2));
        return null;
    }
}
