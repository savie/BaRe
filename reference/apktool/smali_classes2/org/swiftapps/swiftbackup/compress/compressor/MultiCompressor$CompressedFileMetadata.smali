.class public final Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final compressionType:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

.field private final decompressedSize:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 17
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;-><init>(Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->compressionType:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 20
    iput-wide p2, p0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->decompressedSize:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lth5;->a:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const-wide/16 p2, 0x0

    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;-><init>(Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getCompressionType()Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->compressionType:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDecompressedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$CompressedFileMetadata;->decompressedSize:J

    .line 2
    .line 3
    return-wide v0
.end method
