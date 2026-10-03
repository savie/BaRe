package com.bare.appslist.restore;

import com.bare.apps.contracts.RfArtifactContracts.F154Part;
import com.bare.apps.contracts.RfArtifactContracts.F162ArtifactDescriptor;
import com.bare.apps.contracts.RfArtifactContracts.F162ReuseDecision;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 * App-side cloud artifact execution adapter.
 *
 * The provider remains outside this class: callers supply an ArtifactSource
 * capable of opening the already-resolved external artifact. This adapter
 * owns local staging, exact-size reuse, bounded streaming and atomic replace.
 * It does not persist provider credentials or backend state.
 */
public final class CloudRestoreArtifactExecutor {
    public interface ArtifactSource {
        InputStream open(String providerLocator) throws IOException;
    }

    public Result stage(
            CloudRestoreArtifactResolver.Result resolved,
            Map<String, F162ArtifactDescriptor> descriptors,
            File stagingDirectory,
            ArtifactSource source) throws IOException {
        if (resolved == null) throw new IllegalArgumentException("resolved");
        if (stagingDirectory == null) throw new IllegalArgumentException("stagingDirectory");
        if (source == null) throw new IllegalArgumentException("source");

        if (!stagingDirectory.exists() && !stagingDirectory.mkdirs()) {
            throw new IOException("Cannot create staging directory: " + stagingDirectory);
        }
        if (!stagingDirectory.isDirectory()) {
            throw new IOException("Staging path is not a directory: " + stagingDirectory);
        }

        Map<String, StagedArtifact> staged = new HashMap<>();
        for (CloudRestoreArtifactResolver.Artifact artifact : resolved.getArtifacts()) {
            F162ArtifactDescriptor descriptor =
                    descriptors == null ? null : descriptors.get(artifact.getPartId());
            if (descriptor == null) {
                throw new IOException("Missing descriptor for part: " + artifact.getPartId());
            }

            File target = safeChild(stagingDirectory, descriptor.targetLocalPath());
            File parent = target.getParentFile();
            if (parent != null && !parent.exists() && !parent.mkdirs()) {
                throw new IOException("Cannot create artifact parent: " + parent);
            }

            if (target.isFile() && target.length() == descriptor.expectedSizeBytes()) {
                staged.put(artifact.getPartId(),
                        new StagedArtifact(
                                artifact.getPartId(), target, true, false,
                                descriptor.expectedSizeBytes()));
                continue;
            }

            File temp = new File(target.getPath() + ".part");
            long copied = copy(source.open(artifact.getProviderLocator()), temp);
            if (copied != descriptor.expectedSizeBytes()) {
                temp.delete();
                throw new IOException(
                        "Artifact size mismatch for " + artifact.getPartId()
                                + ": expected " + descriptor.expectedSizeBytes()
                                + ", got " + copied);
            }

            if (target.exists() && !target.delete()) {
                temp.delete();
                throw new IOException("Cannot replace existing artifact: " + target);
            }
            if (!temp.renameTo(target)) {
                temp.delete();
                throw new IOException("Cannot finalize artifact: " + target);
            }

            staged.put(artifact.getPartId(),
                    new StagedArtifact(
                            artifact.getPartId(), target, false, true,
                            copied));
        }

        return new Result(staged, resolved.getUnresolvedParts());
    }

    private static long copy(InputStream input, File target) throws IOException {
        if (input == null) throw new IOException("Artifact source returned null stream.");
        long total = 0L;
        try (InputStream in = input;
             OutputStream out = new java.io.BufferedOutputStream(
                     new java.io.FileOutputStream(target))) {
            byte[] buffer = new byte[1024 * 1024];
            int read;
            while ((read = in.read(buffer)) != -1) {
                total += read;
                out.write(buffer, 0, read);
            }
            out.flush();
        } catch (IOException e) {
            target.delete();
            throw e;
        }
        return total;
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        if (relativePath == null || relativePath.isEmpty()) {
            throw new IOException("Empty local artifact path.");
        }
        File target = new File(root, relativePath);
        String rootPath = root.getCanonicalPath();
        String targetPath = target.getCanonicalPath();
        if (!targetPath.equals(rootPath)
                && !targetPath.startsWith(rootPath + File.separator)) {
            throw new IOException("Unsafe artifact path: " + relativePath);
        }
        return target;
    }

    public static final class Result {
        private final Map<String, StagedArtifact> staged;
        private final java.util.List<String> unresolvedParts;

        Result(Map<String, StagedArtifact> staged, java.util.List<String> unresolvedParts) {
            this.staged = Collections.unmodifiableMap(new HashMap<>(staged));
            this.unresolvedParts = Collections.unmodifiableList(
                    new java.util.ArrayList<>(unresolvedParts));
        }

        public Map<String, StagedArtifact> getStaged() { return staged; }
        public java.util.List<String> getUnresolvedParts() { return unresolvedParts; }
    }

    public static final class StagedArtifact {
        private final String partId;
        private final File file;
        private final boolean reused;
        private final boolean downloaded;
        private final long sizeBytes;

        StagedArtifact(String partId, File file, boolean reused, boolean downloaded, long sizeBytes) {
            this.partId = partId;
            this.file = file;
            this.reused = reused;
            this.downloaded = downloaded;
            this.sizeBytes = sizeBytes;
        }

        public String getPartId() { return partId; }
        public File getFile() { return file; }
        public boolean isReused() { return reused; }
        public boolean isDownloaded() { return downloaded; }
        public long getSizeBytes() { return sizeBytes; }
    }
}
