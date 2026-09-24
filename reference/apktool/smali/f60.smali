.class public final Lf60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final k:Lnz8;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/util/zip/CRC32;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0x756e

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lf60;->k:Lnz8;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lf60;->k:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    iget-object p0, p0, Lf60;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    array-length p0, p0

    .line 14
    add-int/lit8 p0, p0, 0xe

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lnz8;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final c([BII)V
    .locals 7

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    if-lt p3, v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {p1, p2, v1}, Lwx3;->j([BII)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    add-int/lit8 v4, p3, -0x4

    .line 11
    .line 12
    new-array v5, v4, [B

    .line 13
    .line 14
    add-int/2addr p2, v1

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static {p1, p2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 25
    .line 26
    invoke-virtual {p1, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    cmp-long v4, v2, p1

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    invoke-static {v5, v6, p1}, Lwx3;->j([BII)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    long-to-int p2, v2

    .line 45
    invoke-static {v5, p1, v1}, Lwx3;->j([BII)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    long-to-int v1, v1

    .line 50
    if-ltz v1, :cond_2

    .line 51
    .line 52
    sub-int/2addr p3, v0

    .line 53
    if-gt v1, p3, :cond_2

    .line 54
    .line 55
    const/4 p3, 0x6

    .line 56
    invoke-static {v5, p3, p1}, Lwx3;->j([BII)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    long-to-int p3, v2

    .line 61
    iput p3, p0, Lf60;->b:I

    .line 62
    .line 63
    const/16 p3, 0x8

    .line 64
    .line 65
    invoke-static {v5, p3, p1}, Lwx3;->j([BII)J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    long-to-int p1, v2

    .line 70
    iput p1, p0, Lf60;->c:I

    .line 71
    .line 72
    if-nez v1, :cond_0

    .line 73
    .line 74
    const-string p1, ""

    .line 75
    .line 76
    iput-object p1, p0, Lf60;->d:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-array p1, v1, [B

    .line 80
    .line 81
    const/16 p3, 0xa

    .line 82
    .line 83
    invoke-static {v5, p3, p1, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    new-instance p3, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p3, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 93
    .line 94
    .line 95
    iput-object p3, p0, Lf60;->d:Ljava/lang/String;

    .line 96
    .line 97
    :goto_0
    and-int/lit16 p1, p2, 0x4000

    .line 98
    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    :cond_1
    iput-boolean v6, p0, Lf60;->e:Z

    .line 103
    .line 104
    iget p1, p0, Lf60;->a:I

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lf60;->i(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lf60;->a:I

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Lf60;->i(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lf60;->a:I

    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    .line 120
    .line 121
    const-string p1, "Bad symbolic link name length "

    .line 122
    .line 123
    const-string p2, " in ASI extra field"

    .line 124
    .line 125
    invoke-static {v1, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    .line 134
    .line 135
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v0, "Bad CRC checksum, expected "

    .line 146
    .line 147
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p3, " instead of "

    .line 154
    .line 155
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_4
    new-instance p0, Ljava/util/zip/ZipException;

    .line 170
    .line 171
    const-string p1, "The length is too short, only "

    .line 172
    .line 173
    const-string p2, " bytes, expected at least 14"

    .line 174
    .line 175
    invoke-static {p3, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lf60;

    .line 6
    .line 7
    new-instance v0, Ljava/util/zip/CRC32;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lf60;->f:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final d()[B
    .locals 11

    .line 1
    invoke-virtual {p0}, Lf60;->b()Lnz8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lnz8;->a:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x4

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    iget v3, p0, Lf60;->a:I

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    new-array v5, v4, [B

    .line 15
    .line 16
    int-to-long v6, v3

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v6, v7, v5, v3, v4}, Lwx3;->C(J[BII)V

    .line 19
    .line 20
    .line 21
    invoke-static {v5, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget-object v5, p0, Lf60;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    array-length v6, v5

    .line 35
    int-to-long v6, v6

    .line 36
    invoke-static {v6, v7}, Llz8;->a(J)[B

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v7, 0x4

    .line 41
    invoke-static {v6, v3, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iget v6, p0, Lf60;->b:I

    .line 45
    .line 46
    new-array v8, v4, [B

    .line 47
    .line 48
    int-to-long v9, v6

    .line 49
    invoke-static {v9, v10, v8, v3, v4}, Lwx3;->C(J[BII)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x6

    .line 53
    invoke-static {v8, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    iget v6, p0, Lf60;->c:I

    .line 57
    .line 58
    new-array v8, v4, [B

    .line 59
    .line 60
    int-to-long v9, v6

    .line 61
    invoke-static {v9, v10, v8, v3, v4}, Lwx3;->C(J[BII)V

    .line 62
    .line 63
    .line 64
    const/16 v6, 0x8

    .line 65
    .line 66
    invoke-static {v8, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    const/16 v4, 0xa

    .line 70
    .line 71
    array-length v6, v5

    .line 72
    invoke-static {v5, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 81
    .line 82
    invoke-virtual {v4, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lf60;->f:Ljava/util/zip/CRC32;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    new-array p0, v0, [B

    .line 92
    .line 93
    invoke-static {v4, v5}, Llz8;->a(J)[B

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0, v3, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v3, p0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    .line 102
    .line 103
    return-object p0
.end method

.method public final e()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf60;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final f()Lnz8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf60;->b()Lnz8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final h([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf60;->c([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf60;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const p0, 0xa000

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lf60;->e:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lf60;->d:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/16 p0, 0x4000

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const p0, 0x8000

    .line 29
    .line 30
    .line 31
    :goto_0
    and-int/lit16 p1, p1, 0xfff

    .line 32
    .line 33
    or-int/2addr p0, p1

    .line 34
    return p0
.end method
