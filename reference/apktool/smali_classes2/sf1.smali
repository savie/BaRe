.class public final Lsf1;
.super Ldv;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lsf1;

.field public static h:Lzc2;

.field public static final i:Lrf1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsf1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ldv;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lsf1;->g:Lsf1;

    .line 8
    .line 9
    new-instance v0, Lrf1;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lsf1;->i:Lrf1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lik6;
    .locals 14

    .line 1
    sget-object v0, Lre3;->a:Lzc2;

    .line 2
    .line 3
    sget-object v0, Lsf1;->h:Lzc2;

    .line 4
    .line 5
    sget-object v1, Lsf1;->i:Lrf1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Lf61;

    .line 12
    .line 13
    iget-object v3, v0, Lzc2;->a:Lwj6;

    .line 14
    .line 15
    invoke-virtual {v0}, Lzc2;->f()Lqc6;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v2, v3, v1, v4}, Lf61;-><init>(Lwj6;Le61;Lqc6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lzc2;->h(Lez2;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lai8;->b()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ltb1;->a:Ltb1;

    .line 29
    .line 30
    invoke-static {}, Lqb1;->m()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v2, 0xe

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance p0, Lik6;

    .line 41
    .line 42
    sget-object v0, Lhk6;->DriveNotConnected:Lhk6;

    .line 43
    .line 44
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    invoke-static {}, Lai8;->h()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance p0, Lik6;

    .line 55
    .line 56
    sget-object v0, Lhk6;->NetworkError:Lhk6;

    .line 57
    .line 58
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lre3;->h()Lzc2;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    sput-object v5, Lsf1;->h:Lzc2;

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    invoke-static {v5, v6}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    instance-of v8, v7, Lxe3;

    .line 79
    .line 80
    if-eqz v8, :cond_5

    .line 81
    .line 82
    move-object v9, v7

    .line 83
    check-cast v9, Lxe3;

    .line 84
    .line 85
    iget-object v9, v9, Lxe3;->n:Leb2;

    .line 86
    .line 87
    invoke-virtual {v9}, Leb2;->b()Ldb2;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    iget-object v10, v9, Ldb2;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v10, Ljava/util/Iterator;

    .line 94
    .line 95
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-eqz v11, :cond_4

    .line 100
    .line 101
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    check-cast v11, Lhk5;

    .line 106
    .line 107
    iget-object v12, v9, Ldb2;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v12, Leb2;

    .line 110
    .line 111
    iget-object v12, v12, Leb2;->b:Lzc2;

    .line 112
    .line 113
    iget-object v13, v11, Lhk5;->a:Lm61;

    .line 114
    .line 115
    iget-object v13, v13, Lm61;->a:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v12, v13}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 118
    .line 119
    .line 120
    iget-object v11, v11, Lhk5;->b:Lqn5;

    .line 121
    .line 122
    invoke-static {v11}, Lsb4;->d(Lqn5;)Lsb4;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    iget-object v11, v11, Lsb4;->a:Lqn5;

    .line 127
    .line 128
    invoke-interface {v11}, Lqn5;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    const-class v12, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 133
    .line 134
    invoke-static {v12, v11}, Lt62;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    check-cast v11, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 139
    .line 140
    if-eqz v11, :cond_3

    .line 141
    .line 142
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    new-instance v9, Lf61;

    .line 147
    .line 148
    iget-object v10, v5, Lzc2;->a:Lwj6;

    .line 149
    .line 150
    invoke-virtual {v5}, Lzc2;->f()Lqc6;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-direct {v9, v10, v1, v11}, Lf61;-><init>(Lwj6;Le61;Lqc6;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v9}, Lzc2;->a(Lez2;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    if-eqz v8, :cond_7

    .line 161
    .line 162
    iput-boolean v6, p0, Ldv;->b:Z

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_6

    .line 169
    .line 170
    new-instance p0, Lik6;

    .line 171
    .line 172
    sget-object v0, Lhk6;->Empty:Lhk6;

    .line 173
    .line 174
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_6
    sget-object p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 179
    .line 180
    new-instance v1, Lsl;

    .line 181
    .line 182
    const/4 v2, 0x4

    .line 183
    invoke-direct {v1, v2}, Lsl;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-static {p0, v1}, Lnm3;->a(Lnm3;Lmt3;)Lym1;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {v0, p0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    new-instance v0, Lik6;

    .line 195
    .line 196
    sget-object v1, Lhk6;->Success:Lhk6;

    .line 197
    .line 198
    const/16 v2, 0xc

    .line 199
    .line 200
    invoke-direct {v0, v1, p0, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_7
    instance-of v0, v7, Lwe3;

    .line 205
    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    check-cast v7, Lwe3;

    .line 209
    .line 210
    iget-object v0, v7, Lwe3;->n:Lwc2;

    .line 211
    .line 212
    iget-object v0, v0, Lwc2;->b:Ljava/lang/String;

    .line 213
    .line 214
    iget-object p0, p0, Ldv;->a:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    new-instance p0, Lik6;

    .line 220
    .line 221
    sget-object v0, Lhk6;->CloudError:Lhk6;

    .line 222
    .line 223
    invoke-direct {p0, v0, v3, v4, v2}, Lik6;-><init>(Lhk6;Ljava/util/List;ZI)V

    .line 224
    .line 225
    .line 226
    return-object p0

    .line 227
    :cond_8
    invoke-static {}, Lq;->j()V

    .line 228
    .line 229
    .line 230
    return-object v3
.end method
