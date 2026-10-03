package com.bare.appslist.restore;

import android.content.Context;

import com.bare.apps.install.PackageInstallerExecutor;
import com.bare.apps.install.PackageInstallerResult;
import com.bare.appslist.planning.RestoreInstallDecision;
import com.bare.appslist.planning.RestoreInstallPlanner;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/**
 * Concrete app-side restore execution coordinator.
 *
 * This is the Phase-6 execution bridge: it consumes the already-locked
 * lifecycle/planning contracts, performs platform installation and archive
 * extraction where the artifact format is executable by the current adapter,
 * then verifies the target package at runtime.
 *
 * It intentionally does not claim data/platform-part restoration merely from
 * extraction; those mutations require the corresponding part executor.
 */
public final class RestoreExecutionEngine {
    private final RestoreInstallPlanner installPlanner;
    private final com.bare.appslist.restore.ArchiveExtractionExecutor extractionExecutor;
    private final PackageInstallerExecutor packageInstallerExecutor;
    private final RestoreRuntimeVerifier runtimeVerifier;

    public RestoreExecutionEngine() {
        this(new RestoreInstallPlanner(),
                new ArchiveExtractionExecutor(),
                new PackageInstallerExecutor(),
                new RestoreRuntimeVerifier());
    }

    public RestoreExecutionEngine(
            RestoreInstallPlanner installPlanner,
            ArchiveExtractionExecutor extractionExecutor,
            PackageInstallerExecutor packageInstallerExecutor,
            RestoreRuntimeVerifier runtimeVerifier) {
        if (installPlanner == null) throw new IllegalArgumentException("installPlanner");
        if (extractionExecutor == null) throw new IllegalArgumentException("extractionExecutor");
        if (packageInstallerExecutor == null) throw new IllegalArgumentException("packageInstallerExecutor");
        if (runtimeVerifier == null) throw new IllegalArgumentException("runtimeVerifier");
        this.installPlanner = installPlanner;
        this.extractionExecutor = extractionExecutor;
        this.packageInstallerExecutor = packageInstallerExecutor;
        this.runtimeVerifier = runtimeVerifier;
    }

    public Result execute(
            Context context,
            RestoreInstallPlanner.Request installRequest,
            List<File> apkFiles,
            File archive,
            File extractionDirectory,
            com.bare.apps.contracts.RfArtifactContracts.F158ArchiveParse archiveFacts,
            Long expectedRuntimeVersionCode) throws IOException, InterruptedException {
        if (context == null) throw new IllegalArgumentException("context");
        if (installRequest == null) throw new IllegalArgumentException("installRequest");

        RestoreInstallDecision decision = installPlanner.plan(installRequest);
        if (decision.getKind() == RestoreInstallDecision.Kind.REJECT) {
            return Result.failure(Stage.PLANNING_REJECTED, decision.getReason());
        }
        if (decision.getKind() == RestoreInstallDecision.Kind.RETRY) {
            return Result.failure(Stage.PLANNING_RETRY, decision.getReason());
        }
        if (decision.getKind() == RestoreInstallDecision.Kind.DOWNGRADE_REQUIRES_PREPARATION
                || decision.getKind() == RestoreInstallDecision.Kind.SECONDARY_USER_REQUIRES_PREPARATION) {
            return Result.failure(Stage.DOWNGRADE_PREPARATION_REQUIRED, decision.getReason());
        }

        PackageInstallerResult installResult = null;
        if (decision.getKind() == RestoreInstallDecision.Kind.INSTALL) {
            if (apkFiles == null || apkFiles.isEmpty()) {
                return Result.failure(Stage.APK_MISSING, "No APK artifact supplied for installation.");
            }
            installResult = packageInstallerExecutor.install(
                    context, installRequest.getPackageName(), apkFiles);
            if (!installResult.isSuccess()) {
                return Result.failure(
                        Stage.PACKAGE_INSTALL_FAILED,
                        installResult.getMessage() == null
                                ? "PackageInstaller failed."
                                : installResult.getMessage());
            }
        }

        ArchiveExtractionExecutor.Result extractionResult = null;
        if (archive != null) {
            if (extractionDirectory == null || archiveFacts == null) {
                return Result.failure(
                        Stage.EXTRACTION_INPUT_INVALID,
                        "Archive extraction requires destination and F158 facts.");
            }
            extractionResult = extractionExecutor.extract(
                    archive, extractionDirectory, archiveFacts);
        }

        RestoreRuntimeVerifier.Result runtime =
                runtimeVerifier.verify(
                        context,
                        installRequest.getPackageName(),
                        expectedRuntimeVersionCode);
        if (!runtime.isVerified()) {
            return Result.failure(
                    Stage.RUNTIME_VERIFICATION_FAILED,
                    runtime.getMessage());
        }

        return Result.success(installResult, extractionResult, runtime);
    }

    public enum Stage {
        COMPLETE,
        PLANNING_REJECTED,
        PLANNING_RETRY,
        DOWNGRADE_PREPARATION_REQUIRED,
        APK_MISSING,
        PACKAGE_INSTALL_FAILED,
        EXTRACTION_INPUT_INVALID,
        RUNTIME_VERIFICATION_FAILED
    }

    public static final class Result {
        private final Stage stage;
        private final String message;
        private final PackageInstallerResult installResult;
        private final ArchiveExtractionExecutor.Result extractionResult;
        private final RestoreRuntimeVerifier.Result runtimeResult;

        private Result(
                Stage stage,
                String message,
                PackageInstallerResult installResult,
                ArchiveExtractionExecutor.Result extractionResult,
                RestoreRuntimeVerifier.Result runtimeResult) {
            this.stage = stage;
            this.message = message;
            this.installResult = installResult;
            this.extractionResult = extractionResult;
            this.runtimeResult = runtimeResult;
        }

        static Result success(
                PackageInstallerResult installResult,
                ArchiveExtractionExecutor.Result extractionResult,
                RestoreRuntimeVerifier.Result runtimeResult) {
            return new Result(Stage.COMPLETE, null, installResult, extractionResult, runtimeResult);
        }

        static Result failure(Stage stage, String message) {
            return new Result(stage, message, null, null, null);
        }

        public Stage getStage() { return stage; }
        public String getMessage() { return message; }
        public PackageInstallerResult getInstallResult() { return installResult; }
        public ArchiveExtractionExecutor.Result getExtractionResult() { return extractionResult; }
        public RestoreRuntimeVerifier.Result getRuntimeResult() { return runtimeResult; }
        public boolean isComplete() { return stage == Stage.COMPLETE; }
    }
}
