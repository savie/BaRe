package com.bare.appslist.restore;

import android.content.Context;
import android.net.Uri;

import java.io.File;

/** Complete app-side APK/APKS import preparation flow. */
public final class ApkImportProcessor {
    public static final class Result {
        private final ApkImportIntake.Result intake;
        private final ApkImportArchiveValidator.Result archive;
        private final ApkImportMaterializer.Result materialized;
        private final ApkImportMetadataInspector.Result metadata;

        private Result(ApkImportIntake.Result intake,
                       ApkImportArchiveValidator.Result archive,
                       ApkImportMaterializer.Result materialized,
                       ApkImportMetadataInspector.Result metadata) {
            this.intake = intake;
            this.archive = archive;
            this.materialized = materialized;
            this.metadata = metadata;
        }

        public boolean isReady() {
            return intake != null && intake.isReady()
                    && archive != null && archive.isValid()
                    && materialized != null && materialized.isReady()
                    && metadata != null && metadata.isReady();
        }

        public ApkImportIntake.Result getIntake() { return intake; }
        public ApkImportArchiveValidator.Result getArchive() { return archive; }
        public ApkImportMaterializer.Result getMaterialized() { return materialized; }
        public ApkImportMetadataInspector.Result getMetadata() { return metadata; }
    }

    private final ApkImportIntake intake = new ApkImportIntake();
    private final ApkImportArchiveValidator archiveValidator = new ApkImportArchiveValidator();
    private final ApkImportMaterializer materializer = new ApkImportMaterializer();
    private final ApkImportMetadataInspector metadataInspector = new ApkImportMetadataInspector();

    public Result prepare(Context context, Uri source, File taskDirectory) {
        ApkImportIntake.Result intakeResult = intake.stage(context, source, taskDirectory);
        if (!intakeResult.isReady()) {
            return new Result(intakeResult, null, null,
                    ApkImportMetadataInspector.Result.error(intakeResult.getError()));
        }

        ApkImportArchiveValidator.Result archiveResult =
                archiveValidator.validate(context, intakeResult.getFile(), intakeResult.getKind());
        if (!archiveResult.isValid()) {
            delete(taskDirectory);
            return new Result(intakeResult, archiveResult, null,
                    ApkImportMetadataInspector.Result.error(archiveResult.getError()));
        }

        ApkImportMaterializer.Result materializedResult =
                materializer.materialize(context, intakeResult, taskDirectory);
        if (!materializedResult.isReady()) {
            delete(taskDirectory);
            return new Result(intakeResult, archiveResult, materializedResult,
                    ApkImportMetadataInspector.Result.error(materializedResult.getError()));
        }

        ApkImportMetadataInspector.Result metadataResult =
                metadataInspector.inspect(context, materializedResult.getApk());
        if (!metadataResult.isReady()) {
            delete(taskDirectory);
        }

        return new Result(intakeResult, archiveResult, materializedResult, metadataResult);
    }

    private void delete(File file) {
        if (file == null || !file.exists()) return;
        File[] children = file.listFiles();
        if (children != null) {
            for (File child : children) delete(child);
        }
        file.delete();
    }
}
