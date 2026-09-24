.class public abstract Ldc6$a;
.super Lyr5$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ldc6$a<",
        "TB;TA;>;A:",
        "Ldc6;",
        ">",
        "Lyr5$a<",
        "TB;TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyr5$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Ly51$a;Ldc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldc6$a;->g0(Ly51$a;Ldc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lokhttp3/MediaType;Ldc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldc6$a;->h0(Lokhttp3/MediaType;Ldc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(ILdc6;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldc6$a;->i0(ILdc6;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic g0(Ly51$a;Ldc6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldc6;->u:Ly51$a;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic h0(Lokhttp3/MediaType;Ldc6;)V
    .locals 0

    .line 1
    iput-object p0, p1, Ldc6;->t:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic i0(ILdc6;)V
    .locals 0

    .line 1
    iput p0, p1, Ldc6;->v:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lyq5;)V
    .locals 0

    .line 1
    check-cast p1, Ldc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ldc6$a;->k0(Ldc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c0(Ly51$a;)Ldc6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly51$a;",
            ")TB;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly51$a;->f:Ly51$a;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Len1;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p1, v2}, Len1;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " algorithm is not allowed"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public d0(Ljava/lang/String;)Ldc6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 2
    .line 3
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ldc6$a;->e0(Lokhttp3/MediaType;)Ldc6$a;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "invalid content type \'"

    .line 15
    .line 16
    const-string v0, "\' as per RFC 2045"

    .line 17
    .line 18
    invoke-static {p0, p1, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public e0(Lokhttp3/MediaType;)Ldc6$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MediaType;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lfn1;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p1, v2}, Lfn1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public f0(Ljava/lang/Long;Ljava/lang/Long;)[J
    .locals 8

    .line 1
    const/4 p0, 0x0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    cmp-long v2, v2, v0

    .line 11
    .line 12
    if-lez v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide/32 v4, 0x500000

    .line 19
    .line 20
    .line 21
    cmp-long v2, v2, v4

    .line 22
    .line 23
    const-string v3, "part size "

    .line 24
    .line 25
    if-ltz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const-wide v6, 0x140000000L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v2, v4, v6

    .line 37
    .line 38
    if-gtz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p1, " is not supported; maximum allowed 5GiB"

    .line 42
    .line 43
    invoke-static {p2, p1, v3}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    const-string p1, " is not supported; minimum allowed 5MiB"

    .line 48
    .line 49
    invoke-static {p2, p1, v3}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x2

    .line 56
    if-eqz p1, :cond_8

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    cmp-long v5, v5, v0

    .line 63
    .line 64
    if-gez v5, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    if-eqz p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    cmp-long v0, v5, v0

    .line 74
    .line 75
    if-gtz v0, :cond_5

    .line 76
    .line 77
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    long-to-double v0, v0

    .line 82
    const-wide v5, 0x40c3880000000000L    # 10000.0

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    div-double/2addr v0, v5

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    const-wide/high16 v5, 0x4154000000000000L    # 5242880.0

    .line 93
    .line 94
    div-double/2addr v0, v5

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    mul-double/2addr v0, v5

    .line 100
    double-to-long v0, v0

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    cmp-long v0, v0, v5

    .line 114
    .line 115
    if-lez v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide p0

    .line 121
    new-array p2, v4, [J

    .line 122
    .line 123
    aput-wide p0, p2, v3

    .line 124
    .line 125
    const-wide/16 p0, 0x1

    .line 126
    .line 127
    aput-wide p0, p2, v2

    .line 128
    .line 129
    return-object p2

    .line 130
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    long-to-double v0, v0

    .line 135
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    long-to-double v5, v5

    .line 140
    div-double/2addr v0, v5

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    double-to-long v0, v0

    .line 146
    const-wide/16 v5, 0x2710

    .line 147
    .line 148
    cmp-long v5, v0, v5

    .line 149
    .line 150
    if-gtz v5, :cond_7

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide p0

    .line 156
    new-array p2, v4, [J

    .line 157
    .line 158
    aput-wide p0, p2, v3

    .line 159
    .line 160
    aput-wide v0, p2, v2

    .line 161
    .line 162
    return-object p2

    .line 163
    :cond_7
    const-string v0, " and part size "

    .line 164
    .line 165
    const-string v1, " make more than 10000parts for upload"

    .line 166
    .line 167
    const-string v2, "object size "

    .line 168
    .line 169
    invoke-static {v2, p1, v0, p2, v1}, Ld6;->k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_8
    :goto_1
    if-eqz p2, :cond_9

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    cmp-long p1, v5, v0

    .line 180
    .line 181
    if-lez p1, :cond_9

    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide p0

    .line 187
    new-array p2, v4, [J

    .line 188
    .line 189
    aput-wide p0, p2, v3

    .line 190
    .line 191
    const-wide/16 p0, -0x1

    .line 192
    .line 193
    aput-wide p0, p2, v2

    .line 194
    .line 195
    return-object p2

    .line 196
    :cond_9
    const-string p1, "valid part size must be provided for unknown object size"

    .line 197
    .line 198
    invoke-static {p1}, Lc6;->f(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object p0
.end method

.method public j0(I)Ldc6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcc6;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcc6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public k0(Ldc6;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lyq5$a;->A(Lyq5;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Ldc6;->u:Ly51$a;

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    iget v0, p1, Ldc6;->s:I

    .line 9
    .line 10
    if-lez v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Ly51$a;->a:Ly51$a;

    .line 16
    .line 17
    if-eq p0, v2, :cond_3

    .line 18
    .line 19
    sget-object v2, Ly51$a;->b:Ly51$a;

    .line 20
    .line 21
    if-eq p0, v2, :cond_3

    .line 22
    .line 23
    sget-object v2, Ly51$a;->c:Ly51$a;

    .line 24
    .line 25
    if-ne p0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-le v0, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v0, Ly51$a;->a:Ly51$a;

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Ly51$a;->b:Ly51$a;

    .line 38
    .line 39
    if-eq p0, v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Ly51$a;->d:Ly51$a;

    .line 42
    .line 43
    if-eq p0, v0, :cond_1

    .line 44
    .line 45
    sget-object v0, Ly51$a;->e:Ly51$a;

    .line 46
    .line 47
    if-ne p0, v0, :cond_2

    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "unsupported checksum "

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p1, Ldc6;->u:Ly51$a;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget p1, p1, Ldc6;->s:I

    .line 65
    .line 66
    const-string v1, " for part count "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Ldc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ldc6$a;->k0(Ldc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic u(Lfw0;)V
    .locals 0

    .line 1
    check-cast p1, Ldc6;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ldc6$a;->k0(Ldc6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
