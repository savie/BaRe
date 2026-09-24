package defpackage;

import com.jcraft.jsch.HostKey;
import java.util.Map;
import java.util.concurrent.CompletionException;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w81 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ w81(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return (String) ((Map.Entry) obj).getKey();
            case 1:
                int i = pg5.n;
                Throwable cause = ((Throwable) obj).getCause();
                if ((cause instanceof dy2) && ((dy2) cause).a.b().equals("NoSuchBucket")) {
                    return null;
                }
                throw new CompletionException(cause);
            default:
                return ((HostKey) obj).d;
        }
    }
}
