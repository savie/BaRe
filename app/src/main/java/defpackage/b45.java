package defpackage;

import android.content.pm.Signature;
import java.util.ArrayList;
import java.util.Collections;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b45 {
    public static MFirebaseUser a() {
        Iterable iterable;
        SwiftApp.Companion companion = SwiftApp.d;
        Signature[] signatureArrE = SwiftApp.Companion.e();
        String strValueOf = null;
        if (signatureArrE != null) {
            Signature signature = signatureArrE.length == 0 ? null : signatureArrE[0];
            if (signature != null) {
                strValueOf = String.valueOf(signature.hashCode());
            }
        }
        strValueOf.getClass();
        char[] charArray = sz8.E(strValueOf).toCharArray();
        charArray.getClass();
        int length = charArray.length;
        ov2 ov2Var = ov2.a;
        if (length == 0) {
            iterable = ov2Var;
        } else {
            ArrayList arrayList = new ArrayList(charArray.length);
            for (char c : charArray) {
                arrayList.add(Character.valueOf(c));
            }
            Collections.reverse(arrayList);
            iterable = arrayList;
        }
        return new MFirebaseUser(el1.Y0(iterable, "", null, null, null, 62), MFirebaseUser.ANONYMOUS_USER_EMAIL, true, MFirebaseUser.ANONYMOUS_USER_DISPLAY_NAME, null, ov2Var, "anonymous");
    }
}
