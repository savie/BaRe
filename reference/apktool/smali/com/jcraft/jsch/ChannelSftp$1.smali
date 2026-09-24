.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:[I

.field public d:I

.field public e:I

.field public f:I

.field public final k:Lcom/jcraft/jsch/ChannelSftp$Header;

.field public final n:[B

.field public final synthetic p:[B

.field public final synthetic q:[J

.field public final synthetic r:Lcom/jcraft/jsch/SftpProgressMonitor;

.field public final synthetic t:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->p:[B

    .line 2
    .line 3
    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->q:[J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->r:Lcom/jcraft/jsch/SftpProgressMonitor;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:Z

    .line 17
    .line 18
    new-array p3, p1, [I

    .line 19
    .line 20
    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->c:[I

    .line 21
    .line 22
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:I

    .line 23
    .line 24
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:I

    .line 25
    .line 26
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:I

    .line 27
    .line 28
    new-instance p2, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 34
    .line 35
    new-array p1, p1, [B

    .line 36
    .line 37
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->n:[B

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->r:Lcom/jcraft/jsch/SftpProgressMonitor;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->p:[B

    .line 19
    .line 20
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 21
    .line 22
    sget v3, Lcom/jcraft/jsch/ChannelSftp;->SSH_FX_OK:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->q([BLcom/jcraft/jsch/ChannelSftp$Header;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:Z

    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    throw p0
.end method

.method public final flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:I

    .line 10
    .line 11
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:I

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 18
    .line 19
    sget v2, Lcom/jcraft/jsch/ChannelSftp;->SSH_FX_OK:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->v([ILcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:I
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/io/IOException;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_0
    return-void

    .line 44
    :cond_1
    const-string p0, "stream already closed"

    .line 45
    .line 46
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 193
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->n:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 194
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 7
    .line 8
    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 9
    .line 10
    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:I

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->a:Z

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->b:Z

    .line 15
    .line 16
    if-nez v0, :cond_8

    .line 17
    .line 18
    move v7, p2

    .line 19
    move v8, p3

    .line 20
    :goto_0
    if-lez v8, :cond_5

    .line 21
    .line 22
    :try_start_0
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 23
    .line 24
    iget-boolean v0, p2, Lcom/jcraft/jsch/ChannelSftp;->Y:Z

    .line 25
    .line 26
    const/4 v9, 0x4

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->g:J

    .line 30
    .line 31
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->p:[B

    .line 32
    .line 33
    array-length p2, p2

    .line 34
    add-int/lit8 p2, p2, 0x15

    .line 35
    .line 36
    add-int/2addr p2, v8

    .line 37
    add-int/2addr p2, v9

    .line 38
    int-to-long v4, p2

    .line 39
    cmp-long p2, v2, v4

    .line 40
    .line 41
    if-gez p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->p:[B

    .line 49
    .line 50
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->q:[J

    .line 51
    .line 52
    aget-wide v4, p2, v1

    .line 53
    .line 54
    move-object v6, p1

    .line 55
    invoke-virtual/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelSftp;->N([BJ[BII)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:I

    .line 60
    .line 61
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->f:I

    .line 64
    .line 65
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->q:[J

    .line 66
    .line 67
    aget-wide v2, p2, v1

    .line 68
    .line 69
    int-to-long v4, p1

    .line 70
    add-long/2addr v2, v4

    .line 71
    aput-wide v2, p2, v1

    .line 72
    .line 73
    add-int/2addr v7, p1

    .line 74
    sub-int/2addr v8, p1

    .line 75
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 76
    .line 77
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 78
    .line 79
    add-int/lit8 p2, p2, -0x1

    .line 80
    .line 81
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:I

    .line 82
    .line 83
    if-eq p2, v0, :cond_2

    .line 84
    .line 85
    iget-object p1, p1, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/16 p2, 0x400

    .line 92
    .line 93
    if-lt p1, p2, :cond_4

    .line 94
    .line 95
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-lez p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->c:[I

    .line 108
    .line 109
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->k:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->v([ILcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->c:[I

    .line 115
    .line 116
    aget p1, p1, v1

    .line 117
    .line 118
    iget p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->d:I

    .line 119
    .line 120
    if-gt p2, p1, :cond_3

    .line 121
    .line 122
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->t:Lcom/jcraft/jsch/ChannelSftp;

    .line 123
    .line 124
    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 125
    .line 126
    add-int/lit8 p2, p2, -0x1

    .line 127
    .line 128
    if-gt p1, p2, :cond_3

    .line 129
    .line 130
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:I

    .line 131
    .line 132
    add-int/lit8 p1, p1, 0x1

    .line 133
    .line 134
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->e:I

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 138
    .line 139
    const-string p1, ""

    .line 140
    .line 141
    invoke-direct {p0, v9, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_4
    move-object p1, v6

    .line 146
    goto :goto_0

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->r:Lcom/jcraft/jsch/SftpProgressMonitor;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    int-to-long p2, p3

    .line 152
    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    .line 160
    .line 161
    .line 162
    new-instance p0, Ljava/io/IOException;

    .line 163
    .line 164
    const-string p1, "canceled"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_7
    :goto_2
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    move-object p0, v0

    .line 173
    new-instance p1, Ljava/io/IOException;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    move-object p0, v0

    .line 185
    throw p0

    .line 186
    :cond_8
    const-string p0, "stream already closed"

    .line 187
    .line 188
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
