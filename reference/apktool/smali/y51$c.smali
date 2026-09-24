.class public Ly51$c;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/zip/Checksum;
.implements Lz51;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final b:[I


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Ly51$c;->b:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    move v3, v1

    .line 12
    move v4, v2

    .line 13
    :goto_1
    const/16 v5, 0x8

    .line 14
    .line 15
    if-ge v3, v5, :cond_1

    .line 16
    .line 17
    ushr-int/lit8 v5, v4, 0x1

    .line 18
    .line 19
    and-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const v4, -0x7d09c488

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    move v4, v1

    .line 28
    :goto_2
    xor-int/2addr v4, v5

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object v3, Ly51$c;->b:[I

    .line 33
    .line 34
    aput v4, v3, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
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
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly51$c;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getValue()J
    .locals 4

    .line 1
    iget p0, p0, Ly51$c;->a:I

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
    xor-long/2addr v0, v2

    .line 10
    and-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ly51$c;->a:I

    .line 3
    .line 4
    return-void
.end method

.method public final sum()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly51$c;->getValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int p0, v0

    .line 6
    ushr-int/lit8 v0, p0, 0x18

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    ushr-int/lit8 v1, p0, 0x10

    .line 10
    .line 11
    int-to-byte v1, v1

    .line 12
    ushr-int/lit8 v2, p0, 0x8

    .line 13
    .line 14
    int-to-byte v2, v2

    .line 15
    int-to-byte p0, p0

    .line 16
    const/4 v3, 0x4

    .line 17
    new-array v3, v3, [B

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-byte v0, v3, v4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-byte v1, v3, v0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aput-byte v2, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    aput-byte p0, v3, v0

    .line 30
    .line 31
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CRC32C{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ly51$c;->sum()[B

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

.method public final update(I)V
    .locals 2

    .line 1
    iget v0, p0, Ly51$c;->a:I

    .line 2
    .line 3
    xor-int/2addr p1, v0

    .line 4
    and-int/lit16 p1, p1, 0xff

    .line 5
    .line 6
    sget-object v1, Ly51$c;->b:[I

    .line 7
    .line 8
    aget p1, v1, p1

    .line 9
    .line 10
    ushr-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    xor-int/2addr p1, v0

    .line 13
    iput p1, p0, Ly51$c;->a:I

    .line 14
    .line 15
    return-void
.end method

.method public final update([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 16
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ly51$c;->update(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
