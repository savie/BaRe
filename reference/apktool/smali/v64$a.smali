.class public Lv64$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lokhttp3/HttpUrl;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lv64$a;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv64$a;->b(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lv64$a;->a(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-lt p2, v0, :cond_1

    .line 10
    .line 11
    const v0, 0xffff

    .line 12
    .line 13
    .line 14
    if-gt p2, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Lokhttp3/HttpUrl$Builder;->i(I)V

    .line 21
    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    const-string p2, "https"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p2, "http"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Lokhttp3/HttpUrl$Builder;->l(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lv64$a;->b(Lokhttp3/HttpUrl;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p0, "port must be in range of 1 to 65535"

    .line 42
    .line 43
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    throw p0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "url"

    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    :try_start_0
    invoke-static {p1}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lv64$a;->b(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/HttpUrl;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "url"

    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lki8;->k(Lokhttp3/HttpUrl;)V

    .line 53
    invoke-virtual {p0, p1}, Lv64$a;->b(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 3

    .line 1
    const-string v0, "endpoint"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lki8;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {p0}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-object v1, v0

    .line 13
    :goto_0
    if-nez v1, :cond_3

    .line 14
    .line 15
    sget-object v1, Lki8$a;->b:Lki8$a;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lki8$a;->a(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Lki8$a;->b(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object v1, Lki8;->b:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v1, "invalid hostname "

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_1
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    .line 54
    .line 55
    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "https"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_3
    invoke-static {v1}, Lki8;->k(Lokhttp3/HttpUrl;)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method


# virtual methods
.method public final b(Lokhttp3/HttpUrl;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    iget-object v0, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lv64$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, p0, Lv64$a;->c:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-boolean v3, p0, Lv64$a;->d:Z

    .line 16
    .line 17
    sget-object v4, Lki8;->b:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x1

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    sget-object v4, Lki8;->e:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v6, "\\."

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    const-string v1, "\\.elb\\.amazonaws\\.com"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    aget-object v0, v0, v3

    .line 53
    .line 54
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    array-length v1, v0

    .line 59
    sub-int/2addr v1, v5

    .line 60
    aget-object v0, v0, v1

    .line 61
    .line 62
    iput-object v0, p0, Lv64$a;->e:Ljava/lang/String;

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    sget-object v4, Lki8;->c:Ljava/util/regex/Pattern;

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_2
    sget-object v4, Lki8;->d:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_d

    .line 91
    .line 92
    sget-object v4, Lki8;->f:Ljava/util/regex/Pattern;

    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    iput-object v7, p0, Lv64$a;->b:Ljava/lang/String;

    .line 110
    .line 111
    const-string v8, "s3-accesspoint"

    .line 112
    .line 113
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    const-string p0, "use HTTPS scheme for host "

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v4, "dualstack"

    .line 141
    .line 142
    aget-object v6, v1, v3

    .line 143
    .line 144
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    iput-boolean v4, p0, Lv64$a;->d:Z

    .line 149
    .line 150
    if-eqz v4, :cond_5

    .line 151
    .line 152
    array-length v4, v1

    .line 153
    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, [Ljava/lang/String;

    .line 158
    .line 159
    :cond_5
    aget-object v4, v1, v3

    .line 160
    .line 161
    const-string v6, "vpce"

    .line 162
    .line 163
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_6

    .line 168
    .line 169
    aget-object v4, v1, v3

    .line 170
    .line 171
    const-string v6, "amazonaws"

    .line 172
    .line 173
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_6

    .line 178
    .line 179
    aget-object v2, v1, v3

    .line 180
    .line 181
    array-length v4, v1

    .line 182
    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, [Ljava/lang/String;

    .line 187
    .line 188
    :cond_6
    const-string v4, "."

    .line 189
    .line 190
    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iput-object v1, p0, Lv64$a;->c:Ljava/lang/String;

    .line 195
    .line 196
    const-string v1, "s3-external-1.amazonaws.com"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    const-string v2, "us-east-1"

    .line 205
    .line 206
    :cond_7
    const-string v1, "s3-us-gov-west-1.amazonaws.com"

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_8

    .line 213
    .line 214
    const-string v1, "s3-fips-us-gov-west-1.amazonaws.com"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    :cond_8
    const-string v2, "us-gov-west-1"

    .line 223
    .line 224
    :cond_9
    if-eqz v2, :cond_a

    .line 225
    .line 226
    iput-object v2, p0, Lv64$a;->e:Ljava/lang/String;

    .line 227
    .line 228
    :cond_a
    :goto_1
    iget-object v0, p0, Lv64$a;->c:Ljava/lang/String;

    .line 229
    .line 230
    if-nez v0, :cond_b

    .line 231
    .line 232
    iget-object p1, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 233
    .line 234
    const-string v0, "aliyuncs.com"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_c

    .line 241
    .line 242
    :cond_b
    move v3, v5

    .line 243
    :cond_c
    iput-boolean v3, p0, Lv64$a;->f:Z

    .line 244
    .line 245
    return-void

    .line 246
    :cond_d
    const-string p0, "invalid Amazon AWS host "

    .line 247
    .line 248
    invoke-static {p0, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method
