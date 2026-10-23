.class final Lcom/jcraft/jsch/jzlib/Inflate;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/jzlib/Inflate$Return;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:Lcom/jcraft/jsch/jzlib/InfBlocks;

.field public final g:Lcom/jcraft/jsch/jzlib/ZStream;

.field public h:I

.field public i:I

.field public final j:[B

.field public k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

.field public l:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/jzlib/ZStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->b:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->j:[B

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->k:Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->g:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->j:[B

    .line 4
    .line 5
    if-ge v1, p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v3, 0xff

    .line 8
    .line 9
    and-long/2addr v3, p2

    .line 10
    long-to-int v3, v3

    .line 11
    int-to-byte v3, v3

    .line 12
    aput-byte v3, v2, v1

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    shr-long/2addr p2, v2

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->g:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 23
    .line 24
    invoke-interface {p0, v2, v0, p1}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final b(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->g:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 21
    .line 22
    iget v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    iput v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 29
    .line 30
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 31
    .line 32
    const-wide/16 v3, 0x1

    .line 33
    .line 34
    add-long/2addr v1, v3

    .line 35
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 36
    .line 37
    iget-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 38
    .line 39
    iget v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 40
    .line 41
    aget-byte v2, p1, v1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    invoke-virtual {v2, p1, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 52
    .line 53
    iget v2, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 54
    .line 55
    invoke-interface {p1, v1, v2, v5}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 56
    .line 57
    .line 58
    iget p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 59
    .line 60
    add-int/2addr p1, v5

    .line 61
    iput p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 62
    .line 63
    iget-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 64
    .line 65
    sub-long/2addr v0, v3

    .line 66
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 67
    .line 68
    move p1, p2

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/jzlib/Inflate$Return;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jzlib/Inflate$Return;-><init>(I)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_2
    return p1
.end method

.method public final c(III)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 13
    .line 14
    if-lez v0, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->g:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 17
    .line 18
    iget v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    add-int/lit8 v3, v3, -0x1

    .line 23
    .line 24
    iput v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 25
    .line 26
    iget-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 27
    .line 28
    const-wide/16 v5, 0x1

    .line 29
    .line 30
    add-long/2addr v3, v5

    .line 31
    iput-wide v3, v2, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 34
    .line 35
    iget-object p2, v2, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 36
    .line 37
    iget v5, v2, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 38
    .line 39
    add-int/lit8 v6, v5, 0x1

    .line 40
    .line 41
    iput v6, v2, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 42
    .line 43
    aget-byte p2, p2, v5

    .line 44
    .line 45
    and-int/lit16 p2, p2, 0xff

    .line 46
    .line 47
    sub-int v2, p1, v0

    .line 48
    .line 49
    mul-int/lit8 v2, v2, 0x8

    .line 50
    .line 51
    shl-int/2addr p2, v2

    .line 52
    int-to-long v5, p2

    .line 53
    or-long v2, v3, v5

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    iput v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 60
    .line 61
    move p2, p3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/jzlib/Inflate$Return;

    .line 64
    .line 65
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/jzlib/Inflate$Return;-><init>(I)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    const/4 p3, 0x2

    .line 70
    if-ne p1, p3, :cond_3

    .line 71
    .line 72
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 73
    .line 74
    const-wide/32 v4, 0xffff

    .line 75
    .line 76
    .line 77
    and-long/2addr v2, v4

    .line 78
    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 p3, 0x4

    .line 82
    if-ne p1, p3, :cond_4

    .line 83
    .line 84
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 85
    .line 86
    const-wide v4, 0xffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    and-long/2addr v2, v4

    .line 92
    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/Inflate;->c:J

    .line 93
    .line 94
    :cond_4
    :goto_1
    iput v1, p0, Lcom/jcraft/jsch/jzlib/Inflate;->i:I

    .line 95
    .line 96
    return p2
.end method

.method public final d(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/Inflate;->g:Lcom/jcraft/jsch/jzlib/ZStream;

    .line 13
    .line 14
    iget v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 23
    .line 24
    const-wide/16 v3, 0x1

    .line 25
    .line 26
    add-long/2addr v1, v3

    .line 27
    iput-wide v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->d:J

    .line 28
    .line 29
    iget-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 30
    .line 31
    iget v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 32
    .line 33
    aget-byte v2, p1, v1

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v4, p0, Lcom/jcraft/jsch/jzlib/Inflate;->l:Ljava/io/ByteArrayOutputStream;

    .line 39
    .line 40
    invoke-virtual {v4, p1, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 46
    .line 47
    iget v4, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 48
    .line 49
    invoke-interface {p1, v1, v4, v3}, Lcom/jcraft/jsch/jzlib/Checksum;->update([BII)V

    .line 50
    .line 51
    .line 52
    iget p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 53
    .line 54
    add-int/2addr p1, v3

    .line 55
    iput p1, v0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    move p1, p2

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/jzlib/Inflate$Return;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jzlib/Inflate$Return;-><init>(I)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method
