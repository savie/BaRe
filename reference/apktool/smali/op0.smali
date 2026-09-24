.class public abstract Lop0;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# static fields
.field public static final q:[Lmp0;


# instance fields
.field public final c:Lgc8;

.field public final d:[Lmp0;

.field public final e:[Lmp0;

.field public final f:Ljava/lang/Object;

.field public final k:Lod;

.field public final n:Llr5;

.field public final p:Lak4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lz86;

    .line 2
    .line 3
    const-string v1, "#object-ref"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lz86;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Lmp0;

    .line 11
    .line 12
    sput-object v0, Lop0;->q:[Lmp0;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lgc8;Lpp0;[Lmp0;[Lmp0;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Ltn7;-><init>(Lgc8;)V

    .line 125
    iput-object p1, p0, Lop0;->c:Lgc8;

    .line 126
    iput-object p3, p0, Lop0;->d:[Lmp0;

    .line 127
    iput-object p4, p0, Lop0;->e:[Lmp0;

    .line 128
    iget-object p1, p2, Lpp0;->f:Ljava/lang/Object;

    check-cast p1, Lod;

    .line 129
    iput-object p1, p0, Lop0;->k:Lod;

    .line 130
    iget-object p1, p2, Lpp0;->e:Ljava/lang/Object;

    .line 131
    iput-object p1, p0, Lop0;->f:Ljava/lang/Object;

    .line 132
    iget-object p1, p2, Lpp0;->k:Ljava/lang/Object;

    check-cast p1, Llr5;

    .line 133
    iput-object p1, p0, Lop0;->n:Llr5;

    .line 134
    iget-object p1, p2, Lpp0;->a:Ljava/lang/Object;

    check-cast p1, Lwo0;

    .line 135
    invoke-virtual {p1}, Lwo0;->b()Lbk4;

    move-result-object p1

    .line 136
    iget-object p1, p1, Lbk4;->b:Lak4;

    .line 137
    iput-object p1, p0, Lop0;->p:Lak4;

    return-void
.end method

.method public constructor <init>(Lop0;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9

    .line 1
    iget-object v0, p1, Ltn7;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lop0;->c:Lgc8;

    .line 7
    .line 8
    iput-object v0, p0, Lop0;->c:Lgc8;

    .line 9
    .line 10
    iget-object v0, p1, Lop0;->d:[Lmp0;

    .line 11
    .line 12
    iget-object v1, p1, Lop0;->e:[Lmp0;

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v5, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v6, 0x0

    .line 31
    :goto_1
    if-ge v6, v2, :cond_3

    .line 32
    .line 33
    aget-object v7, v0, v6

    .line 34
    .line 35
    iget-object v8, v7, Lmp0;->b:Lz77;

    .line 36
    .line 37
    iget-object v8, v8, Lz77;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v8, p2, p3}, Ljd4;->F(Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    aget-object v7, v1, v6

    .line 52
    .line 53
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    new-array p2, p2, [Lmp0;

    .line 64
    .line 65
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, [Lmp0;

    .line 70
    .line 71
    iput-object p2, p0, Lop0;->d:[Lmp0;

    .line 72
    .line 73
    if-nez v5, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    new-array p2, p2, [Lmp0;

    .line 81
    .line 82
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    move-object v4, p2

    .line 87
    check-cast v4, [Lmp0;

    .line 88
    .line 89
    :goto_3
    iput-object v4, p0, Lop0;->e:[Lmp0;

    .line 90
    .line 91
    iget-object p2, p1, Lop0;->k:Lod;

    .line 92
    .line 93
    iput-object p2, p0, Lop0;->k:Lod;

    .line 94
    .line 95
    iget-object p2, p1, Lop0;->n:Llr5;

    .line 96
    .line 97
    iput-object p2, p0, Lop0;->n:Llr5;

    .line 98
    .line 99
    iget-object p2, p1, Lop0;->f:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object p2, p0, Lop0;->f:Ljava/lang/Object;

    .line 102
    .line 103
    iget-object p1, p1, Lop0;->p:Lak4;

    .line 104
    .line 105
    iput-object p1, p0, Lop0;->p:Lak4;

    .line 106
    .line 107
    return-void
.end method

.method public constructor <init>(Lop0;Llr5;Ljava/lang/Object;)V
    .locals 1

    .line 116
    iget-object v0, p1, Ltn7;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 117
    iget-object v0, p1, Lop0;->c:Lgc8;

    iput-object v0, p0, Lop0;->c:Lgc8;

    .line 118
    iget-object v0, p1, Lop0;->d:[Lmp0;

    iput-object v0, p0, Lop0;->d:[Lmp0;

    .line 119
    iget-object v0, p1, Lop0;->e:[Lmp0;

    iput-object v0, p0, Lop0;->e:[Lmp0;

    .line 120
    iget-object v0, p1, Lop0;->k:Lod;

    iput-object v0, p0, Lop0;->k:Lod;

    .line 121
    iput-object p2, p0, Lop0;->n:Llr5;

    .line 122
    iput-object p3, p0, Lop0;->f:Ljava/lang/Object;

    .line 123
    iget-object p1, p1, Lop0;->p:Lak4;

    iput-object p1, p0, Lop0;->p:Lak4;

    return-void
.end method

.method public constructor <init>(Lop0;[Lmp0;[Lmp0;)V
    .locals 1

    .line 108
    iget-object v0, p1, Ltn7;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ltn7;-><init>(Ljava/lang/Class;)V

    .line 109
    iget-object v0, p1, Lop0;->c:Lgc8;

    iput-object v0, p0, Lop0;->c:Lgc8;

    .line 110
    iput-object p2, p0, Lop0;->d:[Lmp0;

    .line 111
    iput-object p3, p0, Lop0;->e:[Lmp0;

    .line 112
    iget-object p2, p1, Lop0;->k:Lod;

    iput-object p2, p0, Lop0;->k:Lod;

    .line 113
    iget-object p2, p1, Lop0;->n:Llr5;

    iput-object p2, p0, Lop0;->n:Llr5;

    .line 114
    iget-object p2, p1, Lop0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lop0;->f:Ljava/lang/Object;

    .line 115
    iget-object p1, p1, Lop0;->p:Lak4;

    iput-object p1, p0, Lop0;->p:Lak4;

    return-void
.end method

.method public static final s([Lmp0;Lfk5;)[Lmp0;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    sget-object v0, Lfk5;->a:Lek5;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    array-length v0, p0

    .line 14
    new-array v1, v0, [Lmp0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_2

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lmp0;->i(Lfk5;)Lmp0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-object v1

    .line 33
    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public abstract A([Lmp0;[Lmp0;)Lop0;
.end method

.method public final a(Lc87;Lkp0;)Lem4;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v2, v1, Lc87;->a:Lv77;

    .line 8
    .line 9
    invoke-virtual {v2}, Ls65;->d()Las5;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v8, :cond_0

    .line 15
    .line 16
    invoke-interface {v8}, Lkp0;->a()Lod;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v5, v4

    .line 22
    :goto_0
    iget-object v6, v0, Ltn7;->a:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v1, v8, v6}, Ltn7;->k(Lc87;Lkp0;Ljava/lang/Class;)Lbk4;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    iget-object v9, v0, Lop0;->p:Lak4;

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    const/4 v11, 0x0

    .line 32
    if-eqz v7, :cond_7

    .line 33
    .line 34
    iget-object v12, v7, Lbk4;->b:Lak4;

    .line 35
    .line 36
    sget-object v13, Lak4;->p:Lak4;

    .line 37
    .line 38
    if-eq v12, v13, :cond_7

    .line 39
    .line 40
    if-eq v12, v13, :cond_8

    .line 41
    .line 42
    if-eq v12, v9, :cond_8

    .line 43
    .line 44
    iget-object v13, v0, Lop0;->c:Lgc8;

    .line 45
    .line 46
    invoke-virtual {v13}, Lgc8;->y0()Z

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    if-eqz v14, :cond_3

    .line 51
    .line 52
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    const/4 v15, 0x2

    .line 57
    if-eq v14, v15, :cond_1

    .line 58
    .line 59
    const/4 v15, 0x4

    .line 60
    if-eq v14, v15, :cond_1

    .line 61
    .line 62
    const/4 v15, 0x5

    .line 63
    if-eq v14, v15, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, v2, Ls65;->b:Len0;

    .line 67
    .line 68
    iget-object v0, v0, Len0;->b:Ljb9;

    .line 69
    .line 70
    check-cast v0, Lxo0;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v13}, Lxo0;->p0(Ls65;Lgc8;)Lwo0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    invoke-static {v2, v13, v2}, Lxo0;->q0(Ls65;Lgc8;Ls65;)Lhd;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v2, v13, v0}, Lwo0;->d(Ls65;Lgc8;Lhd;)Lwo0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_2
    iget-object v3, v13, Lgc8;->f:Ljava/lang/Class;

    .line 90
    .line 91
    invoke-static {v3, v2, v0, v7}, Lox2;->q(Ljava/lang/Class;Lv77;Lwo0;Lbk4;)Lox2;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0, v8}, Lc87;->v(Lem4;Lkp0;)Lem4;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :cond_3
    sget-object v2, Lak4;->q:Lak4;

    .line 101
    .line 102
    if-ne v12, v2, :cond_8

    .line 103
    .line 104
    instance-of v2, v13, Lq65;

    .line 105
    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    const-class v2, Ljava/util/Map;

    .line 109
    .line 110
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const-class v2, Ljava/util/Map$Entry;

    .line 118
    .line 119
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_8

    .line 124
    .line 125
    invoke-virtual {v13, v2}, Lgc8;->m0(Ljava/lang/Class;)Lgc8;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, v2, Lgc8;->x:Ljc8;

    .line 130
    .line 131
    invoke-virtual {v3, v11}, Ljc8;->d(I)Lgc8;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-nez v3, :cond_5

    .line 136
    .line 137
    sget-object v3, Llc8;->K:Lyg7;

    .line 138
    .line 139
    :cond_5
    move-object v4, v3

    .line 140
    iget-object v2, v2, Lgc8;->x:Ljc8;

    .line 141
    .line 142
    invoke-virtual {v2, v10}, Ljc8;->d(I)Lgc8;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-nez v2, :cond_6

    .line 147
    .line 148
    sget-object v2, Llc8;->K:Lyg7;

    .line 149
    .line 150
    :cond_6
    move-object v5, v2

    .line 151
    new-instance v2, Li65;

    .line 152
    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    iget-object v3, v0, Lop0;->c:Lgc8;

    .line 156
    .line 157
    invoke-direct/range {v2 .. v8}, Li65;-><init>(Lgc8;Lgc8;Lgc8;ZLsc8;Lkp0;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2, v8}, Lc87;->v(Lem4;Lkp0;)Lem4;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :cond_7
    move-object v12, v4

    .line 166
    :cond_8
    :goto_1
    iget-object v2, v0, Lop0;->d:[Lmp0;

    .line 167
    .line 168
    iget-object v7, v0, Lop0;->n:Llr5;

    .line 169
    .line 170
    if-eqz v5, :cond_13

    .line 171
    .line 172
    invoke-virtual {v3, v5}, Las5;->x(Ljb9;)Lmk4;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    iget-boolean v14, v13, Lmk4;->c:Z

    .line 177
    .line 178
    if-eqz v14, :cond_9

    .line 179
    .line 180
    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_9
    iget-object v13, v13, Lmk4;->a:Ljava/util/Set;

    .line 184
    .line 185
    :goto_2
    invoke-virtual {v3, v5}, Las5;->A(Ljb9;)Lsk4;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    iget-object v14, v14, Lsk4;->a:Ljava/util/Set;

    .line 190
    .line 191
    invoke-virtual {v3, v5}, Las5;->q(Ljb9;)Lkr5;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    if-nez v15, :cond_c

    .line 196
    .line 197
    if-eqz v7, :cond_b

    .line 198
    .line 199
    invoke-virtual {v3, v5, v4}, Las5;->r(Ljb9;Lkr5;)Lkr5;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    if-eqz v6, :cond_b

    .line 204
    .line 205
    iget-boolean v6, v6, Lkr5;->e:Z

    .line 206
    .line 207
    iget-boolean v15, v7, Llr5;->e:Z

    .line 208
    .line 209
    if-ne v6, v15, :cond_a

    .line 210
    .line 211
    move-object v15, v7

    .line 212
    move/from16 v22, v11

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_a
    new-instance v15, Llr5;

    .line 216
    .line 217
    iget-object v10, v7, Llr5;->a:Lgc8;

    .line 218
    .line 219
    move/from16 v22, v11

    .line 220
    .line 221
    iget-object v11, v7, Llr5;->b:Lz77;

    .line 222
    .line 223
    iget-object v4, v7, Llr5;->c:Lv86;

    .line 224
    .line 225
    move-object/from16 v18, v4

    .line 226
    .line 227
    iget-object v4, v7, Llr5;->d:Lem4;

    .line 228
    .line 229
    move-object/from16 v19, v4

    .line 230
    .line 231
    move/from16 v20, v6

    .line 232
    .line 233
    move-object/from16 v16, v10

    .line 234
    .line 235
    move-object/from16 v17, v11

    .line 236
    .line 237
    invoke-direct/range {v15 .. v20}, Llr5;-><init>(Lgc8;Lz77;Lv86;Lem4;Z)V

    .line 238
    .line 239
    .line 240
    :goto_3
    move-object/from16 v17, v9

    .line 241
    .line 242
    move-object/from16 v18, v12

    .line 243
    .line 244
    move/from16 v10, v22

    .line 245
    .line 246
    const/16 v23, 0x0

    .line 247
    .line 248
    goto/16 :goto_7

    .line 249
    .line 250
    :cond_b
    move/from16 v22, v11

    .line 251
    .line 252
    move-object v15, v7

    .line 253
    goto :goto_3

    .line 254
    :cond_c
    move/from16 v22, v11

    .line 255
    .line 256
    invoke-virtual {v3, v5, v15}, Las5;->r(Ljb9;Lkr5;)Lkr5;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    iget-object v10, v4, Lkr5;->b:Ljava/lang/Class;

    .line 261
    .line 262
    iget-boolean v11, v4, Lkr5;->e:Z

    .line 263
    .line 264
    iget-object v15, v4, Lkr5;->a:Lz86;

    .line 265
    .line 266
    if-nez v10, :cond_d

    .line 267
    .line 268
    move-object/from16 v16, v6

    .line 269
    .line 270
    move-object/from16 v17, v9

    .line 271
    .line 272
    move-object/from16 v18, v12

    .line 273
    .line 274
    const/4 v6, 0x0

    .line 275
    goto :goto_4

    .line 276
    :cond_d
    move-object/from16 v16, v6

    .line 277
    .line 278
    invoke-virtual {v1}, Lc87;->s()Llc8;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    move-object/from16 v17, v9

    .line 283
    .line 284
    sget-object v9, Llc8;->d:Ljc8;

    .line 285
    .line 286
    move-object/from16 v18, v12

    .line 287
    .line 288
    const/4 v12, 0x0

    .line 289
    invoke-virtual {v6, v12, v10, v9}, Llc8;->b(Lvq;Ljava/lang/reflect/Type;Ljc8;)Lgc8;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    :goto_4
    invoke-virtual {v1}, Lc87;->s()Llc8;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    const-class v9, Lir5;

    .line 301
    .line 302
    invoke-static {v6, v9}, Llc8;->h(Lgc8;Ljava/lang/Class;)[Lgc8;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    aget-object v6, v6, v22

    .line 307
    .line 308
    const-class v9, Lv86;

    .line 309
    .line 310
    if-ne v10, v9, :cond_11

    .line 311
    .line 312
    iget-object v6, v15, Lz86;->a:Ljava/lang/String;

    .line 313
    .line 314
    array-length v9, v2

    .line 315
    move/from16 v10, v22

    .line 316
    .line 317
    :goto_5
    if-eq v10, v9, :cond_f

    .line 318
    .line 319
    aget-object v12, v2, v10

    .line 320
    .line 321
    iget-object v15, v12, Lmp0;->b:Lz77;

    .line 322
    .line 323
    iget-object v15, v15, Lz77;->a:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v15

    .line 329
    if-eqz v15, :cond_e

    .line 330
    .line 331
    iget-object v6, v12, Lmp0;->d:Lgc8;

    .line 332
    .line 333
    new-instance v9, Lv86;

    .line 334
    .line 335
    iget-object v4, v4, Lkr5;->d:Ljava/lang/Class;

    .line 336
    .line 337
    invoke-direct {v9, v12, v4}, Lv86;-><init>(Lmp0;Ljava/lang/Class;)V

    .line 338
    .line 339
    .line 340
    const/4 v12, 0x0

    .line 341
    invoke-static {v6, v12, v9, v11}, Llr5;->a(Lgc8;Lz86;Lv86;Z)Llr5;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    move-object/from16 v23, v12

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_f
    invoke-static/range {v16 .. v16}, Lu81;->t(Ljava/lang/Class;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-nez v6, :cond_10

    .line 356
    .line 357
    const-string v2, "[null]"

    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_10
    invoke-static {v6}, Lu81;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v4, "Invalid Object Id definition for "

    .line 367
    .line 368
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v0, ": cannot find property with name "

    .line 375
    .line 376
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v1, v0}, Lc87;->B(Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    const/16 v23, 0x0

    .line 390
    .line 391
    throw v23

    .line 392
    :cond_11
    const/16 v23, 0x0

    .line 393
    .line 394
    invoke-virtual {v1, v4}, Lc87;->z(Lkr5;)Lv86;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-static {v6, v15, v4, v11}, Llr5;->a(Lgc8;Lz86;Lv86;Z)Llr5;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    move/from16 v10, v22

    .line 403
    .line 404
    :goto_7
    invoke-virtual {v3, v5}, Las5;->g(Ljb9;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v12

    .line 408
    if-eqz v12, :cond_12

    .line 409
    .line 410
    iget-object v3, v0, Lop0;->f:Ljava/lang/Object;

    .line 411
    .line 412
    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-nez v3, :cond_12

    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_12
    move-object/from16 v12, v23

    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_13
    move-object/from16 v23, v4

    .line 423
    .line 424
    move-object/from16 v17, v9

    .line 425
    .line 426
    move/from16 v22, v11

    .line 427
    .line 428
    move-object/from16 v18, v12

    .line 429
    .line 430
    move-object v15, v7

    .line 431
    move/from16 v10, v22

    .line 432
    .line 433
    move-object/from16 v12, v23

    .line 434
    .line 435
    move-object v13, v12

    .line 436
    move-object v14, v13

    .line 437
    :goto_8
    if-lez v10, :cond_15

    .line 438
    .line 439
    array-length v3, v2

    .line 440
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, [Lmp0;

    .line 445
    .line 446
    aget-object v3, v2, v10

    .line 447
    .line 448
    move/from16 v5, v22

    .line 449
    .line 450
    const/4 v4, 0x1

    .line 451
    invoke-static {v2, v5, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    .line 453
    .line 454
    aput-object v3, v2, v5

    .line 455
    .line 456
    iget-object v3, v0, Lop0;->e:[Lmp0;

    .line 457
    .line 458
    if-nez v3, :cond_14

    .line 459
    .line 460
    move-object/from16 v4, v23

    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_14
    array-length v6, v3

    .line 464
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v3, [Lmp0;

    .line 469
    .line 470
    aget-object v6, v3, v10

    .line 471
    .line 472
    invoke-static {v3, v5, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    .line 474
    .line 475
    aput-object v6, v3, v5

    .line 476
    .line 477
    move-object v4, v3

    .line 478
    :goto_9
    invoke-virtual {v0, v2, v4}, Lop0;->A([Lmp0;[Lmp0;)Lop0;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    :cond_15
    if-eqz v15, :cond_16

    .line 483
    .line 484
    iget-object v2, v15, Llr5;->a:Lgc8;

    .line 485
    .line 486
    invoke-virtual {v1, v2, v8}, Lc87;->p(Lgc8;Lkp0;)Lem4;

    .line 487
    .line 488
    .line 489
    move-result-object v23

    .line 490
    new-instance v19, Llr5;

    .line 491
    .line 492
    iget-object v1, v15, Llr5;->a:Lgc8;

    .line 493
    .line 494
    iget-object v2, v15, Llr5;->b:Lz77;

    .line 495
    .line 496
    iget-object v3, v15, Llr5;->c:Lv86;

    .line 497
    .line 498
    iget-boolean v4, v15, Llr5;->e:Z

    .line 499
    .line 500
    move-object/from16 v20, v1

    .line 501
    .line 502
    move-object/from16 v21, v2

    .line 503
    .line 504
    move-object/from16 v22, v3

    .line 505
    .line 506
    move/from16 v24, v4

    .line 507
    .line 508
    invoke-direct/range {v19 .. v24}, Llr5;-><init>(Lgc8;Lz77;Lv86;Lem4;Z)V

    .line 509
    .line 510
    .line 511
    move-object/from16 v1, v19

    .line 512
    .line 513
    if-eq v1, v7, :cond_16

    .line 514
    .line 515
    invoke-virtual {v0, v1}, Lop0;->z(Llr5;)Lop0;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    :cond_16
    if-eqz v13, :cond_17

    .line 520
    .line 521
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_18

    .line 526
    .line 527
    :cond_17
    if-eqz v14, :cond_19

    .line 528
    .line 529
    :cond_18
    invoke-virtual {v0, v13, v14}, Lop0;->x(Ljava/util/Set;Ljava/util/Set;)Lop0;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    :cond_19
    if-eqz v12, :cond_1a

    .line 534
    .line 535
    invoke-virtual {v0, v12}, Lop0;->y(Ljava/lang/Object;)Lop0;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    :cond_1a
    if-nez v18, :cond_1b

    .line 540
    .line 541
    move-object/from16 v9, v17

    .line 542
    .line 543
    goto :goto_a

    .line 544
    :cond_1b
    move-object/from16 v9, v18

    .line 545
    .line 546
    :goto_a
    sget-object v1, Lak4;->k:Lak4;

    .line 547
    .line 548
    if-ne v9, v1, :cond_1c

    .line 549
    .line 550
    invoke-virtual {v0}, Lop0;->r()Lop0;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    :cond_1c
    return-object v0
.end method

.method public f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lop0;->o(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Lmm4;->d:Lmm4;

    .line 10
    .line 11
    invoke-virtual {p0, p4, p1, v0}, Lop0;->q(Lrc8;Ljava/lang/Object;Lmm4;)Lnw8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p4, p2, v0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lop0;->f:Ljava/lang/Object;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lop0;->v(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p2, v0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lop0;->w(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final o(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    iget-object v1, v0, Llr5;->c:Lv86;

    .line 4
    .line 5
    iget-boolean v2, v0, Llr5;->e:Z

    .line 6
    .line 7
    iget-object v3, v0, Llr5;->d:Lem4;

    .line 8
    .line 9
    invoke-virtual {p3, p1, v1}, Lc87;->l(Ljava/lang/Object;Lv86;)Lmw8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v4, v1, Lmw8;->b:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-boolean v4, v1, Lmw8;->c:Z

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, v1, Lmw8;->b:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v3, p0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1, p1}, Lmw8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3, v4, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    sget-object v2, Lmm4;->d:Lmm4;

    .line 43
    .line 44
    invoke-virtual {p0, p4, p1, v2}, Lop0;->q(Lrc8;Ljava/lang/Object;Lmm4;)Lnw8;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p4, p2, v2}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    iput-boolean v4, v1, Lmw8;->c:Z

    .line 56
    .line 57
    iget-object v0, v0, Llr5;->b:Lz77;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lfk4;->r(Lz77;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v1, Lmw8;->b:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v3, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lop0;->f:Ljava/lang/Object;

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lop0;->v(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4, p2, v2}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lop0;->w(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    throw p0
.end method

.method public final p(Ljava/lang/Object;Lfk4;Lc87;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lop0;->n:Llr5;

    .line 2
    .line 3
    iget-object v1, v0, Llr5;->c:Lv86;

    .line 4
    .line 5
    iget-boolean v2, v0, Llr5;->e:Z

    .line 6
    .line 7
    iget-object v3, v0, Llr5;->d:Lem4;

    .line 8
    .line 9
    invoke-virtual {p3, p1, v1}, Lc87;->l(Ljava/lang/Object;Lv86;)Lmw8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v4, v1, Lmw8;->b:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-boolean v5, v1, Lmw8;->c:Z

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v3, v4, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v1, p1}, Lmw8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v3, v4, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    if-eqz p4, :cond_3

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, v1, Lmw8;->c:Z

    .line 44
    .line 45
    iget-object v0, v0, Llr5;->b:Lz77;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lfk4;->r(Lz77;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v1, Lmw8;->b:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v3, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lop0;->f:Ljava/lang/Object;

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lop0;->v(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 62
    .line 63
    .line 64
    if-eqz p4, :cond_5

    .line 65
    .line 66
    invoke-virtual {p2}, Lfk4;->q()V

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void

    .line 70
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lop0;->w(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public final q(Lrc8;Ljava/lang/Object;Lmm4;)Lnw8;
    .locals 0

    .line 1
    iget-object p0, p0, Lop0;->k:Lod;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lod;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1, p2, p3}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p0, p1, Lnw8;->c:Ljava/lang/Object;

    .line 23
    .line 24
    return-object p1
.end method

.method public abstract r()Lop0;
.end method

.method public final t(Lc87;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lop0;->e:[Lmp0;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v2, v1

    .line 9
    :goto_0
    iget-object p0, p0, Lop0;->d:[Lmp0;

    .line 10
    .line 11
    array-length v3, p0

    .line 12
    move v4, v0

    .line 13
    :goto_1
    if-ge v4, v3, :cond_b

    .line 14
    .line 15
    aget-object v5, p0, v4

    .line 16
    .line 17
    iget-boolean v6, v5, Lmp0;->y:Z

    .line 18
    .line 19
    iget-object v7, v5, Lmp0;->k:Lod;

    .line 20
    .line 21
    if-nez v6, :cond_2

    .line 22
    .line 23
    iget-object v6, v5, Lmp0;->r:Lem4;

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    iget-object v6, p1, Lc87;->f:Lqp5;

    .line 29
    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Lmp0;->f(Lem4;)V

    .line 33
    .line 34
    .line 35
    if-ge v4, v2, :cond_2

    .line 36
    .line 37
    aget-object v8, v1, v4

    .line 38
    .line 39
    if-eqz v8, :cond_2

    .line 40
    .line 41
    invoke-virtual {v8, v6}, Lmp0;->f(Lem4;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_2
    iget-object v6, v5, Lmp0;->q:Lem4;

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_3
    iget-object v6, p1, Lc87;->a:Lv77;

    .line 50
    .line 51
    invoke-virtual {v6}, Ls65;->d()Las5;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eqz v7, :cond_5

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Las5;->G(Ljb9;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-nez v6, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {p1, v6}, Lc87;->f(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lc87;->s()Llc8;

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    throw p0

    .line 72
    :cond_5
    :goto_3
    iget-object v6, v5, Lmp0;->e:Lgc8;

    .line 73
    .line 74
    if-nez v6, :cond_7

    .line 75
    .line 76
    iget-object v6, v5, Lmp0;->d:Lgc8;

    .line 77
    .line 78
    iget-object v7, v6, Lgc8;->f:Ljava/lang/Class;

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_7

    .line 89
    .line 90
    invoke-virtual {v6}, Lgc8;->x0()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_6

    .line 95
    .line 96
    iget-object v7, v6, Lgc8;->x:Ljc8;

    .line 97
    .line 98
    iget-object v7, v7, Ljc8;->b:[Lgc8;

    .line 99
    .line 100
    array-length v7, v7

    .line 101
    if-lez v7, :cond_a

    .line 102
    .line 103
    :cond_6
    iput-object v6, v5, Lmp0;->f:Lgc8;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    invoke-virtual {p1, v6, v5}, Lc87;->p(Lgc8;Lkp0;)Lem4;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v6}, Lgc8;->x0()Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_8

    .line 115
    .line 116
    invoke-virtual {v6}, Lgc8;->o0()Lgc8;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-object v6, v6, Lgc8;->p:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v6, Lrc8;

    .line 123
    .line 124
    if-eqz v6, :cond_8

    .line 125
    .line 126
    instance-of v8, v7, Lfu1;

    .line 127
    .line 128
    if-eqz v8, :cond_8

    .line 129
    .line 130
    check-cast v7, Lfu1;

    .line 131
    .line 132
    invoke-virtual {v7, v6}, Lfu1;->o(Lrc8;)Lfu1;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    :cond_8
    if-ge v4, v2, :cond_9

    .line 137
    .line 138
    aget-object v6, v1, v4

    .line 139
    .line 140
    if-eqz v6, :cond_9

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Lmp0;->g(Lem4;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    invoke-virtual {v5, v7}, Lmp0;->g(Lem4;)V

    .line 147
    .line 148
    .line 149
    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_b
    :goto_5
    array-length v1, p0

    .line 154
    if-ge v0, v1, :cond_d

    .line 155
    .line 156
    aget-object v1, p0, v0

    .line 157
    .line 158
    instance-of v2, v1, Lhe;

    .line 159
    .line 160
    if-eqz v2, :cond_c

    .line 161
    .line 162
    check-cast v1, Lhe;

    .line 163
    .line 164
    iget-object v2, v1, Lhe;->L:Lem4;

    .line 165
    .line 166
    instance-of v3, v2, Liv1;

    .line 167
    .line 168
    if-eqz v3, :cond_c

    .line 169
    .line 170
    iget-object v3, v1, Lhe;->J:Ljp0;

    .line 171
    .line 172
    invoke-virtual {p1, v2, v3}, Lc87;->v(Lem4;Lkp0;)Lem4;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, v1, Lhe;->L:Lem4;

    .line 177
    .line 178
    instance-of v3, v2, Lp65;

    .line 179
    .line 180
    if-eqz v3, :cond_c

    .line 181
    .line 182
    check-cast v2, Lp65;

    .line 183
    .line 184
    iput-object v2, v1, Lhe;->M:Lp65;

    .line 185
    .line 186
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_d
    return-void
.end method

.method public final v(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 4

    .line 1
    const-string v0, "[anySetter]"

    .line 2
    .line 3
    iget-object v1, p0, Lop0;->e:[Lmp0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lop0;->d:[Lmp0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    array-length v2, p0

    .line 14
    :goto_0
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    aget-object v3, p0, v1

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3, p1, p2, p3}, Lmp0;->k(Ljava/lang/Object;Lfk4;Lc87;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p3

    .line 25
    goto :goto_2

    .line 26
    :catch_1
    move-exception p2

    .line 27
    goto :goto_4

    .line 28
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void

    .line 32
    :goto_2
    new-instance v2, Lyk4;

    .line 33
    .line 34
    const-string v3, "Infinite recursion (StackOverflowError)"

    .line 35
    .line 36
    invoke-direct {v2, p2, v3, p3}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    array-length p2, p0

    .line 40
    if-ne v1, p2, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    aget-object p0, p0, v1

    .line 44
    .line 45
    iget-object p0, p0, Lmp0;->b:Lz77;

    .line 46
    .line 47
    iget-object v0, p0, Lz77;->a:Ljava/lang/String;

    .line 48
    .line 49
    :goto_3
    new-instance p0, Lxk4;

    .line 50
    .line 51
    invoke-direct {p0, p1, v0}, Lxk4;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v2, Lyk4;->a:Ljava/util/LinkedList;

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    new-instance p1, Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, v2, Lyk4;->a:Ljava/util/LinkedList;

    .line 64
    .line 65
    :cond_4
    iget-object p1, v2, Lyk4;->a:Ljava/util/LinkedList;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/16 p2, 0x3e8

    .line 72
    .line 73
    if-ge p1, p2, :cond_5

    .line 74
    .line 75
    iget-object p1, v2, Lyk4;->a:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    throw v2

    .line 81
    :goto_4
    array-length v2, p0

    .line 82
    if-ne v1, v2, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    aget-object p0, p0, v1

    .line 86
    .line 87
    iget-object p0, p0, Lmp0;->b:Lz77;

    .line 88
    .line 89
    iget-object v0, p0, Lz77;->a:Ljava/lang/String;

    .line 90
    .line 91
    :goto_5
    invoke-static {p3, p2, p1, v0}, Ltn7;->n(Lc87;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    throw p0
.end method

.method public final w(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lop0;->e:[Lmp0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lop0;->f:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0, p3, p1}, Ltn7;->l(Lc87;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public abstract x(Ljava/util/Set;Ljava/util/Set;)Lop0;
.end method

.method public abstract y(Ljava/lang/Object;)Lop0;
.end method

.method public abstract z(Llr5;)Lop0;
.end method
