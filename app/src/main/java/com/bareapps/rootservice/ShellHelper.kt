package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell

/**
 * Shell entry points mapped from SwiftBackup 5.1.0 (620)'s
 * org.swiftapps.rootservice.ShellHelper.
 *
 * Execution is delegated to libsu, which is already a project dependency.
 * No local copy of com.topjohnwu.superuser classes is needed.
 */
object ShellHelper {

    /**
     * Creates a dedicated non-root "sh" shell with the reference's 10-second
     * startup timeout and merged stderr/stdout behavior (reference flags = 9).
     */
    @JvmStatic
    fun getShShell(): Shell =
        Shell.Builder.create()
            .setFlags(Shell.FLAG_NON_ROOT_SHELL or Shell.FLAG_REDIRECT_STDERR)
            .setTimeout(10)
            .build()

    /**
     * Creates a deferred job on libsu's configured main shell, matching the
     * reference helper's SH command path.
     */
    @JvmStatic
    fun sh(vararg commands: String): Shell.Job = Shell.cmd(*commands)

    /**
     * Creates a deferred root-only job. The reference's SU job refuses to run
     * its commands when the selected main shell is not root. libsu 6.x no
     * longer exposes the old Shell.su(...) job factory, so preserve that guard
     * in the command script while using the configured libsu shell.
     */
    @JvmStatic
    fun su(vararg commands: String): Shell.Job {
        val script = buildString {
            append("if [ \"$(id -u)\" -eq 0 ]; then\n")
            commands.forEach { command ->
                append(command)
                append('\n')
            }
            append("else\nexit 1\nfi")
        }
        return Shell.cmd(script)
    }
}
