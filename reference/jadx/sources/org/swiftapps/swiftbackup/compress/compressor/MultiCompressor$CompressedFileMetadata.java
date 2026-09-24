package org.swiftapps.swiftbackup.compress.compressor;

import defpackage.th5;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MultiCompressor$CompressedFileMetadata {
    private final MultiCompressor$Type compressionType;
    private final long decompressedSize;

    public /* synthetic */ MultiCompressor$CompressedFileMetadata(MultiCompressor$Type multiCompressor$Type, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? th5.a : multiCompressor$Type, (i & 2) != 0 ? 0L : j);
    }

    public final MultiCompressor$Type getCompressionType() {
        return this.compressionType;
    }

    public final long getDecompressedSize() {
        return this.decompressedSize;
    }

    public MultiCompressor$CompressedFileMetadata() {
        this(null, 0L, 3, null);
    }

    public MultiCompressor$CompressedFileMetadata(MultiCompressor$Type multiCompressor$Type, long j) {
        multiCompressor$Type.getClass();
        this.compressionType = multiCompressor$Type;
        this.decompressedSize = j;
    }
}
