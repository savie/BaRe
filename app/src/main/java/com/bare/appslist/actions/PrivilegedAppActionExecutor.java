package com.bare.appslist.actions;

import android.os.UserHandle;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Reference-aligned privileged executor for Apps row actions.
 *
 * The Reference routes these operations through its privileged shell path.
 * BaRe keeps the command runner injectable so the UI/domain layer never owns
 * root/Shizuku mechanics.
 */
public final class PrivilegedAppActionExecutor {
    public enum Action { ENABLE, DISABLE, FORCE_STOP, CLEAR_DATA }

    public interface CommandRunner {
        Result run(String command) throws Exception;
    }

    public static final class Result {
        private final boolean success;
        private final int exitCode;
        private final List<String> output;
        private final String error;

        private Result(boolean success, int exitCode, List<String> output, String error) {
            this.success = success;
            this.exitCode = exitCode;
            this.output = Collections.unmodifiableList(new ArrayList<>(output));
            this.error = error;
        }

        public boolean isSuccess() { return success; }
        public int getExitCode() { return exitCode; }
        public List<String> getOutput() { return output; }
        public String getError() { return error; }

        public static Result success(int exitCode, List<String> output) {
            return new Result(true, exitCode, output == null ? Collections.emptyList() : output, null);
        }

        public static Result failure(int exitCode, List<String> output, String error) {
            return new Result(false, exitCode, output == null ? Collections.emptyList() : output, error);
        }
    }

    /** Root-backed command runner. Runtime/device availability is intentionally verified later. */
    public static final class RootCommandRunner implements CommandRunner {
        @Override public Result run(String command) throws Exception {
            Process process = new ProcessBuilder("su", "-c", command)
                    .redirectErrorStream(true)
                    .start();
            List<String> output = new ArrayList<>();
            try (BufferedReader reader =
                         new BufferedReader(new InputStreamReader(process.getInputStream()))) {
                String line;
                while ((line = reader.readLine()) != null) output.add(line);
            }
            int exit = process.waitFor();
            return exit == 0
                    ? Result.success(exit, output)
                    : Result.failure(exit, output, "privileged command failed");
        }
    }

    private final CommandRunner runner;
    private final int userId;

    public PrivilegedAppActionExecutor() {
        this(new RootCommandRunner(), UserHandle.myUserId());
    }

    public PrivilegedAppActionExecutor(CommandRunner runner, int userId) {
        if (runner == null) throw new IllegalArgumentException("runner");
        if (userId < 0) throw new IllegalArgumentException("userId");
        this.runner = runner;
        this.userId = userId;
    }

    public Result execute(Action action, String packageName) throws Exception {
        if (action == null) throw new IllegalArgumentException("action");
        validatePackageName(packageName);
        final String command;
        switch (action) {
            case ENABLE:
                command = "pm enable --user " + userId + " " + packageName;
                break;
            case DISABLE:
                command = "pm disable-user --user " + userId + " " + packageName;
                break;
            case FORCE_STOP:
                command = "am force-stop " + packageName;
                break;
            case CLEAR_DATA:
                command = "pm clear --user " + userId + " " + packageName;
                break;
            default:
                throw new IllegalArgumentException("action");
        }
        return runner.run(command);
    }

    private static void validatePackageName(String packageName) {
        if (packageName == null || !packageName.matches("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+")) {
            throw new IllegalArgumentException("Invalid package name");
        }
    }
}
