.class public Ly51$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lz51;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/zip/CRC32;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly51$b;->a:Ljava/util/zip/CRC32;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Ly51$b;->a:Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sum()[B
    .locals 5

    .line 1
    iget-object p0, p0, Ly51$b;->a:Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int p0, v0

    .line 8
    ushr-int/lit8 v0, p0, 0x18

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    ushr-int/lit8 v1, p0, 0x10

    .line 12
    .line 13
    int-to-byte v1, v1

    .line 14
    ushr-int/lit8 v2, p0, 0x8

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    int-to-byte p0, p0

    .line 18
    const/4 v3, 0x4

    .line 19
    new-array v3, v3, [B

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-byte v0, v3, v4

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    aput-byte v1, v3, v0

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    aput-byte v2, v3, v0

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    aput-byte p0, v3, v0

    .line 32
    .line 33
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CRC32{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ly51$b;->sum()[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ly51;->b([B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "}"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final update([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Ly51$b;->a:Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
