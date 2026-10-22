package defpackage;

import com.topjohnwu.superuser.Shell;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gy7 implements pd7 {
    public static final String c;
    public static final byte[] d;
    public final List a;
    public final gn6 b;

    static {
        String string = UUID.randomUUID().toString();
        c = string;
        d = String.format("__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n", string).getBytes(StandardCharsets.UTF_8);
    }

    public gy7(ArrayList arrayList, gn6 gn6Var) {
        this.a = arrayList;
        this.b = gn6Var;
    }

    @Override // defpackage.pd7
    public final void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
        ExecutorService executorService = Shell.EXECUTOR;
        gn6 gn6Var = this.b;
        Future futureSubmit = executorService.submit(new hp7(inputStream, gn6Var.a));
        Future futureSubmit2 = Shell.EXECUTOR.submit(new gp7(inputStream2, gn6Var.b));
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ae7) it.next()).d0(outputStream);
        }
        outputStream.write(d);
        outputStream.flush();
        try {
            gn6Var.c = ((Integer) futureSubmit.get()).intValue();
            futureSubmit2.get();
        } catch (InterruptedException | ExecutionException e) {
            throw ((InterruptedIOException) new InterruptedIOException().initCause(e));
        }
    }
}
