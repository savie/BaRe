package okhttp3.internal.concurrent;

import defpackage.dj7;
import java.util.Arrays;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TaskLoggerKt {
    public static final void a(Logger logger, Task task, TaskQueue taskQueue, String str) {
        logger.fine(taskQueue.b + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + task.a);
    }

    public static final String b(long j) {
        String strH;
        if (j <= -999500000) {
            strH = dj7.h((j - 500000000) / 1000000000, " s ", new StringBuilder());
        } else if (j <= -999500) {
            strH = dj7.h((j - 500000) / 1000000, " ms", new StringBuilder());
        } else if (j <= 0) {
            strH = dj7.h((j - 500) / 1000, " µs", new StringBuilder());
        } else if (j < 999500) {
            strH = dj7.h((j + 500) / 1000, " µs", new StringBuilder());
        } else if (j < 999500000) {
            strH = dj7.h((j + 500000) / 1000000, " ms", new StringBuilder());
        } else {
            strH = dj7.h((j + 500000000) / 1000000000, " s ", new StringBuilder());
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{strH}, 1));
    }
}
