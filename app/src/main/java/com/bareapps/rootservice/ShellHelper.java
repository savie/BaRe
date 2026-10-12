package com.bareapps.rootservice;

import android.os.Bundle;

import com.topjohnwu.superuser.Shell;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/** libsu-backed root execution helpers. Root is never silently downgraded inside this class. */
public final class ShellHelper {
    public static final ShellHelper INSTANCE = new ShellHelper();

    private ShellHelper() { }

    /** Builds an unprivileged libsu shell and runs commands in that shell. */
    public static Shell.Result sh(String... commands) {
        requireCommands(commands);
        Shell shell = Shell.Builder.create()
                .setFlags(Shell.FLAG_NON_ROOT_SHELL)
                .build();
        try {
            return shell.newJob().add(Arrays.copyOf(commands, commands.length)).exec();
        } finally {
            try { shell.close(); } catch (IOException ignored) { }
        }
    }

    /** Uses libsu's cached main shell and fails if root was not actually granted. */
    public static Shell.Result su(String... commands) {
        requireCommands(commands);
        Shell shell = Shell.getCachedShell();
        if (shell == null || shell.getStatus() != Shell.ROOT_SHELL) {
            throw new IllegalStateException("Root access is unavailable; call requestRootAccess first");
        }
        return shell.newJob().add(Arrays.copyOf(commands, commands.length)).exec();
    }

    static Bundle executeAsRoot(Shell shell, String[] argv, long timeoutMillis) {
        CommandExecutor.validate(argv);
        if (shell == null || shell.getStatus() != Shell.ROOT_SHELL) {
            return failure("Root shell is not authorized");
        }
        long timeout = timeoutMillis <= 0 ? CommandExecutor.DEFAULT_TIMEOUT_MS
                : Math.min(timeoutMillis, CommandExecutor.MAX_TIMEOUT_MS);
        StringBuilder command = new StringBuilder("timeout -s TERM ")
                .append(Math.max(1L, (timeout + 999L) / 1000L)).append(' ');
        for (String part : argv) {
            if (command.charAt(command.length() - 1) != ' ') command.append(' ');
            command.append(quote(part));
        }
        try {
            Shell.Result result = shell.newJob().add(command.toString()).exec();
            Bundle bundle = new Bundle();
            StringBuilder output = new StringBuilder();
            appendLines(output, result.getOut());
            appendLines(output, result.getErr());
            if (output.length() > CommandExecutor.MAX_OUTPUT_CHARS) {
                output.setLength(CommandExecutor.MAX_OUTPUT_CHARS);
                output.append("\n[output truncated]");
            }
            bundle.putString("output", output.toString());
            bundle.putInt("exitCode", result.getCode());
            bundle.putBoolean("timedOut", result.getCode() == 124 || result.getCode() == 137);
            bundle.putString("error", result.getCode() == 124 || result.getCode() == 137
                    ? "Command timed out after " + timeout + " ms" : "");
            return bundle;
        } catch (RuntimeException error) {
            String message = error.getMessage();
            return failure(message == null ? error.getClass().getSimpleName() : message);
        }
    }

    /** POSIX single-quote escaping, for individual argv entries only. */
    public static String quote(String value) {
        if (value == null) throw new IllegalArgumentException("Value must not be null");
        return "'" + value.replace("'", "'\\''") + "'";
    }

    private static void appendLines(StringBuilder target, List<String> lines) {
        if (lines == null) return;
        for (String line : lines) {
            if (target.length() > 0) target.append('\n');
            target.append(line);
        }
    }

    private static Bundle failure(String error) {
        Bundle result = new Bundle();
        result.putString("output", "");
        result.putInt("exitCode", -1);
        result.putBoolean("timedOut", false);
        result.putString("error", error);
        return result;
    }

    private static void requireCommands(String[] commands) {
        if (commands == null || commands.length == 0) {
            throw new IllegalArgumentException("At least one command is required");
        }
        for (String command : commands) {
            if (command == null || command.trim().isEmpty()) {
                throw new IllegalArgumentException("Commands must not be null or blank");
            }
        }
    }
}
