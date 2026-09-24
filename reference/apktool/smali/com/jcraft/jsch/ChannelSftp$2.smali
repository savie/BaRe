.class Lcom/jcraft/jsch/ChannelSftp$2;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final c:[B

.field public d:[B

.field public e:Lcom/jcraft/jsch/ChannelSftp$Header;

.field public f:I

.field public k:J

.field public final synthetic n:Lcom/jcraft/jsch/SftpProgressMonitor;

.field public final synthetic p:[B

.field public final synthetic q:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->n:Lcom/jcraft/jsch/SftpProgressMonitor;

    .line 2
    .line 3
    iput-object p5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->p:[B

    .line 4
    .line 5
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->q:Lcom/jcraft/jsch/ChannelSftp;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:Z

    .line 12
    .line 13
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    new-array p4, p1, [B

    .line 17
    .line 18
    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:[B

    .line 19
    .line 20
    const/16 p4, 0x400

    .line 21
    .line 22
    new-array p4, p4, [B

    .line 23
    .line 24
    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    .line 25
    .line 26
    new-instance p4, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 27
    .line 28
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 32
    .line 33
    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->f:I

    .line 34
    .line 35
    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->k:J

    .line 36
    .line 37
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
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->n:Lcom/jcraft/jsch/SftpProgressMonitor;

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
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->q:Lcom/jcraft/jsch/ChannelSftp;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->p:[B

    .line 28
    .line 29
    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/ChannelSftp;->q([BLcom/jcraft/jsch/ChannelSftp$Header;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Ljava/io/IOException;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :catch_1
    move-exception p0

    .line 47
    throw p0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 550
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->c:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result p0

    if-ne p0, v1, :cond_1

    :goto_0
    return v1

    .line 551
    :cond_1
    aget-byte p0, v2, v3

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 548
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-boolean v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->a:Z

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-ltz v2, :cond_19

    .line 21
    .line 22
    if-ltz v3, :cond_19

    .line 23
    .line 24
    add-int v6, v2, v3

    .line 25
    .line 26
    array-length v7, v0

    .line 27
    if-gt v6, v7, :cond_19

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    :cond_1
    move v6, v4

    .line 32
    goto/16 :goto_8

    .line 33
    .line 34
    :cond_2
    iget v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 35
    .line 36
    iget-object v7, v1, Lcom/jcraft/jsch/ChannelSftp$2;->n:Lcom/jcraft/jsch/SftpProgressMonitor;

    .line 37
    .line 38
    if-lez v6, :cond_6

    .line 39
    .line 40
    if-le v6, v3, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v3, v6

    .line 44
    :goto_0
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    .line 45
    .line 46
    invoke-static {v6, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 50
    .line 51
    if-eq v3, v0, :cond_4

    .line 52
    .line 53
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    .line 54
    .line 55
    sub-int/2addr v0, v3

    .line 56
    invoke-static {v2, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    :cond_4
    if-eqz v7, :cond_5

    .line 60
    .line 61
    int-to-long v8, v3

    .line 62
    invoke-interface {v7, v8, v9}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    .line 69
    .line 70
    .line 71
    return v5

    .line 72
    :cond_5
    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 73
    .line 74
    sub-int/2addr v0, v3

    .line 75
    iput v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 76
    .line 77
    return v3

    .line 78
    :cond_6
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp$2;->q:Lcom/jcraft/jsch/ChannelSftp;

    .line 79
    .line 80
    iget-object v6, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 81
    .line 82
    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 83
    .line 84
    array-length v9, v6

    .line 85
    add-int/lit8 v9, v9, -0xd

    .line 86
    .line 87
    if-ge v9, v3, :cond_7

    .line 88
    .line 89
    array-length v3, v6

    .line 90
    add-int/lit8 v3, v3, -0xd

    .line 91
    .line 92
    :cond_7
    iget v6, v8, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 93
    .line 94
    const/16 v9, 0x400

    .line 95
    .line 96
    if-nez v6, :cond_8

    .line 97
    .line 98
    if-le v3, v9, :cond_8

    .line 99
    .line 100
    move v3, v9

    .line 101
    :cond_8
    iget-object v6, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v6, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 107
    .line 108
    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 109
    .line 110
    array-length v6, v6

    .line 111
    add-int/lit8 v6, v6, -0xd

    .line 112
    .line 113
    iget v10, v8, Lcom/jcraft/jsch/ChannelSftp;->M:I

    .line 114
    .line 115
    if-nez v10, :cond_9

    .line 116
    .line 117
    move v12, v9

    .line 118
    goto :goto_1

    .line 119
    :cond_9
    move v12, v6

    .line 120
    :goto_1
    iget-object v13, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 121
    .line 122
    iget v6, v13, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->c:I

    .line 123
    .line 124
    iget v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->f:I

    .line 125
    .line 126
    const-string v14, "error"

    .line 127
    .line 128
    if-ge v6, v9, :cond_a

    .line 129
    .line 130
    :try_start_0
    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->p:[B

    .line 131
    .line 132
    iget-wide v10, v1, Lcom/jcraft/jsch/ChannelSftp$2;->k:J

    .line 133
    .line 134
    invoke-virtual/range {v8 .. v13}, Lcom/jcraft/jsch/ChannelSftp;->L([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    iget-wide v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->k:J

    .line 138
    .line 139
    int-to-long v13, v12

    .line 140
    add-long/2addr v9, v13

    .line 141
    iput-wide v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->k:J

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catch_0
    invoke-static {v14}, Ly5;->m(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return v4

    .line 148
    :cond_a
    iget-object v6, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 149
    .line 150
    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 151
    .line 152
    invoke-virtual {v8, v6, v9}, Lcom/jcraft/jsch/ChannelSftp;->A(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 153
    .line 154
    .line 155
    iput-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 156
    .line 157
    iget v6, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 158
    .line 159
    iput v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 160
    .line 161
    iget v6, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->b:I

    .line 162
    .line 163
    iget v9, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->c:I

    .line 164
    .line 165
    :try_start_1
    iget-object v10, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 166
    .line 167
    invoke-virtual {v10, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->b(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 168
    .line 169
    .line 170
    move-result-object v15
    :try_end_1
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1 .. :try_end_1} :catch_4

    .line 171
    const/16 v9, 0x65

    .line 172
    .line 173
    if-eq v6, v9, :cond_d

    .line 174
    .line 175
    const/16 v10, 0x67

    .line 176
    .line 177
    if-eq v6, v10, :cond_d

    .line 178
    .line 179
    new-instance v0, Ljava/io/IOException;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "Unexpected server response type: "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/16 v2, -0x38

    .line 189
    .line 190
    if-eq v6, v2, :cond_c

    .line 191
    .line 192
    const/16 v2, -0x37

    .line 193
    .line 194
    if-eq v6, v2, :cond_b

    .line 195
    .line 196
    packed-switch v6, :pswitch_data_0

    .line 197
    .line 198
    .line 199
    packed-switch v6, :pswitch_data_1

    .line 200
    .line 201
    .line 202
    const-string v2, "Unknown code: ("

    .line 203
    .line 204
    const-string v3, ")"

    .line 205
    .line 206
    invoke-static {v6, v2, v3}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    goto/16 :goto_2

    .line 211
    .line 212
    :pswitch_0
    const-string v2, "SSH_FXP_ATTRS"

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :pswitch_1
    const-string v2, "SSH_FXP_NAME"

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :pswitch_2
    const-string v2, "SSH_FXP_DATA"

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :pswitch_3
    const-string v2, "SSH_FXP_HANDLE"

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :pswitch_4
    const-string v2, "SSH_FXP_STATUS"

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :pswitch_5
    const-string v2, "SSH_FXP_SYMLINK"

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :pswitch_6
    const-string v2, "SSH_FXP_READLINK"

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :pswitch_7
    const-string v2, "SSH_FXP_RENAME"

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :pswitch_8
    const-string v2, "SSH_FXP_STAT"

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :pswitch_9
    const-string v2, "SSH_FXP_REALPATH"

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :pswitch_a
    const-string v2, "SSH_FXP_RMDIR"

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :pswitch_b
    const-string v2, "SSH_FXP_MKDIR"

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :pswitch_c
    const-string v2, "SSH_FXP_REMOVE"

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :pswitch_d
    const-string v2, "SSH_FXP_READDIR"

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :pswitch_e
    const-string v2, "SSH_FXP_OPENDIR"

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :pswitch_f
    const-string v2, "SSH_FXP_FSETSTAT"

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :pswitch_10
    const-string v2, "SSH_FXP_SETSTAT"

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :pswitch_11
    const-string v2, "SSH_FXP_FSTAT"

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :pswitch_12
    const-string v2, "SSH_FXP_LSTAT"

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :pswitch_13
    const-string v2, "SSH_FXP_WRITE"

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :pswitch_14
    const-string v2, "SSH_FXP_READ"

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :pswitch_15
    const-string v2, "SSH_FXP_CLOSE"

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :pswitch_16
    const-string v2, "SSH_FXP_OPEN"

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :pswitch_17
    const-string v2, "SSH_FXP_VERSION"

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :pswitch_18
    const-string v2, "SSH_FXP_INIT"

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_b
    const-string v2, "SSH_FXP_EXTENDED_REPLY"

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_c
    const-string v2, "SSH_FXP_EXTENDED"

    .line 292
    .line 293
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_d
    iget-object v10, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 305
    .line 306
    const/4 v11, 0x1

    .line 307
    if-ne v6, v9, :cond_f

    .line 308
    .line 309
    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 310
    .line 311
    invoke-virtual {v8, v10, v0}, Lcom/jcraft/jsch/ChannelSftp;->x(Lcom/jcraft/jsch/Buffer;I)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    iput v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 321
    .line 322
    if-ne v0, v11, :cond_e

    .line 323
    .line 324
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    .line 325
    .line 326
    .line 327
    return v5

    .line 328
    :cond_e
    iget-object v1, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 329
    .line 330
    invoke-virtual {v8, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->O(Lcom/jcraft/jsch/Buffer;I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const-string v1, "SFTP status error: "

    .line 335
    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return v4

    .line 344
    :cond_f
    iput v4, v10, Lcom/jcraft/jsch/Buffer;->d:I

    .line 345
    .line 346
    iget-object v6, v10, Lcom/jcraft/jsch/Buffer;->b:[B

    .line 347
    .line 348
    const/4 v9, 0x4

    .line 349
    invoke-virtual {v8, v6, v4, v9}, Lcom/jcraft/jsch/ChannelSftp;->w([BII)I

    .line 350
    .line 351
    .line 352
    iget-object v6, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 353
    .line 354
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    iget v10, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 359
    .line 360
    sub-int/2addr v10, v9

    .line 361
    iput v10, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 362
    .line 363
    sub-int/2addr v10, v6

    .line 364
    int-to-long v12, v6

    .line 365
    if-lez v6, :cond_1

    .line 366
    .line 367
    if-le v6, v3, :cond_10

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_10
    move v3, v6

    .line 371
    :goto_3
    iget-object v9, v8, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 372
    .line 373
    invoke-virtual {v9, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-gez v0, :cond_11

    .line 378
    .line 379
    :goto_4
    return v5

    .line 380
    :cond_11
    sub-int/2addr v6, v0

    .line 381
    iput v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->b:I

    .line 382
    .line 383
    if-lez v6, :cond_14

    .line 384
    .line 385
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    .line 386
    .line 387
    array-length v2, v2

    .line 388
    if-ge v2, v6, :cond_12

    .line 389
    .line 390
    new-array v2, v6, [B

    .line 391
    .line 392
    iput-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    .line 393
    .line 394
    :cond_12
    move v2, v4

    .line 395
    :goto_5
    if-lez v6, :cond_14

    .line 396
    .line 397
    iget-object v3, v8, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 398
    .line 399
    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->d:[B

    .line 400
    .line 401
    invoke-virtual {v3, v9, v2, v6}, Ljava/io/InputStream;->read([BII)I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-gtz v3, :cond_13

    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_13
    add-int/2addr v2, v3

    .line 409
    sub-int/2addr v6, v3

    .line 410
    goto :goto_5

    .line 411
    :cond_14
    :goto_6
    if-lez v10, :cond_15

    .line 412
    .line 413
    iget-object v2, v8, Lcom/jcraft/jsch/ChannelSftp;->P:Ljava/io/InputStream;

    .line 414
    .line 415
    int-to-long v9, v10

    .line 416
    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J

    .line 417
    .line 418
    .line 419
    :cond_15
    iget-wide v2, v15, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 420
    .line 421
    cmp-long v2, v12, v2

    .line 422
    .line 423
    if-gez v2, :cond_16

    .line 424
    .line 425
    iget-object v2, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 426
    .line 427
    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 428
    .line 429
    iget-object v6, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 430
    .line 431
    invoke-virtual {v2, v6, v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 432
    .line 433
    .line 434
    :try_start_2
    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->p:[B

    .line 435
    .line 436
    iget-wide v2, v15, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 437
    .line 438
    add-long/2addr v2, v12

    .line 439
    move v6, v4

    .line 440
    move/from16 v16, v5

    .line 441
    .line 442
    :try_start_3
    iget-wide v4, v15, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 443
    .line 444
    sub-long/2addr v4, v12

    .line 445
    long-to-int v12, v4

    .line 446
    iget-object v13, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 447
    .line 448
    move-wide/from16 v17, v2

    .line 449
    .line 450
    move v2, v11

    .line 451
    move-wide/from16 v10, v17

    .line 452
    .line 453
    invoke-virtual/range {v8 .. v13}, Lcom/jcraft/jsch/ChannelSftp;->L([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 454
    .line 455
    .line 456
    iget-wide v3, v15, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->b:J

    .line 457
    .line 458
    iget-wide v5, v15, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->c:J

    .line 459
    .line 460
    add-long/2addr v3, v5

    .line 461
    iput-wide v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->k:J

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :catch_1
    move v6, v4

    .line 465
    :catch_2
    invoke-static {v14}, Ly5;->m(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    return v6

    .line 469
    :cond_16
    move/from16 v16, v5

    .line 470
    .line 471
    move v2, v11

    .line 472
    :goto_7
    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->f:I

    .line 473
    .line 474
    iget-object v4, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 475
    .line 476
    iget-object v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    .line 477
    .line 478
    array-length v4, v4

    .line 479
    if-ge v3, v4, :cond_17

    .line 480
    .line 481
    add-int/2addr v3, v2

    .line 482
    iput v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->f:I

    .line 483
    .line 484
    :cond_17
    if-eqz v7, :cond_18

    .line 485
    .line 486
    int-to-long v2, v0

    .line 487
    invoke-interface {v7, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-nez v2, :cond_18

    .line 492
    .line 493
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    .line 494
    .line 495
    .line 496
    return v16

    .line 497
    :cond_18
    return v0

    .line 498
    :goto_8
    return v6

    .line 499
    :catch_3
    move-exception v0

    .line 500
    move v6, v4

    .line 501
    goto :goto_9

    .line 502
    :catch_4
    move-exception v0

    .line 503
    new-instance v1, Ljava/io/IOException;

    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    const-string v3, "error: "

    .line 510
    .line 511
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    .line 517
    .line 518
    throw v1

    .line 519
    :goto_9
    iget-wide v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->a:J

    .line 520
    .line 521
    iput-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->k:J

    .line 522
    .line 523
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 524
    .line 525
    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->a:I

    .line 526
    .line 527
    int-to-long v2, v0

    .line 528
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 529
    .line 530
    .line 531
    iget-object v0, v8, Lcom/jcraft/jsch/ChannelSftp;->Z:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    .line 532
    .line 533
    iget-object v1, v1, Lcom/jcraft/jsch/ChannelSftp$2;->e:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 534
    .line 535
    iget-object v2, v8, Lcom/jcraft/jsch/ChannelSftp;->I:Lcom/jcraft/jsch/Buffer;

    .line 536
    .line 537
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)V

    .line 538
    .line 539
    .line 540
    return v6

    .line 541
    :cond_19
    move v6, v4

    .line 542
    invoke-static {}, Ll0;->a()V

    .line 543
    .line 544
    .line 545
    return v6

    .line 546
    nop

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
