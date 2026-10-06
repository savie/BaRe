package okhttp3.internal.concurrent;

import defpackage.dj7;
import defpackage.fz5;
import defpackage.l0;
import defpackage.uz8;
import defpackage.yr5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TaskRunner implements Lockable {
    public static final Logger r;
    public static final TaskRunner t;
    public final RealBackend a;
    public final Logger b;
    public int c;
    public boolean d;
    public long e;
    public int f;
    public int k;
    public final ArrayList n;
    public final ArrayList p;
    public final TaskRunner$runnable$1 q;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface Backend {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class RealBackend implements Backend {
        public final ThreadPoolExecutor a;

        public RealBackend(uz8 uz8Var) {
            this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), uz8Var);
        }
    }

    static {
        Logger logger = Logger.getLogger(TaskRunner.class.getName());
        logger.getClass();
        r = logger;
        t = new TaskRunner(new RealBackend(new uz8(dj7.n(new StringBuilder(), _UtilJvmKt.b, " TaskRunner"), true)));
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [okhttp3.internal.concurrent.TaskRunner$runnable$1] */
    public TaskRunner(RealBackend realBackend) {
        Logger logger = r;
        logger.getClass();
        this.a = realBackend;
        this.b = logger;
        this.c = yr5.p;
        this.n = new ArrayList();
        this.p = new ArrayList();
        this.q = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                Task taskB;
                long jNanoTime;
                Task taskB2;
                TaskRunner taskRunner = this.a;
                synchronized (taskRunner) {
                    taskRunner.k++;
                    taskB = taskRunner.b();
                }
                if (taskB == null) {
                    return;
                }
                Thread threadCurrentThread = Thread.currentThread();
                String name = threadCurrentThread.getName();
                while (true) {
                    try {
                        threadCurrentThread.setName(taskB.a);
                        Logger logger2 = this.a.b;
                        TaskQueue taskQueue = taskB.c;
                        taskQueue.getClass();
                        boolean zIsLoggable = logger2.isLoggable(Level.FINE);
                        if (zIsLoggable) {
                            jNanoTime = System.nanoTime();
                            TaskLoggerKt.a(logger2, taskB, taskQueue, "starting");
                        } else {
                            jNanoTime = -1;
                        }
                        try {
                            long jA = taskB.a();
                            if (zIsLoggable) {
                                TaskLoggerKt.a(logger2, taskB, taskQueue, "finished run in " + TaskLoggerKt.b(System.nanoTime() - jNanoTime));
                            }
                            TaskRunner taskRunner2 = this.a;
                            synchronized (taskRunner2) {
                                TaskRunner.a(taskRunner2, taskB, jA, true);
                                taskB2 = taskRunner2.b();
                            }
                            if (taskB2 == null) {
                                threadCurrentThread.setName(name);
                                return;
                            }
                            taskB = taskB2;
                        } catch (Throwable th) {
                            if (zIsLoggable) {
                                TaskLoggerKt.a(logger2, taskB, taskQueue, "failed a run in " + TaskLoggerKt.b(System.nanoTime() - jNanoTime));
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            TaskRunner taskRunner3 = this.a;
                            synchronized (taskRunner3) {
                                TaskRunner.a(taskRunner3, taskB, -1L, false);
                                if (!(th2 instanceof InterruptedException)) {
                                    throw th2;
                                }
                                Thread.currentThread().interrupt();
                                threadCurrentThread.setName(name);
                                return;
                            }
                        } catch (Throwable th3) {
                            threadCurrentThread.setName(name);
                            throw th3;
                        }
                    }
                }
            }
        };
    }

    public static final void a(TaskRunner taskRunner, Task task, long j, boolean z) {
        TimeZone timeZone = _UtilJvmKt.a;
        TaskQueue taskQueue = task.c;
        taskQueue.getClass();
        if (taskQueue.d != task) {
            l0.e("Check failed.");
            return;
        }
        boolean z2 = taskQueue.f;
        taskQueue.f = false;
        taskQueue.d = null;
        taskRunner.n.remove(taskQueue);
        if (j != -1 && !z2 && !taskQueue.c) {
            taskQueue.e(task, j, true);
        }
        if (taskQueue.e.isEmpty()) {
            return;
        }
        taskRunner.p.add(taskQueue);
        if (z) {
            return;
        }
        taskRunner.e();
    }

    public final Task b() {
        boolean z;
        TimeZone timeZone = _UtilJvmKt.a;
        while (true) {
            ArrayList arrayList = this.p;
            if (arrayList.isEmpty()) {
                break;
            }
            long jNanoTime = System.nanoTime();
            Iterator it = arrayList.iterator();
            long jMin = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Task task2 = (Task) ((TaskQueue) it.next()).e.get(0);
                long jMax = Math.max(0L, task2.d - jNanoTime);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (task != null) {
                        z = true;
                        break;
                    }
                    task = task2;
                }
            }
            ArrayList arrayList2 = this.n;
            if (task != null) {
                TimeZone timeZone2 = _UtilJvmKt.a;
                task.d = -1L;
                TaskQueue taskQueue = task.c;
                taskQueue.getClass();
                taskQueue.e.remove(task);
                arrayList.remove(taskQueue);
                taskQueue.d = task;
                arrayList2.add(taskQueue);
                if (z || (!this.d && !arrayList.isEmpty())) {
                    e();
                }
                return task;
            }
            if (this.d) {
                if (jMin >= this.e - jNanoTime) {
                    break;
                }
                notify();
                break;
            }
            this.d = true;
            this.e = jNanoTime + jMin;
            try {
                try {
                    TimeZone timeZone3 = _UtilJvmKt.a;
                    if (jMin > 0) {
                        long j = jMin / 1000000;
                        long j2 = jMin - (1000000 * j);
                        if (j > 0 || jMin > 0) {
                            wait(j, (int) j2);
                        }
                    }
                } catch (InterruptedException unused) {
                    TimeZone timeZone4 = _UtilJvmKt.a;
                    for (int size = arrayList2.size() - 1; -1 < size; size--) {
                        ((TaskQueue) arrayList2.get(size)).b();
                    }
                    for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
                        TaskQueue taskQueue2 = (TaskQueue) arrayList.get(size2);
                        taskQueue2.b();
                        if (taskQueue2.e.isEmpty()) {
                            arrayList.remove(size2);
                        }
                    }
                }
                this.d = false;
            } catch (Throwable th) {
                this.d = false;
                throw th;
            }
        }
        return null;
    }

    public final void c(TaskQueue taskQueue) {
        taskQueue.getClass();
        TimeZone timeZone = _UtilJvmKt.a;
        if (taskQueue.d == null) {
            boolean zIsEmpty = taskQueue.e.isEmpty();
            ArrayList arrayList = this.p;
            if (zIsEmpty) {
                arrayList.remove(taskQueue);
            } else {
                byte[] bArr = _UtilCommonKt.a;
                arrayList.getClass();
                if (!arrayList.contains(taskQueue)) {
                    arrayList.add(taskQueue);
                }
            }
        }
        if (this.d) {
            notify();
        } else {
            e();
        }
    }

    public final TaskQueue d() {
        int i;
        synchronized (this) {
            i = this.c;
            this.c = i + 1;
        }
        return new TaskQueue(this, fz5.j(i, "Q"));
    }

    public final void e() {
        TimeZone timeZone = _UtilJvmKt.a;
        int i = this.f;
        if (i > this.k) {
            return;
        }
        this.f = i + 1;
        TaskRunner$runnable$1 taskRunner$runnable$1 = this.q;
        taskRunner$runnable$1.getClass();
        this.a.a.execute(taskRunner$runnable$1);
    }
}
