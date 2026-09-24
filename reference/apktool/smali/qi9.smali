.class public abstract Lqi9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkg9;

.field public static final b:Lkg9;

.field public static final c:Lsf9;

.field public static final d:Lsf9;

.field public static final e:Lgf9;

.field public static final f:Lgf9;

.field public static final g:Lxj9;

.field public static final h:Lxj9;

.field public static final i:Lxj9;

.field public static final j:Lxj9;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Lrf9;->k:Lrf9;

    .line 2
    .line 3
    sget-object v1, Lef9;->c:Lef9;

    .line 4
    .line 5
    sget-object v2, Lff9;->e:Lff9;

    .line 6
    .line 7
    sget-object v3, Lrf9;->c:Lrf9;

    .line 8
    .line 9
    sget-object v4, Lig9;->c:Lig9;

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lkg9;->b()Lbs2;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lbs2;->l()V

    .line 16
    .line 17
    .line 18
    const/16 v6, 0x10

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Lbs2;->m(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lbs2;->n()V

    .line 24
    .line 25
    .line 26
    iput-object v4, v5, Lbs2;->e:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v5}, Lbs2;->k()Lkg9;

    .line 29
    .line 30
    .line 31
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 32
    sput-object v5, Lqi9;->a:Lkg9;

    .line 33
    .line 34
    :try_start_1
    invoke-static {}, Lkg9;->b()Lbs2;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Lbs2;->l()V

    .line 39
    .line 40
    .line 41
    const/16 v7, 0x20

    .line 42
    .line 43
    invoke-virtual {v5, v7}, Lbs2;->m(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Lbs2;->n()V

    .line 47
    .line 48
    .line 49
    iput-object v4, v5, Lbs2;->e:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v5}, Lbs2;->k()Lkg9;

    .line 52
    .line 53
    .line 54
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 55
    sput-object v4, Lqi9;->b:Lkg9;

    .line 56
    .line 57
    :try_start_2
    invoke-static {}, Lsf9;->b()Lju7;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4, v6}, Lju7;->j(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v6}, Lju7;->k(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lju7;->l()V

    .line 68
    .line 69
    .line 70
    iput-object v3, v4, Lju7;->e:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v4}, Lju7;->i()Lsf9;

    .line 73
    .line 74
    .line 75
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 76
    sput-object v4, Lqi9;->c:Lsf9;

    .line 77
    .line 78
    :try_start_3
    invoke-static {}, Lsf9;->b()Lju7;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4, v6}, Lju7;->j(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v7}, Lju7;->k(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lju7;->l()V

    .line 89
    .line 90
    .line 91
    iput-object v3, v4, Lju7;->e:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v4}, Lju7;->i()Lsf9;

    .line 94
    .line 95
    .line 96
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 97
    sput-object v3, Lqi9;->d:Lsf9;

    .line 98
    .line 99
    :try_start_4
    invoke-static {}, Lgf9;->b()Lfm1;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3, v6}, Lfm1;->d(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v7}, Lfm1;->e(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v6}, Lfm1;->g(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v6}, Lfm1;->f(I)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v3, Lfm1;->a:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v1, v3, Lfm1;->f:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-virtual {v3}, Lfm1;->c()Lgf9;

    .line 120
    .line 121
    .line 122
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 123
    sput-object v3, Lqi9;->e:Lgf9;

    .line 124
    .line 125
    :try_start_5
    invoke-static {}, Lgf9;->b()Lfm1;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3, v7}, Lfm1;->d(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v7}, Lfm1;->e(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v7}, Lfm1;->g(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v6}, Lfm1;->f(I)V

    .line 139
    .line 140
    .line 141
    iput-object v2, v3, Lfm1;->a:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v1, v3, Lfm1;->f:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v3}, Lfm1;->c()Lgf9;

    .line 146
    .line 147
    .line 148
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 149
    sput-object v1, Lqi9;->f:Lgf9;

    .line 150
    .line 151
    :try_start_6
    sget-object v1, Lrf9;->f:Lrf9;

    .line 152
    .line 153
    const/16 v2, 0xc

    .line 154
    .line 155
    invoke-static {v1, v2}, Lxj9;->b(Lrf9;I)Lxj9;

    .line 156
    .line 157
    .line 158
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 159
    sput-object v1, Lqi9;->g:Lxj9;

    .line 160
    .line 161
    :try_start_7
    invoke-static {v0, v2}, Lxj9;->b(Lrf9;I)Lxj9;

    .line 162
    .line 163
    .line 164
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 165
    sput-object v1, Lqi9;->h:Lxj9;

    .line 166
    .line 167
    const/16 v1, 0x8

    .line 168
    .line 169
    :try_start_8
    invoke-static {v0, v1}, Lxj9;->b(Lrf9;I)Lxj9;

    .line 170
    .line 171
    .line 172
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 173
    sput-object v0, Lqi9;->i:Lxj9;

    .line 174
    .line 175
    sput-object v0, Lqi9;->j:Lxj9;

    .line 176
    .line 177
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Lyt9;

    .line 180
    .line 181
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    throw v1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    new-instance v1, Lyt9;

    .line 187
    .line 188
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw v1

    .line 192
    :catch_2
    move-exception v0

    .line 193
    new-instance v1, Lyt9;

    .line 194
    .line 195
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw v1

    .line 199
    :catch_3
    move-exception v0

    .line 200
    new-instance v1, Lyt9;

    .line 201
    .line 202
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw v1

    .line 206
    :catch_4
    move-exception v0

    .line 207
    new-instance v1, Lyt9;

    .line 208
    .line 209
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    throw v1

    .line 213
    :catch_5
    move-exception v0

    .line 214
    new-instance v1, Lyt9;

    .line 215
    .line 216
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :catch_6
    move-exception v0

    .line 221
    new-instance v1, Lyt9;

    .line 222
    .line 223
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v1

    .line 227
    :catch_7
    move-exception v0

    .line 228
    new-instance v1, Lyt9;

    .line 229
    .line 230
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    throw v1

    .line 234
    :catch_8
    move-exception v0

    .line 235
    new-instance v1, Lyt9;

    .line 236
    .line 237
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw v1
.end method
