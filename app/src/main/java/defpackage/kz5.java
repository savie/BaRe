package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kz5 implements qz5 {
    public final /* synthetic */ TaskCompletionSource a;

    @Override // defpackage.qz5
    public final void a(Map map) {
        boolean zEquals = ((String) map.get("s")).equals("ok");
        TaskCompletionSource taskCompletionSource = this.a;
        if (zEquals) {
            taskCompletionSource.setResult(map.get("d"));
        } else {
            taskCompletionSource.setException(new Exception((String) map.get("d")));
        }
    }
}
