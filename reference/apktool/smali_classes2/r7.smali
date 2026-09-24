.class public final Lr7;
.super La55;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lex6;

.field public final d:Lex6;

.field public final e:Lzc2;

.field public final f:Lz28;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, La55;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr7;->c:Lex6;

    .line 10
    .line 11
    new-instance v1, Lex6;

    .line 12
    .line 13
    invoke-direct {v1}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lr7;->d:Lex6;

    .line 17
    .line 18
    sget-object v1, Lre3;->a:Lzc2;

    .line 19
    .line 20
    const-string v2, "contributorDetails"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lre3;->j()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x6

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lr7;->e:Lzc2;

    .line 41
    .line 42
    new-instance v2, Lz28;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v2, p0, v3}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lr7;->f:Lz28;

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lr7;->c(Z)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Ld45;->b:Ld45;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lzc2;->c(Laj8;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    const-string p0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 72
    .line 73
    invoke-static {v4, p0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-super {p0}, La55;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lre3;->a:Lzc2;

    .line 5
    .line 6
    iget-object v0, p0, Lr7;->e:Lzc2;

    .line 7
    .line 8
    iget-object p0, p0, Lr7;->f:Lz28;

    .line 9
    .line 10
    invoke-static {v0, p0}, Lre3;->n(Lzc2;Laj8;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(Z)V
    .locals 12

    .line 1
    new-instance v0, Lq7;

    .line 2
    .line 3
    const v1, 0x7f1304f2

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0801b9

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v3, v1, v4, v2}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lq7;

    .line 23
    .line 24
    const v2, 0x7f13044b

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const v3, 0x7f080122

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/16 v5, 0x9

    .line 39
    .line 40
    invoke-direct {v1, v5, v2, v4, v3}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v1, v4

    .line 47
    :goto_0
    new-instance v2, Lq7;

    .line 48
    .line 49
    const p1, 0x7f130553

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v3, 0x7f0800ee

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v5, 0x2

    .line 64
    invoke-direct {v2, v5, p1, v4, v3}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lq7;

    .line 68
    .line 69
    const p1, 0x7f1302e6

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const v5, 0x7f080167

    .line 77
    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v6, 0x3

    .line 84
    invoke-direct {v3, v6, p1, v4, v5}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    .line 86
    .line 87
    move-object p1, v4

    .line 88
    new-instance v4, Lq7;

    .line 89
    .line 90
    const v5, 0x7f1302a1

    .line 91
    .line 92
    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const v6, 0x7f080156

    .line 98
    .line 99
    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const/4 v7, 0x7

    .line 105
    invoke-direct {v4, v7, v5, p1, v6}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Lq7;

    .line 109
    .line 110
    const v6, 0x7f1301bb

    .line 111
    .line 112
    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const v7, 0x7f08011f

    .line 118
    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    const/4 v8, 0x6

    .line 125
    invoke-direct {v5, v8, v6, p1, v7}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Lq7;

    .line 129
    .line 130
    const v7, 0x7f130442

    .line 131
    .line 132
    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const v8, 0x7f0801a6

    .line 138
    .line 139
    .line 140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    const/4 v9, 0x4

    .line 145
    invoke-direct {v6, v9, v7, p1, v8}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    .line 147
    .line 148
    new-instance v7, Lq7;

    .line 149
    .line 150
    const v8, 0x7f1304f8

    .line 151
    .line 152
    .line 153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const v9, 0x7f0801e5

    .line 158
    .line 159
    .line 160
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    const/16 v10, 0x8

    .line 165
    .line 166
    invoke-direct {v7, v10, v8, p1, v9}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    .line 168
    .line 169
    new-instance v8, Lq7;

    .line 170
    .line 171
    const v9, 0x7f13001b

    .line 172
    .line 173
    .line 174
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    const v10, 0x7f08015b

    .line 179
    .line 180
    .line 181
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    const/4 v11, 0x5

    .line 186
    invoke-direct {v8, v11, v9, p1, v10}, Lq7;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    .line 188
    .line 189
    filled-new-array/range {v0 .. v8}, [Lq7;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object p0, p0, Lr7;->d:Lex6;

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method
