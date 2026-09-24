.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue;,
        Lcom/jcraft/jsch/ChannelSftp$Header;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntry;
    }
.end annotation


# static fields
.field public static final APPEND:I = 0x2

.field public static final OVERWRITE:I = 0x0

.field public static final RESUME:I = 0x1

.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field public static final a0:Ljava/lang/String;

.field public static final b0:C

.field public static final c0:Z


# instance fields
.field public G:I

.field public final H:[I

.field public I:Lcom/jcraft/jsch/Buffer;

.field public J:Lcom/jcraft/jsch/Packet;

.field public K:Lcom/jcraft/jsch/Buffer;

.field public L:Lcom/jcraft/jsch/Packet;

.field public M:I

.field public final N:Ljava/lang/String;

.field public O:Ljava/util/Hashtable;

.field public P:Ljava/io/InputStream;

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/nio/charset/Charset;

.field public X:Z

.field public Y:Z

.field public Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->a0:Ljava/lang/String;

    .line 4
    .line 5
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 6
    .line 7
    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->b0:C

    .line 8
    .line 9
    int-to-byte v0, v0

    .line 10
    const/16 v1, 0x5c

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->c0:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->H:[I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->N:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->S:Z

    .line 31
    .line 32
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->X:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Y:Z

    .line 39
    .line 40
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 41
    .line 42
    const/16 v1, 0x10

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 48
    .line 49
    const/high16 v0, 0x200000

    .line 50
    .line 51
    iput v0, p0, Lcom/jcraft/jsch/Channel;->d:I

    .line 52
    .line 53
    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    .line 54
    .line 55
    const v0, 0x8000

    .line 56
    .line 57
    .line 58
    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 59
    .line 60
    return-void
.end method

.method public static B(Ljava/lang/String;[[B)Z
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    aput-object p0, p1, v0

    .line 13
    .line 14
    :cond_0
    array-length p1, p0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    if-ge v1, p1, :cond_4

    .line 17
    .line 18
    aget-byte v2, p0, v1

    .line 19
    .line 20
    const/16 v3, 0x2a

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x3f

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v3, 0x5c

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    if-ge v2, p1, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_2
    add-int/2addr v1, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    return v4

    .line 42
    :cond_4
    return v0
.end method

.method public static y(Ljava/lang/String;)Ljava/util/Vector;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    :goto_0
    sget-boolean v4, Lcom/jcraft/jsch/ChannelSftp;->c0:Z

    .line 16
    .line 17
    if-ltz v2, :cond_2

    .line 18
    .line 19
    aget-byte v5, v1, v2

    .line 20
    .line 21
    const/16 v6, 0x2a

    .line 22
    .line 23
    if-eq v5, v6, :cond_0

    .line 24
    .line 25
    const/16 v6, 0x3f

    .line 26
    .line 27
    if-eq v5, v6, :cond_0

    .line 28
    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-nez v4, :cond_2

    .line 33
    .line 34
    if-lez v2, :cond_2

    .line 35
    .line 36
    add-int/lit8 v5, v2, -0x1

    .line 37
    .line 38
    aget-byte v5, v1, v5

    .line 39
    .line 40
    const/16 v6, 0x5c

    .line 41
    .line 42
    if-ne v5, v6, :cond_2

    .line 43
    .line 44
    add-int/lit8 v5, v2, -0x1

    .line 45
    .line 46
    if-lez v5, :cond_1

    .line 47
    .line 48
    add-int/lit8 v7, v2, -0x2

    .line 49
    .line 50
    aget-byte v7, v1, v7

    .line 51
    .line 52
    if-ne v7, v6, :cond_1

    .line 53
    .line 54
    add-int/lit8 v2, v2, -0x3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v2, v5

    .line 58
    :cond_2
    if-gez v2, :cond_4

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_4
    :goto_2
    sget-char v5, Lcom/jcraft/jsch/ChannelSftp;->b0:C

    .line 72
    .line 73
    if-ltz v2, :cond_6

    .line 74
    .line 75
    aget-byte v6, v1, v2

    .line 76
    .line 77
    if-eq v6, v5, :cond_6

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    const/16 v7, 0x2f

    .line 82
    .line 83
    if-ne v6, v7, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    :goto_3
    if-gez v2, :cond_8

    .line 90
    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_8
    const/4 p0, 0x0

    .line 103
    if-nez v2, :cond_9

    .line 104
    .line 105
    new-array v4, v3, [B

    .line 106
    .line 107
    int-to-byte v5, v5

    .line 108
    aput-byte v5, v4, p0

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_9
    new-array v4, v2, [B

    .line 112
    .line 113
    invoke-static {v1, p0, v4, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    :goto_5
    array-length v5, v1

    .line 117
    sub-int/2addr v5, v2

    .line 118
    sub-int/2addr v5, v3

    .line 119
    new-array v6, v5, [B

    .line 120
    .line 121
    add-int/2addr v2, v3

    .line 122
    invoke-static {v1, v2, v6, p0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 126
    .line 127
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 128
    .line 129
    array-length v3, v4

    .line 130
    new-instance v5, Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v5, v4, p0, v3, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    array-length v5, v4

    .line 148
    new-instance v7, Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {v7, v4, p0, v5, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-object v2, Lcom/jcraft/jsch/ChannelSftp;->a0:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    :goto_6
    array-length v3, v1

    .line 166
    if-ge p0, v3, :cond_b

    .line 167
    .line 168
    aget-object v3, v1, p0

    .line 169
    .line 170
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 171
    .line 172
    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v6, v3}, Lcom/jcraft/jsch/Util;->l([B[B)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_a

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    aget-object v4, v1, p0

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :catch_0
    :cond_b
    return-object v0
.end method


# virtual methods
.method public final A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/jcraft/jsch/Buffer;->d:I

    .line 3
    .line 4
    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 5
    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x5

    .line 16
    .line 17
    iput p0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    and-int/lit16 p0, p0, 0xff

    .line 24
    .line 25
    iput p0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iput p0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    .line 32
    .line 33
    return-void
.end method

.method public final C(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 21
    .line 22
    .line 23
    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 24
    .line 25
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x69

    .line 33
    .line 34
    if-eq p1, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 38
    .line 39
    invoke-static {p0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/16 p1, 0x4000

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return p0

    .line 50
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public final D(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 21
    .line 22
    const-string v1, " is not unique: "

    .line 23
    .line 24
    invoke-static {p1, v1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 p1, 0x4

    .line 40
    invoke-direct {v0, p1, p0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->V:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->a0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->V:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {p0, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-static {p0, v1, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final F(BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    const/16 v1, 0x5e

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 p0, p2, 0x4

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x2f

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "/"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final H([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    add-int/lit8 v0, v0, 0xd

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 15
    .line 16
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    array-length v1, p1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, p1, v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 45
    .line 46
    array-length p1, p1

    .line 47
    add-int/lit8 p1, p1, 0x11

    .line 48
    .line 49
    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final I([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    add-int/lit8 v0, v0, 0x11

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 14
    .line 15
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    array-length v1, p1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, p1, v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 49
    .line 50
    array-length p1, p1

    .line 51
    add-int/lit8 p1, p1, 0x15

    .line 52
    .line 53
    invoke-virtual {p2, v0, p0, p1}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final J(B[BLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    add-int/lit8 v0, v0, 0x9

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 15
    .line 16
    iget p3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 17
    .line 18
    add-int/lit8 v1, p3, 0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    add-int/lit8 p1, p1, 0x4

    .line 31
    .line 32
    add-int/2addr v0, p1

    .line 33
    const/16 p1, -0x38

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 41
    .line 42
    add-int/lit8 v2, v1, 0x1

    .line 43
    .line 44
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 50
    .line 51
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 52
    .line 53
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const/4 p3, 0x0

    .line 68
    array-length v1, p2

    .line 69
    invoke-virtual {p1, p2, p3, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x4

    .line 79
    .line 80
    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final K(B[B[BLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    add-int/lit8 v0, v0, 0xd

    .line 8
    .line 9
    array-length v1, p3

    .line 10
    add-int/2addr v0, v1

    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 17
    .line 18
    iget p4, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 19
    .line 20
    add-int/lit8 v1, p4, 0x1

    .line 21
    .line 22
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 23
    .line 24
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/lit8 p1, p1, 0x4

    .line 33
    .line 34
    add-int/2addr v0, p1

    .line 35
    const/16 p1, -0x38

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 41
    .line 42
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 52
    .line 53
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 54
    .line 55
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    invoke-virtual {p1, p4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    array-length p4, p2

    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, p2, v1, p4}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    array-length p2, p3

    .line 80
    invoke-virtual {p1, p3, v1, p2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x4

    .line 90
    .line 91
    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final L([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    add-int/lit8 v0, v0, 0x15

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 14
    .line 15
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    array-length v1, p1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, p1, v2, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 35
    .line 36
    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 49
    .line 50
    array-length p1, p1

    .line 51
    add-int/lit8 p1, p1, 0x19

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 54
    .line 55
    .line 56
    if-eqz p5, :cond_2

    .line 57
    .line 58
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 59
    .line 60
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    iget p1, p5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 63
    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    iput v2, p5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 67
    .line 68
    :cond_0
    iget v0, p5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 69
    .line 70
    add-int/2addr v0, p1

    .line 71
    iget-object v1, p5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 72
    .line 73
    array-length v2, v1

    .line 74
    if-lt v0, v2, :cond_1

    .line 75
    .line 76
    array-length v2, v1

    .line 77
    sub-int/2addr v0, v2

    .line 78
    :cond_1
    aget-object v0, v1, v0

    .line 79
    .line 80
    iput p0, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->a:I

    .line 81
    .line 82
    iput-wide p2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    .line 83
    .line 84
    int-to-long p2, p4

    .line 85
    iput-wide p2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 86
    .line 87
    add-int/lit8 p1, p1, 0x1

    .line 88
    .line 89
    iput p1, p5, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public final M([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/2addr v2, v0

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 19
    .line 20
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 21
    .line 22
    add-int/lit8 v3, v2, 0x1

    .line 23
    .line 24
    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    array-length v2, p1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, p1, v3, v2}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 44
    .line 45
    .line 46
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 47
    .line 48
    and-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    iget-wide v4, p2, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 53
    .line 54
    invoke-virtual {v0, v4, v5}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 58
    .line 59
    and-int/lit8 v2, v2, 0x2

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->c:I

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 66
    .line 67
    .line 68
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->d:I

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 74
    .line 75
    and-int/lit8 v2, v2, 0x4

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->e:I

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 85
    .line 86
    and-int/lit8 v2, v2, 0x8

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->f:I

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 96
    .line 97
    and-int/lit8 v2, v2, 0x8

    .line 98
    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->g:I

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget v2, p2, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 107
    .line 108
    const/high16 v4, -0x80000000

    .line 109
    .line 110
    and-int/2addr v2, v4

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    iget-object v2, p2, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 114
    .line 115
    array-length v2, v2

    .line 116
    div-int/lit8 v2, v2, 0x2

    .line 117
    .line 118
    if-lez v2, :cond_5

    .line 119
    .line 120
    :goto_0
    if-ge v3, v2, :cond_5

    .line 121
    .line 122
    iget-object v4, p2, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 123
    .line 124
    mul-int/lit8 v5, v3, 0x2

    .line 125
    .line 126
    aget-object v4, v4, v5

    .line 127
    .line 128
    sget-object v6, Lcom/jcraft/jsch/Util;->a:[B

    .line 129
    .line 130
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-static {v4, v6}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p2, Lcom/jcraft/jsch/SftpATTRS;->h:[Ljava/lang/String;

    .line 140
    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    aget-object v4, v4, v5

    .line 144
    .line 145
    invoke-static {v4, v6}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 160
    .line 161
    array-length p1, p1

    .line 162
    add-int/2addr p1, v1

    .line 163
    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->c()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    add-int/2addr p2, p1

    .line 168
    add-int/lit8 p2, p2, 0x4

    .line 169
    .line 170
    invoke-virtual {v0, v2, p0, p2}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final N([BJ[BII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Lcom/jcraft/jsch/Packet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->k()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    iget v5, v2, Lcom/jcraft/jsch/Buffer;->c:I

    .line 20
    .line 21
    add-int/lit8 v5, v5, 0x22

    .line 22
    .line 23
    array-length v6, p1

    .line 24
    add-int/2addr v6, v5

    .line 25
    add-int/2addr v6, p6

    .line 26
    add-int/2addr v6, v1

    .line 27
    if-ge v4, v6, :cond_0

    .line 28
    .line 29
    array-length p6, v3

    .line 30
    array-length v3, p1

    .line 31
    add-int/2addr v5, v3

    .line 32
    add-int/2addr v5, v1

    .line 33
    sub-int/2addr p6, v5

    .line 34
    :cond_0
    array-length v1, p1

    .line 35
    add-int/lit8 v1, v1, 0x15

    .line 36
    .line 37
    add-int/2addr v1, p6

    .line 38
    const/16 v3, 0x5e

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 41
    .line 42
    .line 43
    iget v3, p0, Lcom/jcraft/jsch/Channel;->b:I

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v1, 0x4

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x6

    .line 57
    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 61
    .line 62
    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 63
    .line 64
    add-int/lit8 v3, v2, 0x1

    .line 65
    .line 66
    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    array-length v3, p1

    .line 78
    invoke-virtual {v1, p1, v2, v3}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 82
    .line 83
    invoke-virtual {v1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 87
    .line 88
    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 89
    .line 90
    if-eq p3, p4, :cond_1

    .line 91
    .line 92
    invoke-virtual {p2, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 100
    .line 101
    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Lcom/jcraft/jsch/Packet;

    .line 105
    .line 106
    array-length p1, p1

    .line 107
    add-int/lit8 p1, p1, 0x15

    .line 108
    .line 109
    add-int/2addr p1, p6

    .line 110
    add-int/lit8 p1, p1, 0x4

    .line 111
    .line 112
    invoke-virtual {v0, p2, p0, p1}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 113
    .line 114
    .line 115
    return p6
.end method

.method public final O(Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;
    .locals 3

    .line 1
    packed-switch p2, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown code: ("

    .line 5
    .line 6
    const-string v1, ")"

    .line 7
    .line 8
    invoke-static {p2, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const-string p2, "SSH_FX_OP_UNSUPPORTED"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_1
    const-string p2, "SSH_FX_CONNECTION_LOST"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_2
    const-string p2, "SSH_FX_NO_CONNECTION"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_3
    const-string p2, "SSH_FX_BAD_MESSAGE"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_4
    const-string p2, "SSH_FX_FAILURE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_5
    const-string p2, "SSH_FX_PERMISSION_DENIED"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_6
    const-string p2, "SSH_FX_NO_SUCH_FILE"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_7
    const-string p2, "SSH_FX_EOF"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_8
    const-string p2, "SSH_FX_OK"

    .line 38
    .line 39
    :goto_0
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    if-lt p0, v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 v0, 0x4

    .line 49
    if-lt p0, v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, ": "

    .line 56
    .line 57
    invoke-static {p2, p1}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    .line 64
    .line 65
    array-length v0, p0

    .line 66
    new-instance v1, Ljava/lang/String;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v1, p0, v2, v0, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_0
    const-string p0, ": Failure"

    .line 81
    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final P(J)V
    .locals 4

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v2, v0

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sub-long/2addr p1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    return-void
.end method

.method public final Q(Lcom/jcraft/jsch/Buffer;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->O(Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p2, p0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method public final _put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    move/from16 v2, p4

    .line 10
    .line 11
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->H:[I

    .line 12
    .line 13
    const-string v3, "invalid type="

    .line 14
    .line 15
    const-string v4, "failed to resume for "

    .line 16
    .line 17
    :try_start_0
    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 18
    .line 19
    check-cast v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 22
    .line 23
    .line 24
    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-static {v1, v5}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    const/4 v6, 0x2

    .line 31
    const-wide/16 v10, 0x0

    .line 32
    .line 33
    const/4 v12, 0x1

    .line 34
    if-eq v2, v12, :cond_0

    .line 35
    .line 36
    if-ne v2, v6, :cond_1

    .line 37
    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/ChannelSftp;->t([B)Lcom/jcraft/jsch/SftpATTRS;

    .line 39
    .line 40
    .line 41
    move-result-object v13

    .line 42
    iget-wide v13, v13, Lcom/jcraft/jsch/SftpATTRS;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    :cond_1
    move-wide v13, v10

    .line 46
    :goto_0
    const/4 v15, 0x4

    .line 47
    if-ne v2, v12, :cond_3

    .line 48
    .line 49
    cmp-long v16, v13, v10

    .line 50
    .line 51
    if-lez v16, :cond_3

    .line 52
    .line 53
    :try_start_2
    invoke-virtual {v7, v13, v14}, Ljava/io/InputStream;->skip(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    cmp-long v16, v16, v13

    .line 58
    .line 59
    if-ltz v16, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v15, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 81
    .line 82
    const/16 v1, 0x1a

    .line 83
    .line 84
    invoke-virtual {v0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->I([BI)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const/16 v1, 0xa

    .line 89
    .line 90
    invoke-virtual {v0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->I([BI)V

    .line 91
    .line 92
    .line 93
    :goto_2
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 99
    .line 100
    invoke-virtual {v0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 101
    .line 102
    .line 103
    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 104
    .line 105
    iget v5, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 106
    .line 107
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 108
    .line 109
    invoke-virtual {v0, v10, v4}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 110
    .line 111
    .line 112
    const/16 v4, 0x65

    .line 113
    .line 114
    if-eq v5, v4, :cond_6

    .line 115
    .line 116
    const/16 v10, 0x66

    .line 117
    .line 118
    if-ne v5, v10, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v0, v15, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    :cond_6
    :goto_3
    iget-object v3, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 140
    .line 141
    if-eq v5, v4, :cond_18

    .line 142
    .line 143
    :try_start_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget-object v4, v0, Lcom/jcraft/jsch/Channel;->s:Lcom/jcraft/jsch/Session;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/jcraft/jsch/Session;->k()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eq v2, v12, :cond_8

    .line 154
    .line 155
    if-ne v2, v6, :cond_7

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    const-wide/16 v13, 0x0

    .line 159
    .line 160
    :cond_8
    :goto_4
    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 161
    .line 162
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 163
    .line 164
    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 165
    .line 166
    array-length v5, v3

    .line 167
    add-int/lit8 v16, v5, 0x27

    .line 168
    .line 169
    array-length v5, v4

    .line 170
    sub-int v5, v5, v16

    .line 171
    .line 172
    sub-int/2addr v5, v11

    .line 173
    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 174
    .line 175
    iget-object v6, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 176
    .line 177
    array-length v6, v6

    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    move/from16 v18, v17

    .line 181
    .line 182
    :goto_5
    move v10, v5

    .line 183
    move/from16 v19, v12

    .line 184
    .line 185
    move/from16 v12, v16

    .line 186
    .line 187
    move/from16 v20, v17

    .line 188
    .line 189
    :goto_6
    invoke-virtual {v7, v4, v12, v10}, Ljava/io/InputStream;->read([BII)I

    .line 190
    .line 191
    .line 192
    move-result v21

    .line 193
    if-lez v21, :cond_9

    .line 194
    .line 195
    add-int v12, v12, v21

    .line 196
    .line 197
    sub-int v10, v10, v21

    .line 198
    .line 199
    add-int v20, v20, v21

    .line 200
    .line 201
    :cond_9
    move/from16 p4, v5

    .line 202
    .line 203
    move/from16 v5, v20

    .line 204
    .line 205
    if-lez v10, :cond_b

    .line 206
    .line 207
    if-gtz v21, :cond_a

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_a
    move/from16 v20, v5

    .line 211
    .line 212
    move/from16 v5, p4

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_b
    :goto_7
    if-gtz v5, :cond_c

    .line 216
    .line 217
    move-object v12, v1

    .line 218
    move v13, v2

    .line 219
    move-object v1, v3

    .line 220
    goto/16 :goto_d

    .line 221
    .line 222
    :cond_c
    move/from16 v10, p4

    .line 223
    .line 224
    move v12, v5

    .line 225
    :goto_8
    if-lez v12, :cond_14

    .line 226
    .line 227
    iget v15, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 228
    .line 229
    move-object/from16 v21, v3

    .line 230
    .line 231
    add-int/lit8 v3, v15, -0x1

    .line 232
    .line 233
    if-eq v3, v2, :cond_e

    .line 234
    .line 235
    sub-int/2addr v15, v2

    .line 236
    sub-int v15, v15, v18

    .line 237
    .line 238
    if-lt v15, v6, :cond_d

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_d
    move-object/from16 v22, v1

    .line 242
    .line 243
    move-object/from16 p4, v4

    .line 244
    .line 245
    move/from16 v23, v5

    .line 246
    .line 247
    move/from16 v24, v6

    .line 248
    .line 249
    const/4 v15, 0x4

    .line 250
    goto/16 :goto_c

    .line 251
    .line 252
    :cond_e
    :goto_9
    iget v3, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 253
    .line 254
    sub-int/2addr v3, v2

    .line 255
    sub-int v3, v3, v18

    .line 256
    .line 257
    if-lt v3, v6, :cond_d

    .line 258
    .line 259
    invoke-virtual {v0, v9, v1}, Lcom/jcraft/jsch/ChannelSftp;->v([ILcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 260
    .line 261
    .line 262
    aget v3, v9, v17

    .line 263
    .line 264
    if-gt v2, v3, :cond_10

    .line 265
    .line 266
    iget v15, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 267
    .line 268
    add-int/lit8 v15, v15, -0x1

    .line 269
    .line 270
    if-le v3, v15, :cond_f

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_f
    move-object/from16 v22, v1

    .line 274
    .line 275
    move-object/from16 p4, v4

    .line 276
    .line 277
    move/from16 v23, v5

    .line 278
    .line 279
    move/from16 v24, v6

    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_10
    :goto_a
    iget v15, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 283
    .line 284
    move-object/from16 v22, v1

    .line 285
    .line 286
    const-string v1, " _ackid="

    .line 287
    .line 288
    move-object/from16 p4, v4

    .line 289
    .line 290
    const-string v4, " seq="

    .line 291
    .line 292
    move/from16 v23, v5

    .line 293
    .line 294
    const-string v5, "ack error: startid="

    .line 295
    .line 296
    if-ne v3, v15, :cond_12

    .line 297
    .line 298
    :try_start_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    invoke-virtual {v15}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 303
    .line 304
    .line 305
    move-result-object v15

    .line 306
    move/from16 v24, v6

    .line 307
    .line 308
    const/4 v6, 0x3

    .line 309
    invoke-interface {v15, v6}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 310
    .line 311
    .line 312
    move-result v15

    .line 313
    if-eqz v15, :cond_11

    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    invoke-virtual {v15}, Lcom/jcraft/jsch/Session;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 320
    .line 321
    .line 322
    move-result-object v15

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 338
    .line 339
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const/4 v3, 0x3

    .line 353
    invoke-interface {v15, v3, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_11
    :goto_b
    add-int/lit8 v18, v18, 0x1

    .line 357
    .line 358
    move-object/from16 v4, p4

    .line 359
    .line 360
    move-object/from16 v1, v22

    .line 361
    .line 362
    move/from16 v5, v23

    .line 363
    .line 364
    move/from16 v6, v24

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_12
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    .line 368
    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 384
    .line 385
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const/4 v15, 0x4

    .line 399
    invoke-direct {v6, v15, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v6

    .line 403
    :goto_c
    const/4 v5, 0x0

    .line 404
    move-wide/from16 v25, v13

    .line 405
    .line 406
    move v13, v2

    .line 407
    move-wide/from16 v2, v25

    .line 408
    .line 409
    move-object/from16 v4, p4

    .line 410
    .line 411
    move v6, v12

    .line 412
    move-object/from16 v1, v21

    .line 413
    .line 414
    move-object/from16 v12, v22

    .line 415
    .line 416
    move/from16 v14, v23

    .line 417
    .line 418
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->N([BJ[BII)I

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    sub-int v5, v6, v5

    .line 423
    .line 424
    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 425
    .line 426
    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 427
    .line 428
    if-eq v4, v6, :cond_13

    .line 429
    .line 430
    array-length v4, v6

    .line 431
    sub-int v4, v4, v16

    .line 432
    .line 433
    sub-int v10, v4, v11

    .line 434
    .line 435
    move-object v4, v6

    .line 436
    :cond_13
    move/from16 v6, v24

    .line 437
    .line 438
    move-wide/from16 v25, v2

    .line 439
    .line 440
    move-object v3, v1

    .line 441
    move-object v1, v12

    .line 442
    move v2, v13

    .line 443
    move v12, v5

    .line 444
    move v5, v14

    .line 445
    move-wide/from16 v13, v25

    .line 446
    .line 447
    goto/16 :goto_8

    .line 448
    .line 449
    :cond_14
    move-object v12, v1

    .line 450
    move-object v1, v3

    .line 451
    move/from16 v24, v6

    .line 452
    .line 453
    move-wide/from16 v25, v13

    .line 454
    .line 455
    move v13, v2

    .line 456
    move v14, v5

    .line 457
    move-wide/from16 v2, v25

    .line 458
    .line 459
    int-to-long v5, v14

    .line 460
    add-long/2addr v2, v5

    .line 461
    if-eqz v8, :cond_17

    .line 462
    .line 463
    invoke-interface {v8, v5, v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    if-nez v5, :cond_17

    .line 468
    .line 469
    :goto_d
    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp;->G:I

    .line 470
    .line 471
    sub-int/2addr v2, v13

    .line 472
    move/from16 v3, v18

    .line 473
    .line 474
    :goto_e
    if-le v2, v3, :cond_15

    .line 475
    .line 476
    const/4 v4, 0x0

    .line 477
    invoke-virtual {v0, v4, v12}, Lcom/jcraft/jsch/ChannelSftp;->v([ILcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 478
    .line 479
    .line 480
    add-int/lit8 v3, v3, 0x1

    .line 481
    .line 482
    goto :goto_e

    .line 483
    :cond_15
    if-eqz v8, :cond_16

    .line 484
    .line 485
    invoke-interface {v8}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 486
    .line 487
    .line 488
    :cond_16
    invoke-virtual {v0, v1, v12}, Lcom/jcraft/jsch/ChannelSftp;->q([BLcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :cond_17
    move-wide v5, v2

    .line 493
    move v2, v13

    .line 494
    move-wide v13, v5

    .line 495
    move-object v3, v1

    .line 496
    move v5, v10

    .line 497
    move-object v1, v12

    .line 498
    move/from16 v12, v19

    .line 499
    .line 500
    move/from16 v6, v24

    .line 501
    .line 502
    goto/16 :goto_5

    .line 503
    .line 504
    :cond_18
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 509
    .line 510
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 511
    .line 512
    .line 513
    const/4 v4, 0x0

    .line 514
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 515
    :catch_1
    move-exception v0

    .line 516
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    .line 517
    .line 518
    if-nez v1, :cond_19

    .line 519
    .line 520
    invoke-static {v0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :cond_19
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    .line 525
    .line 526
    throw v0
.end method

.method public final cd(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->t([B)Lcom/jcraft/jsch/SftpATTRS;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, v1, Lcom/jcraft/jsch/SftpATTRS;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    and-int/2addr v2, v3

    .line 28
    const-string v4, "Can\'t change directory: "

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/16 v2, 0x4000

    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    array-length v1, v0

    .line 43
    new-instance v2, Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, v0, v3, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 90
    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 98
    .line 99
    throw p0
.end method

.method public final chgrp(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput v1, v4, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 35
    .line 36
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->c:I

    .line 37
    .line 38
    invoke-virtual {v4, v5, p1}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 58
    .line 59
    throw p0
.end method

.method public final chmod(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput v1, v4, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 35
    .line 36
    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/SftpATTRS;->setPERMISSIONS(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void

    .line 46
    :catch_0
    move-exception p0

    .line 47
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 56
    .line 57
    throw p0
.end method

.method public final chown(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput v1, v4, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 35
    .line 36
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->d:I

    .line 37
    .line 38
    invoke-virtual {v4, p1, v5}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 58
    .line 59
    throw p0
.end method

.method public final disconnect()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final exit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 535
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    .line 537
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    .line 538
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 540
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 542
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    invoke-static {v9, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 543
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->t([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 544
    const-string v10, "??"

    .line 545
    iget-wide v11, v2, Lcom/jcraft/jsch/SftpATTRS;->b:J

    const/4 v8, 0x1

    move-object v7, p2

    .line 546
    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 547
    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->I([BI)V

    .line 548
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 549
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 550
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 551
    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 552
    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 553
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    const/16 v3, 0x66

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 554
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    if-eq v0, v2, :cond_3

    .line 556
    :try_start_1
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    .line 557
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/4 v2, 0x0

    .line 558
    iput v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 559
    iput v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 560
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v1, p0

    move-object v4, p2

    move-wide/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V

    return-object v0

    .line 561
    :cond_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 562
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    :goto_2
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v1, :cond_4

    .line 564
    invoke-static {v0}, Lz5;->h(Ljava/lang/Throwable;)V

    return-object v6

    .line 565
    :cond_4
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public final get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 521
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 522
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 524
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 526
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    .line 527
    const-string v3, "??"

    .line 528
    iget-wide v4, p1, Lcom/jcraft/jsch/SftpATTRS;->b:J

    move-object v2, v1

    const/4 v1, 0x1

    move-object v0, p3

    .line 529
    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 530
    invoke-interface {v0, p5, p6}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    :cond_0
    move v4, p4

    move-wide v5, p5

    move-object v3, v0

    move-object v1, v2

    move-object v0, p0

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    .line 531
    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 532
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    if-nez p1, :cond_2

    .line 533
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    return-void

    .line 534
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    throw p0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p4

    .line 4
    .line 5
    :try_start_0
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 6
    .line 7
    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object/from16 v2, p2

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/ChannelSftp;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    if-eqz v11, :cond_e

    .line 31
    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 38
    .line 39
    .line 40
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    sget-object v13, Lcom/jcraft/jsch/ChannelSftp;->a0:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v15, 0x1

    .line 44
    if-eqz v12, :cond_1

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v2, v1

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const/4 v8, 0x0

    .line 71
    :goto_0
    const/4 v9, 0x0

    .line 72
    goto/16 :goto_10

    .line 73
    .line 74
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    if-gt v11, v15, :cond_d

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    :goto_2
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    :goto_3
    if-ge v3, v11, :cond_c

    .line 88
    .line 89
    :try_start_2
    invoke-virtual {v10, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const/16 v9, 0x4000

    .line 100
    .line 101
    invoke-virtual {v6, v9}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 102
    .line 103
    .line 104
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    if-nez v9, :cond_b

    .line 106
    .line 107
    if-eqz v12, :cond_5

    .line 108
    .line 109
    const/16 v4, 0x2f

    .line 110
    .line 111
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    const/4 v9, -0x1

    .line 116
    if-ne v4, v9, :cond_2

    .line 117
    .line 118
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :catch_1
    move-exception v0

    .line 123
    move/from16 v8, v16

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 139
    move/from16 p1, v15

    .line 140
    .line 141
    :try_start_4
    const-string v15, ".."

    .line 142
    .line 143
    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    if-eq v15, v9, :cond_4

    .line 148
    .line 149
    new-instance v9, Ljava/io/File;

    .line 150
    .line 151
    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    new-instance v15, Ljava/io/File;

    .line 159
    .line 160
    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-le v14, v8, :cond_3

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    const/4 v14, 0x0

    .line 184
    invoke-virtual {v15, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    new-instance v15, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_3

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :catch_2
    move-exception v0

    .line 211
    move-object v9, v4

    .line 212
    :goto_5
    move/from16 v8, v16

    .line 213
    .line 214
    goto/16 :goto_10

    .line 215
    .line 216
    :cond_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v2, "writing to an unexpected file "

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const/4 v2, 0x4

    .line 236
    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_4
    const/4 v14, 0x0

    .line 241
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_5
    move/from16 p1, v15

    .line 254
    .line 255
    const/4 v14, 0x0

    .line 256
    move-object v4, v2

    .line 257
    :goto_7
    :try_start_5
    new-instance v8, Ljava/io/File;

    .line 258
    .line 259
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 260
    .line 261
    .line 262
    move/from16 v9, p1

    .line 263
    .line 264
    if-ne v7, v9, :cond_7

    .line 265
    .line 266
    :try_start_6
    iget-wide v14, v6, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 267
    .line 268
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 269
    .line 270
    .line 271
    move-result-wide v17

    .line 272
    cmp-long v9, v17, v14

    .line 273
    .line 274
    if-gtz v9, :cond_6

    .line 275
    .line 276
    if-nez v9, :cond_7

    .line 277
    .line 278
    goto/16 :goto_f

    .line 279
    .line 280
    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 281
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v2, "failed to resume for "

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const/4 v2, 0x4

    .line 300
    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 304
    :cond_7
    if-eqz p3, :cond_9

    .line 305
    .line 306
    :try_start_7
    iget-wide v14, v6, Lcom/jcraft/jsch/SftpATTRS;->b:J

    .line 307
    .line 308
    move-object v6, v2

    .line 309
    const/4 v2, 0x1

    .line 310
    move-object v9, v6

    .line 311
    move-object/from16 v19, v1

    .line 312
    .line 313
    move-object/from16 v1, p3

    .line 314
    .line 315
    move-wide/from16 v20, v14

    .line 316
    .line 317
    move-object/from16 v14, v19

    .line 318
    .line 319
    move v15, v3

    .line 320
    move-object v3, v5

    .line 321
    move-wide/from16 v5, v20

    .line 322
    .line 323
    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 324
    .line 325
    .line 326
    move-object v5, v3

    .line 327
    move-object v3, v1

    .line 328
    move-object v1, v4

    .line 329
    const/4 v2, 0x1

    .line 330
    if-ne v7, v2, :cond_8

    .line 331
    .line 332
    move-object v2, v5

    .line 333
    :try_start_8
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :catch_3
    move-exception v0

    .line 342
    :goto_8
    move-object v9, v1

    .line 343
    goto/16 :goto_5

    .line 344
    .line 345
    :cond_8
    move-object v2, v5

    .line 346
    goto :goto_9

    .line 347
    :catch_4
    move-exception v0

    .line 348
    move-object v1, v4

    .line 349
    goto :goto_8

    .line 350
    :cond_9
    move-object v14, v1

    .line 351
    move-object v9, v2

    .line 352
    move v15, v3

    .line 353
    move-object v1, v4

    .line 354
    move-object v2, v5

    .line 355
    move-object/from16 v3, p3

    .line 356
    .line 357
    :goto_9
    :try_start_9
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 358
    .line 359
    .line 360
    move-result v16
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 361
    if-nez v7, :cond_a

    .line 362
    .line 363
    :try_start_a
    new-instance v4, Ljava/io/FileOutputStream;

    .line 364
    .line 365
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 366
    .line 367
    .line 368
    const/4 v8, 0x1

    .line 369
    goto :goto_a

    .line 370
    :cond_a
    :try_start_b
    new-instance v4, Ljava/io/FileOutputStream;

    .line 371
    .line 372
    const/4 v8, 0x1

    .line 373
    invoke-direct {v4, v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 374
    .line 375
    .line 376
    :goto_a
    :try_start_c
    new-instance v5, Ljava/io/File;

    .line 377
    .line 378
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 382
    .line 383
    .line 384
    move-result-wide v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 385
    move/from16 v19, v7

    .line 386
    .line 387
    move-object v7, v1

    .line 388
    move-object v1, v2

    .line 389
    move-object v2, v4

    .line 390
    move/from16 v4, v19

    .line 391
    .line 392
    :try_start_d
    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->n(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 393
    .line 394
    .line 395
    :try_start_e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 396
    .line 397
    .line 398
    add-int/lit8 v3, v15, 0x1

    .line 399
    .line 400
    move-object/from16 v0, p0

    .line 401
    .line 402
    move-object v4, v7

    .line 403
    move v15, v8

    .line 404
    move-object v2, v9

    .line 405
    move-object v1, v14

    .line 406
    move/from16 v7, p4

    .line 407
    .line 408
    goto/16 :goto_3

    .line 409
    .line 410
    :catch_5
    move-exception v0

    .line 411
    :goto_b
    move-object v9, v7

    .line 412
    goto/16 :goto_5

    .line 413
    .line 414
    :catchall_0
    move-exception v0

    .line 415
    :goto_c
    move-object v1, v0

    .line 416
    goto :goto_d

    .line 417
    :catchall_1
    move-exception v0

    .line 418
    move-object v7, v1

    .line 419
    move-object v2, v4

    .line 420
    goto :goto_c

    .line 421
    :goto_d
    :try_start_f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 422
    .line 423
    .line 424
    goto :goto_e

    .line 425
    :catchall_2
    move-exception v0

    .line 426
    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    :goto_e
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 430
    :catch_6
    move-exception v0

    .line 431
    move-object v7, v1

    .line 432
    goto :goto_b

    .line 433
    :catch_7
    move-exception v0

    .line 434
    move-object v7, v4

    .line 435
    goto :goto_b

    .line 436
    :cond_b
    move-object v1, v5

    .line 437
    :try_start_11
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 438
    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string v3, "not supported to get directory "

    .line 445
    .line 446
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    const/4 v2, 0x4

    .line 457
    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 461
    :cond_c
    :goto_f
    return-void

    .line 462
    :cond_d
    :try_start_12
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 463
    .line 464
    const-string v1, "Copying multiple files, but destination is missing or a file."

    .line 465
    .line 466
    const/4 v2, 0x4

    .line 467
    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw v0

    .line 471
    :cond_e
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 472
    .line 473
    const-string v1, "No such file"

    .line 474
    .line 475
    const/4 v2, 0x2

    .line 476
    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 480
    :goto_10
    if-nez v8, :cond_f

    .line 481
    .line 482
    if-eqz v9, :cond_f

    .line 483
    .line 484
    new-instance v1, Ljava/io/File;

    .line 485
    .line 486
    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_f

    .line 494
    .line 495
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 496
    .line 497
    .line 498
    move-result-wide v2

    .line 499
    const-wide/16 v4, 0x0

    .line 500
    .line 501
    cmp-long v2, v2, v4

    .line 502
    .line 503
    if-nez v2, :cond_f

    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 506
    .line 507
    .line 508
    :cond_f
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    .line 509
    .line 510
    if-nez v1, :cond_10

    .line 511
    .line 512
    invoke-static {v0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_10
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    .line 517
    .line 518
    throw v0
.end method

.method public final getBulkRequests()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    return p0
.end method

.method public final getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getHome()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 6
    .line 7
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 10
    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    array-length v2, v0

    .line 21
    new-instance v3, Ljava/lang/String;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v3, v0, v4, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    instance-of v0, p0, Lcom/jcraft/jsch/SftpException;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_0
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->U:Ljava/lang/String;

    .line 44
    .line 45
    return-object p0
.end method

.method public final getServerVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const-string v1, "The channel is not connected."

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final getUseWriteFlushWorkaround()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcraft/jsch/ChannelSftp;->Y:Z

    .line 2
    .line 3
    return p0
.end method

.method public final hardlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 6
    .line 7
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/16 v2, 0x2f

    .line 30
    .line 31
    if-eq p1, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string v3, "/"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    xor-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    add-int/2addr v2, p1

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    invoke-static {p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x4

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-static {p2, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v2, "hardlink@openssh.com"

    .line 87
    .line 88
    invoke-virtual {p0, v1, v0, p2, v2}, Lcom/jcraft/jsch/ChannelSftp;->K(B[B[BLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 92
    .line 93
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 97
    .line 98
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 99
    .line 100
    .line 101
    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 102
    .line 103
    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 104
    .line 105
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 106
    .line 107
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 108
    .line 109
    .line 110
    const/16 v0, 0x65

    .line 111
    .line 112
    if-ne p2, v0, :cond_3

    .line 113
    .line 114
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_2

    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 124
    .line 125
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 130
    .line 131
    const-string p1, ""

    .line 132
    .line 133
    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 138
    .line 139
    invoke-direct {p0, v3, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    move-exception p0

    .line 144
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 145
    .line 146
    if-nez p1, :cond_5

    .line 147
    .line 148
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 153
    .line 154
    throw p0

    .line 155
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 156
    .line 157
    const/16 p1, 0x8

    .line 158
    .line 159
    const-string p2, "hardlink@openssh.com is not supported"

    .line 160
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public final lcd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->V:Ljava/lang/String;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    const-string v0, "No such directory"

    .line 32
    .line 33
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final lpwd()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->V:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 433
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$3;

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/ChannelSftp$3;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V

    .line 434
    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    return-object v0
.end method

.method public final ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 4
    .line 5
    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/Vector;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x2f

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    move v4, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v4, v2

    .line 31
    :goto_0
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    add-int/2addr v2, v3

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-array v6, v3, [[B

    .line 46
    .line 47
    invoke-static {v2, v6}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x0

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    aget-object v1, v6, v5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const/16 v10, 0x4000

    .line 66
    .line 67
    invoke-virtual {v9, v10}, Lcom/jcraft/jsch/SftpATTRS;->b(I)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    move-object v4, v1

    .line 74
    move-object v1, v8

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-boolean v1, v0, Lcom/jcraft/jsch/ChannelSftp;->X:Z

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    aget-object v1, v6, v5

    .line 81
    .line 82
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->t([B)[B

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 92
    .line 93
    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_1
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 98
    .line 99
    invoke-static {v4, v2}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const/16 v4, 0xb

    .line 104
    .line 105
    invoke-virtual {v0, v4, v2, v8}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 114
    .line 115
    invoke-virtual {v0, v4, v2}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 116
    .line 117
    .line 118
    iget v4, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 119
    .line 120
    iget v6, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 121
    .line 122
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 123
    .line 124
    invoke-virtual {v0, v9, v4}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    const-string v4, ""

    .line 128
    .line 129
    const/4 v9, 0x4

    .line 130
    const/16 v10, 0x65

    .line 131
    .line 132
    if-eq v6, v10, :cond_5

    .line 133
    .line 134
    const/16 v11, 0x66

    .line 135
    .line 136
    if-ne v6, v11, :cond_4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    :try_start_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 140
    .line 141
    invoke-direct {v0, v9, v4}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :cond_5
    :goto_2
    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 146
    .line 147
    if-eq v6, v10, :cond_14

    .line 148
    .line 149
    :try_start_2
    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    :goto_3
    const/16 v11, 0xc

    .line 154
    .line 155
    invoke-virtual {v0, v11, v6, v8}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 159
    .line 160
    invoke-virtual {v0, v11, v2}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 161
    .line 162
    .line 163
    iget v11, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 164
    .line 165
    iget v12, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 166
    .line 167
    if-eq v12, v10, :cond_7

    .line 168
    .line 169
    const/16 v13, 0x68

    .line 170
    .line 171
    if-ne v12, v13, :cond_6

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 175
    .line 176
    invoke-direct {v0, v9, v4}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :cond_7
    :goto_4
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 181
    .line 182
    if-ne v12, v10, :cond_9

    .line 183
    .line 184
    :try_start_3
    invoke-virtual {v0, v13, v11}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-ne v1, v3, :cond_8

    .line 194
    .line 195
    invoke-virtual {v0, v6, v2}, Lcom/jcraft/jsch/ChannelSftp;->q([BLcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_8
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 200
    .line 201
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 202
    .line 203
    .line 204
    throw v8

    .line 205
    :cond_9
    iput v5, v13, Lcom/jcraft/jsch/Buffer;->d:I

    .line 206
    .line 207
    iget-object v12, v13, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 208
    .line 209
    invoke-virtual {v0, v12, v5, v9}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 210
    .line 211
    .line 212
    add-int/lit8 v11, v11, -0x4

    .line 213
    .line 214
    iget-object v12, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 215
    .line 216
    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 221
    .line 222
    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 223
    .line 224
    .line 225
    :goto_5
    if-lez v12, :cond_13

    .line 226
    .line 227
    if-lez v11, :cond_b

    .line 228
    .line 229
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 230
    .line 231
    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 232
    .line 233
    .line 234
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 235
    .line 236
    iget-object v14, v13, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 237
    .line 238
    array-length v15, v14

    .line 239
    iget v13, v13, Lcom/jcraft/jsch/Buffer;->c:I

    .line 240
    .line 241
    add-int v3, v13, v11

    .line 242
    .line 243
    if-le v15, v3, :cond_a

    .line 244
    .line 245
    move v3, v11

    .line 246
    goto :goto_6

    .line 247
    :cond_a
    array-length v3, v14

    .line 248
    sub-int/2addr v3, v13

    .line 249
    :goto_6
    invoke-virtual {v0, v14, v13, v3}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 254
    .line 255
    iget v14, v13, Lcom/jcraft/jsch/Buffer;->c:I

    .line 256
    .line 257
    add-int/2addr v14, v3

    .line 258
    iput v14, v13, Lcom/jcraft/jsch/Buffer;->c:I

    .line 259
    .line 260
    sub-int/2addr v11, v3

    .line 261
    :cond_b
    iget-object v3, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iget v13, v0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 268
    .line 269
    const/4 v14, 0x3

    .line 270
    if-gt v13, v14, :cond_c

    .line 271
    .line 272
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 273
    .line 274
    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    goto :goto_7

    .line 279
    :cond_c
    move-object v13, v8

    .line 280
    :goto_7
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 281
    .line 282
    invoke-static {v14}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    if-nez v1, :cond_d

    .line 287
    .line 288
    move-object v9, v8

    .line 289
    move-object/from16 v16, v9

    .line 290
    .line 291
    const/4 v15, 0x1

    .line 292
    goto :goto_9

    .line 293
    :cond_d
    if-nez v7, :cond_e

    .line 294
    .line 295
    invoke-static {v1, v3}, Lcom/jcraft/jsch/Util;->a([B[B)Z

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    move-object v9, v8

    .line 300
    move-object/from16 v16, v9

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_e
    iget-boolean v15, v0, Lcom/jcraft/jsch/ChannelSftp;->X:Z

    .line 304
    .line 305
    if-nez v15, :cond_f

    .line 306
    .line 307
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 308
    .line 309
    move-object/from16 v16, v8

    .line 310
    .line 311
    array-length v8, v3

    .line 312
    new-instance v9, Ljava/lang/String;

    .line 313
    .line 314
    invoke-direct {v9, v3, v5, v8, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 315
    .line 316
    .line 317
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 318
    .line 319
    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    goto :goto_8

    .line 324
    :cond_f
    move-object/from16 v16, v8

    .line 325
    .line 326
    move-object v8, v3

    .line 327
    move-object/from16 v9, v16

    .line 328
    .line 329
    :goto_8
    invoke-static {v1, v8}, Lcom/jcraft/jsch/Util;->l([B[B)Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    :goto_9
    if-eqz v15, :cond_12

    .line 334
    .line 335
    if-nez v9, :cond_10

    .line 336
    .line 337
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 338
    .line 339
    array-length v9, v3

    .line 340
    new-instance v15, Ljava/lang/String;

    .line 341
    .line 342
    invoke-direct {v15, v3, v5, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 343
    .line 344
    .line 345
    move-object v9, v15

    .line 346
    :cond_10
    if-nez v13, :cond_11

    .line 347
    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v8, " "

    .line 361
    .line 362
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    goto :goto_a

    .line 373
    :cond_11
    iget-object v3, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 374
    .line 375
    array-length v8, v13

    .line 376
    new-instance v15, Ljava/lang/String;

    .line 377
    .line 378
    invoke-direct {v15, v13, v5, v8, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 379
    .line 380
    .line 381
    move-object v3, v15

    .line 382
    :goto_a
    new-instance v8, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    .line 383
    .line 384
    invoke-direct {v8, v9, v3, v14}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v3, p2

    .line 388
    .line 389
    invoke-interface {v3, v8}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    .line 390
    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_12
    move-object/from16 v3, p2

    .line 394
    .line 395
    :goto_b
    add-int/lit8 v12, v12, -0x1

    .line 396
    .line 397
    move-object/from16 v8, v16

    .line 398
    .line 399
    const/4 v3, 0x1

    .line 400
    const/4 v9, 0x4

    .line 401
    goto/16 :goto_5

    .line 402
    .line 403
    :cond_13
    move-object/from16 v3, p2

    .line 404
    .line 405
    const/4 v3, 0x1

    .line 406
    goto/16 :goto_3

    .line 407
    .line 408
    :cond_14
    move-object/from16 v16, v8

    .line 409
    .line 410
    invoke-virtual {v11}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 415
    .line 416
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 417
    .line 418
    .line 419
    throw v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    .line 422
    .line 423
    if-nez v1, :cond_15

    .line 424
    .line 425
    invoke-static {v0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :cond_15
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    .line 430
    .line 431
    throw v0
.end method

.method public final lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->o(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_0
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 32
    .line 33
    throw p0
.end method

.method public final mkdir(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->H([B)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 31
    .line 32
    .line 33
    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 34
    .line 35
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x65

    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    throw p0

    .line 62
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 63
    .line 64
    const-string p1, ""

    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 81
    .line 82
    throw p0
.end method

.method public final n(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    move-object/from16 v2, p1

    .line 8
    .line 9
    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v8, 0x1

    .line 14
    :try_start_0
    invoke-virtual {v1, v0, v8}, Lcom/jcraft/jsch/ChannelSftp;->I([BI)V

    .line 15
    .line 16
    .line 17
    new-instance v9, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 18
    .line 19
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v9}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 25
    .line 26
    .line 27
    iget v0, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 28
    .line 29
    iget v2, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 30
    .line 31
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 32
    .line 33
    invoke-virtual {v1, v3, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 34
    .line 35
    .line 36
    const/4 v10, 0x4

    .line 37
    const/16 v11, 0x65

    .line 38
    .line 39
    if-eq v2, v11, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x66

    .line 42
    .line 43
    if-ne v2, v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-direct {v0, v10, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 55
    .line 56
    if-eq v2, v11, :cond_11

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    move/from16 v0, p4

    .line 63
    .line 64
    if-ne v0, v8, :cond_2

    .line 65
    .line 66
    move-wide/from16 v3, p5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    :goto_1
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    iput v13, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 75
    .line 76
    iput v13, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b:I

    .line 77
    .line 78
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 81
    .line 82
    array-length v0, v0

    .line 83
    add-int/lit8 v0, v0, -0xd

    .line 84
    .line 85
    iget v5, v1, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 86
    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    const/16 v0, 0x400

    .line 90
    .line 91
    :cond_3
    move v5, v0

    .line 92
    move v14, v8

    .line 93
    :goto_2
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 94
    .line 95
    iget v0, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 96
    .line 97
    if-ge v0, v14, :cond_4

    .line 98
    .line 99
    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->L([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 100
    .line 101
    .line 102
    move v15, v5

    .line 103
    int-to-long v5, v15

    .line 104
    add-long/2addr v3, v5

    .line 105
    move v5, v15

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move v15, v5

    .line 108
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 109
    .line 110
    invoke-virtual {v1, v0, v9}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 111
    .line 112
    .line 113
    iget v0, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 114
    .line 115
    iget v5, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    .line 117
    :try_start_2
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    :try_end_2
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .line 119
    const/16 p1, 0x0

    .line 120
    .line 121
    :try_start_3
    iget v12, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    .line 122
    .line 123
    invoke-virtual {v6, v12}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 124
    .line 125
    .line 126
    move-result-object v12
    :try_end_3
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    if-ne v5, v11, :cond_6

    .line 128
    .line 129
    :try_start_4
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 130
    .line 131
    invoke-virtual {v1, v3, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-ne v0, v8, :cond_5

    .line 141
    .line 142
    :goto_3
    move-object/from16 v11, p2

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_5
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 146
    .line 147
    invoke-virtual {v1, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_6
    const/16 v6, 0x67

    .line 152
    .line 153
    if-eq v5, v6, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 157
    .line 158
    iput v13, v5, Lcom/jcraft/jsch/Buffer;->d:I

    .line 159
    .line 160
    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 161
    .line 162
    invoke-virtual {v1, v5, v13, v10}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 163
    .line 164
    .line 165
    add-int/lit8 v0, v0, -0x4

    .line 166
    .line 167
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    sub-int/2addr v0, v5

    .line 174
    move v6, v5

    .line 175
    :goto_4
    if-lez v6, :cond_d

    .line 176
    .line 177
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 178
    .line 179
    iget-object v8, v8, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 180
    .line 181
    array-length v10, v8

    .line 182
    if-le v6, v10, :cond_8

    .line 183
    .line 184
    array-length v10, v8

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    move v10, v6

    .line 187
    :goto_5
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 188
    .line 189
    invoke-virtual {v11, v8, v13, v10}, Ljava/io/InputStream;->read([BII)I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-gez v8, :cond_9

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    iget-object v10, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 197
    .line 198
    iget-object v10, v10, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 199
    .line 200
    move-object/from16 v11, p2

    .line 201
    .line 202
    invoke-virtual {v11, v10, v13, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 203
    .line 204
    .line 205
    move v10, v14

    .line 206
    int-to-long v13, v8

    .line 207
    sub-int/2addr v6, v8

    .line 208
    if-eqz v7, :cond_c

    .line 209
    .line 210
    invoke-interface {v7, v13, v14}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_c

    .line 215
    .line 216
    int-to-long v3, v6

    .line 217
    invoke-virtual {v1, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->P(J)V

    .line 218
    .line 219
    .line 220
    if-lez v0, :cond_a

    .line 221
    .line 222
    int-to-long v3, v0

    .line 223
    invoke-virtual {v1, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->P(J)V

    .line 224
    .line 225
    .line 226
    :cond_a
    :goto_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 227
    .line 228
    .line 229
    if-eqz v7, :cond_b

    .line 230
    .line 231
    invoke-interface {v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    .line 232
    .line 233
    .line 234
    :cond_b
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 235
    .line 236
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 237
    .line 238
    invoke-virtual {v0, v3, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2, v9}, Lcom/jcraft/jsch/ChannelSftp;->q([BLcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_c
    move v14, v10

    .line 246
    const/4 v8, 0x1

    .line 247
    const/4 v10, 0x4

    .line 248
    const/16 v11, 0x65

    .line 249
    .line 250
    const/4 v13, 0x0

    .line 251
    goto :goto_4

    .line 252
    :cond_d
    move-object/from16 v11, p2

    .line 253
    .line 254
    move v10, v14

    .line 255
    if-lez v0, :cond_e

    .line 256
    .line 257
    int-to-long v13, v0

    .line 258
    invoke-virtual {v1, v13, v14}, Lcom/jcraft/jsch/ChannelSftp;->P(J)V

    .line 259
    .line 260
    .line 261
    :cond_e
    int-to-long v5, v5

    .line 262
    iget-wide v13, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 263
    .line 264
    cmp-long v0, v5, v13

    .line 265
    .line 266
    if-gez v0, :cond_f

    .line 267
    .line 268
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 269
    .line 270
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 271
    .line 272
    invoke-virtual {v0, v3, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 273
    .line 274
    .line 275
    iget-wide v3, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    .line 276
    .line 277
    add-long/2addr v3, v5

    .line 278
    iget-wide v13, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 279
    .line 280
    sub-long/2addr v13, v5

    .line 281
    long-to-int v5, v13

    .line 282
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 283
    .line 284
    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->L([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    .line 285
    .line 286
    .line 287
    iget-wide v3, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    .line 288
    .line 289
    iget-wide v5, v12, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 290
    .line 291
    add-long/2addr v3, v5

    .line 292
    :cond_f
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 293
    .line 294
    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 295
    .line 296
    array-length v0, v0

    .line 297
    if-ge v10, v0, :cond_10

    .line 298
    .line 299
    add-int/lit8 v14, v10, 0x1

    .line 300
    .line 301
    :goto_7
    move v5, v15

    .line 302
    const/4 v8, 0x1

    .line 303
    const/4 v10, 0x4

    .line 304
    const/16 v11, 0x65

    .line 305
    .line 306
    const/4 v13, 0x0

    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :catch_0
    move-exception v0

    .line 310
    move-object/from16 v11, p2

    .line 311
    .line 312
    move v10, v14

    .line 313
    goto :goto_8

    .line 314
    :catch_1
    move-exception v0

    .line 315
    move-object/from16 v11, p2

    .line 316
    .line 317
    move v10, v14

    .line 318
    const/16 p1, 0x0

    .line 319
    .line 320
    :goto_8
    iget-wide v3, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->a:J

    .line 321
    .line 322
    iget v0, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 323
    .line 324
    int-to-long v5, v0

    .line 325
    invoke-virtual {v1, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->P(J)V

    .line 326
    .line 327
    .line 328
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 329
    .line 330
    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 331
    .line 332
    invoke-virtual {v0, v5, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 333
    .line 334
    .line 335
    :cond_10
    move v14, v10

    .line 336
    goto :goto_7

    .line 337
    :cond_11
    const/16 p1, 0x0

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 344
    .line 345
    invoke-virtual {v1, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 346
    .line 347
    .line 348
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 349
    :catch_2
    move-exception v0

    .line 350
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    .line 351
    .line 352
    if-nez v1, :cond_12

    .line 353
    .line 354
    invoke-static {v0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_12
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    .line 359
    .line 360
    throw v0
.end method

.method public final o(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 20
    .line 21
    .line 22
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 23
    .line 24
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 25
    .line 26
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 27
    .line 28
    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x69

    .line 32
    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x65

    .line 36
    .line 37
    if-ne p1, v1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 46
    .line 47
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 54
    .line 55
    const-string p1, ""

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p0

    .line 69
    :goto_0
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 78
    .line 79
    throw p0
.end method

.method public final p(Ljava/lang/String;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 21
    .line 22
    .line 23
    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 24
    .line 25
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 28
    .line 29
    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x65

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const/16 v2, 0x68

    .line 37
    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 42
    .line 43
    const/4 p1, 0x4

    .line 44
    const-string v0, ""

    .line 45
    .line 46
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 51
    .line 52
    if-eq p1, v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 59
    .line 60
    if-lez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 69
    .line 70
    const/4 v2, 0x3

    .line 71
    if-gt p1, v2, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 81
    .line 82
    .line 83
    move p1, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    return-object v1

    .line 86
    :cond_4
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 91
    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method

.method public final put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 326
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 327
    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move/from16 v6, p3

    const/4 v7, 0x0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 329
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->C(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x4

    if-nez v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    invoke-static {v3, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v6, v11, :cond_0

    if-ne v6, v10, :cond_1

    .line 333
    :cond_0
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/jcraft/jsch/ChannelSftp;->t([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    .line 334
    iget-wide v0, v0, Lcom/jcraft/jsch/SftpATTRS;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-wide v12, v0

    goto :goto_1

    :catch_0
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_2

    .line 335
    :try_start_2
    const-string v2, "-"

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_2
    move-object/from16 v0, p2

    :goto_2
    if-nez v6, :cond_3

    const/16 v1, 0x1a

    .line 336
    invoke-virtual {p0, v9, v1}, Lcom/jcraft/jsch/ChannelSftp;->I([BI)V

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    .line 337
    invoke-virtual {p0, v9, v1}, Lcom/jcraft/jsch/ChannelSftp;->I([BI)V

    .line 338
    :goto_3
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 339
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 340
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 341
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 342
    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 343
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-eq v1, v2, :cond_5

    const/16 v3, 0x66

    if-ne v1, v3, :cond_4

    goto :goto_4

    .line 344
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    const-string v0, ""

    invoke-direct {p0, v8, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    if-eq v1, v2, :cond_8

    .line 346
    :try_start_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    if-eq v6, v11, :cond_7

    if-ne v6, v10, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v2, p4

    goto :goto_6

    :cond_7
    :goto_5
    add-long v2, p4, v12

    .line 347
    :goto_6
    new-array v4, v11, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    .line 348
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$1;

    invoke-direct {v2, p0, v1, v4, v0}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V

    return-object v2

    .line 349
    :cond_8
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    throw v7

    .line 351
    :cond_9
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 352
    :goto_7
    instance-of v0, p0, Lcom/jcraft/jsch/SftpException;

    if-nez v0, :cond_a

    .line 353
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    return-object v7

    .line 354
    :cond_a
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    throw p0
.end method

.method public final put(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final put(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x4

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 308
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 309
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    .line 311
    invoke-static {p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 313
    :cond_0
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    .line 314
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v1, p3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x0

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_3

    .line 316
    :try_start_1
    const-string v4, "-"

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v2, p3

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object p2, v5

    goto :goto_1

    :cond_3
    move-object v2, p3

    .line 317
    :goto_0
    invoke-virtual {p0, p1, v5, v2, p4}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 318
    :goto_1
    instance-of p3, p1, Lcom/jcraft/jsch/SftpException;

    if-eqz p3, :cond_5

    .line 319
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    iget p3, p1, Lcom/jcraft/jsch/SftpException;->id:I

    if-ne p3, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->C(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 320
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    const-string p1, " is a directory"

    .line 321
    invoke-static {p2, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 323
    :cond_4
    throw p1

    .line 324
    :cond_5
    invoke-static {p1}, Lz5;->h(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p4

    .line 4
    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    :try_start_0
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 8
    .line 9
    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v8, 0x4

    .line 34
    const/4 v9, 0x1

    .line 35
    if-eq v5, v9, :cond_2

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    invoke-static {v3, v6}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 46
    .line 47
    invoke-direct {v0, v8, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_0
    invoke-static {v3}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/Vector;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v8, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->C(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->y(Ljava/lang/String;)Ljava/util/Vector;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-eqz v10, :cond_4

    .line 84
    .line 85
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    move-object v4, v1

    .line 96
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    move-object v13, v4

    .line 102
    move-object v14, v6

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    if-gt v12, v9, :cond_d

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :goto_1
    move v15, v3

    .line 108
    :goto_2
    if-ge v15, v12, :cond_c

    .line 109
    .line 110
    invoke-virtual {v11, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v3, v1

    .line 115
    check-cast v3, Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v10, :cond_7

    .line 118
    .line 119
    sget-char v1, Lcom/jcraft/jsch/ChannelSftp;->b0:C

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    sget-boolean v2, Lcom/jcraft/jsch/ChannelSftp;->c0:Z

    .line 126
    .line 127
    const/4 v4, -0x1

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    const/16 v2, 0x2f

    .line 131
    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eq v2, v4, :cond_5

    .line 137
    .line 138
    if-le v2, v1, :cond_5

    .line 139
    .line 140
    move v1, v2

    .line 141
    :cond_5
    if-ne v1, v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-virtual {v14, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .line 170
    .line 171
    move-object v4, v1

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    move-object v4, v13

    .line 174
    :goto_4
    const-wide/16 v1, 0x0

    .line 175
    .line 176
    if-ne v7, v9, :cond_9

    .line 177
    .line 178
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    iget-wide v1, v5, Lcom/jcraft/jsch/SftpATTRS;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .line 184
    :catch_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    .line 185
    .line 186
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 190
    .line 191
    .line 192
    move-result-wide v5

    .line 193
    cmp-long v5, v5, v1

    .line 194
    .line 195
    if-ltz v5, :cond_8

    .line 196
    .line 197
    if-nez v5, :cond_9

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_8
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v2, "failed to resume for "

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v8, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_9
    if-eqz p3, :cond_a

    .line 224
    .line 225
    new-instance v5, Ljava/io/File;

    .line 226
    .line 227
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    move-wide/from16 v16, v1

    .line 235
    .line 236
    const/4 v2, 0x0

    .line 237
    move-object/from16 v1, p3

    .line 238
    .line 239
    move-wide/from16 v18, v16

    .line 240
    .line 241
    invoke-interface/range {v1 .. v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    .line 242
    .line 243
    .line 244
    if-ne v7, v9, :cond_b

    .line 245
    .line 246
    move-wide/from16 v5, v18

    .line 247
    .line 248
    invoke-interface {v1, v5, v6}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_a
    move-object/from16 v1, p3

    .line 253
    .line 254
    :cond_b
    :goto_5
    new-instance v2, Ljava/io/FileInputStream;

    .line 255
    .line 256
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 257
    .line 258
    .line 259
    :try_start_3
    invoke-virtual {v0, v2, v4, v1, v7}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    .line 261
    .line 262
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 263
    .line 264
    .line 265
    add-int/lit8 v15, v15, 0x1

    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :catchall_0
    move-exception v0

    .line 270
    move-object v1, v0

    .line 271
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    :goto_6
    throw v1

    .line 280
    :cond_c
    :goto_7
    return-void

    .line 281
    :cond_d
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 282
    .line 283
    const-string v1, "Copying multiple files, but the destination is missing or a file."

    .line 284
    .line 285
    invoke-direct {v0, v8, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 289
    :catch_1
    move-exception v0

    .line 290
    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    .line 291
    .line 292
    if-nez v1, :cond_e

    .line 293
    .line 294
    invoke-static {v0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_e
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    .line 299
    .line 300
    throw v0
.end method

.method public final pwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method public final q([BLcom/jcraft/jsch/ChannelSftp$Header;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->v([ILcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final quit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final r(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->M([BLcom/jcraft/jsch/SftpATTRS;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 18
    .line 19
    .line 20
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 21
    .line 22
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 27
    .line 28
    .line 29
    const/16 p2, 0x65

    .line 30
    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 43
    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    const/4 p2, 0x4

    .line 54
    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 68
    .line 69
    throw p0
.end method

.method public final readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    if-lt v1, v2, :cond_5

    .line 6
    .line 7
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 8
    .line 9
    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v1, 0x13

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 39
    .line 40
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 41
    .line 42
    .line 43
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 44
    .line 45
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 46
    .line 47
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 48
    .line 49
    invoke-virtual {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x65

    .line 53
    .line 54
    const/16 v3, 0x68

    .line 55
    .line 56
    if-eq p1, v1, :cond_1

    .line 57
    .line 58
    if-ne p1, v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 62
    .line 63
    const-string p1, ""

    .line 64
    .line 65
    const/4 v1, 0x4

    .line 66
    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 73
    .line 74
    if-ne p1, v3, :cond_4

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 v1, 0x0

    .line 81
    move-object v4, v0

    .line 82
    move v3, v1

    .line 83
    :goto_1
    if-ge v3, p1, :cond_3

    .line 84
    .line 85
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget v5, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 92
    .line 93
    if-gt v5, v2, :cond_2

    .line 94
    .line 95
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 101
    .line 102
    invoke-static {v5}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    array-length p1, v4

    .line 111
    new-instance v2, Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {v2, v4, v1, p1, p0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 114
    .line 115
    .line 116
    return-object v2

    .line 117
    :cond_4
    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 122
    .line 123
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_5
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 128
    .line 129
    const-string p1, "The remote sshd is too old to support symlink operation."

    .line 130
    .line 131
    const/16 v1, 0x8

    .line 132
    .line 133
    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_2
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 138
    .line 139
    if-nez p1, :cond_6

    .line 140
    .line 141
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_6
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 146
    .line 147
    throw p0
.end method

.method public final realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->p(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    new-instance v1, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, v2, v0, p0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :catch_0
    move-exception p0

    .line 20
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 30
    .line 31
    throw p0
.end method

.method public final rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt v0, v1, :cond_7

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 7
    .line 8
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x4

    .line 34
    if-ge v2, v1, :cond_5

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-ne v2, v1, :cond_0

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p2, v4}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    invoke-static {p2, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Z

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const-string v0, "posix-rename@openssh.com"

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move-object v0, v4

    .line 78
    :goto_1
    const/16 v1, 0x12

    .line 79
    .line 80
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->K(B[B[BLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 89
    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 91
    .line 92
    .line 93
    iget p2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 94
    .line 95
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 96
    .line 97
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 98
    .line 99
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 100
    .line 101
    .line 102
    const/16 p2, 0x65

    .line 103
    .line 104
    if-ne p1, p2, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 116
    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 118
    .line 119
    .line 120
    throw v4

    .line 121
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 122
    .line 123
    const-string p1, ""

    .line 124
    .line 125
    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 130
    .line 131
    invoke-direct {p0, v3, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_5
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, v3, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception p0

    .line 146
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 147
    .line 148
    if-nez p1, :cond_6

    .line 149
    .line 150
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_6
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 155
    .line 156
    throw p0

    .line 157
    :cond_7
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 158
    .line 159
    const/16 p1, 0x8

    .line 160
    .line 161
    const-string p2, "The remote sshd is too old to support rename operation."

    .line 162
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public final rm(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v4, 0xd

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {p0, v4, v3, v5}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    invoke-virtual {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 49
    .line 50
    .line 51
    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 52
    .line 53
    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 54
    .line 55
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    invoke-virtual {p0, v6, v3}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x65

    .line 61
    .line 62
    if-ne v4, v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 76
    .line 77
    invoke-virtual {p0, p1, v3}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 78
    .line 79
    .line 80
    throw v5

    .line 81
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 82
    .line 83
    const-string p1, ""

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_2
    return-void

    .line 91
    :catch_0
    move-exception p0

    .line 92
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 93
    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 101
    .line 102
    throw p0
.end method

.method public final rmdir(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v4, 0xf

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {p0, v4, v3, v5}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 47
    .line 48
    invoke-virtual {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 49
    .line 50
    .line 51
    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 52
    .line 53
    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 54
    .line 55
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 56
    .line 57
    invoke-virtual {p0, v6, v3}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x65

    .line 61
    .line 62
    if-ne v4, v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 76
    .line 77
    invoke-virtual {p0, p1, v3}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 78
    .line 79
    .line 80
    throw v5

    .line 81
    :cond_1
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 82
    .line 83
    const-string p1, ""

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_2
    return-void

    .line 91
    :catch_0
    move-exception p0

    .line 92
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 93
    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 101
    .line 102
    throw p0
.end method

.method public final s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->t([B)Lcom/jcraft/jsch/SftpATTRS;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final setAgentForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBulkRequests(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 12
    .line 13
    const-string v0, "setBulkRequests: "

    .line 14
    .line 15
    const-string v1, " must be greater than 0."

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final bridge synthetic setEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setEnv(Ljava/util/Hashtable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setEnv(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final bridge synthetic setEnv([B[B)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSession;->setEnv([B[B)V

    return-void
.end method

.method public final setFilenameEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->setFilenameEncoding(Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p0

    .line 10
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 19
    .line 20
    throw p0
.end method

.method public final setFilenameEncoding(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 21
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp;->X:Z

    return-void
.end method

.method public final setMtime(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput v1, v4, Lcom/jcraft/jsch/SftpATTRS;->a:I

    .line 35
    .line 36
    iget v5, v4, Lcom/jcraft/jsch/SftpATTRS;->f:I

    .line 37
    .line 38
    invoke-virtual {v4, v5, p2}, Lcom/jcraft/jsch/SftpATTRS;->setACMODTIME(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 58
    .line 59
    throw p0
.end method

.method public final setPty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic setPtySize(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSession;->setPtySize(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setPtyType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic setPtyType(Ljava/lang/String;IIII)V
    .locals 0

    .line 5
    invoke-super/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    return-void
.end method

.method public final setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->z(Ljava/lang/String;)Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v2, p2}, Lcom/jcraft/jsch/ChannelSftp;->r(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    :catch_0
    move-exception p0

    .line 37
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 46
    .line 47
    throw p0
.end method

.method public final setTerminalMode([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->E:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setUseWriteFlushWorkaround(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp;->Y:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setXForwarding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    .line 1
    const-string v0, "hardlink@openssh.com"

    .line 2
    .line 3
    const-string v1, "statvfs@openssh.com"

    .line 4
    .line 5
    const-string v2, "posix-rename@openssh.com"

    .line 6
    .line 7
    const-string v3, "Received message is too long: "

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Ljava/io/PipedOutputStream;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/io/PipedOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v5, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 15
    .line 16
    iput-object v4, v5, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 17
    .line 18
    new-instance v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 21
    .line 22
    iget-object v6, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 23
    .line 24
    array-length v6, v6

    .line 25
    iget v7, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 26
    .line 27
    mul-int/2addr v6, v7

    .line 28
    invoke-direct {v5, v4, v6}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->i:Lcom/jcraft/jsch/IO;

    .line 32
    .line 33
    iput-object v5, v4, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 34
    .line 35
    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 36
    .line 37
    new-instance v4, Lcom/jcraft/jsch/RequestSftp;

    .line 38
    .line 39
    invoke-direct {v4}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5, p0}, Lcom/jcraft/jsch/RequestSftp;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 50
    .line 51
    iget v5, p0, Lcom/jcraft/jsch/Channel;->f:I

    .line 52
    .line 53
    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 57
    .line 58
    new-instance v5, Lcom/jcraft/jsch/Packet;

    .line 59
    .line 60
    invoke-direct {v5, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 61
    .line 62
    .line 63
    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 64
    .line 65
    new-instance v4, Lcom/jcraft/jsch/Buffer;

    .line 66
    .line 67
    iget v5, p0, Lcom/jcraft/jsch/Channel;->h:I

    .line 68
    .line 69
    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->K:Lcom/jcraft/jsch/Buffer;

    .line 73
    .line 74
    new-instance v5, Lcom/jcraft/jsch/Packet;

    .line 75
    .line 76
    invoke-direct {v5, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    .line 77
    .line 78
    .line 79
    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->L:Lcom/jcraft/jsch/Packet;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    const/4 v5, 0x1

    .line 88
    invoke-virtual {p0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->F(BI)V

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 92
    .line 93
    const/4 v6, 0x3

    .line 94
    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->J:Lcom/jcraft/jsch/Packet;

    .line 102
    .line 103
    const/16 v7, 0x9

    .line 104
    .line 105
    invoke-virtual {v4, v6, p0, v7}, Lcom/jcraft/jsch/Session;->A(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 114
    .line 115
    invoke-virtual {p0, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 116
    .line 117
    .line 118
    iget v6, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 119
    .line 120
    const/high16 v7, 0x40000

    .line 121
    .line 122
    const/4 v8, 0x4

    .line 123
    if-gt v6, v7, :cond_4

    .line 124
    .line 125
    iget v3, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    .line 126
    .line 127
    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 128
    .line 129
    new-instance v3, Ljava/util/Hashtable;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 135
    .line 136
    if-lez v6, :cond_0

    .line 137
    .line 138
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 139
    .line 140
    invoke-virtual {p0, v3, v6}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 141
    .line 142
    .line 143
    :goto_0
    if-lez v6, :cond_0

    .line 144
    .line 145
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    array-length v4, v3

    .line 152
    add-int/2addr v4, v8

    .line 153
    sub-int/2addr v6, v4

    .line 154
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    array-length v7, v4

    .line 161
    add-int/2addr v7, v8

    .line 162
    sub-int/2addr v6, v7

    .line 163
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 164
    .line 165
    array-length v9, v3

    .line 166
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 167
    .line 168
    new-instance v11, Ljava/lang/String;

    .line 169
    .line 170
    const/4 v12, 0x0

    .line 171
    invoke-direct {v11, v3, v12, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 172
    .line 173
    .line 174
    array-length v3, v4

    .line 175
    new-instance v9, Ljava/lang/String;

    .line 176
    .line 177
    invoke-direct {v9, v4, v12, v3, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const-string v4, "1"

    .line 191
    .line 192
    if-eqz v3, :cond_1

    .line 193
    .line 194
    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 195
    .line 196
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_1

    .line 207
    .line 208
    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->Q:Z

    .line 209
    .line 210
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-eqz v2, :cond_2

    .line 217
    .line 218
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 219
    .line 220
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Ljava/lang/String;

    .line 225
    .line 226
    const-string v2, "2"

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_2

    .line 233
    .line 234
    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Z

    .line 235
    .line 236
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_3

    .line 243
    .line 244
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->O:Ljava/util/Hashtable;

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_3

    .line 257
    .line 258
    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->S:Z

    .line 259
    .line 260
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 261
    .line 262
    const-string v1, "."

    .line 263
    .line 264
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->V:Ljava/lang/String;

    .line 272
    .line 273
    return-void

    .line 274
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 275
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {p0, v8, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    :catch_0
    move-exception p0

    .line 293
    instance-of v0, p0, Lcom/jcraft/jsch/JSchException;

    .line 294
    .line 295
    if-nez v0, :cond_5

    .line 296
    .line 297
    invoke-static {p0}, La6;->f(Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_5
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 302
    .line 303
    throw p0
.end method

.method public final stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->s(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_0
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 32
    .line 33
    throw p0
.end method

.method public final statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->u(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_0
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 32
    .line 33
    throw p0
.end method

.method public final symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-lt v0, v1, :cond_6

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 7
    .line 8
    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v1, 0x2f

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->T:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const-string v2, "/"

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    xor-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    add-int/2addr v1, p1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    invoke-static {p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x4

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 82
    .line 83
    invoke-static {p2, v1}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const/16 v1, 0x14

    .line 88
    .line 89
    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->K(B[B[BLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 98
    .line 99
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 100
    .line 101
    .line 102
    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 103
    .line 104
    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 105
    .line 106
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 107
    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 109
    .line 110
    .line 111
    const/16 v0, 0x65

    .line 112
    .line 113
    if-ne p2, v0, :cond_3

    .line 114
    .line 115
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_2

    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 125
    .line 126
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 131
    .line 132
    const-string p1, ""

    .line 133
    .line 134
    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 139
    .line 140
    invoke-direct {p0, v2, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception p0

    .line 145
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 146
    .line 147
    if-nez p1, :cond_5

    .line 148
    .line 149
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 154
    .line 155
    throw p0

    .line 156
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 157
    .line 158
    const/16 p1, 0x8

    .line 159
    .line 160
    const-string p2, "The remote sshd is too old to support symlink operation."

    .line 161
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public final t([B)Lcom/jcraft/jsch/SftpATTRS;
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 15
    .line 16
    .line 17
    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 18
    .line 19
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 22
    .line 23
    invoke-virtual {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x69

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x65

    .line 31
    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 41
    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 64
    :goto_0
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 73
    .line 74
    throw p0
.end method

.method public final u(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->R:Z

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    const-string v1, "statvfs@openssh.com"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 24
    .line 25
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 26
    .line 27
    .line 28
    iget v1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 29
    .line 30
    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 31
    .line 32
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 33
    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0xc9

    .line 38
    .line 39
    if-eq p1, v1, :cond_1

    .line 40
    .line 41
    const/16 v1, 0x65

    .line 42
    .line 43
    if-ne p1, v1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 52
    .line 53
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 60
    .line 61
    const-string p1, ""

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    invoke-direct {p0, v1, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/jcraft/jsch/SftpStatVFS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object p0

    .line 75
    :goto_0
    instance-of p1, p0, Lcom/jcraft/jsch/SftpException;

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    invoke-static {p0}, Lz5;->h(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    check-cast p0, Lcom/jcraft/jsch/SftpException;

    .line 84
    .line 85
    throw p0

    .line 86
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 87
    .line 88
    const/16 p1, 0x8

    .line 89
    .line 90
    const-string v0, "statvfs@openssh.com is not supported"

    .line 91
    .line 92
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final v([ILcom/jcraft/jsch/ChannelSftp$Header;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 4
    .line 5
    .line 6
    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 7
    .line 8
    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    .line 14
    .line 15
    aput p2, p1, v2

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x65

    .line 23
    .line 24
    if-ne v1, p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0

    .line 42
    :cond_2
    new-instance p0, Lcom/jcraft/jsch/SftpException;

    .line 43
    .line 44
    const/4 p1, 0x4

    .line 45
    const-string p2, ""

    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final version()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final w([BII)I
    .locals 2

    .line 1
    move v0, p2

    .line 2
    :goto_0
    if-lez p3, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    sub-int/2addr p3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "inputstream is closed"

    .line 16
    .line 17
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    sub-int/2addr v0, p2

    .line 23
    return v0
.end method

.method public final x(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->h(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final z(Ljava/lang/String;)Ljava/util/Vector;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v3, 0x2f

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v5, v3

    .line 32
    :goto_0
    const/4 v6, 0x0

    .line 33
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    add-int/2addr v3, v4

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-array v4, v4, [[B

    .line 47
    .line 48
    invoke-static {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->B(Ljava/lang/String;[[B)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const-string v7, "/"

    .line 53
    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_2
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :cond_3
    aget-object v1, v4, v6

    .line 86
    .line 87
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->p(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const/16 v5, 0xb

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-virtual {v0, v5, v4, v8}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 105
    .line 106
    invoke-virtual {v0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 107
    .line 108
    .line 109
    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 110
    .line 111
    iget v9, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 112
    .line 113
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 114
    .line 115
    invoke-virtual {v0, v10, v5}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 116
    .line 117
    .line 118
    const-string v5, ""

    .line 119
    .line 120
    const/4 v10, 0x4

    .line 121
    const/16 v11, 0x65

    .line 122
    .line 123
    if-eq v9, v11, :cond_5

    .line 124
    .line 125
    const/16 v12, 0x66

    .line 126
    .line 127
    if-ne v9, v12, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 131
    .line 132
    invoke-direct {v0, v10, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_5
    :goto_1
    iget-object v12, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 137
    .line 138
    if-eq v9, v11, :cond_13

    .line 139
    .line 140
    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    move-object v12, v8

    .line 145
    :goto_2
    const/16 v13, 0xc

    .line 146
    .line 147
    invoke-virtual {v0, v13, v9, v8}, Lcom/jcraft/jsch/ChannelSftp;->J(B[BLjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 151
    .line 152
    invoke-virtual {v0, v13, v4}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 153
    .line 154
    .line 155
    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 156
    .line 157
    iget v14, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 158
    .line 159
    if-eq v14, v11, :cond_7

    .line 160
    .line 161
    const/16 v15, 0x68

    .line 162
    .line 163
    if-ne v14, v15, :cond_6

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    .line 167
    .line 168
    invoke-direct {v0, v10, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :cond_7
    :goto_3
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 173
    .line 174
    if-ne v14, v11, :cond_8

    .line 175
    .line 176
    invoke-virtual {v0, v15, v13}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v9, v4}, Lcom/jcraft/jsch/ChannelSftp;->q([BLcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 180
    .line 181
    .line 182
    return-object v2

    .line 183
    :cond_8
    iput v6, v15, Lcom/jcraft/jsch/Buffer;->d:I

    .line 184
    .line 185
    iget-object v14, v15, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 186
    .line 187
    invoke-virtual {v0, v14, v6, v10}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 188
    .line 189
    .line 190
    add-int/lit8 v13, v13, -0x4

    .line 191
    .line 192
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 193
    .line 194
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 199
    .line 200
    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 201
    .line 202
    .line 203
    :goto_4
    if-lez v14, :cond_12

    .line 204
    .line 205
    if-lez v13, :cond_b

    .line 206
    .line 207
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 208
    .line 209
    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 210
    .line 211
    .line 212
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 213
    .line 214
    move-object/from16 p1, v8

    .line 215
    .line 216
    iget-object v8, v15, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 217
    .line 218
    array-length v10, v8

    .line 219
    iget v15, v15, Lcom/jcraft/jsch/Buffer;->c:I

    .line 220
    .line 221
    add-int v11, v15, v13

    .line 222
    .line 223
    if-le v10, v11, :cond_9

    .line 224
    .line 225
    move v10, v13

    .line 226
    goto :goto_5

    .line 227
    :cond_9
    array-length v10, v8

    .line 228
    sub-int/2addr v10, v15

    .line 229
    :goto_5
    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 230
    .line 231
    invoke-virtual {v11, v8, v15, v10}, Ljava/io/InputStream;->read([BII)I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-gtz v8, :cond_a

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_a
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 239
    .line 240
    iget v11, v10, Lcom/jcraft/jsch/Buffer;->c:I

    .line 241
    .line 242
    add-int/2addr v11, v8

    .line 243
    iput v11, v10, Lcom/jcraft/jsch/Buffer;->c:I

    .line 244
    .line 245
    sub-int/2addr v13, v8

    .line 246
    goto :goto_6

    .line 247
    :cond_b
    move-object/from16 p1, v8

    .line 248
    .line 249
    :goto_6
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 250
    .line 251
    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    iget v10, v0, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 256
    .line 257
    const/4 v11, 0x3

    .line 258
    if-gt v10, v11, :cond_c

    .line 259
    .line 260
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 261
    .line 262
    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 263
    .line 264
    .line 265
    :cond_c
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 266
    .line 267
    invoke-static {v10}, Lcom/jcraft/jsch/SftpATTRS;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 268
    .line 269
    .line 270
    iget-boolean v10, v0, Lcom/jcraft/jsch/ChannelSftp;->X:Z

    .line 271
    .line 272
    if-nez v10, :cond_d

    .line 273
    .line 274
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 275
    .line 276
    array-length v11, v8

    .line 277
    new-instance v15, Ljava/lang/String;

    .line 278
    .line 279
    invoke-direct {v15, v8, v6, v11, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 280
    .line 281
    .line 282
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 283
    .line 284
    invoke-virtual {v15, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    goto :goto_7

    .line 289
    :cond_d
    move-object/from16 v15, p1

    .line 290
    .line 291
    move-object v10, v8

    .line 292
    :goto_7
    invoke-static {v1, v10}, Lcom/jcraft/jsch/Util;->l([B[B)Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eqz v10, :cond_11

    .line 297
    .line 298
    if-nez v15, :cond_e

    .line 299
    .line 300
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->W:Ljava/nio/charset/Charset;

    .line 301
    .line 302
    array-length v11, v8

    .line 303
    new-instance v15, Ljava/lang/String;

    .line 304
    .line 305
    invoke-direct {v15, v8, v6, v11, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 306
    .line 307
    .line 308
    :cond_e
    if-nez v12, :cond_10

    .line 309
    .line 310
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-nez v8, :cond_f

    .line 315
    .line 316
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    goto :goto_8

    .line 321
    :cond_f
    move-object v12, v3

    .line 322
    :cond_10
    :goto_8
    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_11
    add-int/lit8 v14, v14, -0x1

    .line 330
    .line 331
    move-object/from16 v8, p1

    .line 332
    .line 333
    const/4 v10, 0x4

    .line 334
    const/16 v11, 0x65

    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :cond_12
    move-object/from16 p1, v8

    .line 339
    .line 340
    :goto_9
    move-object/from16 v8, p1

    .line 341
    .line 342
    const/4 v10, 0x4

    .line 343
    const/16 v11, 0x65

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_13
    move-object/from16 p1, v8

    .line 348
    .line 349
    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 354
    .line 355
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->Q(Lcom/jcraft/jsch/Buffer;I)V

    .line 356
    .line 357
    .line 358
    throw p1
.end method
