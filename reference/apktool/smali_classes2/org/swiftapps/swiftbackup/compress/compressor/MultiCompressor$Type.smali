.class public final enum Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

.field public static final enum ZSTD:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;


# direct methods
.method private static final synthetic $values()[Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->ZSTD:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 2
    .line 3
    filled-new-array {v0}, [Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 2
    .line 3
    const-string v1, "ZSTD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->ZSTD:Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 10
    .line 11
    invoke-static {}, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->$values()[Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->$VALUES:[Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 16
    .line 17
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->$ENTRIES:Ljx2;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;
    .locals 1

    .line 1
    const-class v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;->$VALUES:[Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/swiftapps/swiftbackup/compress/compressor/MultiCompressor$Type;

    .line 8
    .line 9
    return-object v0
.end method
