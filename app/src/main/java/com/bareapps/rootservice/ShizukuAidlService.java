package com.bareapps.rootservice;

import android.os.Bundle;
import android.os.RemoteException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/**
 * Shizuku UserService implementation for bounded command execution in the Shizuku process.
 *
 * <p>Bind this class with Shizuku's UserService API only after checking Shizuku availability
 * and obtaining the user's authorization. This is an initial command bridge, not a port of
 * Swift Backup's full, obfuscated IRootAidlInterface implementation.</p>
 */
public final class ShizukuAidlService extends IRootAidlInterface.Stub {
    private static final long DEFAULT_TIMEOUT_MS = 30_000L;
    private static final long MAX_TIMEOUT_MS = 120_000L;
    private static final int MAX_OUTPUT_CHARS = 1_000_000;

    public ShizukuAidlService() {
    }

    @Override
    public Bundle execute(String[] command, long timeoutMillis) throws RemoteException {
        if (command == null || command.length == 0) {
            throw new IllegalArgumentException("At least one command is required");
        }
        for (String part : command) {
            if (part == null || part.trim().isEmpty()) {
                throw new IllegalArgumentException("Command arguments must not be null or blank");
            }
        }

        long timeout = timeoutMillis <= 0 ? DEFAULT_TIMEOUT_MS
                : Math.min(timeoutMillis, MAX_TIMEOUT_MS);
        Process process = null;
        FutureTask<String> outputTask = null;
        try {
            process = new ProcessBuilder(command)
                    .redirectErrorStream(true)
                    .start();

            final Process runningProcess = process;
            outputTask = new FutureTask<>(() -> readOutput(runningProcess));
            Thread outputThread = new Thread(outputTask, "bare-shizuku-command-output");
            outputThread.setDaemon(true);
            outputThread.start();

            boolean finished = process.waitFor(timeout, TimeUnit.MILLISECONDS);
            if (!finished) {
                process.destroy();
                if (process.isAlive()) {
                    process.destroyForcibly();
                }
                Bundle timedOut = new Bundle();
                timedOut.putString("output", awaitOutput(outputTask));
                timedOut.putInt("exitCode", -1);
                timedOut.putBoolean("timedOut", true);
                timedOut.putString("error", "Command timed out after " + timeout + " ms");
                return timedOut;
            }

            Bundle result = new Bundle();
            result.putString("output", awaitOutput(outputTask));
            result.putInt("exitCode", process.exitValue());
            result.putBoolean("timedOut", false);
            result.putString("error", "");
            return result;
        } catch (IOException e) {
            return failure(e);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            if (process != null) {
                process.destroyForcibly();
            }
            return failure(e);
        } finally {
            if (process != null && process.isAlive()) {
                process.destroyForcibly();
            }
        }
    }

    private static String readOutput(Process process) throws IOException {
        StringBuilder output = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8))) {
            char[] buffer = new char[4096];
            int count;
            while ((count = reader.read(buffer)) != -1) {
                int remaining = MAX_OUTPUT_CHARS - output.length();
                if (remaining > 0) {
                    output.append(buffer, 0, Math.min(count, remaining));
                }
                if (output.length() >= MAX_OUTPUT_CHARS) {
                    output.append("\n[output truncated]");
                    break;
                }
            }
        }
        return output.toString();
    }

    private static String awaitOutput(FutureTask<String> task) {
        try {
            return task.get(2, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return "[output collection interrupted]";
        } catch (ExecutionException | TimeoutException e) {
            return "[output unavailable: " + e.getClass().getSimpleName() + "]";
        }
    }

    private static Bundle failure(Exception exception) {
        Bundle result = new Bundle();
        result.putString("output", "");
        result.putInt("exitCode", -1);
        result.putBoolean("timedOut", false);
        String message = exception.getMessage();
        result.putString("error", message == null ? exception.getClass().getSimpleName() : message);
        return result;
    }
}
