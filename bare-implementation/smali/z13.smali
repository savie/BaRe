.class public abstract Lz13;
.super Lyi7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public k:I

.field public l:Ljava/util/ArrayList;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lba6;

.field public q:Z

.field public r:Ljava/io/BufferedReader;

.field public s:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lz13;->t:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/net/InetAddress;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x25

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "|"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    instance-of v3, p1, Ljava/net/Inet4Address;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const-string p1, "1"

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    instance-of p1, p1, Ljava/net/Inet6Address;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-string p1, "2"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "EPRT"

    .line 64
    .line 65
    invoke-virtual {p0, p2, p1}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final h(Z)I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lz13;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lz13;->m:Z

    .line 5
    .line 6
    iget-object v1, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Connection closed without indication."

    .line 18
    .line 19
    if-eqz v2, :cond_b

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x3

    .line 26
    if-lt v4, v5, :cond_a

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    :try_start_0
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v7, p0, Lz13;->k:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const-string v7, "\'"

    .line 43
    .line 44
    if-le v4, v5, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/16 v8, 0x2d

    .line 51
    .line 52
    if-ne v4, v8, :cond_2

    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lz13;->r:Ljava/io/BufferedReader;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-le v2, v5, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eq v2, v8, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance p0, Lf23;

    .line 89
    .line 90
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_2
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const/16 v0, 0x20

    .line 97
    .line 98
    if-ne v4, v0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance p0, Lil2;

    .line 102
    .line 103
    const-string p1, "Invalid server reply: \'"

    .line 104
    .line 105
    invoke-static {p1, v2, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    if-nez v0, :cond_9

    .line 114
    .line 115
    :cond_5
    :goto_1
    if-eqz p1, :cond_7

    .line 116
    .line 117
    iget p1, p0, Lz13;->k:I

    .line 118
    .line 119
    invoke-virtual {p0}, Lz13;->i()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lz13;->p:Lba6;

    .line 124
    .line 125
    iget-object v2, v1, Lba6;->b:Lvy4;

    .line 126
    .line 127
    iget-object v3, v2, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_6

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    new-instance v3, Ly96;

    .line 137
    .line 138
    iget-object v1, v1, Lba6;->a:Ld23;

    .line 139
    .line 140
    invoke-direct {v3, v1, p1, v0}, Ly96;-><init>(Ld23;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance p1, Lkl0;

    .line 144
    .line 145
    invoke-direct {p1, v3, v5}, Lkl0;-><init>(Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_2
    iget p0, p0, Lz13;->k:I

    .line 152
    .line 153
    const/16 p1, 0x1a5

    .line 154
    .line 155
    if-eq p0, p1, :cond_8

    .line 156
    .line 157
    return p0

    .line 158
    :cond_8
    new-instance p0, Lf23;

    .line 159
    .line 160
    const-string p1, "FTP response 421 received. Server closed connection."

    .line 161
    .line 162
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_9
    new-instance p0, Lil2;

    .line 167
    .line 168
    const-string p1, "Truncated server reply: \'"

    .line 169
    .line 170
    invoke-static {p1, v2, v7}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :catch_0
    new-instance p0, Lil2;

    .line 179
    .line 180
    const-string p1, "Could not parse response code.\nServer Reply: "

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :cond_a
    new-instance p0, Lil2;

    .line 191
    .line 192
    const-string p1, "Truncated server reply: "

    .line 193
    .line 194
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_b
    new-instance p0, Lf23;

    .line 203
    .line 204
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lz13;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lz13;->n:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lz13;->m:Z

    .line 10
    .line 11
    const-string v0, "\r\n"

    .line 12
    .line 13
    iget-object v1, p0, Lz13;->l:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lz13;->n:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public final j(Ljava/net/InetAddress;I)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v1, 0x2e

    .line 13
    .line 14
    const/16 v2, 0x2c

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    ushr-int/lit8 p1, p2, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    and-int/lit16 p1, p2, 0xff

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "PORT"

    .line 44
    .line 45
    invoke-virtual {p0, p2, p1}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    iget-object p0, p0, Lyi7;->b:Ljava/net/Socket;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    :goto_0
    if-nez p0, :cond_1

    .line 24
    .line 25
    new-instance p0, Lf23;

    .line 26
    .line 27
    const-string p1, "Connection unexpectedly closed."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    throw p1
.end method

.method public final l(I)I
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const-string p1, "USER"

    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_1
    const-string p1, "TYPE"

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :pswitch_2
    const-string p1, "SYST"

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :pswitch_3
    const-string p1, "STRU"

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_4
    const-string p1, "STOU"

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :pswitch_5
    const-string p1, "STOR"

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_6
    const-string p1, "STAT"

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_7
    const-string p1, "SMNT"

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :pswitch_8
    const-string p1, "SIZE"

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :pswitch_9
    const-string p1, "SITE"

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_a
    const-string p1, "RNTO"

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_b
    const-string p1, "RNFR"

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_c
    const-string p1, "RMD"

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_d
    const-string p1, "RETR"

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_e
    const-string p1, "REST"

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_f
    const-string p1, "REIN"

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_10
    const-string p1, "QUIT"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_11
    const-string p1, "PWD"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_12
    const-string p1, "PORT"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_13
    const-string p1, "PASV"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_14
    const-string p1, "PASS"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_15
    const-string p1, "OPTS"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_16
    const-string p1, "NOOP"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_17
    const-string p1, "NLST"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_18
    const-string p1, "MODE"

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_19
    const-string p1, "MLST"

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_1a
    const-string p1, "MLSD"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_1b
    const-string p1, "MKD"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_1c
    const-string p1, "MFMT"

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_1d
    const-string p1, "MDTM"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_1e
    const-string p1, "LIST"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_1f
    const-string p1, "HELP"

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_20
    const-string p1, "FEAT"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_21
    const-string p1, "EPSV"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_22
    const-string p1, "EPRT"

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_23
    const-string p1, "DELE"

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_24
    const-string p1, "CWD"

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_25
    const-string p1, "CDUP"

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_26
    const-string p1, "APPE"

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :pswitch_27
    const-string p1, "ALLO"

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_28
    const-string p1, "ACCT"

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_29
    const-string p1, "ABOR"

    .line 146
    .line 147
    :goto_0
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0}, Lz13;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lz13;->s:Ljava/io/BufferedWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x20

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p2, "\r\n"

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Lz13;->k(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lz13;->p:Lba6;

    .line 33
    .line 34
    iget-object v1, v0, Lba6;->b:Lvy4;

    .line 35
    .line 36
    iget-object v2, v1, Lvy4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Ly96;

    .line 46
    .line 47
    iget-object v0, v0, Lba6;->a:Ld23;

    .line 48
    .line 49
    invoke-direct {v2, v0, p1, p2}, Ly96;-><init>(Ld23;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Laa6;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lz13;->h(Z)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_2
    const-string p0, "Connection is not open"

    .line 67
    .line 68
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return p0
.end method
