package defpackage;

import com.google.firebase.database.DatabaseRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import com.jcraft.jsch.JSchException;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a6 implements er5, mo1, g88 {
    public final /* synthetic */ int a;

    public /* synthetic */ a6(int i) {
        this.a = i;
    }

    public static /* synthetic */ void c(int i, Object obj, Object obj2, Object obj3) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append((Object) "[");
        sb.append(i);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void d(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static /* synthetic */ void e(StringBuilder sb, Object obj, long j) throws qz6 {
        sb.append(obj);
        sb.append(j);
        throw new qz6(sb.toString(), null);
    }

    public static /* synthetic */ void f(Throwable th) throws JSchException {
        throw new JSchException(th.toString(), th);
    }

    @Override // defpackage.g88
    public boolean a(char c) {
        return c == '&' || c == '=';
    }

    @Override // defpackage.er5
    public Object construct() {
        return new ArrayDeque();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        switch (this.a) {
            case 5:
                return DatabaseRegistrar.lambda$getComponents$0(pp0Var);
            default:
                return TransportRegistrar.lambda$getComponents$0(pp0Var);
        }
    }
}
