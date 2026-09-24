.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Companion;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final f:Lokhttp3/MediaType;

.field public static final g:Lokhttp3/MediaType;

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final b:Lhy0;

.field public final c:Ljava/util/List;

.field public final d:Lokhttp3/MediaType;

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/MediaType;->d:Lai6;

    .line 2
    .line 3
    const-string v0, "multipart/mixed"

    .line 4
    .line 5
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lokhttp3/MultipartBody;->f:Lokhttp3/MediaType;

    .line 10
    .line 11
    const-string v0, "multipart/alternative"

    .line 12
    .line 13
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 14
    .line 15
    .line 16
    const-string v0, "multipart/digest"

    .line 17
    .line 18
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 19
    .line 20
    .line 21
    const-string v0, "multipart/parallel"

    .line 22
    .line 23
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 24
    .line 25
    .line 26
    const-string v0, "multipart/form-data"

    .line 27
    .line 28
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lokhttp3/MultipartBody;->g:Lokhttp3/MediaType;

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    new-array v1, v0, [B

    .line 36
    .line 37
    fill-array-data v1, :array_0

    .line 38
    .line 39
    .line 40
    sput-object v1, Lokhttp3/MultipartBody;->h:[B

    .line 41
    .line 42
    new-array v1, v0, [B

    .line 43
    .line 44
    fill-array-data v1, :array_1

    .line 45
    .line 46
    .line 47
    sput-object v1, Lokhttp3/MultipartBody;->i:[B

    .line 48
    .line 49
    new-array v0, v0, [B

    .line 50
    .line 51
    fill-array-data v0, :array_2

    .line 52
    .line 53
    .line 54
    sput-object v0, Lokhttp3/MultipartBody;->j:[B

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    nop

    .line 69
    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lhy0;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/MultipartBody;->b:Lhy0;

    .line 11
    .line 12
    iput-object p3, p0, Lokhttp3/MultipartBody;->c:Ljava/util/List;

    .line 13
    .line 14
    sget-object p3, Lokhttp3/MediaType;->d:Lai6;

    .line 15
    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, "; boundary="

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lhy0;->w()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lokhttp3/MultipartBody;->d:Lokhttp3/MediaType;

    .line 45
    .line 46
    const-wide/16 p1, -0x1

    .line 47
    .line 48
    iput-wide p1, p0, Lokhttp3/MultipartBody;->e:J

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lokhttp3/MultipartBody;->e:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v0, v1}, Lokhttp3/MultipartBody;->e(Lyw0;Z)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lokhttp3/MultipartBody;->e:J

    .line 16
    .line 17
    :cond_0
    return-wide v0
.end method

.method public final b()Lokhttp3/MediaType;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartBody;->d:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartBody;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lokhttp3/MultipartBody$Part;

    .line 25
    .line 26
    iget-object v0, v0, Lokhttp3/MultipartBody$Part;->b:Lokhttp3/RequestBody;

    .line 27
    .line 28
    invoke-virtual {v0}, Lokhttp3/RequestBody;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final d(Lyw0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokhttp3/MultipartBody;->e(Lyw0;Z)J

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final e(Lyw0;Z)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v1, Lnw0;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    move-object v2, v1

    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    :goto_0
    iget-object v3, v0, Lokhttp3/MultipartBody;->c:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move v8, v5

    .line 26
    :goto_1
    iget-object v9, v0, Lokhttp3/MultipartBody;->b:Lhy0;

    .line 27
    .line 28
    sget-object v10, Lokhttp3/MultipartBody;->j:[B

    .line 29
    .line 30
    sget-object v11, Lokhttp3/MultipartBody;->i:[B

    .line 31
    .line 32
    if-ge v8, v4, :cond_5

    .line 33
    .line 34
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Lokhttp3/MultipartBody$Part;

    .line 39
    .line 40
    iget-object v13, v12, Lokhttp3/MultipartBody$Part;->a:Lokhttp3/Headers;

    .line 41
    .line 42
    iget-object v12, v12, Lokhttp3/MultipartBody$Part;->b:Lokhttp3/RequestBody;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v10}, Lyw0;->write([B)Lyw0;

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v9}, Lyw0;->P(Lhy0;)Lyw0;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v11}, Lyw0;->write([B)Lyw0;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v13}, Lokhttp3/Headers;->size()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    move v10, v5

    .line 61
    :goto_2
    if-ge v10, v9, :cond_1

    .line 62
    .line 63
    invoke-virtual {v13, v10}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    invoke-interface {v1, v14}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    sget-object v15, Lokhttp3/MultipartBody;->h:[B

    .line 72
    .line 73
    invoke-interface {v14, v15}, Lyw0;->write([B)Lyw0;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    invoke-virtual {v13, v10}, Lokhttp3/Headers;->g(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    invoke-interface {v14, v15}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-interface {v14, v11}, Lyw0;->write([B)Lyw0;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v10, v10, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-virtual {v12}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    if-eqz v9, :cond_2

    .line 96
    .line 97
    const-string v10, "Content-Type: "

    .line 98
    .line 99
    invoke-interface {v1, v10}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iget-object v9, v9, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v10, v9}, Lyw0;->K(Ljava/lang/String;)Lyw0;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-interface {v9, v11}, Lyw0;->write([B)Lyw0;

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {v12}, Lokhttp3/RequestBody;->a()J

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    const-wide/16 v13, -0x1

    .line 117
    .line 118
    cmp-long v15, v9, v13

    .line 119
    .line 120
    if-nez v15, :cond_3

    .line 121
    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lnw0;->a()V

    .line 128
    .line 129
    .line 130
    return-wide v13

    .line 131
    :cond_3
    invoke-interface {v1, v11}, Lyw0;->write([B)Lyw0;

    .line 132
    .line 133
    .line 134
    if-eqz p2, :cond_4

    .line 135
    .line 136
    add-long/2addr v6, v9

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    invoke-virtual {v12, v1}, Lokhttp3/RequestBody;->d(Lyw0;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    invoke-interface {v1, v11}, Lyw0;->write([B)Lyw0;

    .line 142
    .line 143
    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v10}, Lyw0;->write([B)Lyw0;

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v9}, Lyw0;->P(Lhy0;)Lyw0;

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, v10}, Lyw0;->write([B)Lyw0;

    .line 157
    .line 158
    .line 159
    invoke-interface {v1, v11}, Lyw0;->write([B)Lyw0;

    .line 160
    .line 161
    .line 162
    if-eqz p2, :cond_6

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-wide v0, v2, Lnw0;->b:J

    .line 168
    .line 169
    add-long/2addr v6, v0

    .line 170
    invoke-virtual {v2}, Lnw0;->a()V

    .line 171
    .line 172
    .line 173
    :cond_6
    return-wide v6
.end method
