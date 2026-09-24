.class Lcom/jcraft/jsch/jzlib/ZStream;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:J

.field public e:[B

.field public f:I

.field public g:I

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Lcom/jcraft/jsch/jzlib/Deflate;

.field public k:Lcom/jcraft/jsch/jzlib/Inflate;

.field public l:Lcom/jcraft/jsch/jzlib/Checksum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jsch/jzlib/Adler32;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jcraft/jsch/jzlib/Adler32;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/jzlib/ZStream;-><init>(Lcom/jcraft/jsch/jzlib/Checksum;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/jzlib/Checksum;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->l:Lcom/jcraft/jsch/jzlib/Checksum;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 6
    .line 7
    if-le v1, v2, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    :cond_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->c:[B

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    iget v0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->e:I

    .line 17
    .line 18
    if-le v3, v0, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 21
    .line 22
    array-length v4, v3

    .line 23
    iget v5, p0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 24
    .line 25
    if-le v4, v5, :cond_2

    .line 26
    .line 27
    array-length v4, v2

    .line 28
    add-int v5, v0, v1

    .line 29
    .line 30
    if-lt v4, v5, :cond_2

    .line 31
    .line 32
    array-length v3, v3

    .line 33
    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->e:[B

    .line 34
    .line 35
    iget v4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 36
    .line 37
    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->f:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->j:Lcom/jcraft/jsch/jzlib/Deflate;

    .line 46
    .line 47
    iget v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->e:I

    .line 48
    .line 49
    add-int/2addr v2, v1

    .line 50
    iput v2, v0, Lcom/jcraft/jsch/jzlib/Deflate;->e:I

    .line 51
    .line 52
    iget-wide v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 53
    .line 54
    int-to-long v4, v1

    .line 55
    add-long/2addr v2, v4

    .line 56
    iput-wide v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->h:J

    .line 57
    .line 58
    iget v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 59
    .line 60
    sub-int/2addr v2, v1

    .line 61
    iput v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->g:I

    .line 62
    .line 63
    iget p0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 64
    .line 65
    sub-int/2addr p0, v1

    .line 66
    iput p0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->f:I

    .line 67
    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    iput p0, v0, Lcom/jcraft/jsch/jzlib/Deflate;->e:I

    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
.end method

.method public final b([BII)V
    .locals 5

    .line 1
    if-gtz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    add-int v1, v0, p3

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    iget-object v2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 17
    .line 18
    iget v3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 25
    .line 26
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 30
    .line 31
    iput v4, p0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 32
    .line 33
    iget p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 34
    .line 35
    add-int/2addr p1, p3

    .line 36
    iput p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/jcraft/jsch/jzlib/ZStream;->a:[B

    .line 40
    .line 41
    iput p2, p0, Lcom/jcraft/jsch/jzlib/ZStream;->b:I

    .line 42
    .line 43
    iput p3, p0, Lcom/jcraft/jsch/jzlib/ZStream;->c:I

    .line 44
    .line 45
    return-void
.end method
