package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell

/**
 * Shell entry points mapped from SwiftBackup 5.1.0 (620)'s
 * org.swiftapps.rootservice.ShellHelper.
 *
 * The reference getShShell() builds a dedicated Shell using ex0 flags=9 and a
 * 10-second startup timeout. sh()/su() do NOT return libsu Shell.Job: they
 * return the deferred od7 task abstraction, implemented here by
 * ShellCommandTask.
 */
object ShellHelper {

    /**
     * Main shell selected through the mapped k55/ex0 responsibilities.
     * The registry owns caching and invalidation policy.
     */
    @JvmStatic
    fun getMainShell(): Shell = ShellSelectionRegistry.getOrCreate()

    /**
     * Exact source-supported builder configuration: flags 9 (non-root shell +
     * redirect stderr) and 10-second startup timeout.
     */
    @JvmStatic
    fun getShShell(): Shell =
        Shell.Builder.create()
            .setFlags(Shell.FLAG_NON_ROOT_SHELL or Shell.FLAG_REDIRECT_STDERR)
            .setTimeout(10)
            .build()

    /**
     * Builds a deferred non-root-required command task, equivalent to the
     * reference's vy5(false) path. Commands run only when execute() is called.
     */
    @JvmStatic
    fun sh(vararg commands: String): ShellCommandTask =
        ShellCommandTask(requireRoot = false, commands = commands.copyOf())

    /**
     * Builds a deferred root-required command task, equivalent to vy5(true).
     * The root gate is checked at execution time against the selected shell.
     */
    @JvmStatic
    fun su(vararg commands: String): ShellCommandTask =
        ShellCommandTask(requireRoot = true, commands = commands.copyOf())
}
