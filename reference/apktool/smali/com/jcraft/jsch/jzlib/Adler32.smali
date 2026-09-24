.class final Lcom/jcraft/jsch/jzlib/Adler32;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/jzlib/Checksum;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final copy()Lcom/jcraft/jsch/jzlib/Adler32;
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jsch/jzlib/Adler32;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Adler32;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 11
    .line 12
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 13
    .line 14
    return-object v0
.end method

.method public final bridge synthetic copy()Lcom/jcraft/jsch/jzlib/Checksum;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/jcraft/jsch/jzlib/Adler32;->copy()Lcom/jcraft/jsch/jzlib/Adler32;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 2
    .line 3
    const/16 v2, 0x10

    .line 4
    .line 5
    shl-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 15
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    return-void
.end method

.method public final reset(J)V
    .locals 4

    .line 1
    const-wide/32 v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-long v2, p1, v0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    shr-long/2addr p1, v2

    .line 11
    and-long/2addr p1, v0

    .line 12
    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 13
    .line 14
    return-void
.end method

.method public final update([BII)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/32 v1, 0xfff1

    .line 3
    .line 4
    .line 5
    if-ne p3, v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 8
    .line 9
    aget-byte p1, p1, p2

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    int-to-long p1, p1

    .line 14
    add-long/2addr v3, p1

    .line 15
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 16
    .line 17
    add-long/2addr p1, v3

    .line 18
    rem-long/2addr v3, v1

    .line 19
    iput-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 20
    .line 21
    rem-long/2addr p1, v1

    .line 22
    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    div-int/lit16 v0, p3, 0x15b0

    .line 26
    .line 27
    const/16 v3, 0x15b0

    .line 28
    .line 29
    rem-int/2addr p3, v3

    .line 30
    :goto_0
    add-int/lit8 v4, v0, -0x1

    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    move v0, v3

    .line 35
    :goto_1
    add-int/lit8 v5, v0, -0x1

    .line 36
    .line 37
    iget-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    add-int/lit8 v0, p2, 0x1

    .line 42
    .line 43
    aget-byte p2, p1, p2

    .line 44
    .line 45
    and-int/lit16 p2, p2, 0xff

    .line 46
    .line 47
    int-to-long v8, p2

    .line 48
    add-long/2addr v6, v8

    .line 49
    iput-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 50
    .line 51
    iget-wide v8, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 52
    .line 53
    add-long/2addr v8, v6

    .line 54
    iput-wide v8, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 55
    .line 56
    move p2, v0

    .line 57
    move v0, v5

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    rem-long/2addr v6, v1

    .line 60
    iput-wide v6, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 61
    .line 62
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 63
    .line 64
    rem-long/2addr v5, v1

    .line 65
    iput-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 66
    .line 67
    move v0, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    :goto_2
    add-int/lit8 v0, p3, -0x1

    .line 70
    .line 71
    iget-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 72
    .line 73
    if-lez p3, :cond_3

    .line 74
    .line 75
    add-int/lit8 p3, p2, 0x1

    .line 76
    .line 77
    aget-byte p2, p1, p2

    .line 78
    .line 79
    and-int/lit16 p2, p2, 0xff

    .line 80
    .line 81
    int-to-long v5, p2

    .line 82
    add-long/2addr v3, v5

    .line 83
    iput-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 84
    .line 85
    iget-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 86
    .line 87
    add-long/2addr v5, v3

    .line 88
    iput-wide v5, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 89
    .line 90
    move p2, p3

    .line 91
    move p3, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    rem-long/2addr v3, v1

    .line 94
    iput-wide v3, p0, Lcom/jcraft/jsch/jzlib/Adler32;->a:J

    .line 95
    .line 96
    iget-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 97
    .line 98
    rem-long/2addr p1, v1

    .line 99
    iput-wide p1, p0, Lcom/jcraft/jsch/jzlib/Adler32;->b:J

    .line 100
    .line 101
    return-void
.end method
