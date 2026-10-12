package com.bareapps.rootservice;

import android.os.Bundle;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/** Executes an argv vector without shell interpolation, with bounded time and output. */
public final class CommandExecutor {
    static final long DEFAULT_TIMEOUT_MS = 30_000L;
    static final long MAX_TIMEOUT_MS = 120_000L;
    static final int MAX_OUTPUT_CHARS = 1_000_000;

    private CommandExecutor() { }

    public static Bundle execute(String[] command, long timeoutMillis) {
        validate(command);
        long timeout = timeoutMillis <= 0 ? DEFAULT_TIMEOUT_MS
                : Math.min(timeoutMillis, MAX_TIMEOUT_MS);
        Process process = null;
        FutureTask<String> outputTask = null;
        try {
            process = new ProcessBuilder(command).redirectErrorStream(true).start();
            final Process running = process;
            outputTask = new FutureTask<>(() -> readOutput(running));
            Thread reader = new Thread(outputTask, "bare-command-output");
            reader.setDaemon(true);
            reader.start();

            if (!process.waitFor(timeout, TimeUnit.MILLISECONDS)) {
                process.destroy();
                if (process.isAlive()) process.destroyForcibly();
                return result(awaitOutput(outputTask), -1, true,
                        "Command timed out after " + timeout + " ms");
            }
            return result(awaitOutput(outputTask), process.exitValue(), false, "");
        } catch (IOException e) {
            return failure(e);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            if (process != null) process.destroyForcibly();
            return failure(e);
        } catch (RuntimeException e) {
            if (process != null) process.destroyForcibly();
            return failure(e);
        } finally {
            if (process != null && process.isAlive()) process.destroyForcibly();
        }
    }

    static void validate(String[] command) {
        if (command == null || command.length == 0) {
            throw new IllegalArgumentException("Command must contain an executable");
        }
        for (String part : command) {
            if (part == null || part.isEmpty()) {
                throw new IllegalArgumentException("Command arguments must not be null or empty");
            }
        }
    }

    private static String readOutput(Process process) throws IOException {
        StringBuilder output = new StringBuilder();
        boolean truncated = false;
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(
                process.getInputStream(), StandardCharsets.UTF_8))) {
            char[] buffer = new char[4096];
            int count;
            while ((count = reader.read(buffer)) != -1) {
                int remaining = MAX_OUTPUT_CHARS - output.length();
                if (remaining > 0) output.append(buffer, 0, Math.min(count, remaining));
                if (!truncated && output.length() >= MAX_OUTPUT_CHARS) {
                    output.append("\\n[output truncated]");
                    truncated = true;
                }
                // Keep draining after the cap so a child process cannot block on a full pipe.
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

    private static Bundle result(String output, int exitCode, boolean timedOut, String error) {
        Bundle bundle = new Bundle();
        bundle.putString("output", output);
        bundle.putInt("exitCode", exitCode);
        bundle.putBoolean("timedOut", timedOut);
        bundle.putString("error", error);
        return bundle;
    }

    private static Bundle failure(Exception exception) {
        String message = exception.getMessage();
        return result("", -1, false,
                message == null ? exception.getClass().getSimpleName() : message);
    }
}
