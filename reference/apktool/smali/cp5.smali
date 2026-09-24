.class public final Lcp5;
.super Ljp5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:[B

.field public final n:[B

.field public final o:[B

.field public final p:[B

.field public final q:[B

.field public final r:[B

.field public s:[B


# direct methods
.method public constructor <init>([B[BLjava/lang/String;[BLjava/util/Set;Lbw8;)V
    .locals 1

    .line 1
    sget-object v0, Lho6;->d:[B

    .line 2
    .line 3
    invoke-direct {p0, p5, p6}, Ljp5;-><init>(Ljava/util/Set;Lbw8;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    iput-object p1, p0, Lcp5;->m:[B

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object p2, v0

    .line 16
    :goto_1
    iput-object p2, p0, Lcp5;->n:[B

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    sget-object p1, Lip5;->a:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object p1, v0

    .line 28
    :goto_2
    iput-object p1, p0, Lcp5;->o:[B

    .line 29
    .line 30
    iput-object v0, p0, Lcp5;->p:[B

    .line 31
    .line 32
    iput-object v0, p0, Lcp5;->q:[B

    .line 33
    .line 34
    if-eqz p4, :cond_3

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-object p4, v0

    .line 38
    :goto_3
    iput-object p4, p0, Lcp5;->r:[B

    .line 39
    .line 40
    iput-object p5, p0, Ljp5;->j:Ljava/util/Set;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final N(Ljw0;)V
    .locals 10

    .line 1
    const-string v0, "NTLMSSP\u0000"

    .line 2
    .line 3
    sget-object v1, Lh51;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Low0;->j(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x3

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Low0;->l(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ljp5;->j:Ljava/util/Set;

    .line 14
    .line 15
    sget-object v1, Llp5;->e:Llp5;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcp5;->s:[B

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0x40

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/16 v0, 0x48

    .line 32
    .line 33
    :goto_1
    iget-object v2, p0, Lcp5;->s:[B

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x10

    .line 38
    .line 39
    :cond_2
    iget-object v2, p0, Lcp5;->m:[B

    .line 40
    .line 41
    invoke-static {p1, v2, v0}, Lho6;->Z(Ljw0;[BI)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v3, p0, Lcp5;->n:[B

    .line 46
    .line 47
    invoke-static {p1, v3, v0}, Lho6;->Z(Ljw0;[BI)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v4, p0, Lcp5;->p:[B

    .line 52
    .line 53
    invoke-static {p1, v4, v0}, Lho6;->Z(Ljw0;[BI)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v5, p0, Lcp5;->o:[B

    .line 58
    .line 59
    invoke-static {p1, v5, v0}, Lho6;->Z(Ljw0;[BI)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v6, p0, Lcp5;->q:[B

    .line 64
    .line 65
    invoke-static {p1, v6, v0}, Lho6;->Z(Ljw0;[BI)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object v7, p0, Lcp5;->r:[B

    .line 70
    .line 71
    invoke-static {p1, v7, v0}, Lho6;->Z(Ljw0;[BI)I

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Ljp5;->j:Ljava/util/Set;

    .line 75
    .line 76
    invoke-static {v0}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v8

    .line 80
    invoke-virtual {p1, v8, v9}, Low0;->l(J)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Ljp5;->j:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    new-instance v0, Ljw0;

    .line 92
    .line 93
    invoke-direct {v0}, Low0;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x6

    .line 97
    invoke-virtual {v0, v1}, Low0;->f(B)Low0;

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Low0;->f(B)Low0;

    .line 102
    .line 103
    .line 104
    const/16 v1, 0x1db0

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Low0;->k(I)V

    .line 107
    .line 108
    .line 109
    const/4 v1, 0x3

    .line 110
    new-array v8, v1, [B

    .line 111
    .line 112
    fill-array-data v8, :array_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v8, v1}, Low0;->i([BI)Low0;

    .line 116
    .line 117
    .line 118
    const/16 v1, 0xf

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Low0;->f(B)Low0;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Low0;->c()[B

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    array-length v1, v0

    .line 128
    invoke-virtual {p1, v0, v1}, Low0;->i([BI)Low0;

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    iget-object v0, p0, Lcp5;->s:[B

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    const-wide/16 v0, 0x0

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Low0;->m(J)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_2
    iget-object p0, p0, Lcp5;->s:[B

    .line 142
    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    const/16 v0, 0x10

    .line 146
    .line 147
    invoke-virtual {p1, p0, v0}, Low0;->i([BI)Low0;

    .line 148
    .line 149
    .line 150
    :cond_5
    array-length p0, v2

    .line 151
    invoke-virtual {p1, v2, p0}, Low0;->i([BI)Low0;

    .line 152
    .line 153
    .line 154
    array-length p0, v3

    .line 155
    invoke-virtual {p1, v3, p0}, Low0;->i([BI)Low0;

    .line 156
    .line 157
    .line 158
    array-length p0, v4

    .line 159
    invoke-virtual {p1, v4, p0}, Low0;->i([BI)Low0;

    .line 160
    .line 161
    .line 162
    array-length p0, v5

    .line 163
    invoke-virtual {p1, v5, p0}, Low0;->i([BI)Low0;

    .line 164
    .line 165
    .line 166
    array-length p0, v6

    .line 167
    invoke-virtual {p1, v6, p0}, Low0;->i([BI)Low0;

    .line 168
    .line 169
    .line 170
    array-length p0, v7

    .line 171
    invoke-virtual {p1, v7, p0}, Low0;->i([BI)Low0;

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NtlmAuthenticate{\n  mic="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcp5;->s:[B

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ll73;->y([B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "[]"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ",\n  lmResponse="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcp5;->m:[B

    .line 28
    .line 29
    invoke-static {v1}, Ll73;->y([B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ",\n  ntResponse="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcp5;->n:[B

    .line 42
    .line 43
    invoke-static {v1}, Ll73;->y([B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ",\n  domainName=\'"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ""

    .line 56
    .line 57
    iget-object v2, p0, Lcp5;->p:[B

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    new-instance v3, Ljava/lang/String;

    .line 62
    .line 63
    sget-object v4, Lip5;->a:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget-object v2, Lip5;->a:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    move-object v3, v1

    .line 72
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, "\',\n  userName=\'"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcp5;->o:[B

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    new-instance v3, Ljava/lang/String;

    .line 85
    .line 86
    sget-object v4, Lip5;->a:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move-object v3, v1

    .line 93
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, "\',\n  workstation=\'"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcp5;->q:[B

    .line 102
    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    new-instance v1, Ljava/lang/String;

    .line 106
    .line 107
    sget-object v2, Lip5;->a:Ljava/nio/charset/Charset;

    .line 108
    .line 109
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    const-string p0, "\',\n  encryptedRandomSessionKey=[<secret>],\n}"

    .line 113
    .line 114
    invoke-static {v0, v1, p0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
