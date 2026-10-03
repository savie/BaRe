package com.bare.appslist.restore;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

/**
 * Concrete local file restore implementation for artifacts that have already
 * been safely extracted into a staging tree.
 */
public final class FileTreeRestoreExecutor implements RestorePartExecutor {
    private final File destinationRoot;

    public FileTreeRestoreExecutor(File destinationRoot) {
        if (destinationRoot == null) throw new IllegalArgumentException("destinationRoot");
        this.destinationRoot = destinationRoot;
    }

    @Override
    public Result execute(Request request) throws IOException {
        if (request == null) throw new IllegalArgumentException("request");
        File source = request.getStagedArtifact();
        if (!source.exists()) return Result.noBackup("Staged restore artifact is missing.");

        File target = safeChild(destinationRoot, request.getPartId());
        if (!destinationRoot.exists() && !destinationRoot.mkdirs()) {
            return Result.failed("Cannot create restore destination.");
        }

        copyTree(source.toPath(), target.toPath());
        return Result.restored("Restore files copied.");
    }

    private static void copyTree(Path source, Path target) throws IOException {
        if (Files.isDirectory(source)) {
            Files.createDirectories(target);
            try (java.nio.file.DirectoryStream<Path> stream = Files.newDirectoryStream(source)) {
                for (Path child : stream) {
                    copyTree(child, target.resolve(child.getFileName().toString()));
                }
            }
        } else {
            Path parent = target.getParent();
            if (parent != null) Files.createDirectories(parent);
            Files.copy(source, target, StandardCopyOption.REPLACE_EXISTING);
        }
    }

    private static File safeChild(File root, String child) throws IOException {
        File target = new File(root, child);
        String r = root.getCanonicalPath();
        String t = target.getCanonicalPath();
        if (!t.equals(r) && !t.startsWith(r + File.separator)) {
            throw new IOException("Unsafe restore destination.");
        }
        return target;
    }
}
