package com.bareapps.barebackup.apptasks.sba

import java.io.InterruptedIOException
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.CopyOnWriteArrayList
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveTaskRunnerTest {
    @Test
    fun createOperationReportsProgressAndFinalResult() {
        val backend = object : SbaTaskBackend {
            override fun create(request: SbaCreateTaskRequest, progress: com.bareapps.sba.internal.progress.SbaNativeProgressListener): SbaTaskBackendResult {
                progress.onProgress(4, 8)
                return SbaTaskBackendResult(
                    outputPath = request.outputPath,
                    bytesProcessed = 1234,
                    durationMillis = 9,
                    tarEntryCount = 7,
                    regularFileCount = 3,
                    regularFileBytes = 99,
                )
            }

            override fun extract(request: SbaExtractTaskRequest, progress: com.bareapps.sba.internal.progress.SbaNativeProgressListener) =
                error("not used")
            override fun extractTar(request: SbaTarExtractTaskRequest, progress: com.bareapps.sba.internal.progress.SbaNativeProgressListener) =
                error("not used")

        }
        val runner = SbaArchiveTaskRunner(backend = backend)
        try {
            val finished = CountDownLatch(1)
            val states = CopyOnWriteArrayList<Int>()
            val id = runner.submitCreate(
                SbaCreateTaskRequest(
                    outputPath = "/tmp/out.sba",
                    metadata = "{}".toByteArray(),
                    sourcePaths = listOf("/tmp/source"),
                    entryNames = listOf("data"),
                    entryModes = intArrayOf(0),
                ),
            ) { snapshot ->
                states.add(snapshot.state)
                if (snapshot.state == SbaOperationSnapshot.STATE_SUCCEEDED) finished.countDown()
            }

            assertTrue("operation should finish", finished.await(3, TimeUnit.SECONDS))
            val result = runner.getResult(id)!!
            assertEquals(SbaOperationSnapshot.STATE_SUCCEEDED, result.state)
            assertEquals(1234L, result.bytesProcessed)
            assertEquals(7L, result.tarEntryCount)
            assertEquals(99L, result.regularFileBytes)
            assertEquals(4L, result.progressProcessed)
            assertTrue(states.contains(SbaOperationSnapshot.STATE_QUEUED))
            assertTrue(states.contains(SbaOperationSnapshot.STATE_RUNNING))
        } finally {
            runner.close()
        }
    }

    @Test
    fun cancellationIsReflectedAsFinalCancelledState() {
        val backend = object : SbaTaskBackend {
            override fun create(request: SbaCreateTaskRequest, progress: com.bareapps.sba.internal.progress.SbaNativeProgressListener): SbaTaskBackendResult {
                while (!progress.isCancellationRequested()) Thread.sleep(2)
                throw InterruptedIOException("cancelled by test")
            }

            override fun extract(request: SbaExtractTaskRequest, progress: com.bareapps.sba.internal.progress.SbaNativeProgressListener) =
                error("not used")
        }
        val runner = SbaArchiveTaskRunner(backend = backend)
        try {
            val finished = CountDownLatch(1)
            val id = runner.submitCreate(
                SbaCreateTaskRequest(
                    outputPath = "/tmp/out.sba",
                    metadata = "{}".toByteArray(),
                    sourcePaths = listOf("/tmp/source"),
                    entryNames = listOf("data"),
                    entryModes = intArrayOf(0),
                ),
            ) { if (it.state == SbaOperationSnapshot.STATE_FAILED) finished.countDown() }

            assertTrue("cancel request should be accepted", runner.cancel(id))
            assertTrue("cancelled operation should finish", finished.await(3, TimeUnit.SECONDS))
            val result = runner.getResult(id)!!
            assertEquals(SbaOperationSnapshot.STATE_FAILED, result.state)
            assertEquals(SbaOperationSnapshot.ERROR_CANCELLED, result.errorCode)
        } finally {
            runner.close()
        }
    }
}
