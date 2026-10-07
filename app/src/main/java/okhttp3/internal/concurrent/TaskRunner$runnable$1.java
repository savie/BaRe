package okhttp3.internal.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class TaskRunner$runnable$1 implements Runnable {
    public final TaskRunner a;
    public TaskRunner$runnable$1(TaskRunner owner){this.a=owner;}

    @Override
    public final void run() {
        Task task;
        synchronized (a) {
            a.k++;
            task = a.b();
        }
        if (task == null) return;

        Thread thread = Thread.currentThread();
        String oldName = thread.getName();

        while (true) {
            try {
                thread.setName(task.a);
                Logger logger = a.b;
                TaskQueue queue = task.c;
                queue.getClass();
                boolean log = logger.isLoggable(Level.FINE);
                long start = log ? System.nanoTime() : -1L;
                if (log) TaskLoggerKt.a(logger, task, queue, "starting");

                try {
                    long delay = task.a();
                    if (log) {
                        TaskLoggerKt.a(logger, task, queue,
                                "finished run in " + TaskLoggerKt.b(System.nanoTime() - start));
                    }
                    Task next;
                    synchronized (a) {
                        TaskRunner.a(a, task, delay, true);
                        next = a.b();
                    }
                    if (next == null) {
                        thread.setName(oldName);
                        return;
                    }
                    task = next;
                } catch (Throwable t) {
                    if (log) {
                        TaskLoggerKt.a(logger, task, queue,
                                "failed a run in " + TaskLoggerKt.b(System.nanoTime() - start));
                    }
                    throw t;
                }
            } catch (Throwable t) {
                try {
                    synchronized (a) {
                        TaskRunner.a(a, task, -1L, false);
                        if (!(t instanceof InterruptedException)) throw t;
                        Thread.currentThread().interrupt();
                        thread.setName(oldName);
                        return;
                    }
                } catch (Throwable t2) {
                    thread.setName(oldName);
                    throw t2;
                }
            }
        }
    }
}
