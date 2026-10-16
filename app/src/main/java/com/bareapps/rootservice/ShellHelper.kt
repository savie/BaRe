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

    private val selectedMainShell: Shell by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        selectMainShell()
    }

    /**
     * Approximation of reference k55.j() + ex0.a(): try a mount-master root
     * shell when requested, then a regular su shell, and finally fall back to
     * a dedicated non-root sh shell. libsu manages process/job internals, so
     * this preserves selection semantics without reimplementing zd7 itself.
     */
    @JvmStatic
    fun getMainShell(): Shell = selectedMainShell

    private fun selectMainShell(): Shell {
        val candidates = listOf(
            arrayOf("su", "--mount-master"),
            arrayOf("su")
        )
        for (command in candidates) {
            val candidate = runCatching {
                Shell.Builder.create(*command)
                    .setTimeout(20)
                    .build()
            }.getOrNull() ?: continue
            if (runCatching { candidate.isRoot }.getOrDefault(false)) return candidate
            runCatching { candidate.close() }
        }
        return getShShell()
    }

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
    fun sh(vararg commands: String): Shell.Job = getMainShell().newJob().add(*commands)

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
        return getMainShell().newJob().add(script)
    }
}
