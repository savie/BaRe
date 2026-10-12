package com.bareapps.rootservice;

import com.topjohnwu.superuser.Shell;

import java.io.IOException;
import java.util.Arrays;

/**
 * Small compatibility wrapper for the two execution modes exposed by the reference app.
 *
 * <p>{@link #sh(String...)} always uses an unprivileged shell. {@link #su(String...)}
 * uses libsu's main shell and refuses to execute if that shell is not root.</p>
 */
public final class ShellHelper {
    public static final ShellHelper INSTANCE = new ShellHelper();

    private ShellHelper() {
    }

    /**
     * Builds a non-root shell, runs the supplied commands, and closes that shell.
     */
    public static Shell.Result sh(String... commands) {
        requireCommands(commands);

        Shell shell = Shell.Builder.create()
                .setFlags(Shell.FLAG_NON_ROOT_SHELL)
                .build();
        try {
            return shell.newJob().add(Arrays.copyOf(commands, commands.length)).exec();
        } finally {
            try {
                shell.close();
            } catch (IOException ignored) {
                // Do not mask the command result/failure with a cleanup exception.
            }
        }
    }

    /**
     * Runs commands only when libsu has actually obtained a root shell.
     * It intentionally does not silently fall back to an app-UID shell.
     */
    public static Shell.Result su(String... commands) {
        requireCommands(commands);

        Shell shell = Shell.getShell();
        if (shell.getStatus() != Shell.ROOT_SHELL) {
            throw new IllegalStateException("Root access is unavailable or was not granted");
        }
        return Shell.cmd(Arrays.copyOf(commands, commands.length)).exec();
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
