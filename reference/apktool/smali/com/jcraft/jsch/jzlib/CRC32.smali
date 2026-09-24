.class final Lcom/jcraft/jsch/jzlib/CRC32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/jzlib/Checksum;


# static fields
.field public static final b:[I


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Lcom/jcraft/jsch/jzlib/CRC32;->b:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    move v3, v1

    .line 13
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    if-ltz v2, :cond_1

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    ushr-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    const v4, -0x12477ce0

    .line 24
    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    ushr-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object v2, Lcom/jcraft/jsch/jzlib/CRC32;->b:[I

    .line 32
    .line 33
    aput v3, v2, v1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final copy()Lcom/jcraft/jsch/jzlib/CRC32;
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jsch/jzlib/CRC32;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/CRC32;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 7
    .line 8
    iput p0, v0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 9
    .line 10
    return-object v0
.end method

.method public final bridge synthetic copy()Lcom/jcraft/jsch/jzlib/Checksum;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/CRC32;->copy()Lcom/jcraft/jsch/jzlib/CRC32;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()J
    .locals 4

    .line 1
    iget p0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    const-wide v2, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    return-void
.end method

.method public final reset(J)V
    .locals 2

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p1, v0

    .line 7
    long-to-int p1, p1

    .line 8
    iput p1, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 9
    .line 10
    return-void
.end method

.method public final update([BII)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    :goto_0
    add-int/lit8 p3, p3, -0x1

    .line 5
    .line 6
    if-ltz p3, :cond_0

    .line 7
    .line 8
    add-int/lit8 v1, p2, 0x1

    .line 9
    .line 10
    aget-byte p2, p1, p2

    .line 11
    .line 12
    xor-int/2addr p2, v0

    .line 13
    and-int/lit16 p2, p2, 0xff

    .line 14
    .line 15
    sget-object v2, Lcom/jcraft/jsch/jzlib/CRC32;->b:[I

    .line 16
    .line 17
    aget p2, v2, p2

    .line 18
    .line 19
    ushr-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    xor-int/2addr v0, p2

    .line 22
    move p2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    not-int p1, v0

    .line 25
    iput p1, p0, Lcom/jcraft/jsch/jzlib/CRC32;->a:I

    .line 26
    .line 27
    return-void
.end method
