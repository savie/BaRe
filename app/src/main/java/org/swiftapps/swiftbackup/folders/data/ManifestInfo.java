package org.swiftapps.swiftbackup.folders.data;

import defpackage.pe4;
import defpackage.q63;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ManifestInfo {
    private final q63 file;
    private final Manifest manifest;

    public ManifestInfo(q63 q63Var, Manifest manifest) {
        q63Var.getClass();
        manifest.getClass();
        this.file = q63Var;
        this.manifest = manifest;
    }

    public static /* synthetic */ ManifestInfo copy$default(ManifestInfo manifestInfo, q63 q63Var, Manifest manifest, int i, Object obj) {
        if ((i & 1) != 0) {
            q63Var = manifestInfo.file;
        }
        if ((i & 2) != 0) {
            manifest = manifestInfo.manifest;
        }
        return manifestInfo.copy(q63Var, manifest);
    }

    public final q63 component1() {
        return this.file;
    }

    public final Manifest component2() {
        return this.manifest;
    }

    public final ManifestInfo copy(q63 q63Var, Manifest manifest) {
        q63Var.getClass();
        manifest.getClass();
        return new ManifestInfo(q63Var, manifest);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ManifestInfo)) {
            return false;
        }
        ManifestInfo manifestInfo = (ManifestInfo) obj;
        return pe4.d(this.file, manifestInfo.file) && pe4.d(this.manifest, manifestInfo.manifest);
    }

    public final q63 getFile() {
        return this.file;
    }

    public final Manifest getManifest() {
        return this.manifest;
    }

    public int hashCode() {
        return this.manifest.hashCode() + (this.file.a.hashCode() * 31);
    }

    public String toString() {
        return "ManifestInfo(file=" + this.file + ", manifest=" + this.manifest + ")";
    }
}
