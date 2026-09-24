package defpackage;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zd7 extends Shell {
    public int a;
    public final r77 b;
    public final boolean c;
    public final Process d;
    public final yd7 e;
    public final xd7 f;
    public final xd7 k;

    public zd7(ex0 ex0Var, Process process) throws IOException {
        this.a = -1;
        int i = 1;
        this.c = (ex0Var.b & 8) == 8;
        this.d = process;
        OutputStream outputStream = process.getOutputStream();
        this.e = new yd7(outputStream instanceof BufferedOutputStream ? outputStream : new BufferedOutputStream(outputStream));
        this.f = new xd7(process.getInputStream());
        this.k = new xd7(process.getErrorStream());
        r77 r77Var = new r77();
        r77Var.a = false;
        r77Var.b = new ArrayDeque();
        r77Var.c = null;
        this.b = r77Var;
        try {
            try {
                this.a = ((Integer) r77Var.submit(new me2(this, i)).get(ex0Var.a, TimeUnit.SECONDS)).intValue();
            } catch (InterruptedException e) {
                throw new IOException("Shell check interrupted", e);
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (!(cause instanceof IOException)) {
                    throw new IOException("Unknown ExecutionException", cause);
                }
                throw ((IOException) cause);
            } catch (TimeoutException e3) {
                throw new IOException("Shell check timeout", e3);
            }
        } catch (IOException e4) {
            this.b.shutdownNow();
            a();
            throw e4;
        }
    }

    public final void a() {
        this.a = -1;
        try {
            this.e.a();
        } catch (IOException unused) {
        }
        try {
            this.k.a();
        } catch (IOException unused2) {
        }
        try {
            this.f.a();
        } catch (IOException unused3) {
        }
        this.d.destroy();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.a < 0) {
            return;
        }
        this.b.shutdownNow();
        a();
    }

    @Override // com.topjohnwu.superuser.Shell
    public final synchronized void execTask(pd7 pd7Var) {
        if (this.a < 0) {
            throw new ee7();
        }
        ShellUtils.a(this.f);
        ShellUtils.a(this.k);
        try {
            this.e.write(10);
            this.e.flush();
            pd7Var.a(this.e, this.f, this.k);
        } catch (IOException unused) {
            a();
            throw new ee7();
        }
    }

    @Override // com.topjohnwu.superuser.Shell
    public final int getStatus() {
        return this.a;
    }

    @Override // com.topjohnwu.superuser.Shell
    public final boolean isAlive() {
        if (this.a < 0) {
            return false;
        }
        try {
            this.d.exitValue();
            return false;
        } catch (IllegalThreadStateException unused) {
            return true;
        }
    }

    @Override // com.topjohnwu.superuser.Shell
    public final od7 newJob() {
        return new rh4(this);
    }

    @Override // com.topjohnwu.superuser.Shell
    public final boolean waitAndClose(long j, TimeUnit timeUnit) {
        if (this.a < 0) {
            return true;
        }
        r77 r77Var = this.b;
        r77Var.shutdown();
        if (r77Var.awaitTermination(j, timeUnit)) {
            a();
            return true;
        }
        this.a = -1;
        return false;
    }
}
