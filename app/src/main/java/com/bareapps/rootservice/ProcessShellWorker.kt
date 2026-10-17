package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell
import java.io.Closeable
import java.util.ArrayDeque
import java.util.concurrent.AbstractExecutorService
import java.util.concurrent.ExecutionException
import java.util.concurrent.FutureTask
import java.util.concurrent.RejectedExecutionException
import java.util.concurrent.TimeUnit
import java.util.concurrent.TimeoutException

/**
 * Source mapping of defpackage.r77: a serialized queue of Runnables driven by
 * Shell.EXECUTOR. shutdown() drops queued work; shutdownNow() cancels the active
 * queue-drain FutureTask and returns queued work.
 *
 * Kept as a separate lifecycle primitive until ProcessShellBackend is migrated
 * to submit its startup and execution work through this queue.
 */
internal class ProcessShellWorker : AbstractExecutorService(), Closeable {
    private var shutdown = false
    private val queue = ArrayDeque<Runnable>()
    private var activeDrain: FutureTask<Void>? = null

    @Synchronized
    override fun execute(command: Runnable) {
        if (shutdown) {
            throw RejectedExecutionException("Task $command rejected: worker is shut down")
        }
        queue.offer(command)
        if (activeDrain == null) {
            val drain = FutureTask<Void>({
                drainQueue()
                null
            })
            activeDrain = drain
            Shell.EXECUTOR.execute(drain)
        }
    }

    private fun drainQueue() {
        while (true) {
            val next = synchronized(this) {
                val item = queue.poll()
                if (item == null) activeDrain = null
                item
            } ?: return
            next.run()
        }
    }

    @Synchronized
    override fun shutdown() {
        shutdown = true
        queue.clear()
    }

    @Synchronized
    override fun shutdownNow(): List<Runnable> {
        shutdown = true
        activeDrain?.cancel(true)
        val pending = queue.toList()
        queue.clear()
        return pending
    }

    @Synchronized
    override fun isShutdown(): Boolean = shutdown

    @Synchronized
    override fun isTerminated(): Boolean = shutdown && activeDrain == null

    @Synchronized
    @Throws(InterruptedException::class)
    override fun awaitTermination(timeout: Long, unit: TimeUnit): Boolean {
        val active = activeDrain ?: return true
        return try {
            active.get(timeout, unit)
            true
        } catch (_: ExecutionException) {
            true
        } catch (_: TimeoutException) {
            false
        }
    }

    override fun close() {
        if (isTerminated()) return
        shutdown()
        var interrupted = false
        while (!isTerminated()) {
            try {
                if (awaitTermination(1, TimeUnit.DAYS)) break
            } catch (_: InterruptedException) {
                if (!interrupted) {
                    shutdownNow()
                    interrupted = true
                }
            }
        }
        if (interrupted) Thread.currentThread().interrupt()
    }
}
