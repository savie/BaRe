package defpackage;

import org.swiftapps.swiftbackup.tasks.TaskService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ez7 {
    public static boolean a(Exception exc) {
        String strB = io4.b(exc);
        return exc.getClass().getSimpleName().equals("ForegroundServiceStartNotAllowedException") && nq7.Z(strB, "Time limit already exhausted", true) && nq7.Z(strB, "dataSync", true);
    }

    public static void b(gz7 gz7Var) {
        gz7Var.getClass();
        TaskService.b = gz7Var;
        ((ex6) TaskService.e.getValue()).k(gz7Var);
    }
}
