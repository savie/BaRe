.class public final Lng7;
.super Loe3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lpe3;

.field public final b:Lgg7;

.field public final c:[B

.field public d:I

.field public e:I

.field public f:Ljava/io/IOException;

.field public k:Z

.field public final n:[B


# direct methods
.method public constructor <init>(Lpe3;Lgg7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lng7;->c:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lng7;->d:I

    .line 12
    .line 13
    iput v0, p0, Lng7;->e:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lng7;->f:Ljava/io/IOException;

    .line 17
    .line 18
    iput-boolean v0, p0, Lng7;->k:Z

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    iput-object v0, p0, Lng7;->n:[B

    .line 24
    .line 25
    iput-object p1, p0, Lng7;->a:Lpe3;

    .line 26
    .line 27
    iput-object p2, p0, Lng7;->b:Lgg7;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lng7;->a:Lpe3;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v1, p0, Lng7;->k:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lng7;->f:Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    :try_start_1
    iget-object v1, p0, Lng7;->c:[B

    .line 14
    .line 15
    iget v2, p0, Lng7;->d:I

    .line 16
    .line 17
    iget v3, p0, Lng7;->e:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lpe3;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :try_start_2
    iput-boolean v0, p0, Lng7;->k:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    iput-object v0, p0, Lng7;->f:Ljava/io/IOException;

    .line 28
    .line 29
    throw v0

    .line 30
    :cond_0
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 31
    :catch_1
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lng7;->a:Lpe3;

    .line 32
    .line 33
    invoke-virtual {v0}, Lpe3;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_2
    move-exception v0

    .line 38
    iget-object v1, p0, Lng7;->f:Ljava/io/IOException;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iput-object v0, p0, Lng7;->f:Ljava/io/IOException;

    .line 43
    .line 44
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lng7;->a:Lpe3;

    .line 46
    .line 47
    :cond_3
    iget-object p0, p0, Lng7;->f:Ljava/io/IOException;

    .line 48
    .line 49
    if-nez p0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    throw p0
.end method

.method public final flush()V
    .locals 1

    .line 1
    new-instance p0, Lhf8;

    .line 2
    .line 3
    const-string v0, "Flushing is not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 108
    iget-object v0, p0, Lng7;->n:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, v0, v1, p1}, Lng7;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 5

    .line 1
    if-ltz p2, :cond_4

    .line 2
    .line 3
    if-ltz p3, :cond_4

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    .line 7
    if-ltz v0, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-gt v0, v1, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lng7;->f:Ljava/io/IOException;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lng7;->k:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lng7;->d:I

    .line 23
    .line 24
    iget v1, p0, Lng7;->e:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    const/16 v1, 0x1000

    .line 28
    .line 29
    rsub-int v0, v0, 0x1000

    .line 30
    .line 31
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v2, p0, Lng7;->d:I

    .line 36
    .line 37
    iget v3, p0, Lng7;->e:I

    .line 38
    .line 39
    add-int/2addr v2, v3

    .line 40
    iget-object v3, p0, Lng7;->c:[B

    .line 41
    .line 42
    invoke-static {p1, p2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    add-int/2addr p2, v0

    .line 46
    sub-int/2addr p3, v0

    .line 47
    iget v2, p0, Lng7;->e:I

    .line 48
    .line 49
    add-int/2addr v2, v0

    .line 50
    iput v2, p0, Lng7;->e:I

    .line 51
    .line 52
    iget-object v0, p0, Lng7;->b:Lgg7;

    .line 53
    .line 54
    iget v4, p0, Lng7;->d:I

    .line 55
    .line 56
    invoke-interface {v0, v3, v4, v2}, Lgg7;->b([BII)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v2, p0, Lng7;->e:I

    .line 61
    .line 62
    sub-int/2addr v2, v0

    .line 63
    iput v2, p0, Lng7;->e:I

    .line 64
    .line 65
    :try_start_0
    iget-object v2, p0, Lng7;->a:Lpe3;

    .line 66
    .line 67
    iget v4, p0, Lng7;->d:I

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4, v0}, Lpe3;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lng7;->d:I

    .line 73
    .line 74
    add-int/2addr v2, v0

    .line 75
    iput v2, p0, Lng7;->d:I

    .line 76
    .line 77
    iget v0, p0, Lng7;->e:I

    .line 78
    .line 79
    add-int v4, v2, v0

    .line 80
    .line 81
    if-ne v4, v1, :cond_0

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .line 86
    .line 87
    iput v1, p0, Lng7;->d:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    iput-object p1, p0, Lng7;->f:Ljava/io/IOException;

    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    return-void

    .line 95
    :cond_2
    new-instance p0, Lay8;

    .line 96
    .line 97
    const-string p1, "Stream finished or closed"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    throw v0

    .line 104
    :cond_4
    invoke-static {}, Ll0;->a()V

    .line 105
    .line 106
    .line 107
    return-void
.end method
