.class public final Lau6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lnr6;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lus6;JJLnr6;III)V
    .locals 8

    .line 1
    const/16 v1, 0x29

    .line 2
    .line 3
    sget-object v3, Lit6;->x:Lit6;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v4, p2

    .line 8
    move-wide v6, p4

    .line 9
    invoke-direct/range {v0 .. v7}, Lrt6;-><init>(ILus6;Lit6;JJ)V

    .line 10
    .line 11
    .line 12
    iput p7, p0, Lau6;->f:I

    .line 13
    .line 14
    move/from16 p1, p8

    .line 15
    .line 16
    iput p1, p0, Lau6;->g:I

    .line 17
    .line 18
    move/from16 p1, p9

    .line 19
    .line 20
    iput p1, p0, Lau6;->h:I

    .line 21
    .line 22
    iput-object p6, p0, Lau6;->e:Lnr6;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final h(Lzu6;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lrt6;->c:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Low0;->k(I)V

    .line 8
    .line 9
    .line 10
    const/4 v10, 0x4

    .line 11
    const/4 v11, 0x3

    .line 12
    const/4 v12, 0x2

    .line 13
    const/4 v13, 0x0

    .line 14
    iget v14, v0, Lau6;->f:I

    .line 15
    .line 16
    const/4 v15, 0x1

    .line 17
    if-eq v14, v15, :cond_3

    .line 18
    .line 19
    if-eq v14, v12, :cond_2

    .line 20
    .line 21
    if-eq v14, v11, :cond_1

    .line 22
    .line 23
    if-ne v14, v10, :cond_0

    .line 24
    .line 25
    const-wide/16 v2, 0x4

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    throw v13

    .line 29
    :cond_1
    const-wide/16 v2, 0x3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-wide/16 v2, 0x2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const-wide/16 v2, 0x1

    .line 36
    .line 37
    :goto_0
    long-to-int v2, v2

    .line 38
    int-to-byte v2, v2

    .line 39
    invoke-virtual {v1, v2}, Low0;->f(B)Low0;

    .line 40
    .line 41
    .line 42
    invoke-static {v14}, Ldj7;->A(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v3, v0, Lau6;->e:Lnr6;

    .line 47
    .line 48
    const-wide/32 v4, 0x10000

    .line 49
    .line 50
    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    if-eqz v2, :cond_b

    .line 55
    .line 56
    if-eq v2, v15, :cond_a

    .line 57
    .line 58
    if-eq v2, v12, :cond_9

    .line 59
    .line 60
    if-eq v2, v11, :cond_8

    .line 61
    .line 62
    if-eq v14, v15, :cond_7

    .line 63
    .line 64
    if-eq v14, v12, :cond_6

    .line 65
    .line 66
    if-eq v14, v11, :cond_5

    .line 67
    .line 68
    if-eq v14, v10, :cond_4

    .line 69
    .line 70
    const-string v0, "null"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-string v0, "SMB2_0_INFO_QUOTA"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const-string v0, "SMB2_0_INFO_SECURITY"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    const-string v0, "SMB2_0_INFO_FILESYSTEM"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_7
    const-string v0, "SMB2_0_INFO_FILE"

    .line 83
    .line 84
    :goto_1
    const-string v1, "Unknown SMB2QueryInfoType: "

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_8
    invoke-virtual {v1, v8}, Low0;->f(B)Low0;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v8}, Low0;->k(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lzu6;->v()V

    .line 104
    .line 105
    .line 106
    throw v13

    .line 107
    :cond_9
    invoke-virtual {v1, v8}, Low0;->f(B)Low0;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v8}, Low0;->k(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lzu6;->v()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 120
    .line 121
    .line 122
    invoke-static {v13}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 123
    .line 124
    .line 125
    throw v13

    .line 126
    :cond_a
    iget v0, v0, Lau6;->h:I

    .line 127
    .line 128
    packed-switch v0, :pswitch_data_0

    .line 129
    .line 130
    .line 131
    throw v13

    .line 132
    :pswitch_0
    const-wide/16 v9, 0xb

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_1
    const-wide/16 v9, 0xa

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_2
    const-wide/16 v9, 0x9

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_3
    const-wide/16 v9, 0x8

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_4
    const-wide/16 v9, 0x7

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :pswitch_5
    const-wide/16 v9, 0x6

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_6
    const-wide/16 v9, 0x5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :pswitch_7
    const-wide/16 v9, 0x4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_8
    const-wide/16 v9, 0x3

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_9
    const-wide/16 v9, 0x2

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :pswitch_a
    const-wide/16 v9, 0x1

    .line 163
    .line 164
    :goto_2
    long-to-int v0, v9

    .line 165
    int-to-byte v0, v0

    .line 166
    invoke-virtual {v1, v0}, Low0;->f(B)Low0;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v8}, Low0;->k(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lzu6;->v()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v1}, Lnr6;->a(Lzu6;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_b
    iget v0, v0, Lau6;->g:I

    .line 192
    .line 193
    invoke-static {v0}, Lxs1;->d(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v9

    .line 197
    long-to-int v2, v9

    .line 198
    int-to-byte v2, v2

    .line 199
    invoke-virtual {v1, v2}, Low0;->f(B)Low0;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 203
    .line 204
    .line 205
    const/16 v2, 0xf

    .line 206
    .line 207
    if-eq v0, v2, :cond_c

    .line 208
    .line 209
    invoke-virtual {v1, v8}, Low0;->k(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lzu6;->v()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v6, v7}, Low0;->l(J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v1}, Lnr6;->a(Lzu6;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_c
    invoke-virtual {v1, v8}, Low0;->k(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lzu6;->v()V

    .line 232
    .line 233
    .line 234
    throw v13

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
