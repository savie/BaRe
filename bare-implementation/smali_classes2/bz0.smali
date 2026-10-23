.class public final Lbz0;
.super Ls51;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls51;-><init>()V

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
    iput-object v0, p0, Lbz0;->d:Ljava/util/zip/CRC32;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    iput v0, p0, Ls51;->b:I

    .line 13
    .line 14
    const-string v0, "CRC32"

    .line 15
    .line 16
    iput-object v0, p0, Ls51;->c:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    iget-object p0, p0, Lbz0;->d:Ljava/util/zip/CRC32;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    long-to-int v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1}, Lpe4;->C([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->reset()V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final d([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lbz0;->d:Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
