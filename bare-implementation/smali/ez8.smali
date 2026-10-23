.class public final Lez8;
.super Ljava/util/zip/ZipEntry;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:J

.field public f:[Lyy8;

.field public k:Lpe8;

.field public n:Ljava/lang/String;

.field public p:Lvu3;

.field public q:J

.field public r:J

.field public t:J

.field public x:Z

.field public y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    sget-object v0, Lwx3;->a:[B

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_7

    .line 8
    .line 9
    const-class v1, Lez8;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lez8;

    .line 20
    .line 21
    invoke-virtual {p0}, Lez8;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lez8;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, ""

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    move-object v1, v3

    .line 50
    :cond_3
    if-nez v2, :cond_4

    .line 51
    .line 52
    move-object v2, v3

    .line 53
    :cond_4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    iget v1, p0, Lez8;->c:I

    .line 102
    .line 103
    iget v2, p1, Lez8;->c:I

    .line 104
    .line 105
    if-ne v1, v2, :cond_7

    .line 106
    .line 107
    iget v1, p0, Lez8;->d:I

    .line 108
    .line 109
    iget v2, p1, Lez8;->d:I

    .line 110
    .line 111
    if-ne v1, v2, :cond_7

    .line 112
    .line 113
    iget-wide v1, p0, Lez8;->e:J

    .line 114
    .line 115
    iget-wide v3, p1, Lez8;->e:J

    .line 116
    .line 117
    cmp-long v1, v1, v3

    .line 118
    .line 119
    if-nez v1, :cond_7

    .line 120
    .line 121
    iget v1, p0, Lez8;->a:I

    .line 122
    .line 123
    iget v2, p1, Lez8;->a:I

    .line 124
    .line 125
    if-ne v1, v2, :cond_7

    .line 126
    .line 127
    iget-wide v1, p0, Lez8;->b:J

    .line 128
    .line 129
    iget-wide v3, p1, Lez8;->b:J

    .line 130
    .line 131
    cmp-long v1, v1, v3

    .line 132
    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    cmp-long v1, v1, v3

    .line 144
    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    cmp-long v1, v1, v3

    .line 156
    .line 157
    if-nez v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0}, Lez8;->c()[B

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lez8;->c()[B

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_5
    move-object v1, v0

    .line 181
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_6

    .line 186
    .line 187
    move-object v0, v2

    .line 188
    :cond_6
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    iget-wide v0, p0, Lez8;->q:J

    .line 195
    .line 196
    iget-wide v2, p1, Lez8;->q:J

    .line 197
    .line 198
    cmp-long v0, v0, v2

    .line 199
    .line 200
    if-nez v0, :cond_7

    .line 201
    .line 202
    iget-wide v0, p0, Lez8;->r:J

    .line 203
    .line 204
    iget-wide v2, p1, Lez8;->r:J

    .line 205
    .line 206
    cmp-long v0, v0, v2

    .line 207
    .line 208
    if-nez v0, :cond_7

    .line 209
    .line 210
    iget-object p0, p0, Lez8;->p:Lvu3;

    .line 211
    .line 212
    iget-object p1, p1, Lez8;->p:Lvu3;

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lvu3;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-eqz p0, :cond_7

    .line 219
    .line 220
    :goto_1
    const/4 p0, 0x1

    .line 221
    return p0

    .line 222
    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 223
    return p0
.end method

.method public final b()[Lyy8;
    .locals 3

    .line 1
    iget-object v0, p0, Lez8;->f:[Lyy8;

    .line 2
    .line 3
    iget-object v1, p0, Lez8;->k:Lpe8;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object p0, Lv13;->b:[Lyy8;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-array p0, v2, [Lyy8;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aput-object v1, p0, v0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    if-eqz v1, :cond_2

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    add-int/2addr v1, v2

    .line 23
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, [Lyy8;

    .line 28
    .line 29
    iget-object v1, p0, Lez8;->f:[Lyy8;

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    iget-object p0, p0, Lez8;->k:Lpe8;

    .line 33
    .line 34
    aput-object p0, v0, v1

    .line 35
    .line 36
    :cond_2
    return-object v0
.end method

.method public final c()[B
    .locals 11

    .line 1
    invoke-virtual {p0}, Lez8;->b()[Lyy8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lv13;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 v3, v0, -0x1

    .line 13
    .line 14
    aget-object v3, p0, v3

    .line 15
    .line 16
    instance-of v3, v3, Lpe8;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    move v3, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v2

    .line 23
    :goto_0
    if-eqz v3, :cond_1

    .line 24
    .line 25
    add-int/lit8 v4, v0, -0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v4, v0

    .line 29
    :goto_1
    mul-int/lit8 v5, v4, 0x4

    .line 30
    .line 31
    array-length v6, p0

    .line 32
    move v7, v2

    .line 33
    :goto_2
    if-ge v7, v6, :cond_2

    .line 34
    .line 35
    aget-object v8, p0, v7

    .line 36
    .line 37
    invoke-interface {v8}, Lyy8;->f()Lnz8;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iget v8, v8, Lnz8;->a:I

    .line 42
    .line 43
    add-int/2addr v5, v8

    .line 44
    add-int/lit8 v7, v7, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    new-array v5, v5, [B

    .line 48
    .line 49
    move v6, v2

    .line 50
    move v7, v6

    .line 51
    :goto_3
    if-ge v6, v4, :cond_4

    .line 52
    .line 53
    aget-object v8, p0, v6

    .line 54
    .line 55
    invoke-interface {v8}, Lyy8;->a()Lnz8;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v8}, Lnz8;->a()[B

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const/4 v9, 0x2

    .line 64
    invoke-static {v8, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    aget-object v8, p0, v6

    .line 68
    .line 69
    invoke-interface {v8}, Lyy8;->f()Lnz8;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8}, Lnz8;->a()[B

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    add-int/lit8 v10, v7, 0x2

    .line 78
    .line 79
    invoke-static {v8, v2, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v7, v7, 0x4

    .line 83
    .line 84
    aget-object v8, p0, v6

    .line 85
    .line 86
    invoke-interface {v8}, Lyy8;->e()[B

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_3

    .line 91
    .line 92
    array-length v9, v8

    .line 93
    invoke-static {v8, v2, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    array-length v8, v8

    .line 97
    add-int/2addr v7, v8

    .line 98
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    if-eqz v3, :cond_5

    .line 102
    .line 103
    sub-int/2addr v0, v1

    .line 104
    aget-object p0, p0, v0

    .line 105
    .line 106
    invoke-interface {p0}, Lyy8;->e()[B

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    array-length v0, p0

    .line 113
    invoke-static {p0, v2, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    :cond_5
    return-object v5
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lez8;

    .line 6
    .line 7
    iget v1, p0, Lez8;->c:I

    .line 8
    .line 9
    iput v1, v0, Lez8;->c:I

    .line 10
    .line 11
    iget-wide v1, p0, Lez8;->e:J

    .line 12
    .line 13
    iput-wide v1, v0, Lez8;->e:J

    .line 14
    .line 15
    invoke-virtual {p0}, Lez8;->b()[Lyy8;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lez8;->k([Lyy8;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final d(Lnz8;)Lyy8;
    .locals 4

    .line 1
    iget-object p0, p0, Lez8;->f:[Lyy8;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    aget-object v2, p0, v1

    .line 10
    .line 11
    invoke-interface {v2}, Lyy8;->a()Lnz8;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1, v3}, Lnz8;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final e()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lez8;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lez8;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lez8;

    .line 9
    .line 10
    iget-wide v2, p0, Lez8;->q:J

    .line 11
    .line 12
    iget-wide v4, p1, Lez8;->q:J

    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-wide v2, p0, Lez8;->r:J

    .line 19
    .line 20
    iget-wide v4, p1, Lez8;->r:J

    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-wide v2, p0, Lez8;->t:J

    .line 27
    .line 28
    iget-wide p0, p1, Lez8;->t:J

    .line 29
    .line 30
    cmp-long p0, v2, p0

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    return v1
.end method

.method public final f(Lyy8;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lpe8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lpe8;

    .line 6
    .line 7
    iput-object p1, p0, Lez8;->k:Lpe8;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lez8;->f:[Lyy8;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-array v0, v1, [Lyy8;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    iput-object v0, p0, Lez8;->f:[Lyy8;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-interface {p1}, Lyy8;->a()Lnz8;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lez8;->d(Lnz8;)Lyy8;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Lyy8;->a()Lnz8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lez8;->h(Lnz8;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lez8;->f:[Lyy8;

    .line 41
    .line 42
    array-length v2, v0

    .line 43
    add-int/2addr v2, v1

    .line 44
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, [Lyy8;

    .line 49
    .line 50
    array-length v2, v0

    .line 51
    sub-int/2addr v2, v1

    .line 52
    aput-object p1, v0, v2

    .line 53
    .line 54
    iput-object v0, p0, Lez8;->f:[Lyy8;

    .line 55
    .line 56
    return-void
.end method

.method public final getMethod()I
    .locals 0

    .line 1
    iget p0, p0, Lez8;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lez8;->n:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lez8;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTime()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lez8;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-wide v0, p0, Lez8;->y:J

    .line 15
    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_1
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method public final h(Lnz8;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lez8;->f:[Lyy8;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lez8;->f:[Lyy8;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_2

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    invoke-interface {v4}, Lyy8;->a()Lnz8;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p1, v5}, Lnz8;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lez8;->f:[Lyy8;

    .line 36
    .line 37
    array-length p1, p1

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne p1, v1, :cond_3

    .line 43
    .line 44
    :goto_1
    return-void

    .line 45
    :cond_3
    sget-object p1, Lv13;->b:[Lyy8;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Lyy8;

    .line 52
    .line 53
    iput-object p1, p0, Lez8;->f:[Lyy8;

    .line 54
    .line 55
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lez8;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    iget-wide v1, p0, Lez8;->q:J

    .line 8
    .line 9
    long-to-int p0, v1

    .line 10
    add-int/2addr v0, p0

    .line 11
    const/16 p0, 0x20

    .line 12
    .line 13
    shr-long/2addr v1, p0

    .line 14
    long-to-int p0, v1

    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public final i([Lyy8;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lez8;->f:[Lyy8;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lez8;->k([Lyy8;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_6

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    instance-of v4, v3, Lpe8;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    iget-object v4, p0, Lez8;->k:Lpe8;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {v3}, Lyy8;->a()Lnz8;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p0, v4}, Lez8;->d(Lnz8;)Lyy8;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :goto_1
    if-nez v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lez8;->f(Lyy8;)V

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_2
    if-eqz p2, :cond_3

    .line 38
    .line 39
    invoke-interface {v3}, Lyy8;->d()[B

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    invoke-interface {v3}, Lyy8;->e()[B

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_2
    if-eqz p2, :cond_4

    .line 49
    .line 50
    :try_start_0
    array-length v5, v3

    .line 51
    invoke-interface {v4, v3, v1, v5}, Lyy8;->c([BII)V

    .line 52
    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    array-length v5, v3

    .line 56
    invoke-interface {v4, v3, v1, v5}, Lyy8;->h([BII)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :catch_0
    new-instance v5, Lse8;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v4}, Lyy8;->a()Lnz8;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iput-object v6, v5, Lse8;->a:Lnz8;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    invoke-static {v3}, Lpz8;->a([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iput-object v3, v5, Lse8;->b:[B

    .line 78
    .line 79
    invoke-interface {v4}, Lyy8;->e()[B

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lpz8;->a([B)[B

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v5, Lse8;->c:[B

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    invoke-interface {v4}, Lyy8;->d()[B

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v6}, Lpz8;->a([B)[B

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iput-object v6, v5, Lse8;->b:[B

    .line 99
    .line 100
    invoke-static {v3}, Lpz8;->a([B)[B

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v5, Lse8;->c:[B

    .line 105
    .line 106
    :goto_3
    invoke-interface {v4}, Lyy8;->a()Lnz8;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p0, v3}, Lez8;->h(Lnz8;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v5}, Lez8;->f(Lyy8;)V

    .line 114
    .line 115
    .line 116
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    invoke-virtual {p0}, Lez8;->j()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final isDirectory()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lez8;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "/"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final j()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lez8;->b()[Lyy8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lv13;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v4, v1, -0x1

    .line 13
    .line 14
    aget-object v4, v0, v4

    .line 15
    .line 16
    instance-of v4, v4, Lpe8;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    move v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v3

    .line 23
    :goto_0
    if-eqz v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v5, v1, -0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v5, v1

    .line 29
    :goto_1
    mul-int/lit8 v6, v5, 0x4

    .line 30
    .line 31
    array-length v7, v0

    .line 32
    move v8, v3

    .line 33
    :goto_2
    if-ge v8, v7, :cond_2

    .line 34
    .line 35
    aget-object v9, v0, v8

    .line 36
    .line 37
    invoke-interface {v9}, Lyy8;->b()Lnz8;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    iget v9, v9, Lnz8;->a:I

    .line 42
    .line 43
    add-int/2addr v6, v9

    .line 44
    add-int/lit8 v8, v8, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    new-array v6, v6, [B

    .line 48
    .line 49
    move v7, v3

    .line 50
    move v8, v7

    .line 51
    :goto_3
    if-ge v7, v5, :cond_4

    .line 52
    .line 53
    aget-object v9, v0, v7

    .line 54
    .line 55
    invoke-interface {v9}, Lyy8;->a()Lnz8;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v9}, Lnz8;->a()[B

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const/4 v10, 0x2

    .line 64
    invoke-static {v9, v3, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    aget-object v9, v0, v7

    .line 68
    .line 69
    invoke-interface {v9}, Lyy8;->b()Lnz8;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v9}, Lnz8;->a()[B

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    add-int/lit8 v11, v8, 0x2

    .line 78
    .line 79
    invoke-static {v9, v3, v6, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v8, v8, 0x4

    .line 83
    .line 84
    aget-object v9, v0, v7

    .line 85
    .line 86
    invoke-interface {v9}, Lyy8;->d()[B

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    array-length v10, v9

    .line 93
    invoke-static {v9, v3, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    array-length v9, v9

    .line 97
    add-int/2addr v8, v9

    .line 98
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    if-eqz v4, :cond_5

    .line 102
    .line 103
    sub-int/2addr v1, v2

    .line 104
    aget-object v0, v0, v1

    .line 105
    .line 106
    invoke-interface {v0}, Lyy8;->d()[B

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    array-length v1, v0

    .line 113
    invoke-static {v0, v3, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-super {p0, v6}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcx8;->n:Lnz8;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lez8;->d(Lnz8;)Lyy8;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    instance-of v1, v0, Lcx8;

    .line 126
    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    check-cast v0, Lcx8;

    .line 130
    .line 131
    iget-boolean v1, v0, Lcx8;->b:Z

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    iget-object v1, v0, Lcx8;->e:Llz8;

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    iget-wide v5, v1, Llz8;->a:J

    .line 143
    .line 144
    long-to-int v1, v5

    .line 145
    int-to-long v5, v1

    .line 146
    sget-object v1, Lha3;->a:Ljava/math/MathContext;

    .line 147
    .line 148
    invoke-static {v5, v6, v4}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    goto :goto_4

    .line 153
    :cond_6
    move-object v1, v3

    .line 154
    :goto_4
    if-eqz v1, :cond_7

    .line 155
    .line 156
    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    iput-wide v5, p0, Lez8;->y:J

    .line 164
    .line 165
    iput-boolean v2, p0, Lez8;->x:Z

    .line 166
    .line 167
    :cond_7
    iget-boolean v1, v0, Lcx8;->c:Z

    .line 168
    .line 169
    if-eqz v1, :cond_9

    .line 170
    .line 171
    iget-object v1, v0, Lcx8;->f:Llz8;

    .line 172
    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    iget-wide v5, v1, Llz8;->a:J

    .line 176
    .line 177
    long-to-int v1, v5

    .line 178
    int-to-long v5, v1

    .line 179
    sget-object v1, Lha3;->a:Ljava/math/MathContext;

    .line 180
    .line 181
    invoke-static {v5, v6, v4}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    move-object v1, v3

    .line 187
    :goto_5
    if-eqz v1, :cond_9

    .line 188
    .line 189
    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 190
    .line 191
    .line 192
    :cond_9
    iget-boolean v1, v0, Lcx8;->d:Z

    .line 193
    .line 194
    if-eqz v1, :cond_b

    .line 195
    .line 196
    iget-object v0, v0, Lcx8;->k:Llz8;

    .line 197
    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    iget-wide v0, v0, Llz8;->a:J

    .line 201
    .line 202
    long-to-int v0, v0

    .line 203
    int-to-long v0, v0

    .line 204
    sget-object v3, Lha3;->a:Ljava/math/MathContext;

    .line 205
    .line 206
    invoke-static {v0, v1, v4}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :cond_a
    if-eqz v3, :cond_b

    .line 211
    .line 212
    invoke-super {p0, v3}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 213
    .line 214
    .line 215
    :cond_b
    sget-object v0, Lsw8;->d:Lnz8;

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lez8;->d(Lnz8;)Lyy8;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    instance-of v1, v0, Lsw8;

    .line 222
    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    check-cast v0, Lsw8;

    .line 226
    .line 227
    iget-object v1, v0, Lsw8;->a:Luy8;

    .line 228
    .line 229
    invoke-static {v1}, Lsw8;->g(Luy8;)Ljava/nio/file/attribute/FileTime;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_c

    .line 234
    .line 235
    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v3

    .line 242
    iput-wide v3, p0, Lez8;->y:J

    .line 243
    .line 244
    iput-boolean v2, p0, Lez8;->x:Z

    .line 245
    .line 246
    :cond_c
    iget-object v1, v0, Lsw8;->b:Luy8;

    .line 247
    .line 248
    invoke-static {v1}, Lsw8;->g(Luy8;)Ljava/nio/file/attribute/FileTime;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-eqz v1, :cond_d

    .line 253
    .line 254
    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 255
    .line 256
    .line 257
    :cond_d
    iget-object v0, v0, Lsw8;->c:Luy8;

    .line 258
    .line 259
    invoke-static {v0}, Lsw8;->g(Luy8;)Ljava/nio/file/attribute/FileTime;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_e

    .line 264
    .line 265
    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 266
    .line 267
    .line 268
    :cond_e
    return-void
.end method

.method public final k([Lyy8;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lez8;->k:Lpe8;

    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    instance-of v4, v3, Lpe8;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v3, Lpe8;

    .line 22
    .line 23
    iput-object v3, p0, Lez8;->k:Lpe8;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lv13;->b:[Lyy8;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, [Lyy8;

    .line 39
    .line 40
    iput-object p1, p0, Lez8;->f:[Lyy8;

    .line 41
    .line 42
    invoke-virtual {p0}, Lez8;->j()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final l()V
    .locals 14

    .line 1
    sget-object v0, Lcx8;->n:Lnz8;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lez8;->d(Lnz8;)Lyy8;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lez8;->h(Lnz8;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lsw8;->d:Lnz8;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lez8;->d(Lnz8;)Lyy8;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lez8;->h(Lnz8;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-boolean v0, p0, Lez8;->x:Z

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    :goto_0
    move v0, v1

    .line 41
    :goto_1
    if-eqz v0, :cond_e

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget-object v4, Lha3;->a:Ljava/math/MathContext;

    .line 56
    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-wide v7, v4

    .line 69
    :goto_2
    const-wide/32 v9, -0x80000000

    .line 70
    .line 71
    .line 72
    cmp-long v11, v9, v7

    .line 73
    .line 74
    if-gtz v11, :cond_a

    .line 75
    .line 76
    const-wide/32 v11, 0x7fffffff

    .line 77
    .line 78
    .line 79
    cmp-long v7, v7, v11

    .line 80
    .line 81
    if-gtz v7, :cond_a

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    invoke-virtual {v2, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move-wide v7, v4

    .line 91
    :goto_3
    cmp-long v13, v9, v7

    .line 92
    .line 93
    if-gtz v13, :cond_a

    .line 94
    .line 95
    cmp-long v7, v7, v11

    .line 96
    .line 97
    if-gtz v7, :cond_a

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    :cond_6
    cmp-long v6, v9, v4

    .line 106
    .line 107
    if-gtz v6, :cond_a

    .line 108
    .line 109
    cmp-long v4, v4, v11

    .line 110
    .line 111
    if-gtz v4, :cond_a

    .line 112
    .line 113
    new-instance v4, Lcx8;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-static {v0}, Lcx8;->i(Ljava/nio/file/attribute/FileTime;)Llz8;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    iput-boolean v1, v4, Lcx8;->b:Z

    .line 125
    .line 126
    iget-byte v6, v4, Lcx8;->a:B

    .line 127
    .line 128
    or-int/2addr v6, v1

    .line 129
    int-to-byte v6, v6

    .line 130
    iput-byte v6, v4, Lcx8;->a:B

    .line 131
    .line 132
    iput-object v5, v4, Lcx8;->e:Llz8;

    .line 133
    .line 134
    :cond_7
    if-eqz v2, :cond_8

    .line 135
    .line 136
    invoke-static {v2}, Lcx8;->i(Ljava/nio/file/attribute/FileTime;)Llz8;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iput-boolean v1, v4, Lcx8;->c:Z

    .line 141
    .line 142
    iget-byte v6, v4, Lcx8;->a:B

    .line 143
    .line 144
    or-int/lit8 v6, v6, 0x2

    .line 145
    .line 146
    int-to-byte v6, v6

    .line 147
    iput-byte v6, v4, Lcx8;->a:B

    .line 148
    .line 149
    iput-object v5, v4, Lcx8;->f:Llz8;

    .line 150
    .line 151
    :cond_8
    if-eqz v3, :cond_9

    .line 152
    .line 153
    invoke-static {v3}, Lcx8;->i(Ljava/nio/file/attribute/FileTime;)Llz8;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iput-boolean v1, v4, Lcx8;->d:Z

    .line 158
    .line 159
    iget-byte v1, v4, Lcx8;->a:B

    .line 160
    .line 161
    or-int/lit8 v1, v1, 0x4

    .line 162
    .line 163
    int-to-byte v1, v1

    .line 164
    iput-byte v1, v4, Lcx8;->a:B

    .line 165
    .line 166
    iput-object v5, v4, Lcx8;->k:Llz8;

    .line 167
    .line 168
    :cond_9
    invoke-virtual {p0, v4}, Lez8;->f(Lyy8;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    new-instance v1, Lsw8;

    .line 172
    .line 173
    invoke-direct {v1}, Lsw8;-><init>()V

    .line 174
    .line 175
    .line 176
    if-eqz v0, :cond_b

    .line 177
    .line 178
    new-instance v4, Luy8;

    .line 179
    .line 180
    invoke-static {v0}, Lha3;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v5

    .line 184
    invoke-direct {v4, v5, v6}, Luy8;-><init>(J)V

    .line 185
    .line 186
    .line 187
    iput-object v4, v1, Lsw8;->a:Luy8;

    .line 188
    .line 189
    :cond_b
    if-eqz v2, :cond_c

    .line 190
    .line 191
    new-instance v0, Luy8;

    .line 192
    .line 193
    invoke-static {v2}, Lha3;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    invoke-direct {v0, v4, v5}, Luy8;-><init>(J)V

    .line 198
    .line 199
    .line 200
    iput-object v0, v1, Lsw8;->b:Luy8;

    .line 201
    .line 202
    :cond_c
    if-eqz v3, :cond_d

    .line 203
    .line 204
    new-instance v0, Luy8;

    .line 205
    .line 206
    invoke-static {v3}, Lha3;->b(Ljava/nio/file/attribute/FileTime;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    invoke-direct {v0, v2, v3}, Luy8;-><init>(J)V

    .line 211
    .line 212
    .line 213
    iput-object v0, v1, Lsw8;->c:Luy8;

    .line 214
    .line 215
    :cond_d
    invoke-virtual {p0, v1}, Lez8;->f(Lyy8;)V

    .line 216
    .line 217
    .line 218
    :cond_e
    invoke-virtual {p0}, Lez8;->j()V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lez8;->d:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "/"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x5c

    .line 16
    .line 17
    const/16 v1, 0x2f

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    iput-object p1, p0, Lez8;->n:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public final setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lez8;->l()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final setExtra([B)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lsy8;->b:Lqy8;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v1, v0}, Lv13;->b([BZLsy8;)[Lyy8;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v1}, Lez8;->i([Lyy8;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0}, Lez8;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, " - "

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Error parsing extra fields for entry: "

    .line 24
    .line 25
    invoke-static {v2, p0, v0, v1, p1}, Ll0;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lez8;->l()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lez8;->y:J

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lez8;->x:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lez8;->l()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final setMethod(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lez8;->a:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "ZIP compression method cannot be negative: "

    .line 7
    .line 8
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSize(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lez8;->b:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "Invalid entry size"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setTime(J)V
    .locals 6

    .line 1
    const-wide v0, 0x3abd8960000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-gtz v0, :cond_2

    .line 9
    .line 10
    sget-wide v0, Lpz8;->a:J

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-wide/32 v2, 0x210000

    .line 33
    .line 34
    .line 35
    const/16 v4, 0x7bc

    .line 36
    .line 37
    if-ge v1, v4, :cond_0

    .line 38
    .line 39
    move-wide v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr v1, v4

    .line 46
    shl-int/lit8 v1, v1, 0x19

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    shl-int/lit8 v4, v4, 0x15

    .line 53
    .line 54
    or-int/2addr v1, v4

    .line 55
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    shl-int/lit8 v4, v4, 0x10

    .line 60
    .line 61
    or-int/2addr v1, v4

    .line 62
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    shl-int/lit8 v4, v4, 0xb

    .line 67
    .line 68
    or-int/2addr v1, v4

    .line 69
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    shl-int/lit8 v4, v4, 0x5

    .line 74
    .line 75
    or-int/2addr v1, v4

    .line 76
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    shr-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    or-int/2addr v0, v1

    .line 83
    int-to-long v0, v0

    .line 84
    const-wide v4, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long/2addr v0, v4

    .line 90
    :goto_0
    cmp-long v0, v0, v2

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 95
    .line 96
    .line 97
    iput-wide p1, p0, Lez8;->y:J

    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lez8;->x:Z

    .line 101
    .line 102
    invoke-virtual {p0}, Lez8;->l()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    sget v0, Lpz8;->b:I

    .line 107
    .line 108
    :cond_3
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lez8;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 113
    .line 114
    .line 115
    return-void
.end method
