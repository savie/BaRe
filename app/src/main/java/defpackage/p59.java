package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p59 {
    public final ScheduledExecutorService a;

    static {
        String[] strArr = {"SmsRetrieverHelper"};
        if (strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str);
            }
            sb.append("] ");
        }
        for (int i = 2; i <= 7 && !Log.isLoggable("FirebaseAuth", i); i++) {
        }
    }

    public p59(ScheduledExecutorService scheduledExecutorService) {
        new HashMap();
        this.a = scheduledExecutorService;
    }
}
