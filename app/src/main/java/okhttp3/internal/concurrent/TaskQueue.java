package okhttp3.internal.concurrent;

import defpackage.bt3;
import defpackage.l0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TaskQueue {
    public final TaskRunner a;
    public final String b;
    public boolean c;
    public Task d;
    public final ArrayList e = new ArrayList();
    public boolean f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class AwaitIdleTask extends Task {
        @Override // okhttp3.internal.concurrent.Task
        public final long a() {
            throw null;
        }
    }

    public TaskQueue(TaskRunner taskRunner, String str) {
        this.a = taskRunner;
        this.b = str;
    }

    public static void c(TaskQueue taskQueue, final String str, final bt3 bt3Var, int i) {
        final boolean z = (i & 4) != 0;
        taskQueue.getClass();
        str.getClass();
        bt3Var.getClass();
        taskQueue.d(new Task(str, z) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                bt3Var.invoke();
                return -1L;
            }
        }, 0L);
    }

    public final void a() {
        TaskRunner taskRunner = this.a;
        TimeZone timeZone = _UtilJvmKt.a;
        synchronized (taskRunner) {
            if (b()) {
                this.a.c(this);
            }
        }
    }

    public final boolean b() {
        Task task = this.d;
        if (task != null && task.b) {
            this.f = true;
        }
        ArrayList arrayList = this.e;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((Task) arrayList.get(size)).b) {
                Logger logger = this.a.b;
                Task task2 = (Task) arrayList.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void d(Task task, long j) {
        task.getClass();
        synchronized (this.a) {
            if (!this.c) {
                if (e(task, j, false)) {
                    this.a.c(this);
                }
                return;
            }
            boolean z = task.b;
            Logger logger = this.a.b;
            if (z) {
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0041 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0068  */
    /* JADX WARN: Code duplicated, block: B:28:0x0076 A[LOOP:0: B:23:0x0062->B:28:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x007c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0085 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x007a A[EDGE_INSN: B:40:0x007a->B:30:0x007a BREAK  A[LOOP:0: B:23:0x0062->B:28:0x0076], SYNTHETIC] */
    public final boolean e(Task task, long j, boolean z) {
        Iterator it;
        int size;
        String strConcat;
        Logger logger = this.a.b;
        task.getClass();
        TaskQueue taskQueue = task.c;
        if (taskQueue != this) {
            if (taskQueue != null) {
                l0.e("task is in multiple queues");
                return false;
            }
            task.c = this;
        }
        long jNanoTime = System.nanoTime();
        long j2 = jNanoTime + j;
        ArrayList arrayList = this.e;
        int iIndexOf = arrayList.indexOf(task);
        if (iIndexOf == -1) {
            task.d = j2;
            if (logger.isLoggable(Level.FINE)) {
                if (z) {
                    strConcat = "run again after ".concat(TaskLoggerKt.b(j2 - jNanoTime));
                } else {
                    strConcat = "scheduled after ".concat(TaskLoggerKt.b(j2 - jNanoTime));
                }
                TaskLoggerKt.a(logger, task, this, strConcat);
            }
            it = arrayList.iterator();
            size = 0;
            while (true) {
                if (it.hasNext()) {
                    size = -1;
                    break;
                }
                if (((Task) it.next()).d - jNanoTime > j) {
                    break;
                }
                size++;
            }
            if (size == -1) {
                size = arrayList.size();
            }
            arrayList.add(size, task);
            if (size == 0) {
                return true;
            }
        } else if (task.d > j2) {
            arrayList.remove(iIndexOf);
            task.d = j2;
            if (logger.isLoggable(Level.FINE)) {
                if (z) {
                    strConcat = "run again after ".concat(TaskLoggerKt.b(j2 - jNanoTime));
                } else {
                    strConcat = "scheduled after ".concat(TaskLoggerKt.b(j2 - jNanoTime));
                }
                TaskLoggerKt.a(logger, task, this, strConcat);
            }
            it = arrayList.iterator();
            size = 0;
            while (true) {
                if (it.hasNext()) {
                    size = -1;
                    break;
                }
                if (((Task) it.next()).d - jNanoTime > j) {
                    break;
                    break;
                }
                size++;
            }
            if (size == -1) {
                size = arrayList.size();
            }
            arrayList.add(size, task);
            if (size == 0) {
                return true;
            }
        } else if (logger.isLoggable(Level.FINE)) {
            TaskLoggerKt.a(logger, task, this, "already scheduled");
            return false;
        }
        return false;
    }

    public final void f() {
        TaskRunner taskRunner = this.a;
        TimeZone timeZone = _UtilJvmKt.a;
        synchronized (taskRunner) {
            this.c = true;
            if (b()) {
                this.a.c(this);
            }
        }
    }

    public final String toString() {
        return this.b;
    }
}
