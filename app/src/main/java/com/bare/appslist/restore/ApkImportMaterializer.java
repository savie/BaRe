package com.bare.appslist.restore;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * Materializes base.apk from an already validated APKS archive.
 * The source archive is never modified.
 */
public final class ApkImportMaterializer {
    public static final class Result {
        private final File apk;
        private final String error;

        private Result(File apk, String error) {
            this.apk = apk;
            this.error = error;
        }

        public static Result ready(File apk) { return new Result(apk, null); }
        public static Result error(String message) { return new Result(null, message); }
        public boolean isReady() { return apk != null && error == null && apk.isFile() && apk.length() > 0; }
        public File getApk() { return apk; }
        public String getError() { return error; }
    }

    public Result materialize(ApkImportIntake.Result input, File outputDirectory) {
        if (input == null || !input.isReady() || outputDirectory == null) {
            return Result.error("Missing APK import result.");
        }

        if (!outputDirectory.exists() && !outputDirectory.mkdirs()) {
            return Result.error("Unable to create APK output directory.");
        }

        if (input.getKind() == ApkImportIntake.Kind.SINGLE_APK) {
            return Result.ready(input.getFile());
        }

        File output = new File(outputDirectory, "base.apk");
        try (ZipFile zip = new ZipFile(input.getFile())) {
            ZipEntry entry = zip.getEntry("base.apk");
            if (entry == null || entry.isDirectory()) {
                return Result.error("APKS archive has no base APK.");
            }

            long expected = entry.getSize();
            if (expected == 0) {
                return Result.error("Base APK is empty.");
            }

            try (InputStream in = zip.getInputStream(entry);
                 FileOutputStream out = new FileOutputStream(output, false)) {
                byte[] buffer = new byte[64 * 1024];
                long written = 0;
                int read;
                while ((read = in.read(buffer)) != -1) {
                    if (read > 0) {
                        out.write(buffer, 0, read);
                        written += read;
                    }
                }
                out.flush();

                if (expected > 0 && written != expected) {
                    output.delete();
                    return Result.error("Base APK size changed while reading archive.");
                }
            }

            if (!output.isFile() || output.length() <= 0) {
                output.delete();
                return Result.error("Base APK materialization failed.");
            }
            return Result.ready(output);
        } catch (IOException | SecurityException e) {
            output.delete();
            return Result.error(e.getMessage() == null ? "Unable to extract base APK." : e.getMessage());
        }
    }
}
