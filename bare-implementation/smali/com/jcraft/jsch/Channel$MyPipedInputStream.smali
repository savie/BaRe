.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPipedInputStream"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const/16 v0, 0x400

    .line 20
    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    .line 21
    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    .line 7
    .line 8
    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    .line 9
    .line 10
    new-array v0, p1, [B

    .line 11
    .line 12
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 13
    .line 14
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    .line 15
    .line 16
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(I)V

    .line 23
    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    const/16 p1, 0x400

    .line 25
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    .line 26
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    const/16 p1, 0x400

    .line 28
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    .line 29
    iput p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I

    .line 30
    new-array p1, p2, [B

    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 31
    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 3
    .line 4
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    :cond_0
    sub-int/2addr v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 20
    .line 21
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v0, v3

    .line 24
    :goto_0
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 25
    .line 26
    if-ge v0, p1, :cond_a

    .line 27
    .line 28
    :try_start_1
    array-length v4, v1

    .line 29
    sub-int/2addr v4, v0

    .line 30
    array-length v0, v1

    .line 31
    :goto_1
    sub-int v1, v0, v4

    .line 32
    .line 33
    if-ge v1, p1, :cond_3

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget v1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    if-le v0, v1, :cond_4

    .line 41
    .line 42
    move v0, v1

    .line 43
    :cond_4
    sub-int v1, v0, v4

    .line 44
    .line 45
    if-ge v1, p1, :cond_5

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_5
    :try_start_2
    new-array p1, v0, [B

    .line 50
    .line 51
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 52
    .line 53
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 54
    .line 55
    if-ge v1, v4, :cond_6

    .line 56
    .line 57
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 58
    .line 59
    array-length v1, v0

    .line 60
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_5

    .line 66
    :cond_6
    if-ge v4, v1, :cond_8

    .line 67
    .line 68
    if-ne v4, v2, :cond_7

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_7
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 72
    .line 73
    invoke-static {v1, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 77
    .line 78
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    .line 79
    .line 80
    array-length v3, v1

    .line 81
    sub-int/2addr v3, v2

    .line 82
    sub-int v3, v0, v3

    .line 83
    .line 84
    array-length v4, v1

    .line 85
    sub-int/2addr v4, v2

    .line 86
    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 90
    .line 91
    array-length v1, v1

    .line 92
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    .line 93
    .line 94
    sub-int/2addr v1, v2

    .line 95
    sub-int/2addr v0, v1

    .line 96
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    if-ne v4, v1, :cond_9

    .line 100
    .line 101
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 102
    .line 103
    array-length v1, v0

    .line 104
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 108
    .line 109
    array-length v0, v0

    .line 110
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 111
    .line 112
    :cond_9
    :goto_2
    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_a
    array-length p1, v1

    .line 116
    if-ne p1, v0, :cond_c

    .line 117
    .line 118
    iget p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:I

    .line 119
    .line 120
    if-le v0, p1, :cond_c

    .line 121
    .line 122
    div-int/lit8 v0, v0, 0x2

    .line 123
    .line 124
    if-ge v0, p1, :cond_b

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_b
    move p1, v0

    .line 128
    :goto_3
    new-array p1, p1, [B

    .line 129
    .line 130
    iput-object p1, p0, Ljava/io/PipedInputStream;->buffer:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    :cond_c
    :goto_4
    monitor-exit p0

    .line 133
    return-void

    .line 134
    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    throw p1
.end method

.method public final declared-synchronized updateReadSide()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_1
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 12
    .line 13
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    .line 17
    .line 18
    aput-byte v0, v1, v0

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    throw v0
.end method
