.class public abstract Lua5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lta5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lua5;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lta5;

    .line 9
    .line 10
    const/high16 v1, 0x3f400000    # 0.75f

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lua5;->b:Lta5;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 11

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lov2;->a:Lov2;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    const/16 v2, 0x3a

    .line 19
    .line 20
    const/16 v3, 0x30

    .line 21
    .line 22
    const/16 v4, 0x2e

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    new-array v7, v5, [C

    .line 29
    .line 30
    aput-char v4, v7, v0

    .line 31
    .line 32
    const/4 v8, 0x6

    .line 33
    invoke-static {v1, v7, v8}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x4

    .line 42
    if-eq v8, v9, :cond_1

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_1
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-lez v9, :cond_6

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const/4 v10, 0x3

    .line 79
    if-gt v9, v10, :cond_6

    .line 80
    .line 81
    move v9, v0

    .line 82
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-ge v9, v10, :cond_3

    .line 87
    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-gt v3, v10, :cond_6

    .line 93
    .line 94
    if-ge v10, v2, :cond_6

    .line 95
    .line 96
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-ltz v8, :cond_6

    .line 104
    .line 105
    const/16 v9, 0x100

    .line 106
    .line 107
    if-ge v8, v9, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    :goto_2
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 111
    .line 112
    .line 113
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_3

    .line 115
    :catchall_0
    move-exception v1

    .line 116
    new-instance v7, Lbn6;

    .line 117
    .line 118
    invoke-direct {v7, v1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    move-object v1, v7

    .line 122
    :goto_3
    nop

    .line 123
    instance-of v7, v1, Lbn6;

    .line 124
    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    move-object v1, v6

    .line 128
    :cond_5
    check-cast v1, Ljava/net/InetAddress;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    instance-of v7, v1, Ljava/net/Inet4Address;

    .line 133
    .line 134
    if-eqz v7, :cond_6

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_6
    :goto_4
    move-object v1, v6

    .line 138
    :goto_5
    invoke-static {v5, p0}, Lel1;->V0(ILjava/util/List;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Ljava/lang/String;

    .line 143
    .line 144
    if-eqz p0, :cond_d

    .line 145
    .line 146
    invoke-static {p0, v2}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_d

    .line 151
    .line 152
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-ge v0, v5, :cond_b

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-gt v3, v5, :cond_7

    .line 163
    .line 164
    if-ge v5, v2, :cond_7

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_7
    const/16 v7, 0x61

    .line 168
    .line 169
    if-gt v7, v5, :cond_8

    .line 170
    .line 171
    const/16 v7, 0x67

    .line 172
    .line 173
    if-ge v5, v7, :cond_8

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_8
    const/16 v7, 0x41

    .line 177
    .line 178
    if-gt v7, v5, :cond_9

    .line 179
    .line 180
    const/16 v7, 0x47

    .line 181
    .line 182
    if-ge v5, v7, :cond_9

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_9
    if-eq v5, v2, :cond_a

    .line 186
    .line 187
    if-ne v5, v4, :cond_d

    .line 188
    .line 189
    :cond_a
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_b
    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 193
    .line 194
    .line 195
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    goto :goto_8

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    new-instance v0, Lbn6;

    .line 199
    .line 200
    invoke-direct {v0, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    move-object p0, v0

    .line 204
    :goto_8
    nop

    .line 205
    instance-of v0, p0, Lbn6;

    .line 206
    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_c
    move-object v6, p0

    .line 211
    :goto_9
    check-cast v6, Ljava/net/InetAddress;

    .line 212
    .line 213
    :cond_d
    filled-new-array {v1, v6}, [Ljava/net/InetAddress;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0
.end method
