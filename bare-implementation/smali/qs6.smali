.class public final Lqs6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final g:I

.field public final h:Ljava/util/Set;

.field public final i:Lfi7;

.field public final j:Ljava/util/Set;

.field public final k:I


# direct methods
.method public constructor <init>(Lus6;JJLjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Lfi7;)V
    .locals 8

    .line 1
    const/16 v1, 0x39

    .line 2
    .line 3
    sget-object v3, Lit6;->k:Lit6;

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
    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lqs6;->k:I

    .line 14
    .line 15
    iput-object p6, p0, Lqs6;->j:Ljava/util/Set;

    .line 16
    .line 17
    if-nez p7, :cond_0

    .line 18
    .line 19
    const-class p1, Lw63;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 22
    .line 23
    .line 24
    move-result-object p7

    .line 25
    :cond_0
    iput-object p7, p0, Lqs6;->e:Ljava/util/Set;

    .line 26
    .line 27
    if-nez p8, :cond_1

    .line 28
    .line 29
    const-class p1, Lju6;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object/from16 p1, p8

    .line 37
    .line 38
    :goto_0
    iput-object p1, p0, Lqs6;->f:Ljava/util/Set;

    .line 39
    .line 40
    if-eqz p9, :cond_2

    .line 41
    .line 42
    move/from16 p1, p9

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 p1, 0x4

    .line 46
    :goto_1
    iput p1, p0, Lqs6;->g:I

    .line 47
    .line 48
    if-nez p10, :cond_3

    .line 49
    .line 50
    const-class p1, Lps6;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object/from16 p1, p10

    .line 58
    .line 59
    :goto_2
    iput-object p1, p0, Lqs6;->h:Ljava/util/Set;

    .line 60
    .line 61
    move-object/from16 p1, p11

    .line 62
    .line 63
    iput-object p1, p0, Lqs6;->i:Lfi7;

    .line 64
    .line 65
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
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v3}, Low0;->f(B)Low0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3}, Low0;->f(B)Low0;

    .line 15
    .line 16
    .line 17
    const-wide/16 v6, 0x2

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const-wide/16 v9, 0x3

    .line 21
    .line 22
    const-wide/16 v11, 0x0

    .line 23
    .line 24
    iget v13, v0, Lqs6;->k:I

    .line 25
    .line 26
    const/4 v14, 0x1

    .line 27
    if-eq v13, v14, :cond_3

    .line 28
    .line 29
    const/4 v15, 0x2

    .line 30
    if-eq v13, v15, :cond_2

    .line 31
    .line 32
    const/4 v15, 0x3

    .line 33
    if-eq v13, v15, :cond_1

    .line 34
    .line 35
    const/4 v15, 0x4

    .line 36
    if-ne v13, v15, :cond_0

    .line 37
    .line 38
    move-wide v4, v9

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    throw v8

    .line 41
    :cond_1
    move-wide v4, v6

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-wide/16 v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move-wide v4, v11

    .line 47
    :goto_0
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 48
    .line 49
    .line 50
    const/16 v4, 0x8

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Lzu6;->u(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Lzu6;->u(I)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v0, Lqs6;->j:Ljava/util/Set;

    .line 59
    .line 60
    invoke-static {v4}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Lqs6;->e:Ljava/util/Set;

    .line 68
    .line 69
    invoke-static {v4}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 74
    .line 75
    .line 76
    iget-object v4, v0, Lqs6;->f:Ljava/util/Set;

    .line 77
    .line 78
    invoke-static {v4}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 83
    .line 84
    .line 85
    iget v4, v0, Lqs6;->g:I

    .line 86
    .line 87
    packed-switch v4, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    throw v8

    .line 91
    :pswitch_0
    const-wide/16 v4, 0x5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_1
    const-wide/16 v4, 0x4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_2
    move-wide v4, v9

    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    move-wide v4, v6

    .line 100
    goto :goto_1

    .line 101
    :pswitch_4
    const-wide/16 v4, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :pswitch_5
    move-wide v4, v11

    .line 105
    :goto_1
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 106
    .line 107
    .line 108
    iget-object v4, v0, Lqs6;->h:Ljava/util/Set;

    .line 109
    .line 110
    invoke-static {v4}, Lsz8;->j0(Ljava/util/Collection;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    invoke-virtual {v1, v4, v5}, Low0;->l(J)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x3f

    .line 118
    .line 119
    iget-object v0, v0, Lqs6;->i:Lfi7;

    .line 120
    .line 121
    iget-object v0, v0, Lfi7;->c:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    sget-object v3, Lh51;->c:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v1, v2}, Low0;->k(I)V

    .line 143
    .line 144
    .line 145
    array-length v2, v0

    .line 146
    invoke-virtual {v1, v2}, Low0;->k(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    :goto_2
    invoke-virtual {v1, v2}, Low0;->k(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3}, Low0;->k(I)V

    .line 154
    .line 155
    .line 156
    new-array v0, v14, [B

    .line 157
    .line 158
    :goto_3
    invoke-virtual {v1, v11, v12}, Low0;->l(J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v11, v12}, Low0;->l(J)V

    .line 162
    .line 163
    .line 164
    array-length v2, v0

    .line 165
    invoke-virtual {v1, v0, v2}, Low0;->i([BI)Low0;

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
