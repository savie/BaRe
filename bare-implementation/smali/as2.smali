.class public final Las2;
.super Ljava/lang/Object;

# interfaces
.implements Lbw1;
.implements Le59;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Las2;->a:Ljava/lang/Object;

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    iput-object v1, p0, Las2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    new-array v1, v0, [I

    .line 15
    .line 16
    iput-object v1, p0, Las2;->c:Ljava/io/Serializable;

    .line 17
    .line 18
    new-array v1, v0, [I

    .line 19
    .line 20
    iput-object v1, p0, Las2;->d:Ljava/lang/Object;

    .line 21
    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    iput-object v0, p0, Las2;->e:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(Lev5;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Las2;->c:Ljava/io/Serializable;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v2}, Lev5;->i(Ljava/lang/String;)Lev5;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Las2;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lx40;

    .line 28
    .line 29
    iget-object v5, p0, Las2;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v5, Lln5;

    .line 32
    .line 33
    invoke-virtual {v4, v5, v3, v2}, Ly23;->e(Lvb8;Ljava/lang/Object;Lev5;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Las2;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Lcy6;

    .line 42
    .line 43
    invoke-virtual {v4, v2, v3}, Lcy6;->a(Lev5;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lmc4;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Las2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx40;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lx40;->f(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ly40;

    .line 10
    .line 11
    invoke-virtual {v0}, Ly40;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v0, v0, Ly40;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lwi8;

    .line 18
    .line 19
    invoke-interface {v0}, Lwi8;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Las2;->c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v1
.end method

.method public c(Lmc4;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Lmc4;->getPosition()Ltr9;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Las2;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcy6;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcy6;->b(Lmc4;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Lwt1;

    .line 34
    .line 35
    iget-object p0, p0, Las2;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lvb8;

    .line 38
    .line 39
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p2, "Array length missing or incorrect for %s at %s"

    .line 44
    .line 45
    invoke-direct {p1, p2, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public d(Lmc4;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Las2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx40;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lx40;->f(Lmc4;)Lgd4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ly40;

    .line 10
    .line 11
    iget-object v1, v0, Ly40;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lwi8;

    .line 14
    .line 15
    invoke-interface {v1}, Lwi8;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ly40;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p1}, Lmc4;->d()Lmc4;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, p0, Las2;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcy6;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcy6;->d(Lmc4;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Las2;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Llp1;

    .line 7
    .line 8
    iget-object p0, p0, Llp1;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public zza()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "returnSecureToken"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Las2;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Llp1;

    .line 15
    .line 16
    iget-object v3, v1, Llp1;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    iget-object v1, v1, Llp1;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v3, Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 30
    .line 31
    .line 32
    move v5, v4

    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-ge v5, v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v1, "deleteProvider"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Las2;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Llp1;

    .line 57
    .line 58
    iget-object v1, v1, Llp1;->a:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    new-array v5, v3, [I

    .line 65
    .line 66
    move v6, v4

    .line 67
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-ge v6, v7, :cond_6

    .line 72
    .line 73
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const/4 v9, 0x2

    .line 87
    const/4 v10, -0x1

    .line 88
    sparse-switch v8, :sswitch_data_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :sswitch_0
    const-string v8, "PASSWORD"

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v10, 0x3

    .line 102
    goto :goto_2

    .line 103
    :sswitch_1
    const-string v8, "PHOTO_URL"

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-nez v7, :cond_3

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v10, v9

    .line 113
    goto :goto_2

    .line 114
    :sswitch_2
    const-string v8, "EMAIL"

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v10, v2

    .line 124
    goto :goto_2

    .line 125
    :sswitch_3
    const-string v8, "DISPLAY_NAME"

    .line 126
    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_5

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    move v10, v4

    .line 135
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 136
    .line 137
    .line 138
    move v9, v4

    .line 139
    goto :goto_3

    .line 140
    :pswitch_0
    const/4 v9, 0x5

    .line 141
    goto :goto_3

    .line 142
    :pswitch_1
    const/4 v9, 0x4

    .line 143
    goto :goto_3

    .line 144
    :pswitch_2
    move v9, v2

    .line 145
    :goto_3
    :pswitch_3
    aput v9, v5, v6

    .line 146
    .line 147
    add-int/lit8 v6, v6, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    if-lez v3, :cond_8

    .line 151
    .line 152
    new-instance v1, Lorg/json/JSONArray;

    .line 153
    .line 154
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 155
    .line 156
    .line 157
    :goto_4
    if-ge v4, v3, :cond_7

    .line 158
    .line 159
    aget v2, v5, v4

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 162
    .line 163
    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_7
    const-string v2, "deleteAttribute"

    .line 168
    .line 169
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    :cond_8
    iget-object v1, p0, Las2;->a:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    const-string v2, "idToken"

    .line 179
    .line 180
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    :cond_9
    iget-object v1, p0, Las2;->b:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    const-string v2, "displayName"

    .line 190
    .line 191
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    :cond_a
    iget-object p0, p0, Las2;->c:Ljava/io/Serializable;

    .line 195
    .line 196
    check-cast p0, Ljava/lang/String;

    .line 197
    .line 198
    if-eqz p0, :cond_b

    .line 199
    .line 200
    const-string v1, "photoUrl"

    .line 201
    .line 202
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    :cond_b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    nop

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x13d9e3f8 -> :sswitch_3
        0x3f0537c -> :sswitch_2
        0x73a065a2 -> :sswitch_1
        0x772faa9b -> :sswitch_0
    .end sparse-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
