.class public abstract Lnc8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lp22;

.field public static final b:Ldu9;

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp22;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnc8;->a:Lp22;

    .line 7
    .line 8
    new-instance v0, Ldu9;

    .line 9
    .line 10
    const-string v1, "NO_OWNER"

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v1, v2}, Ldu9;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lnc8;->b:Ldu9;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    fill-array-data v0, :array_0

    .line 23
    .line 24
    .line 25
    sput-object v0, Lnc8;->c:[I

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    fill-array-data v0, :array_1

    .line 32
    .line 33
    .line 34
    sput-object v0, Lnc8;->d:[I

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 4
        -0x1f15f50
        -0x79362d
        0x478c4f
        0x35697f
        0x5e8630
        0x1fbd7a7
        -0xbfd9b1
        -0xf4d4b
        0x27e0f
        0x570649
    .end array-data
.end method

.method public static A(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/text/SpannableString;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, p3, v2, v2, v1}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    add-int/2addr p3, v1

    .line 27
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 31
    .line 32
    .line 33
    const/16 v4, 0x21

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    .line 39
    .line 40
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 41
    .line 42
    invoke-direct {v3, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3, v1, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 49
    .line 50
    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v1, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 54
    .line 55
    .line 56
    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    .line 58
    if-gtz v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 62
    .line 63
    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    .line 70
    .line 71
    invoke-direct {v3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-lt p3, p0, :cond_2

    .line 82
    .line 83
    :goto_1
    return-object v0

    .line 84
    :cond_2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 85
    .line 86
    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, p3, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    .line 93
    .line 94
    invoke-direct {p2, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2, p3, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method public static D(Ljv1;)Ljv1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkv1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lkv1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lkv1;->intercepted()Ljv1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    return-object v0

    .line 23
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static E([I[I)V
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    new-array v1, v1, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v2, p0, v0}, Lnc8;->n(II[I[I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lnc8;->M([I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v2, v0, v1}, Lnc8;->y(II[I[I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x5

    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-static {p0, v3, v0, v1}, Lnc8;->y(II[I[I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lnc8;->c:[I

    .line 25
    .line 26
    invoke-static {v0, v1, v1}, Llg7;->y([I[I[I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v2, v1, p1}, Lnc8;->t(II[I[I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p0, v1, p1}, Lnc8;->t(II[I[I)V

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x9

    .line 36
    .line 37
    aget v0, p1, p0

    .line 38
    .line 39
    const v1, 0xffffff

    .line 40
    .line 41
    .line 42
    and-int/2addr v0, v1

    .line 43
    aput v0, p1, p0

    .line 44
    .line 45
    return-void
.end method

.method public static G(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lyt3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    instance-of v0, p1, Lau3;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lau3;

    .line 12
    .line 13
    invoke-interface {p1}, Lau3;->getArity()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lbt3;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Lmt3;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move p1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Lqt3;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    instance-of v0, p1, Lrt3;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    instance-of p1, p1, Lst3;

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    const/4 p1, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_5
    const/4 p1, -0x1

    .line 49
    :goto_0
    if-ne p1, p0, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    return v1
.end method

.method public static H([I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0xa

    .line 4
    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget v2, p0, v0

    .line 8
    .line 9
    or-int/2addr v1, v2

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    ushr-int/lit8 p0, v1, 0x1

    .line 14
    .line 15
    and-int/lit8 v0, v1, 0x1

    .line 16
    .line 17
    or-int/2addr p0, v0

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    shr-int/lit8 p0, p0, 0x1f

    .line 21
    .line 22
    return p0
.end method

.method public static I(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static J([I[I)V
    .locals 32

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p0, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget v5, p0, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget v7, p0, v6

    .line 12
    .line 13
    const/4 v8, 0x4

    .line 14
    aget v9, p0, v8

    .line 15
    .line 16
    const/4 v10, 0x5

    .line 17
    aget v11, p0, v10

    .line 18
    .line 19
    const/4 v12, 0x6

    .line 20
    aget v13, p0, v12

    .line 21
    .line 22
    const/4 v14, 0x7

    .line 23
    aget v15, p0, v14

    .line 24
    .line 25
    const/16 v16, 0x8

    .line 26
    .line 27
    move/from16 v17, v0

    .line 28
    .line 29
    aget v0, p0, v16

    .line 30
    .line 31
    const/16 v18, 0x9

    .line 32
    .line 33
    move/from16 v19, v2

    .line 34
    .line 35
    aget v2, p0, v18

    .line 36
    .line 37
    move/from16 v20, v4

    .line 38
    .line 39
    int-to-long v4, v5

    .line 40
    const-wide/32 v21, 0x1db42

    .line 41
    .line 42
    .line 43
    mul-long v4, v4, v21

    .line 44
    .line 45
    move/from16 v23, v6

    .line 46
    .line 47
    long-to-int v6, v4

    .line 48
    const v24, 0x1ffffff

    .line 49
    .line 50
    .line 51
    and-int v6, v6, v24

    .line 52
    .line 53
    const/16 v25, 0x19

    .line 54
    .line 55
    shr-long v4, v4, v25

    .line 56
    .line 57
    move/from16 v26, v8

    .line 58
    .line 59
    int-to-long v8, v9

    .line 60
    mul-long v8, v8, v21

    .line 61
    .line 62
    move/from16 v27, v10

    .line 63
    .line 64
    long-to-int v10, v8

    .line 65
    and-int v10, v10, v24

    .line 66
    .line 67
    shr-long v8, v8, v25

    .line 68
    .line 69
    move/from16 v28, v14

    .line 70
    .line 71
    int-to-long v14, v15

    .line 72
    mul-long v14, v14, v21

    .line 73
    .line 74
    move/from16 v29, v12

    .line 75
    .line 76
    long-to-int v12, v14

    .line 77
    and-int v12, v12, v24

    .line 78
    .line 79
    shr-long v14, v14, v25

    .line 80
    .line 81
    move-wide/from16 v30, v4

    .line 82
    .line 83
    int-to-long v4, v2

    .line 84
    mul-long v4, v4, v21

    .line 85
    .line 86
    long-to-int v2, v4

    .line 87
    and-int v2, v2, v24

    .line 88
    .line 89
    shr-long v4, v4, v25

    .line 90
    .line 91
    const-wide/16 v24, 0x26

    .line 92
    .line 93
    mul-long v4, v4, v24

    .line 94
    .line 95
    move/from16 p0, v2

    .line 96
    .line 97
    int-to-long v1, v1

    .line 98
    mul-long v1, v1, v21

    .line 99
    .line 100
    add-long/2addr v1, v4

    .line 101
    long-to-int v4, v1

    .line 102
    const v5, 0x3ffffff

    .line 103
    .line 104
    .line 105
    and-int/2addr v4, v5

    .line 106
    aput v4, p1, v17

    .line 107
    .line 108
    const/16 v4, 0x1a

    .line 109
    .line 110
    shr-long/2addr v1, v4

    .line 111
    move/from16 v24, v4

    .line 112
    .line 113
    move/from16 v17, v5

    .line 114
    .line 115
    int-to-long v4, v11

    .line 116
    mul-long v4, v4, v21

    .line 117
    .line 118
    add-long/2addr v4, v8

    .line 119
    long-to-int v8, v4

    .line 120
    and-int v8, v8, v17

    .line 121
    .line 122
    aput v8, p1, v27

    .line 123
    .line 124
    shr-long v4, v4, v24

    .line 125
    .line 126
    int-to-long v8, v3

    .line 127
    mul-long v8, v8, v21

    .line 128
    .line 129
    add-long/2addr v8, v1

    .line 130
    long-to-int v1, v8

    .line 131
    and-int v1, v1, v17

    .line 132
    .line 133
    aput v1, p1, v19

    .line 134
    .line 135
    shr-long v1, v8, v24

    .line 136
    .line 137
    int-to-long v7, v7

    .line 138
    mul-long v7, v7, v21

    .line 139
    .line 140
    add-long v7, v7, v30

    .line 141
    .line 142
    long-to-int v3, v7

    .line 143
    and-int v3, v3, v17

    .line 144
    .line 145
    aput v3, p1, v23

    .line 146
    .line 147
    shr-long v7, v7, v24

    .line 148
    .line 149
    move-wide/from16 v30, v4

    .line 150
    .line 151
    int-to-long v3, v13

    .line 152
    mul-long v3, v3, v21

    .line 153
    .line 154
    add-long v3, v3, v30

    .line 155
    .line 156
    long-to-int v5, v3

    .line 157
    and-int v5, v5, v17

    .line 158
    .line 159
    aput v5, p1, v29

    .line 160
    .line 161
    shr-long v3, v3, v24

    .line 162
    .line 163
    move v9, v6

    .line 164
    int-to-long v5, v0

    .line 165
    mul-long v5, v5, v21

    .line 166
    .line 167
    add-long/2addr v5, v14

    .line 168
    long-to-int v0, v5

    .line 169
    and-int v0, v0, v17

    .line 170
    .line 171
    aput v0, p1, v16

    .line 172
    .line 173
    shr-long v5, v5, v24

    .line 174
    .line 175
    long-to-int v0, v1

    .line 176
    add-int/2addr v0, v9

    .line 177
    aput v0, p1, v20

    .line 178
    .line 179
    long-to-int v0, v7

    .line 180
    add-int/2addr v10, v0

    .line 181
    aput v10, p1, v26

    .line 182
    .line 183
    long-to-int v0, v3

    .line 184
    add-int/2addr v12, v0

    .line 185
    aput v12, p1, v28

    .line 186
    .line 187
    long-to-int v0, v5

    .line 188
    add-int v2, p0, v0

    .line 189
    .line 190
    aput v2, p1, v18

    .line 191
    .line 192
    return-void
.end method

.method public static K([I[I[I)V
    .locals 80

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    aget v2, p1, v0

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    aget v4, p0, v3

    .line 8
    .line 9
    aget v5, p1, v3

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    aget v7, p0, v6

    .line 13
    .line 14
    aget v8, p1, v6

    .line 15
    .line 16
    const/4 v9, 0x3

    .line 17
    aget v10, p0, v9

    .line 18
    .line 19
    aget v11, p1, v9

    .line 20
    .line 21
    const/4 v12, 0x4

    .line 22
    aget v13, p0, v12

    .line 23
    .line 24
    aget v14, p1, v12

    .line 25
    .line 26
    const/4 v15, 0x5

    .line 27
    move/from16 v16, v0

    .line 28
    .line 29
    aget v0, p0, v15

    .line 30
    .line 31
    move/from16 v17, v3

    .line 32
    .line 33
    aget v3, p1, v15

    .line 34
    .line 35
    const/16 v18, 0x6

    .line 36
    .line 37
    move/from16 v19, v6

    .line 38
    .line 39
    aget v6, p0, v18

    .line 40
    .line 41
    move/from16 v20, v9

    .line 42
    .line 43
    aget v9, p1, v18

    .line 44
    .line 45
    const/16 v21, 0x7

    .line 46
    .line 47
    move/from16 v22, v12

    .line 48
    .line 49
    aget v12, p0, v21

    .line 50
    .line 51
    move/from16 v23, v15

    .line 52
    .line 53
    aget v15, p1, v21

    .line 54
    .line 55
    const/16 v24, 0x8

    .line 56
    .line 57
    move/from16 v25, v12

    .line 58
    .line 59
    aget v12, p0, v24

    .line 60
    .line 61
    move/from16 v26, v12

    .line 62
    .line 63
    aget v12, p1, v24

    .line 64
    .line 65
    const/16 v27, 0x9

    .line 66
    .line 67
    move/from16 v28, v12

    .line 68
    .line 69
    aget v12, p0, v27

    .line 70
    .line 71
    move/from16 p0, v12

    .line 72
    .line 73
    aget v12, p1, v27

    .line 74
    .line 75
    move/from16 p1, v12

    .line 76
    .line 77
    move/from16 v29, v13

    .line 78
    .line 79
    int-to-long v12, v1

    .line 80
    move-wide/from16 v38, v12

    .line 81
    .line 82
    int-to-long v12, v2

    .line 83
    mul-long v40, v38, v12

    .line 84
    .line 85
    move/from16 v42, v1

    .line 86
    .line 87
    move/from16 v43, v2

    .line 88
    .line 89
    int-to-long v1, v5

    .line 90
    mul-long v30, v38, v1

    .line 91
    .line 92
    move-wide/from16 v44, v1

    .line 93
    .line 94
    int-to-long v1, v4

    .line 95
    mul-long v32, v1, v12

    .line 96
    .line 97
    add-long v46, v32, v30

    .line 98
    .line 99
    move-wide/from16 v48, v1

    .line 100
    .line 101
    int-to-long v1, v8

    .line 102
    mul-long v30, v38, v1

    .line 103
    .line 104
    mul-long v32, v48, v44

    .line 105
    .line 106
    add-long v32, v32, v30

    .line 107
    .line 108
    move-wide/from16 v50, v1

    .line 109
    .line 110
    int-to-long v1, v7

    .line 111
    mul-long v30, v1, v12

    .line 112
    .line 113
    add-long v52, v30, v32

    .line 114
    .line 115
    mul-long v30, v48, v50

    .line 116
    .line 117
    mul-long v32, v1, v44

    .line 118
    .line 119
    add-long v32, v32, v30

    .line 120
    .line 121
    shl-long v36, v32, v17

    .line 122
    .line 123
    move-wide/from16 v54, v1

    .line 124
    .line 125
    int-to-long v1, v11

    .line 126
    mul-long v34, v38, v1

    .line 127
    .line 128
    move-wide/from16 v56, v1

    .line 129
    .line 130
    int-to-long v1, v10

    .line 131
    move-wide/from16 v30, v1

    .line 132
    .line 133
    move-wide/from16 v32, v12

    .line 134
    .line 135
    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    move-wide/from16 v12, v30

    .line 140
    .line 141
    mul-long v30, v54, v50

    .line 142
    .line 143
    shl-long v36, v30, v17

    .line 144
    .line 145
    move-wide/from16 v58, v1

    .line 146
    .line 147
    int-to-long v1, v14

    .line 148
    mul-long v30, v38, v1

    .line 149
    .line 150
    mul-long v34, v48, v56

    .line 151
    .line 152
    add-long v34, v34, v30

    .line 153
    .line 154
    mul-long v30, v12, v44

    .line 155
    .line 156
    add-long v34, v30, v34

    .line 157
    .line 158
    move-wide/from16 v38, v1

    .line 159
    .line 160
    move v2, v4

    .line 161
    move/from16 v1, v29

    .line 162
    .line 163
    move/from16 v29, v5

    .line 164
    .line 165
    int-to-long v4, v1

    .line 166
    move-wide/from16 v30, v4

    .line 167
    .line 168
    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    .line 169
    .line 170
    .line 171
    move-result-wide v64

    .line 172
    mul-long v4, v48, v38

    .line 173
    .line 174
    mul-long v32, v54, v56

    .line 175
    .line 176
    add-long v32, v32, v4

    .line 177
    .line 178
    mul-long v4, v12, v50

    .line 179
    .line 180
    add-long v4, v4, v32

    .line 181
    .line 182
    mul-long v32, v30, v44

    .line 183
    .line 184
    add-long v32, v32, v4

    .line 185
    .line 186
    shl-long v4, v32, v17

    .line 187
    .line 188
    mul-long v32, v54, v38

    .line 189
    .line 190
    mul-long v34, v30, v50

    .line 191
    .line 192
    add-long v34, v34, v32

    .line 193
    .line 194
    shl-long v32, v34, v17

    .line 195
    .line 196
    mul-long v34, v12, v56

    .line 197
    .line 198
    add-long v34, v34, v32

    .line 199
    .line 200
    mul-long v12, v12, v38

    .line 201
    .line 202
    mul-long v32, v30, v56

    .line 203
    .line 204
    add-long v32, v32, v12

    .line 205
    .line 206
    mul-long v12, v30, v38

    .line 207
    .line 208
    shl-long v12, v12, v17

    .line 209
    .line 210
    move/from16 v30, v1

    .line 211
    .line 212
    move/from16 v31, v2

    .line 213
    .line 214
    int-to-long v1, v0

    .line 215
    move/from16 v36, v0

    .line 216
    .line 217
    move-wide/from16 v37, v1

    .line 218
    .line 219
    int-to-long v0, v3

    .line 220
    mul-long v44, v37, v0

    .line 221
    .line 222
    move-wide/from16 v68, v0

    .line 223
    .line 224
    int-to-long v0, v9

    .line 225
    mul-long v48, v37, v0

    .line 226
    .line 227
    move-wide/from16 v50, v0

    .line 228
    .line 229
    int-to-long v0, v6

    .line 230
    mul-long v54, v0, v68

    .line 231
    .line 232
    add-long v54, v54, v48

    .line 233
    .line 234
    move-wide/from16 v48, v0

    .line 235
    .line 236
    int-to-long v0, v15

    .line 237
    mul-long v56, v37, v0

    .line 238
    .line 239
    mul-long v60, v48, v50

    .line 240
    .line 241
    add-long v60, v60, v56

    .line 242
    .line 243
    move-wide/from16 v56, v0

    .line 244
    .line 245
    move/from16 v2, v25

    .line 246
    .line 247
    int-to-long v0, v2

    .line 248
    mul-long v62, v0, v68

    .line 249
    .line 250
    add-long v62, v62, v60

    .line 251
    .line 252
    mul-long v60, v48, v56

    .line 253
    .line 254
    mul-long v66, v0, v50

    .line 255
    .line 256
    add-long v66, v66, v60

    .line 257
    .line 258
    shl-long v72, v66, v17

    .line 259
    .line 260
    move-wide/from16 v60, v0

    .line 261
    .line 262
    move/from16 v0, v28

    .line 263
    .line 264
    int-to-long v1, v0

    .line 265
    mul-long v70, v37, v1

    .line 266
    .line 267
    move-wide/from16 v74, v1

    .line 268
    .line 269
    move/from16 v0, v26

    .line 270
    .line 271
    int-to-long v1, v0

    .line 272
    move-wide/from16 v66, v1

    .line 273
    .line 274
    invoke-static/range {v66 .. v73}, Ldj7;->d(JJJJ)J

    .line 275
    .line 276
    .line 277
    move-result-wide v1

    .line 278
    move-wide/from16 v76, v66

    .line 279
    .line 280
    mul-long v66, v60, v56

    .line 281
    .line 282
    shl-long v72, v66, v17

    .line 283
    .line 284
    move-wide/from16 v78, v1

    .line 285
    .line 286
    move/from16 v0, p1

    .line 287
    .line 288
    int-to-long v1, v0

    .line 289
    mul-long v37, v37, v1

    .line 290
    .line 291
    mul-long v66, v48, v74

    .line 292
    .line 293
    add-long v66, v66, v37

    .line 294
    .line 295
    mul-long v37, v76, v50

    .line 296
    .line 297
    add-long v70, v37, v66

    .line 298
    .line 299
    move-wide/from16 v37, v1

    .line 300
    .line 301
    move/from16 v0, p0

    .line 302
    .line 303
    int-to-long v1, v0

    .line 304
    move-wide/from16 v66, v1

    .line 305
    .line 306
    invoke-static/range {v66 .. v73}, Ldj7;->d(JJJJ)J

    .line 307
    .line 308
    .line 309
    move-result-wide v1

    .line 310
    mul-long v48, v48, v37

    .line 311
    .line 312
    mul-long v68, v60, v74

    .line 313
    .line 314
    add-long v68, v68, v48

    .line 315
    .line 316
    mul-long v48, v76, v56

    .line 317
    .line 318
    add-long v48, v48, v68

    .line 319
    .line 320
    mul-long v50, v50, v66

    .line 321
    .line 322
    add-long v50, v50, v48

    .line 323
    .line 324
    mul-long v48, v60, v37

    .line 325
    .line 326
    mul-long v56, v56, v66

    .line 327
    .line 328
    add-long v56, v56, v48

    .line 329
    .line 330
    shl-long v48, v56, v17

    .line 331
    .line 332
    mul-long v56, v76, v74

    .line 333
    .line 334
    add-long v56, v56, v48

    .line 335
    .line 336
    mul-long v48, v76, v37

    .line 337
    .line 338
    mul-long v60, v66, v74

    .line 339
    .line 340
    add-long v60, v60, v48

    .line 341
    .line 342
    mul-long v37, v37, v66

    .line 343
    .line 344
    const-wide/16 v48, 0x4c

    .line 345
    .line 346
    mul-long v50, v50, v48

    .line 347
    .line 348
    sub-long v40, v40, v50

    .line 349
    .line 350
    move-wide/from16 v50, v62

    .line 351
    .line 352
    const-wide/16 v62, 0x26

    .line 353
    .line 354
    mul-long v56, v56, v62

    .line 355
    .line 356
    sub-long v46, v46, v56

    .line 357
    .line 358
    mul-long v60, v60, v62

    .line 359
    .line 360
    sub-long v52, v52, v60

    .line 361
    .line 362
    mul-long v37, v37, v48

    .line 363
    .line 364
    sub-long v37, v58, v37

    .line 365
    .line 366
    sub-long v4, v4, v44

    .line 367
    .line 368
    sub-long v34, v34, v54

    .line 369
    .line 370
    sub-long v32, v32, v50

    .line 371
    .line 372
    sub-long v12, v12, v78

    .line 373
    .line 374
    add-int v0, v42, v36

    .line 375
    .line 376
    add-int v3, v43, v3

    .line 377
    .line 378
    add-int v6, v31, v6

    .line 379
    .line 380
    add-int v9, v29, v9

    .line 381
    .line 382
    add-int v7, v7, v25

    .line 383
    .line 384
    add-int/2addr v8, v15

    .line 385
    add-int v10, v10, v26

    .line 386
    .line 387
    add-int v11, v11, v28

    .line 388
    .line 389
    add-int v15, v30, p0

    .line 390
    .line 391
    add-int v14, v14, p1

    .line 392
    .line 393
    move-wide/from16 v60, v1

    .line 394
    .line 395
    int-to-long v0, v0

    .line 396
    int-to-long v2, v3

    .line 397
    mul-long v25, v0, v2

    .line 398
    .line 399
    move-wide/from16 v28, v0

    .line 400
    .line 401
    int-to-long v0, v9

    .line 402
    mul-long v30, v28, v0

    .line 403
    .line 404
    move-wide/from16 v42, v0

    .line 405
    .line 406
    int-to-long v0, v6

    .line 407
    mul-long v44, v0, v2

    .line 408
    .line 409
    add-long v44, v44, v30

    .line 410
    .line 411
    int-to-long v8, v8

    .line 412
    mul-long v30, v28, v8

    .line 413
    .line 414
    mul-long v48, v0, v42

    .line 415
    .line 416
    add-long v48, v48, v30

    .line 417
    .line 418
    int-to-long v6, v7

    .line 419
    mul-long v30, v6, v2

    .line 420
    .line 421
    add-long v30, v30, v48

    .line 422
    .line 423
    mul-long v48, v0, v8

    .line 424
    .line 425
    mul-long v50, v6, v42

    .line 426
    .line 427
    add-long v50, v50, v48

    .line 428
    .line 429
    shl-long v72, v50, v17

    .line 430
    .line 431
    move-wide/from16 v48, v0

    .line 432
    .line 433
    int-to-long v0, v11

    .line 434
    mul-long v70, v28, v0

    .line 435
    .line 436
    int-to-long v10, v10

    .line 437
    move-wide/from16 v68, v2

    .line 438
    .line 439
    move-wide/from16 v66, v10

    .line 440
    .line 441
    invoke-static/range {v66 .. v73}, Ldj7;->d(JJJJ)J

    .line 442
    .line 443
    .line 444
    move-result-wide v2

    .line 445
    mul-long v50, v6, v8

    .line 446
    .line 447
    shl-long v72, v50, v17

    .line 448
    .line 449
    move-wide/from16 v50, v0

    .line 450
    .line 451
    int-to-long v0, v14

    .line 452
    mul-long v28, v28, v0

    .line 453
    .line 454
    mul-long v54, v48, v50

    .line 455
    .line 456
    add-long v54, v54, v28

    .line 457
    .line 458
    mul-long v28, v10, v42

    .line 459
    .line 460
    add-long v70, v28, v54

    .line 461
    .line 462
    int-to-long v14, v15

    .line 463
    move-wide/from16 v66, v14

    .line 464
    .line 465
    invoke-static/range {v66 .. v73}, Ldj7;->d(JJJJ)J

    .line 466
    .line 467
    .line 468
    move-result-wide v14

    .line 469
    mul-long v28, v48, v0

    .line 470
    .line 471
    mul-long v48, v6, v50

    .line 472
    .line 473
    add-long v48, v48, v28

    .line 474
    .line 475
    mul-long v28, v10, v8

    .line 476
    .line 477
    add-long v28, v28, v48

    .line 478
    .line 479
    mul-long v42, v42, v66

    .line 480
    .line 481
    add-long v42, v42, v28

    .line 482
    .line 483
    shl-long v28, v42, v17

    .line 484
    .line 485
    mul-long/2addr v6, v0

    .line 486
    mul-long v8, v8, v66

    .line 487
    .line 488
    add-long/2addr v8, v6

    .line 489
    shl-long v6, v8, v17

    .line 490
    .line 491
    mul-long v8, v10, v50

    .line 492
    .line 493
    add-long/2addr v8, v6

    .line 494
    mul-long/2addr v10, v0

    .line 495
    mul-long v6, v66, v50

    .line 496
    .line 497
    add-long/2addr v6, v10

    .line 498
    mul-long v0, v0, v66

    .line 499
    .line 500
    shl-long v0, v0, v17

    .line 501
    .line 502
    sub-long v2, v2, v37

    .line 503
    .line 504
    add-long/2addr v2, v12

    .line 505
    long-to-int v10, v2

    .line 506
    const v11, 0x3ffffff

    .line 507
    .line 508
    .line 509
    and-int/2addr v10, v11

    .line 510
    const/16 v36, 0x1a

    .line 511
    .line 512
    shr-long v2, v2, v36

    .line 513
    .line 514
    sub-long v14, v14, v64

    .line 515
    .line 516
    sub-long v14, v14, v60

    .line 517
    .line 518
    add-long/2addr v14, v2

    .line 519
    long-to-int v2, v14

    .line 520
    const v3, 0x1ffffff

    .line 521
    .line 522
    .line 523
    and-int/2addr v2, v3

    .line 524
    const/16 v39, 0x19

    .line 525
    .line 526
    shr-long v14, v14, v39

    .line 527
    .line 528
    add-long v14, v14, v28

    .line 529
    .line 530
    sub-long/2addr v14, v4

    .line 531
    mul-long v14, v14, v62

    .line 532
    .line 533
    add-long v14, v14, v40

    .line 534
    .line 535
    move/from16 p0, v3

    .line 536
    .line 537
    long-to-int v3, v14

    .line 538
    and-int/2addr v3, v11

    .line 539
    aput v3, p2, v16

    .line 540
    .line 541
    shr-long v14, v14, v36

    .line 542
    .line 543
    sub-long v8, v8, v34

    .line 544
    .line 545
    mul-long v8, v8, v62

    .line 546
    .line 547
    add-long v8, v8, v46

    .line 548
    .line 549
    add-long/2addr v8, v14

    .line 550
    long-to-int v3, v8

    .line 551
    and-int/2addr v3, v11

    .line 552
    aput v3, p2, v17

    .line 553
    .line 554
    shr-long v8, v8, v36

    .line 555
    .line 556
    sub-long v6, v6, v32

    .line 557
    .line 558
    mul-long v6, v6, v62

    .line 559
    .line 560
    add-long v6, v6, v52

    .line 561
    .line 562
    add-long/2addr v6, v8

    .line 563
    long-to-int v3, v6

    .line 564
    and-int v3, v3, p0

    .line 565
    .line 566
    aput v3, p2, v19

    .line 567
    .line 568
    shr-long v6, v6, v39

    .line 569
    .line 570
    sub-long/2addr v0, v12

    .line 571
    mul-long v0, v0, v62

    .line 572
    .line 573
    add-long v0, v0, v37

    .line 574
    .line 575
    add-long/2addr v0, v6

    .line 576
    long-to-int v3, v0

    .line 577
    and-int/2addr v3, v11

    .line 578
    aput v3, p2, v20

    .line 579
    .line 580
    shr-long v66, v0, v36

    .line 581
    .line 582
    invoke-static/range {v60 .. v67}, Ldj7;->d(JJJJ)J

    .line 583
    .line 584
    .line 585
    move-result-wide v0

    .line 586
    long-to-int v3, v0

    .line 587
    and-int v3, v3, p0

    .line 588
    .line 589
    aput v3, p2, v22

    .line 590
    .line 591
    shr-long v0, v0, v39

    .line 592
    .line 593
    sub-long v25, v25, v40

    .line 594
    .line 595
    add-long v25, v25, v4

    .line 596
    .line 597
    add-long v0, v25, v0

    .line 598
    .line 599
    long-to-int v3, v0

    .line 600
    and-int/2addr v3, v11

    .line 601
    aput v3, p2, v23

    .line 602
    .line 603
    shr-long v0, v0, v36

    .line 604
    .line 605
    sub-long v44, v44, v46

    .line 606
    .line 607
    add-long v44, v44, v34

    .line 608
    .line 609
    add-long v0, v44, v0

    .line 610
    .line 611
    long-to-int v3, v0

    .line 612
    and-int/2addr v3, v11

    .line 613
    aput v3, p2, v18

    .line 614
    .line 615
    shr-long v0, v0, v36

    .line 616
    .line 617
    sub-long v30, v30, v52

    .line 618
    .line 619
    add-long v30, v30, v32

    .line 620
    .line 621
    add-long v0, v30, v0

    .line 622
    .line 623
    long-to-int v3, v0

    .line 624
    and-int v3, v3, p0

    .line 625
    .line 626
    aput v3, p2, v21

    .line 627
    .line 628
    shr-long v0, v0, v39

    .line 629
    .line 630
    int-to-long v3, v10

    .line 631
    add-long/2addr v0, v3

    .line 632
    long-to-int v3, v0

    .line 633
    and-int/2addr v3, v11

    .line 634
    aput v3, p2, v24

    .line 635
    .line 636
    shr-long v0, v0, v36

    .line 637
    .line 638
    long-to-int v0, v0

    .line 639
    add-int/2addr v2, v0

    .line 640
    aput v2, p2, v27

    .line 641
    .line 642
    return-void
.end method

.method public static L([I[I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget v1, p0, v0

    .line 7
    .line 8
    neg-int v1, v1

    .line 9
    aput v1, p1, v0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public static M([I)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    aget v0, p0, v0

    .line 4
    .line 5
    ushr-int/lit8 v0, v0, 0x17

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {p0, v0}, Lnc8;->X([II)V

    .line 10
    .line 11
    .line 12
    neg-int v0, v0

    .line 13
    invoke-static {p0, v0}, Lnc8;->X([II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static T([I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    aput v1, p0, v0

    .line 4
    .line 5
    :goto_0
    const/16 v2, 0xa

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aput v0, p0, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public static V(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ll02;

    .line 22
    .line 23
    invoke-direct {v3, v1, v2, v0}, Ll02;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lnc8;->a:Lp22;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static W(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v1, Ljava/io/InputStreamReader;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x400

    .line 14
    .line 15
    new-array p0, p0, [C

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/Reader;->read([C)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    const-string p0, "Input stream must not be null"

    .line 40
    .line 41
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public static X([II)V
    .locals 10

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    aget v1, p0, v0

    .line 4
    .line 5
    const v2, 0xffffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v2, v1

    .line 9
    shr-int/lit8 v1, v1, 0x18

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    mul-int/lit8 v1, v1, 0x13

    .line 13
    .line 14
    int-to-long v3, v1

    .line 15
    const/4 p1, 0x0

    .line 16
    aget v1, p0, p1

    .line 17
    .line 18
    int-to-long v5, v1

    .line 19
    add-long/2addr v3, v5

    .line 20
    long-to-int v1, v3

    .line 21
    const v5, 0x3ffffff

    .line 22
    .line 23
    .line 24
    and-int/2addr v1, v5

    .line 25
    aput v1, p0, p1

    .line 26
    .line 27
    const/16 p1, 0x1a

    .line 28
    .line 29
    shr-long/2addr v3, p1

    .line 30
    const/4 v1, 0x1

    .line 31
    aget v6, p0, v1

    .line 32
    .line 33
    int-to-long v6, v6

    .line 34
    add-long/2addr v3, v6

    .line 35
    long-to-int v6, v3

    .line 36
    and-int/2addr v6, v5

    .line 37
    aput v6, p0, v1

    .line 38
    .line 39
    shr-long/2addr v3, p1

    .line 40
    const/4 v1, 0x2

    .line 41
    aget v6, p0, v1

    .line 42
    .line 43
    int-to-long v6, v6

    .line 44
    add-long/2addr v3, v6

    .line 45
    long-to-int v6, v3

    .line 46
    const v7, 0x1ffffff

    .line 47
    .line 48
    .line 49
    and-int/2addr v6, v7

    .line 50
    aput v6, p0, v1

    .line 51
    .line 52
    const/16 v1, 0x19

    .line 53
    .line 54
    shr-long/2addr v3, v1

    .line 55
    const/4 v6, 0x3

    .line 56
    aget v8, p0, v6

    .line 57
    .line 58
    int-to-long v8, v8

    .line 59
    add-long/2addr v3, v8

    .line 60
    long-to-int v8, v3

    .line 61
    and-int/2addr v8, v5

    .line 62
    aput v8, p0, v6

    .line 63
    .line 64
    shr-long/2addr v3, p1

    .line 65
    const/4 v6, 0x4

    .line 66
    aget v8, p0, v6

    .line 67
    .line 68
    int-to-long v8, v8

    .line 69
    add-long/2addr v3, v8

    .line 70
    long-to-int v8, v3

    .line 71
    and-int/2addr v8, v7

    .line 72
    aput v8, p0, v6

    .line 73
    .line 74
    shr-long/2addr v3, v1

    .line 75
    const/4 v6, 0x5

    .line 76
    aget v8, p0, v6

    .line 77
    .line 78
    int-to-long v8, v8

    .line 79
    add-long/2addr v3, v8

    .line 80
    long-to-int v8, v3

    .line 81
    and-int/2addr v8, v5

    .line 82
    aput v8, p0, v6

    .line 83
    .line 84
    shr-long/2addr v3, p1

    .line 85
    const/4 v6, 0x6

    .line 86
    aget v8, p0, v6

    .line 87
    .line 88
    int-to-long v8, v8

    .line 89
    add-long/2addr v3, v8

    .line 90
    long-to-int v8, v3

    .line 91
    and-int/2addr v8, v5

    .line 92
    aput v8, p0, v6

    .line 93
    .line 94
    shr-long/2addr v3, p1

    .line 95
    const/4 v6, 0x7

    .line 96
    aget v8, p0, v6

    .line 97
    .line 98
    int-to-long v8, v8

    .line 99
    add-long/2addr v3, v8

    .line 100
    long-to-int v8, v3

    .line 101
    and-int/2addr v7, v8

    .line 102
    aput v7, p0, v6

    .line 103
    .line 104
    shr-long/2addr v3, v1

    .line 105
    const/16 v1, 0x8

    .line 106
    .line 107
    aget v6, p0, v1

    .line 108
    .line 109
    int-to-long v6, v6

    .line 110
    add-long/2addr v3, v6

    .line 111
    long-to-int v6, v3

    .line 112
    and-int/2addr v5, v6

    .line 113
    aput v5, p0, v1

    .line 114
    .line 115
    shr-long/2addr v3, p1

    .line 116
    long-to-int p1, v3

    .line 117
    add-int/2addr v2, p1

    .line 118
    aput v2, p0, v0

    .line 119
    .line 120
    return-void
.end method

.method public static a()Lmj5;
    .locals 1

    .line 1
    new-instance v0, Lmj5;

    .line 2
    .line 3
    invoke-direct {v0}, Lmj5;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b([I[I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget v1, p0, v0

    .line 7
    .line 8
    aget v2, p1, v0

    .line 9
    .line 10
    add-int/2addr v1, v2

    .line 11
    aput v1, p2, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public static c([I[I[I[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget v1, p0, v0

    .line 7
    .line 8
    aget v2, p1, v0

    .line 9
    .line 10
    add-int v3, v1, v2

    .line 11
    .line 12
    aput v3, p2, v0

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    aput v1, p3, v0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Appendable;C)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static e(Lpt1;Lbv4;Ljava/util/ArrayList;I)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    if-nez p3, :cond_0

    .line 1
    iget v2, v0, Lpt1;->z0:I

    .line 2
    iget-object v3, v0, Lpt1;->C0:[Li31;

    const/4 v15, 0x0

    :goto_0
    move v13, v2

    move-object v14, v3

    goto :goto_1

    .line 3
    :cond_0
    iget v2, v0, Lpt1;->A0:I

    .line 4
    iget-object v3, v0, Lpt1;->B0:[Li31;

    const/4 v15, 0x2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_71

    .line 5
    aget-object v3, v14, v2

    .line 6
    iget-boolean v4, v3, Li31;->q:Z

    iget-object v5, v3, Li31;->a:Lot1;

    iget-object v6, v5, Lot1;->Q:[Lys1;

    const/4 v7, 0x3

    const/16 v16, 0x0

    const/16 v8, 0x8

    const/16 v17, 0x0

    if-nez v4, :cond_19

    .line 7
    iget v4, v3, Li31;->l:I

    mul-int/lit8 v18, v4, 0x2

    move-object v12, v5

    move-object/from16 v21, v12

    const/16 v19, 0x0

    :goto_3
    if-nez v19, :cond_14

    const/16 v22, 0x1

    .line 8
    iget v9, v3, Li31;->i:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Li31;->i:I

    .line 9
    iget-object v9, v12, Lot1;->m0:[Lot1;

    iget-object v11, v12, Lot1;->Q:[Lys1;

    aput-object v16, v9, v4

    .line 10
    iget-object v9, v12, Lot1;->l0:[Lot1;

    aput-object v16, v9, v4

    .line 11
    iget v9, v12, Lot1;->g0:I

    if-eq v9, v8, :cond_f

    .line 12
    invoke-virtual {v12, v4}, Lot1;->j(I)I

    .line 13
    aget-object v9, v11, v18

    invoke-virtual {v9}, Lys1;->e()I

    add-int/lit8 v9, v18, 0x1

    .line 14
    aget-object v24, v11, v9

    invoke-virtual/range {v24 .. v24}, Lys1;->e()I

    .line 15
    aget-object v24, v11, v18

    invoke-virtual/range {v24 .. v24}, Lys1;->e()I

    .line 16
    aget-object v9, v11, v9

    invoke-virtual {v9}, Lys1;->e()I

    .line 17
    iget-object v9, v3, Li31;->b:Lot1;

    if-nez v9, :cond_1

    .line 18
    iput-object v12, v3, Li31;->b:Lot1;

    .line 19
    :cond_1
    iput-object v12, v3, Li31;->d:Lot1;

    .line 20
    iget-object v9, v12, Lot1;->p0:[I

    aget v9, v9, v4

    if-ne v9, v7, :cond_f

    .line 21
    iget-object v8, v12, Lot1;->t:[I

    aget v8, v8, v4

    if-eqz v8, :cond_3

    if-eq v8, v7, :cond_3

    const/4 v7, 0x2

    if-ne v8, v7, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v26, v2

    move/from16 v27, v4

    goto :goto_7

    .line 22
    :cond_3
    :goto_4
    iget v7, v3, Li31;->j:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Li31;->j:I

    .line 23
    iget-object v7, v12, Lot1;->k0:[F

    aget v7, v7, v4

    cmpl-float v26, v7, v17

    if-lez v26, :cond_4

    move/from16 v26, v2

    .line 24
    iget v2, v3, Li31;->k:F

    add-float/2addr v2, v7

    iput v2, v3, Li31;->k:F

    goto :goto_5

    :cond_4
    move/from16 v26, v2

    .line 25
    :goto_5
    iget v2, v12, Lot1;->g0:I

    move/from16 v27, v4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    const/4 v2, 0x3

    if-ne v9, v2, :cond_8

    if-eqz v8, :cond_5

    if-ne v8, v2, :cond_8

    :cond_5
    cmpg-float v2, v7, v17

    if-gez v2, :cond_6

    move/from16 v2, v22

    .line 26
    iput-boolean v2, v3, Li31;->n:Z

    goto :goto_6

    :cond_6
    move/from16 v2, v22

    .line 27
    iput-boolean v2, v3, Li31;->o:Z

    .line 28
    :goto_6
    iget-object v2, v3, Li31;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Li31;->h:Ljava/util/ArrayList;

    .line 30
    :cond_7
    iget-object v2, v3, Li31;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_8
    iget-object v2, v3, Li31;->f:Lot1;

    if-nez v2, :cond_9

    .line 32
    iput-object v12, v3, Li31;->f:Lot1;

    .line 33
    :cond_9
    iget-object v2, v3, Li31;->g:Lot1;

    if-eqz v2, :cond_a

    .line 34
    iget-object v2, v2, Lot1;->l0:[Lot1;

    aput-object v12, v2, v27

    .line 35
    :cond_a
    iput-object v12, v3, Li31;->g:Lot1;

    :goto_7
    if-nez v27, :cond_c

    .line 36
    iget v2, v12, Lot1;->r:I

    if-eqz v2, :cond_b

    goto :goto_8

    .line 37
    :cond_b
    iget v2, v12, Lot1;->u:I

    if-nez v2, :cond_e

    iget v2, v12, Lot1;->v:I

    goto :goto_8

    .line 38
    :cond_c
    iget v2, v12, Lot1;->s:I

    if-eqz v2, :cond_d

    goto :goto_8

    .line 39
    :cond_d
    iget v2, v12, Lot1;->x:I

    if-nez v2, :cond_e

    iget v2, v12, Lot1;->y:I

    :cond_e
    :goto_8
    move-object/from16 v2, v21

    goto :goto_9

    :cond_f
    move/from16 v26, v2

    move/from16 v27, v4

    goto :goto_8

    :goto_9
    if-eq v2, v12, :cond_10

    .line 40
    iget-object v2, v2, Lot1;->m0:[Lot1;

    aput-object v12, v2, v27

    :cond_10
    add-int/lit8 v2, v18, 0x1

    .line 41
    aget-object v2, v11, v2

    iget-object v2, v2, Lys1;->f:Lys1;

    if-eqz v2, :cond_11

    .line 42
    iget-object v2, v2, Lys1;->d:Lot1;

    .line 43
    iget-object v4, v2, Lot1;->Q:[Lys1;

    aget-object v4, v4, v18

    iget-object v4, v4, Lys1;->f:Lys1;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lys1;->d:Lot1;

    if-eq v4, v12, :cond_12

    :cond_11
    move-object/from16 v2, v16

    :cond_12
    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move-object v2, v12

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v21, v12

    move/from16 v4, v27

    const/4 v7, 0x3

    const/16 v8, 0x8

    move-object v12, v2

    move/from16 v2, v26

    goto/16 :goto_3

    :cond_14
    move/from16 v26, v2

    move/from16 v27, v4

    .line 44
    iget-object v2, v3, Li31;->b:Lot1;

    if-eqz v2, :cond_15

    .line 45
    iget-object v2, v2, Lot1;->Q:[Lys1;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lys1;->e()I

    .line 46
    :cond_15
    iget-object v2, v3, Li31;->d:Lot1;

    if-eqz v2, :cond_16

    .line 47
    iget-object v2, v2, Lot1;->Q:[Lys1;

    add-int/lit8 v18, v18, 0x1

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lys1;->e()I

    .line 48
    :cond_16
    iput-object v12, v3, Li31;->c:Lot1;

    if-nez v27, :cond_17

    .line 49
    iget-boolean v2, v3, Li31;->m:Z

    if-eqz v2, :cond_17

    .line 50
    iput-object v12, v3, Li31;->e:Lot1;

    goto :goto_b

    .line 51
    :cond_17
    iput-object v5, v3, Li31;->e:Lot1;

    .line 52
    :goto_b
    iget-boolean v2, v3, Li31;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v3, Li31;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v3, Li31;->p:Z

    :goto_d
    const/4 v2, 0x1

    goto :goto_e

    :cond_19
    move/from16 v26, v2

    goto :goto_d

    .line 53
    :goto_e
    iput-boolean v2, v3, Li31;->q:Z

    if-eqz v10, :cond_1b

    .line 54
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_f

    :cond_1a
    move/from16 v21, v13

    const/16 v28, 0x2

    goto/16 :goto_47

    .line 55
    :cond_1b
    :goto_f
    iget-object v11, v3, Li31;->c:Lot1;

    .line 56
    iget-object v12, v3, Li31;->b:Lot1;

    .line 57
    iget-object v2, v3, Li31;->d:Lot1;

    .line 58
    iget-object v4, v3, Li31;->e:Lot1;

    .line 59
    iget v7, v3, Li31;->k:F

    .line 60
    iget-object v8, v0, Lot1;->p0:[I

    iget-object v9, v0, Lot1;->Q:[Lys1;

    aget v8, v8, p3

    move-object/from16 v18, v9

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1c

    const/4 v8, 0x1

    goto :goto_10

    :cond_1c
    const/4 v8, 0x0

    :goto_10
    if-nez p3, :cond_20

    .line 61
    iget v9, v4, Lot1;->i0:I

    if-nez v9, :cond_1d

    const/16 v22, 0x1

    :goto_11
    move-object/from16 v19, v6

    const/4 v6, 0x1

    goto :goto_12

    :cond_1d
    const/16 v22, 0x0

    goto :goto_11

    :goto_12
    if-ne v9, v6, :cond_1e

    move/from16 v21, v6

    :goto_13
    const/4 v6, 0x2

    goto :goto_14

    :cond_1e
    const/16 v21, 0x0

    goto :goto_13

    :goto_14
    if-ne v9, v6, :cond_1f

    const/4 v9, 0x1

    goto :goto_15

    :cond_1f
    const/4 v9, 0x0

    :goto_15
    move-object v6, v5

    move/from16 v29, v7

    move/from16 v23, v21

    move/from16 v27, v22

    :goto_16
    const/16 v21, 0x0

    goto :goto_1c

    :cond_20
    move-object/from16 v19, v6

    move v6, v9

    .line 62
    iget v9, v4, Lot1;->j0:I

    if-nez v9, :cond_21

    const/16 v23, 0x1

    :goto_17
    const/4 v6, 0x1

    goto :goto_18

    :cond_21
    const/16 v23, 0x0

    goto :goto_17

    :goto_18
    if-ne v9, v6, :cond_22

    const/16 v21, 0x1

    :goto_19
    const/4 v6, 0x2

    goto :goto_1a

    :cond_22
    const/16 v21, 0x0

    goto :goto_19

    :goto_1a
    if-ne v9, v6, :cond_23

    const/4 v9, 0x1

    goto :goto_1b

    :cond_23
    const/4 v9, 0x0

    :goto_1b
    move-object v6, v5

    move/from16 v29, v7

    move/from16 v27, v23

    move/from16 v23, v21

    goto :goto_16

    :goto_1c
    if-nez v21, :cond_31

    .line 63
    iget-object v7, v6, Lot1;->Q:[Lys1;

    move-object/from16 v33, v7

    iget-object v7, v6, Lot1;->p0:[I

    move-object/from16 v34, v7

    aget-object v7, v33, v15

    if-eqz v9, :cond_24

    const/16 v31, 0x1

    goto :goto_1d

    :cond_24
    const/16 v31, 0x4

    .line 64
    :goto_1d
    invoke-virtual {v7}, Lys1;->e()I

    move-result v35

    move/from16 v36, v8

    .line 65
    aget v8, v34, p3

    move/from16 v37, v9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_25

    iget-object v8, v6, Lot1;->t:[I

    aget v8, v8, p3

    if-nez v8, :cond_25

    const/4 v8, 0x1

    goto :goto_1e

    :cond_25
    const/4 v8, 0x0

    .line 66
    :goto_1e
    iget-object v9, v7, Lys1;->f:Lys1;

    if-eqz v9, :cond_26

    if-eq v6, v5, :cond_26

    .line 67
    invoke-virtual {v9}, Lys1;->e()I

    move-result v9

    add-int v35, v9, v35

    :cond_26
    move/from16 v9, v35

    if-eqz v37, :cond_27

    if-eq v6, v5, :cond_27

    if-eq v6, v12, :cond_27

    const/16 v31, 0x8

    :cond_27
    move-object/from16 v35, v5

    .line 68
    iget-object v5, v7, Lys1;->f:Lys1;

    if-eqz v5, :cond_2b

    move/from16 v38, v8

    .line 69
    iget-object v8, v7, Lys1;->i:Lej7;

    iget-object v5, v5, Lys1;->i:Lej7;

    if-ne v6, v12, :cond_28

    const/4 v10, 0x6

    .line 70
    invoke-virtual {v1, v8, v5, v9, v10}, Lbv4;->f(Lej7;Lej7;II)V

    goto :goto_1f

    :cond_28
    const/16 v10, 0x8

    .line 71
    invoke-virtual {v1, v8, v5, v9, v10}, Lbv4;->f(Lej7;Lej7;II)V

    :goto_1f
    if-eqz v38, :cond_29

    if-nez v37, :cond_29

    const/16 v31, 0x5

    :cond_29
    if-ne v6, v12, :cond_2a

    if-eqz v37, :cond_2a

    .line 72
    iget-object v5, v6, Lot1;->S:[Z

    aget-boolean v5, v5, p3

    if-eqz v5, :cond_2a

    const/4 v5, 0x5

    goto :goto_20

    :cond_2a
    move/from16 v5, v31

    .line 73
    :goto_20
    iget-object v8, v7, Lys1;->i:Lej7;

    iget-object v7, v7, Lys1;->f:Lys1;

    iget-object v7, v7, Lys1;->i:Lej7;

    invoke-virtual {v1, v8, v7, v9, v5}, Lbv4;->e(Lej7;Lej7;II)V

    :cond_2b
    if-eqz v36, :cond_2d

    .line 74
    iget v5, v6, Lot1;->g0:I

    const/16 v10, 0x8

    if-eq v5, v10, :cond_2c

    .line 75
    aget v5, v34, p3

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2c

    add-int/lit8 v5, v15, 0x1

    .line 76
    aget-object v5, v33, v5

    iget-object v5, v5, Lys1;->i:Lej7;

    aget-object v7, v33, v15

    iget-object v7, v7, Lys1;->i:Lej7;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v5, v7, v8, v9}, Lbv4;->f(Lej7;Lej7;II)V

    goto :goto_21

    :cond_2c
    const/4 v8, 0x0

    .line 77
    :goto_21
    aget-object v5, v33, v15

    iget-object v5, v5, Lys1;->i:Lej7;

    aget-object v7, v18, v15

    iget-object v7, v7, Lys1;->i:Lej7;

    const/16 v10, 0x8

    invoke-virtual {v1, v5, v7, v8, v10}, Lbv4;->f(Lej7;Lej7;II)V

    :cond_2d
    add-int/lit8 v5, v15, 0x1

    .line 78
    aget-object v5, v33, v5

    iget-object v5, v5, Lys1;->f:Lys1;

    if-eqz v5, :cond_2e

    .line 79
    iget-object v5, v5, Lys1;->d:Lot1;

    .line 80
    iget-object v7, v5, Lot1;->Q:[Lys1;

    aget-object v7, v7, v15

    iget-object v7, v7, Lys1;->f:Lys1;

    if-eqz v7, :cond_2e

    iget-object v7, v7, Lys1;->d:Lot1;

    if-eq v7, v6, :cond_2f

    :cond_2e
    move-object/from16 v5, v16

    :cond_2f
    if-eqz v5, :cond_30

    move-object v6, v5

    goto :goto_22

    :cond_30
    const/16 v21, 0x1

    :goto_22
    move-object/from16 v10, p2

    move-object/from16 v5, v35

    move/from16 v8, v36

    move/from16 v9, v37

    goto/16 :goto_1c

    :cond_31
    move/from16 v36, v8

    move/from16 v37, v9

    if-eqz v2, :cond_34

    .line 81
    iget-object v5, v11, Lot1;->Q:[Lys1;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lys1;->f:Lys1;

    if-eqz v5, :cond_34

    .line 82
    iget-object v5, v2, Lot1;->Q:[Lys1;

    aget-object v5, v5, v6

    .line 83
    iget-object v7, v2, Lot1;->p0:[I

    aget v7, v7, p3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_32

    iget-object v7, v2, Lot1;->t:[I

    aget v7, v7, p3

    if-nez v7, :cond_32

    if-nez v37, :cond_32

    .line 84
    iget-object v7, v5, Lys1;->f:Lys1;

    iget-object v8, v7, Lys1;->d:Lot1;

    if-ne v8, v0, :cond_32

    .line 85
    iget-object v8, v5, Lys1;->i:Lej7;

    iget-object v7, v7, Lys1;->i:Lej7;

    .line 86
    invoke-virtual {v5}, Lys1;->e()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x5

    .line 87
    invoke-virtual {v1, v8, v7, v9, v10}, Lbv4;->e(Lej7;Lej7;II)V

    goto :goto_23

    :cond_32
    const/4 v10, 0x5

    if-eqz v37, :cond_33

    .line 88
    iget-object v7, v5, Lys1;->f:Lys1;

    iget-object v8, v7, Lys1;->d:Lot1;

    if-ne v8, v0, :cond_33

    .line 89
    iget-object v8, v5, Lys1;->i:Lej7;

    iget-object v7, v7, Lys1;->i:Lej7;

    .line 90
    invoke-virtual {v5}, Lys1;->e()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x4

    .line 91
    invoke-virtual {v1, v8, v7, v9, v10}, Lbv4;->e(Lej7;Lej7;II)V

    .line 92
    :cond_33
    :goto_23
    iget-object v7, v5, Lys1;->i:Lej7;

    iget-object v8, v11, Lot1;->Q:[Lys1;

    aget-object v6, v8, v6

    iget-object v6, v6, Lys1;->f:Lys1;

    iget-object v6, v6, Lys1;->i:Lej7;

    .line 93
    invoke-virtual {v5}, Lys1;->e()I

    move-result v5

    neg-int v5, v5

    const/4 v10, 0x6

    .line 94
    invoke-virtual {v1, v7, v6, v5, v10}, Lbv4;->g(Lej7;Lej7;II)V

    :cond_34
    if-eqz v36, :cond_35

    add-int/lit8 v5, v15, 0x1

    .line 95
    aget-object v6, v18, v5

    iget-object v6, v6, Lys1;->i:Lej7;

    iget-object v7, v11, Lot1;->Q:[Lys1;

    aget-object v5, v7, v5

    iget-object v7, v5, Lys1;->i:Lej7;

    .line 96
    invoke-virtual {v5}, Lys1;->e()I

    move-result v5

    const/16 v10, 0x8

    .line 97
    invoke-virtual {v1, v6, v7, v5, v10}, Lbv4;->f(Lej7;Lej7;II)V

    .line 98
    :cond_35
    iget-object v5, v3, Li31;->h:Ljava/util/ArrayList;

    if-eqz v5, :cond_3f

    .line 99
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3f

    .line 100
    iget-boolean v8, v3, Li31;->n:Z

    if-eqz v8, :cond_36

    iget-boolean v8, v3, Li31;->p:Z

    if-nez v8, :cond_36

    .line 101
    iget v8, v3, Li31;->j:I

    int-to-float v8, v8

    move/from16 v29, v8

    :cond_36
    move-object/from16 v9, v16

    move/from16 v10, v17

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v6, :cond_3f

    .line 102
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lot1;

    .line 103
    iget-object v0, v7, Lot1;->k0:[F

    move-object/from16 v18, v0

    iget-object v0, v7, Lot1;->Q:[Lys1;

    aget v18, v18, p3

    cmpg-float v21, v18, v17

    move-object/from16 v25, v0

    if-gez v21, :cond_38

    .line 104
    iget-boolean v0, v3, Li31;->p:Z

    if-eqz v0, :cond_37

    add-int/lit8 v0, v15, 0x1

    .line 105
    aget-object v0, v25, v0

    iget-object v0, v0, Lys1;->i:Lej7;

    aget-object v7, v25, v15

    iget-object v7, v7, Lys1;->i:Lej7;

    move-object/from16 v30, v5

    move/from16 v31, v6

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v1, v0, v7, v5, v6}, Lbv4;->e(Lej7;Lej7;II)V

    move/from16 v20, v10

    move v10, v5

    goto :goto_25

    :cond_37
    const/high16 v18, 0x3f800000    # 1.0f

    :cond_38
    move-object/from16 v30, v5

    move/from16 v31, v6

    const/4 v6, 0x4

    cmpl-float v0, v18, v17

    if-nez v0, :cond_39

    add-int/lit8 v0, v15, 0x1

    .line 106
    aget-object v0, v25, v0

    iget-object v0, v0, Lys1;->i:Lej7;

    aget-object v5, v25, v15

    iget-object v5, v5, Lys1;->i:Lej7;

    move/from16 v20, v10

    const/16 v7, 0x8

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v5, v10, v7}, Lbv4;->e(Lej7;Lej7;II)V

    :goto_25
    move/from16 v21, v13

    move/from16 v36, v17

    move/from16 v10, v20

    move/from16 v17, v8

    goto/16 :goto_29

    :cond_39
    move/from16 v20, v10

    const/4 v10, 0x0

    if-eqz v9, :cond_3e

    .line 107
    iget-object v5, v9, Lot1;->Q:[Lys1;

    aget-object v9, v5, v15

    iget-object v9, v9, Lys1;->i:Lej7;

    add-int/lit8 v33, v15, 0x1

    .line 108
    aget-object v5, v5, v33

    iget-object v5, v5, Lys1;->i:Lej7;

    .line 109
    aget-object v6, v25, v15

    iget-object v6, v6, Lys1;->i:Lej7;

    .line 110
    aget-object v10, v25, v33

    iget-object v10, v10, Lys1;->i:Lej7;

    move/from16 v25, v0

    .line 111
    invoke-virtual {v1}, Lbv4;->l()Lm50;

    move-result-object v0

    move-object/from16 v33, v7

    move/from16 v7, v17

    .line 112
    iput v7, v0, Lm50;->b:F

    cmpl-float v17, v29, v7

    move/from16 v36, v7

    if-eqz v17, :cond_3a

    cmpl-float v17, v20, v18

    if-nez v17, :cond_3b

    :cond_3a
    move/from16 v17, v8

    move/from16 v21, v13

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    goto :goto_26

    :cond_3b
    cmpl-float v17, v20, v36

    .line 113
    iget-object v7, v0, Lm50;->d:Ld50;

    if-nez v17, :cond_3c

    move/from16 v17, v8

    const/high16 v8, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {v7, v9, v8}, Ld50;->g(Lej7;F)V

    .line 115
    iget-object v6, v0, Lm50;->d:Ld50;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v6, v5, v7}, Ld50;->g(Lej7;F)V

    move/from16 v21, v13

    goto :goto_27

    :cond_3c
    move/from16 v17, v8

    move/from16 v21, v13

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    if-nez v25, :cond_3d

    .line 116
    invoke-virtual {v7, v6, v8}, Ld50;->g(Lej7;F)V

    .line 117
    iget-object v5, v0, Lm50;->d:Ld50;

    invoke-virtual {v5, v10, v13}, Ld50;->g(Lej7;F)V

    goto :goto_27

    :cond_3d
    div-float v20, v20, v29

    div-float v25, v18, v29

    div-float v13, v20, v25

    .line 118
    invoke-virtual {v7, v9, v8}, Ld50;->g(Lej7;F)V

    .line 119
    iget-object v7, v0, Lm50;->d:Ld50;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v5, v8}, Ld50;->g(Lej7;F)V

    .line 120
    iget-object v5, v0, Lm50;->d:Ld50;

    invoke-virtual {v5, v10, v13}, Ld50;->g(Lej7;F)V

    .line 121
    iget-object v5, v0, Lm50;->d:Ld50;

    neg-float v7, v13

    invoke-virtual {v5, v6, v7}, Ld50;->g(Lej7;F)V

    goto :goto_27

    .line 122
    :goto_26
    iget-object v7, v0, Lm50;->d:Ld50;

    invoke-virtual {v7, v9, v8}, Ld50;->g(Lej7;F)V

    .line 123
    iget-object v7, v0, Lm50;->d:Ld50;

    invoke-virtual {v7, v5, v13}, Ld50;->g(Lej7;F)V

    .line 124
    iget-object v5, v0, Lm50;->d:Ld50;

    invoke-virtual {v5, v10, v8}, Ld50;->g(Lej7;F)V

    .line 125
    iget-object v5, v0, Lm50;->d:Ld50;

    invoke-virtual {v5, v6, v13}, Ld50;->g(Lej7;F)V

    .line 126
    :goto_27
    invoke-virtual {v1, v0}, Lbv4;->c(Lm50;)V

    goto :goto_28

    :cond_3e
    move-object/from16 v33, v7

    move/from16 v21, v13

    move/from16 v36, v17

    move/from16 v17, v8

    :goto_28
    move/from16 v10, v18

    move-object/from16 v9, v33

    :goto_29
    add-int/lit8 v8, v17, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v21

    move-object/from16 v5, v30

    move/from16 v6, v31

    move/from16 v17, v36

    goto/16 :goto_24

    :cond_3f
    move/from16 v21, v13

    if-eqz v12, :cond_40

    if-eq v12, v2, :cond_41

    if-eqz v37, :cond_40

    goto :goto_2a

    :cond_40
    move-object v0, v2

    const/16 v28, 0x2

    goto :goto_30

    .line 127
    :cond_41
    :goto_2a
    aget-object v0, v19, v15

    .line 128
    iget-object v3, v11, Lot1;->Q:[Lys1;

    add-int/lit8 v5, v15, 0x1

    aget-object v3, v3, v5

    .line 129
    iget-object v0, v0, Lys1;->f:Lys1;

    if-eqz v0, :cond_42

    .line 130
    iget-object v0, v0, Lys1;->i:Lej7;

    goto :goto_2b

    :cond_42
    move-object/from16 v0, v16

    .line 131
    :goto_2b
    iget-object v6, v3, Lys1;->f:Lys1;

    if-eqz v6, :cond_43

    iget-object v6, v6, Lys1;->i:Lej7;

    goto :goto_2c

    :cond_43
    move-object/from16 v6, v16

    .line 132
    :goto_2c
    iget-object v7, v12, Lot1;->Q:[Lys1;

    aget-object v7, v7, v15

    if-eqz v2, :cond_44

    .line 133
    iget-object v3, v2, Lot1;->Q:[Lys1;

    aget-object v3, v3, v5

    :cond_44
    if-eqz v0, :cond_46

    if-eqz v6, :cond_46

    if-nez p3, :cond_45

    .line 134
    iget v4, v4, Lot1;->d0:F

    :goto_2d
    move v5, v4

    goto :goto_2e

    .line 135
    :cond_45
    iget v4, v4, Lot1;->e0:F

    goto :goto_2d

    .line 136
    :goto_2e
    invoke-virtual {v7}, Lys1;->e()I

    move-result v4

    .line 137
    invoke-virtual {v3}, Lys1;->e()I

    move-result v8

    .line 138
    iget-object v7, v7, Lys1;->i:Lej7;

    iget-object v3, v3, Lys1;->i:Lej7;

    const/4 v9, 0x7

    move-object/from16 v28, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v7

    move-object/from16 v7, v28

    const/16 v28, 0x2

    invoke-virtual/range {v1 .. v9}, Lbv4;->b(Lej7;Lej7;IFLej7;Lej7;II)V

    goto :goto_2f

    :cond_46
    move-object v0, v2

    const/16 v28, 0x2

    :cond_47
    :goto_2f
    move-object/from16 v1, p1

    goto/16 :goto_44

    :goto_30
    if-eqz v27, :cond_59

    if-eqz v12, :cond_59

    .line 139
    iget v1, v3, Li31;->j:I

    if-lez v1, :cond_48

    iget v2, v3, Li31;->i:I

    if-ne v2, v1, :cond_48

    const/16 v22, 0x1

    goto :goto_31

    :cond_48
    const/16 v22, 0x0

    :goto_31
    move-object v10, v12

    move-object v13, v10

    .line 140
    :goto_32
    iget-object v1, v13, Lot1;->Q:[Lys1;

    if-eqz v10, :cond_47

    iget-object v2, v10, Lot1;->Q:[Lys1;

    .line 141
    iget-object v3, v10, Lot1;->m0:[Lot1;

    aget-object v3, v3, p3

    :goto_33
    if-eqz v3, :cond_49

    .line 142
    iget v4, v3, Lot1;->g0:I

    const/16 v7, 0x8

    if-ne v4, v7, :cond_4a

    .line 143
    iget-object v3, v3, Lot1;->m0:[Lot1;

    aget-object v3, v3, p3

    goto :goto_33

    :cond_49
    const/16 v7, 0x8

    :cond_4a
    if-nez v3, :cond_4c

    if-ne v10, v0, :cond_4b

    goto :goto_34

    :cond_4b
    move-object/from16 v17, v3

    move-object/from16 v18, v13

    const/16 v32, 0x5

    move v13, v7

    goto/16 :goto_3a

    .line 144
    :cond_4c
    :goto_34
    aget-object v4, v2, v15

    move-object v5, v2

    .line 145
    iget-object v2, v4, Lys1;->i:Lej7;

    .line 146
    iget-object v6, v4, Lys1;->f:Lys1;

    if-eqz v6, :cond_4d

    .line 147
    iget-object v6, v6, Lys1;->i:Lej7;

    goto :goto_35

    :cond_4d
    move-object/from16 v6, v16

    :goto_35
    if-eq v13, v10, :cond_4e

    add-int/lit8 v6, v15, 0x1

    .line 148
    aget-object v6, v1, v6

    iget-object v6, v6, Lys1;->i:Lej7;

    goto :goto_36

    :cond_4e
    if-ne v10, v12, :cond_50

    .line 149
    aget-object v6, v19, v15

    iget-object v6, v6, Lys1;->f:Lys1;

    if-eqz v6, :cond_4f

    .line 150
    iget-object v6, v6, Lys1;->i:Lej7;

    goto :goto_36

    :cond_4f
    move-object/from16 v6, v16

    .line 151
    :cond_50
    :goto_36
    invoke-virtual {v4}, Lys1;->e()I

    move-result v4

    add-int/lit8 v8, v15, 0x1

    .line 152
    aget-object v9, v5, v8

    invoke-virtual {v9}, Lys1;->e()I

    move-result v9

    if-eqz v3, :cond_51

    .line 153
    iget-object v7, v3, Lot1;->Q:[Lys1;

    aget-object v7, v7, v15

    move-object/from16 v17, v1

    .line 154
    iget-object v1, v7, Lys1;->i:Lej7;

    goto :goto_37

    :cond_51
    move-object/from16 v17, v1

    .line 155
    iget-object v1, v11, Lot1;->Q:[Lys1;

    aget-object v1, v1, v8

    iget-object v7, v1, Lys1;->f:Lys1;

    if-eqz v7, :cond_52

    .line 156
    iget-object v1, v7, Lys1;->i:Lej7;

    goto :goto_37

    :cond_52
    move-object/from16 v1, v16

    .line 157
    :goto_37
    aget-object v5, v5, v8

    iget-object v5, v5, Lys1;->i:Lej7;

    if-eqz v7, :cond_53

    .line 158
    invoke-virtual {v7}, Lys1;->e()I

    move-result v7

    add-int/2addr v9, v7

    .line 159
    :cond_53
    aget-object v7, v17, v8

    invoke-virtual {v7}, Lys1;->e()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v2, :cond_57

    if-eqz v6, :cond_57

    if-eqz v1, :cond_57

    if-eqz v5, :cond_57

    if-ne v10, v12, :cond_54

    .line 160
    iget-object v4, v12, Lot1;->Q:[Lys1;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Lys1;->e()I

    move-result v7

    :cond_54
    move v4, v7

    if-ne v10, v0, :cond_55

    .line 161
    iget-object v7, v0, Lot1;->Q:[Lys1;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lys1;->e()I

    move-result v9

    :cond_55
    move v8, v9

    if-eqz v22, :cond_56

    const/16 v9, 0x8

    :goto_38
    move-object v7, v5

    goto :goto_39

    :cond_56
    const/4 v9, 0x5

    goto :goto_38

    :goto_39
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v17, v3

    move-object v3, v6

    move-object/from16 v18, v13

    const/16 v13, 0x8

    const/16 v32, 0x5

    move-object v6, v1

    move-object/from16 v1, p1

    .line 162
    invoke-virtual/range {v1 .. v9}, Lbv4;->b(Lej7;Lej7;IFLej7;Lej7;II)V

    goto :goto_3a

    :cond_57
    move-object/from16 v17, v3

    move-object/from16 v18, v13

    const/16 v13, 0x8

    const/16 v32, 0x5

    .line 163
    :goto_3a
    iget v1, v10, Lot1;->g0:I

    if-eq v1, v13, :cond_58

    move-object/from16 v18, v10

    :cond_58
    move-object/from16 v10, v17

    move-object/from16 v13, v18

    goto/16 :goto_32

    :cond_59
    const/16 v13, 0x8

    if-eqz v23, :cond_47

    if-eqz v12, :cond_47

    .line 164
    iget v1, v3, Li31;->j:I

    if-lez v1, :cond_5a

    iget v2, v3, Li31;->i:I

    if-ne v2, v1, :cond_5a

    const/16 v22, 0x1

    goto :goto_3b

    :cond_5a
    const/16 v22, 0x0

    :goto_3b
    move-object v1, v12

    move-object v10, v1

    .line 165
    :goto_3c
    iget-object v2, v1, Lot1;->Q:[Lys1;

    if-eqz v10, :cond_65

    iget-object v3, v10, Lot1;->Q:[Lys1;

    .line 166
    iget-object v4, v10, Lot1;->m0:[Lot1;

    aget-object v4, v4, p3

    :goto_3d
    if-eqz v4, :cond_5b

    .line 167
    iget v5, v4, Lot1;->g0:I

    if-ne v5, v13, :cond_5b

    .line 168
    iget-object v4, v4, Lot1;->m0:[Lot1;

    aget-object v4, v4, p3

    goto :goto_3d

    :cond_5b
    if-eq v10, v12, :cond_63

    if-eq v10, v0, :cond_63

    if-eqz v4, :cond_63

    if-ne v4, v0, :cond_5c

    move-object/from16 v4, v16

    .line 169
    :cond_5c
    aget-object v5, v3, v15

    move-object v6, v2

    .line 170
    iget-object v2, v5, Lys1;->i:Lej7;

    add-int/lit8 v7, v15, 0x1

    .line 171
    aget-object v8, v6, v7

    iget-object v8, v8, Lys1;->i:Lej7;

    .line 172
    invoke-virtual {v5}, Lys1;->e()I

    move-result v5

    .line 173
    aget-object v9, v3, v7

    invoke-virtual {v9}, Lys1;->e()I

    move-result v9

    if-eqz v4, :cond_5e

    .line 174
    iget-object v3, v4, Lot1;->Q:[Lys1;

    aget-object v3, v3, v15

    .line 175
    iget-object v13, v3, Lys1;->i:Lej7;

    move-object/from16 v17, v1

    .line 176
    iget-object v1, v3, Lys1;->f:Lys1;

    if-eqz v1, :cond_5d

    .line 177
    iget-object v1, v1, Lys1;->i:Lej7;

    goto :goto_3f

    :cond_5d
    move-object/from16 v1, v16

    goto :goto_3f

    :cond_5e
    move-object/from16 v17, v1

    .line 178
    iget-object v1, v0, Lot1;->Q:[Lys1;

    aget-object v1, v1, v15

    if-eqz v1, :cond_5f

    .line 179
    iget-object v13, v1, Lys1;->i:Lej7;

    goto :goto_3e

    :cond_5f
    move-object/from16 v13, v16

    .line 180
    :goto_3e
    aget-object v3, v3, v7

    iget-object v3, v3, Lys1;->i:Lej7;

    move-object/from16 v39, v3

    move-object v3, v1

    move-object/from16 v1, v39

    :goto_3f
    if-eqz v3, :cond_60

    .line 181
    invoke-virtual {v3}, Lys1;->e()I

    move-result v3

    add-int/2addr v9, v3

    .line 182
    :cond_60
    aget-object v3, v6, v7

    invoke-virtual {v3}, Lys1;->e()I

    move-result v3

    add-int/2addr v3, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v8

    move v8, v9

    if-eqz v22, :cond_61

    const/16 v9, 0x8

    goto :goto_40

    :cond_61
    const/4 v9, 0x4

    :goto_40
    if-eqz v2, :cond_62

    if-eqz v3, :cond_62

    if-eqz v13, :cond_62

    if-eqz v1, :cond_62

    move-object v6, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v7, v13

    move-object v13, v6

    move-object v6, v7

    move-object v7, v1

    const/16 v31, 0x4

    move-object/from16 v1, p1

    .line 183
    invoke-virtual/range {v1 .. v9}, Lbv4;->b(Lej7;Lej7;IFLej7;Lej7;II)V

    goto :goto_41

    :cond_62
    move-object/from16 v1, p1

    move-object v13, v5

    const/16 v31, 0x4

    :goto_41
    move-object v4, v13

    goto :goto_42

    :cond_63
    move-object/from16 v17, v1

    const/16 v31, 0x4

    move-object/from16 v1, p1

    .line 184
    :goto_42
    iget v2, v10, Lot1;->g0:I

    const/16 v7, 0x8

    if-eq v2, v7, :cond_64

    move-object/from16 v17, v10

    :cond_64
    move-object v10, v4

    move v13, v7

    move-object/from16 v1, v17

    goto/16 :goto_3c

    :cond_65
    move-object/from16 v1, p1

    .line 185
    iget-object v2, v12, Lot1;->Q:[Lys1;

    aget-object v2, v2, v15

    .line 186
    aget-object v3, v19, v15

    iget-object v3, v3, Lys1;->f:Lys1;

    .line 187
    iget-object v4, v0, Lot1;->Q:[Lys1;

    add-int/lit8 v5, v15, 0x1

    aget-object v10, v4, v5

    .line 188
    iget-object v4, v11, Lot1;->Q:[Lys1;

    aget-object v4, v4, v5

    iget-object v13, v4, Lys1;->f:Lys1;

    const/4 v9, 0x5

    if-eqz v3, :cond_67

    if-eq v12, v0, :cond_66

    .line 189
    iget-object v4, v2, Lys1;->i:Lej7;

    iget-object v3, v3, Lys1;->i:Lej7;

    .line 190
    invoke-virtual {v2}, Lys1;->e()I

    move-result v2

    .line 191
    invoke-virtual {v1, v4, v3, v2, v9}, Lbv4;->e(Lej7;Lej7;II)V

    goto :goto_43

    :cond_66
    if-eqz v13, :cond_67

    move-object v4, v2

    .line 192
    iget-object v2, v4, Lys1;->i:Lej7;

    iget-object v3, v3, Lys1;->i:Lej7;

    .line 193
    invoke-virtual {v4}, Lys1;->e()I

    move-result v4

    iget-object v6, v10, Lys1;->i:Lej7;

    iget-object v7, v13, Lys1;->i:Lej7;

    .line 194
    invoke-virtual {v10}, Lys1;->e()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    .line 195
    invoke-virtual/range {v1 .. v9}, Lbv4;->b(Lej7;Lej7;IFLej7;Lej7;II)V

    :cond_67
    :goto_43
    if-eqz v13, :cond_68

    if-eq v12, v0, :cond_68

    .line 196
    iget-object v2, v10, Lys1;->i:Lej7;

    iget-object v3, v13, Lys1;->i:Lej7;

    .line 197
    invoke-virtual {v10}, Lys1;->e()I

    move-result v4

    neg-int v4, v4

    .line 198
    invoke-virtual {v1, v2, v3, v4, v9}, Lbv4;->e(Lej7;Lej7;II)V

    :cond_68
    :goto_44
    if-nez v27, :cond_69

    if-eqz v23, :cond_70

    :cond_69
    if-eqz v12, :cond_70

    if-eq v12, v0, :cond_70

    .line 199
    iget-object v2, v12, Lot1;->Q:[Lys1;

    aget-object v3, v2, v15

    if-nez v0, :cond_6a

    move-object v0, v12

    .line 200
    :cond_6a
    iget-object v4, v0, Lot1;->Q:[Lys1;

    add-int/lit8 v5, v15, 0x1

    aget-object v6, v4, v5

    .line 201
    iget-object v7, v3, Lys1;->f:Lys1;

    if-eqz v7, :cond_6b

    iget-object v7, v7, Lys1;->i:Lej7;

    goto :goto_45

    :cond_6b
    move-object/from16 v7, v16

    .line 202
    :goto_45
    iget-object v8, v6, Lys1;->f:Lys1;

    if-eqz v8, :cond_6c

    iget-object v8, v8, Lys1;->i:Lej7;

    goto :goto_46

    :cond_6c
    move-object/from16 v8, v16

    :goto_46
    if-eq v11, v0, :cond_6e

    .line 203
    iget-object v8, v11, Lot1;->Q:[Lys1;

    aget-object v8, v8, v5

    .line 204
    iget-object v8, v8, Lys1;->f:Lys1;

    if-eqz v8, :cond_6d

    iget-object v8, v8, Lys1;->i:Lej7;

    move-object/from16 v16, v8

    :cond_6d
    move-object/from16 v8, v16

    :cond_6e
    if-ne v12, v0, :cond_6f

    .line 205
    aget-object v6, v2, v5

    :cond_6f
    if-eqz v7, :cond_70

    if-eqz v8, :cond_70

    move-object v0, v4

    .line 206
    invoke-virtual {v3}, Lys1;->e()I

    move-result v4

    .line 207
    aget-object v0, v0, v5

    invoke-virtual {v0}, Lys1;->e()I

    move-result v0

    .line 208
    iget-object v2, v3, Lys1;->i:Lej7;

    iget-object v3, v6, Lys1;->i:Lej7;

    const/4 v9, 0x5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v6, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v8

    move v8, v0

    invoke-virtual/range {v1 .. v9}, Lbv4;->b(Lej7;Lej7;IFLej7;Lej7;II)V

    :cond_70
    :goto_47
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v13, v21

    goto/16 :goto_2

    :cond_71
    return-void
.end method

.method public static f(Ljava/util/HashMap;)Ljava/util/Map;
    .locals 1

    .line 1
    instance-of v0, p0, Lbo4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string v0, "kotlin.collections.MutableMap"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lnc8;->o0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static g(ILjava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p0, p1}, Lnc8;->G(ILjava/lang/Object;)Z

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "kotlin.jvm.functions.Function"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1, p0}, Lnc8;->o0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static h(Lww4;)Lww4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lww4;->k()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lww4;->c:Z

    .line 6
    .line 7
    iget v0, p0, Lww4;->b:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lww4;->d:Lww4;

    .line 13
    .line 14
    return-object p0
.end method

.method public static h0(I[I[I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lnc8;->i0([I[I)V

    .line 2
    .line 3
    .line 4
    :goto_0
    add-int/lit8 p0, p0, -0x1

    .line 5
    .line 6
    if-lez p0, :cond_0

    .line 7
    .line 8
    invoke-static {p2, p2}, Lnc8;->i0([I[I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public static i0([I[I)V
    .locals 64

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p0, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget v5, p0, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget v7, p0, v6

    .line 12
    .line 13
    const/4 v8, 0x4

    .line 14
    aget v9, p0, v8

    .line 15
    .line 16
    const/4 v10, 0x5

    .line 17
    aget v11, p0, v10

    .line 18
    .line 19
    const/4 v12, 0x6

    .line 20
    aget v13, p0, v12

    .line 21
    .line 22
    const/4 v14, 0x7

    .line 23
    aget v15, p0, v14

    .line 24
    .line 25
    const/16 v16, 0x8

    .line 26
    .line 27
    move/from16 v17, v0

    .line 28
    .line 29
    aget v0, p0, v16

    .line 30
    .line 31
    const/16 v18, 0x9

    .line 32
    .line 33
    move/from16 v19, v2

    .line 34
    .line 35
    aget v2, p0, v18

    .line 36
    .line 37
    move/from16 v20, v4

    .line 38
    .line 39
    mul-int/lit8 v4, v3, 0x2

    .line 40
    .line 41
    move/from16 v21, v6

    .line 42
    .line 43
    mul-int/lit8 v6, v5, 0x2

    .line 44
    .line 45
    move/from16 v22, v8

    .line 46
    .line 47
    mul-int/lit8 v8, v7, 0x2

    .line 48
    .line 49
    move/from16 v23, v10

    .line 50
    .line 51
    mul-int/lit8 v10, v9, 0x2

    .line 52
    .line 53
    move/from16 v24, v14

    .line 54
    .line 55
    move/from16 v25, v15

    .line 56
    .line 57
    int-to-long v14, v1

    .line 58
    mul-long v26, v14, v14

    .line 59
    .line 60
    move/from16 v28, v12

    .line 61
    .line 62
    move/from16 v29, v13

    .line 63
    .line 64
    int-to-long v12, v4

    .line 65
    mul-long v30, v14, v12

    .line 66
    .line 67
    move-wide/from16 v32, v12

    .line 68
    .line 69
    int-to-long v12, v6

    .line 70
    mul-long v34, v14, v12

    .line 71
    .line 72
    move-wide/from16 v36, v12

    .line 73
    .line 74
    int-to-long v12, v3

    .line 75
    mul-long v38, v12, v12

    .line 76
    .line 77
    add-long v38, v38, v34

    .line 78
    .line 79
    mul-long v34, v32, v36

    .line 80
    .line 81
    move v6, v3

    .line 82
    int-to-long v3, v8

    .line 83
    mul-long v40, v14, v3

    .line 84
    .line 85
    add-long v40, v40, v34

    .line 86
    .line 87
    move-wide/from16 v34, v3

    .line 88
    .line 89
    int-to-long v3, v5

    .line 90
    mul-long v3, v3, v36

    .line 91
    .line 92
    move-wide/from16 v42, v3

    .line 93
    .line 94
    int-to-long v3, v10

    .line 95
    mul-long/2addr v14, v3

    .line 96
    add-long v14, v14, v42

    .line 97
    .line 98
    mul-long v12, v12, v34

    .line 99
    .line 100
    add-long v46, v12, v14

    .line 101
    .line 102
    mul-long v12, v32, v3

    .line 103
    .line 104
    mul-long v14, v36, v34

    .line 105
    .line 106
    add-long/2addr v14, v12

    .line 107
    mul-long v12, v36, v3

    .line 108
    .line 109
    move-wide/from16 v32, v3

    .line 110
    .line 111
    int-to-long v3, v7

    .line 112
    mul-long v34, v3, v3

    .line 113
    .line 114
    add-long v34, v34, v12

    .line 115
    .line 116
    mul-long v3, v3, v32

    .line 117
    .line 118
    int-to-long v12, v9

    .line 119
    mul-long v12, v12, v32

    .line 120
    .line 121
    mul-int/lit8 v8, v29, 0x2

    .line 122
    .line 123
    mul-int/lit8 v10, v25, 0x2

    .line 124
    .line 125
    move/from16 v32, v1

    .line 126
    .line 127
    mul-int/lit8 v1, v0, 0x2

    .line 128
    .line 129
    move-wide/from16 v36, v3

    .line 130
    .line 131
    mul-int/lit8 v3, v2, 0x2

    .line 132
    .line 133
    move/from16 v33, v5

    .line 134
    .line 135
    int-to-long v4, v11

    .line 136
    mul-long v42, v4, v4

    .line 137
    .line 138
    move-wide/from16 v44, v4

    .line 139
    .line 140
    int-to-long v4, v8

    .line 141
    mul-long v48, v44, v4

    .line 142
    .line 143
    move-wide/from16 v50, v4

    .line 144
    .line 145
    int-to-long v4, v10

    .line 146
    mul-long v52, v44, v4

    .line 147
    .line 148
    move-wide/from16 v54, v4

    .line 149
    .line 150
    move/from16 v8, v29

    .line 151
    .line 152
    int-to-long v4, v8

    .line 153
    mul-long v56, v4, v4

    .line 154
    .line 155
    add-long v56, v56, v52

    .line 156
    .line 157
    mul-long v52, v50, v54

    .line 158
    .line 159
    move-wide/from16 v58, v4

    .line 160
    .line 161
    int-to-long v4, v1

    .line 162
    mul-long v60, v44, v4

    .line 163
    .line 164
    add-long v60, v60, v52

    .line 165
    .line 166
    move-wide/from16 v52, v4

    .line 167
    .line 168
    move/from16 v1, v25

    .line 169
    .line 170
    int-to-long v4, v1

    .line 171
    mul-long v4, v4, v54

    .line 172
    .line 173
    move-wide/from16 v62, v4

    .line 174
    .line 175
    int-to-long v3, v3

    .line 176
    mul-long v44, v44, v3

    .line 177
    .line 178
    add-long v44, v44, v62

    .line 179
    .line 180
    mul-long v58, v58, v52

    .line 181
    .line 182
    add-long v58, v58, v44

    .line 183
    .line 184
    mul-long v44, v50, v3

    .line 185
    .line 186
    mul-long v50, v54, v52

    .line 187
    .line 188
    add-long v50, v50, v44

    .line 189
    .line 190
    mul-long v44, v54, v3

    .line 191
    .line 192
    move-wide/from16 v52, v3

    .line 193
    .line 194
    int-to-long v3, v0

    .line 195
    mul-long v54, v3, v3

    .line 196
    .line 197
    add-long v54, v54, v44

    .line 198
    .line 199
    mul-long v3, v3, v52

    .line 200
    .line 201
    move v5, v0

    .line 202
    int-to-long v0, v2

    .line 203
    mul-long v0, v0, v52

    .line 204
    .line 205
    const-wide/16 v44, 0x26

    .line 206
    .line 207
    mul-long v50, v50, v44

    .line 208
    .line 209
    sub-long v26, v26, v50

    .line 210
    .line 211
    mul-long v54, v54, v44

    .line 212
    .line 213
    sub-long v30, v30, v54

    .line 214
    .line 215
    mul-long v3, v3, v44

    .line 216
    .line 217
    sub-long v38, v38, v3

    .line 218
    .line 219
    mul-long v0, v0, v44

    .line 220
    .line 221
    sub-long v40, v40, v0

    .line 222
    .line 223
    sub-long v14, v14, v42

    .line 224
    .line 225
    sub-long v34, v34, v48

    .line 226
    .line 227
    sub-long v3, v36, v56

    .line 228
    .line 229
    sub-long v12, v12, v60

    .line 230
    .line 231
    add-int v1, v32, v11

    .line 232
    .line 233
    add-int v0, v6, v8

    .line 234
    .line 235
    add-int v6, v33, v25

    .line 236
    .line 237
    add-int/2addr v7, v5

    .line 238
    add-int/2addr v9, v2

    .line 239
    mul-int/lit8 v2, v0, 0x2

    .line 240
    .line 241
    mul-int/lit8 v5, v6, 0x2

    .line 242
    .line 243
    mul-int/lit8 v8, v7, 0x2

    .line 244
    .line 245
    mul-int/lit8 v10, v9, 0x2

    .line 246
    .line 247
    move-wide/from16 v32, v3

    .line 248
    .line 249
    int-to-long v3, v1

    .line 250
    mul-long v36, v3, v3

    .line 251
    .line 252
    int-to-long v1, v2

    .line 253
    mul-long v50, v3, v1

    .line 254
    .line 255
    move-wide/from16 v42, v1

    .line 256
    .line 257
    int-to-long v1, v5

    .line 258
    mul-long v48, v3, v1

    .line 259
    .line 260
    move-wide/from16 v52, v1

    .line 261
    .line 262
    int-to-long v0, v0

    .line 263
    mul-long v54, v0, v0

    .line 264
    .line 265
    add-long v54, v54, v48

    .line 266
    .line 267
    mul-long v48, v42, v52

    .line 268
    .line 269
    move-wide/from16 v56, v0

    .line 270
    .line 271
    int-to-long v0, v8

    .line 272
    mul-long v60, v3, v0

    .line 273
    .line 274
    add-long v60, v60, v48

    .line 275
    .line 276
    int-to-long v5, v6

    .line 277
    mul-long v5, v5, v52

    .line 278
    .line 279
    int-to-long v10, v10

    .line 280
    mul-long/2addr v3, v10

    .line 281
    add-long/2addr v3, v5

    .line 282
    mul-long v5, v56, v0

    .line 283
    .line 284
    add-long/2addr v5, v3

    .line 285
    mul-long v2, v42, v10

    .line 286
    .line 287
    mul-long v0, v0, v52

    .line 288
    .line 289
    add-long/2addr v0, v2

    .line 290
    mul-long v2, v52, v10

    .line 291
    .line 292
    int-to-long v7, v7

    .line 293
    mul-long v42, v7, v7

    .line 294
    .line 295
    add-long v42, v42, v2

    .line 296
    .line 297
    mul-long/2addr v7, v10

    .line 298
    int-to-long v2, v9

    .line 299
    mul-long/2addr v2, v10

    .line 300
    sub-long v60, v60, v40

    .line 301
    .line 302
    add-long v9, v60, v12

    .line 303
    .line 304
    long-to-int v4, v9

    .line 305
    const v11, 0x3ffffff

    .line 306
    .line 307
    .line 308
    and-int/2addr v4, v11

    .line 309
    const/16 v25, 0x1a

    .line 310
    .line 311
    shr-long v9, v9, v25

    .line 312
    .line 313
    sub-long v5, v5, v46

    .line 314
    .line 315
    sub-long v5, v5, v58

    .line 316
    .line 317
    add-long/2addr v5, v9

    .line 318
    long-to-int v9, v5

    .line 319
    const v10, 0x1ffffff

    .line 320
    .line 321
    .line 322
    and-int/2addr v9, v10

    .line 323
    const/16 v29, 0x19

    .line 324
    .line 325
    shr-long v5, v5, v29

    .line 326
    .line 327
    add-long/2addr v5, v0

    .line 328
    sub-long/2addr v5, v14

    .line 329
    mul-long v5, v5, v44

    .line 330
    .line 331
    add-long v5, v5, v26

    .line 332
    .line 333
    long-to-int v0, v5

    .line 334
    and-int/2addr v0, v11

    .line 335
    aput v0, p1, v17

    .line 336
    .line 337
    shr-long v0, v5, v25

    .line 338
    .line 339
    sub-long v42, v42, v34

    .line 340
    .line 341
    mul-long v42, v42, v44

    .line 342
    .line 343
    add-long v42, v42, v30

    .line 344
    .line 345
    add-long v0, v42, v0

    .line 346
    .line 347
    long-to-int v5, v0

    .line 348
    and-int/2addr v5, v11

    .line 349
    aput v5, p1, v19

    .line 350
    .line 351
    shr-long v0, v0, v25

    .line 352
    .line 353
    sub-long v7, v7, v32

    .line 354
    .line 355
    mul-long v7, v7, v44

    .line 356
    .line 357
    add-long v7, v7, v38

    .line 358
    .line 359
    add-long/2addr v7, v0

    .line 360
    long-to-int v0, v7

    .line 361
    and-int/2addr v0, v10

    .line 362
    aput v0, p1, v20

    .line 363
    .line 364
    shr-long v0, v7, v29

    .line 365
    .line 366
    sub-long/2addr v2, v12

    .line 367
    mul-long v2, v2, v44

    .line 368
    .line 369
    add-long v2, v2, v40

    .line 370
    .line 371
    add-long/2addr v2, v0

    .line 372
    long-to-int v0, v2

    .line 373
    and-int/2addr v0, v11

    .line 374
    aput v0, p1, v21

    .line 375
    .line 376
    shr-long v48, v2, v25

    .line 377
    .line 378
    move-wide/from16 v42, v58

    .line 379
    .line 380
    invoke-static/range {v42 .. v49}, Ldj7;->d(JJJJ)J

    .line 381
    .line 382
    .line 383
    move-result-wide v0

    .line 384
    long-to-int v2, v0

    .line 385
    and-int/2addr v2, v10

    .line 386
    aput v2, p1, v22

    .line 387
    .line 388
    shr-long v0, v0, v29

    .line 389
    .line 390
    sub-long v36, v36, v26

    .line 391
    .line 392
    add-long v36, v36, v14

    .line 393
    .line 394
    add-long v0, v36, v0

    .line 395
    .line 396
    long-to-int v2, v0

    .line 397
    and-int/2addr v2, v11

    .line 398
    aput v2, p1, v23

    .line 399
    .line 400
    shr-long v0, v0, v25

    .line 401
    .line 402
    sub-long v50, v50, v30

    .line 403
    .line 404
    add-long v50, v50, v34

    .line 405
    .line 406
    add-long v0, v50, v0

    .line 407
    .line 408
    long-to-int v2, v0

    .line 409
    and-int/2addr v2, v11

    .line 410
    aput v2, p1, v28

    .line 411
    .line 412
    shr-long v0, v0, v25

    .line 413
    .line 414
    sub-long v54, v54, v38

    .line 415
    .line 416
    add-long v54, v54, v32

    .line 417
    .line 418
    add-long v0, v54, v0

    .line 419
    .line 420
    long-to-int v2, v0

    .line 421
    and-int/2addr v2, v10

    .line 422
    aput v2, p1, v24

    .line 423
    .line 424
    shr-long v0, v0, v29

    .line 425
    .line 426
    int-to-long v2, v4

    .line 427
    add-long/2addr v0, v2

    .line 428
    long-to-int v2, v0

    .line 429
    and-int/2addr v2, v11

    .line 430
    aput v2, p1, v16

    .line 431
    .line 432
    shr-long v0, v0, v25

    .line 433
    .line 434
    long-to-int v0, v0

    .line 435
    add-int/2addr v9, v0

    .line 436
    aput v9, p1, v18

    .line 437
    .line 438
    return-void
.end method

.method public static j(II[I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget v1, p3, v0

    .line 7
    .line 8
    add-int v2, p1, v0

    .line 9
    .line 10
    aget v2, p2, v2

    .line 11
    .line 12
    xor-int/2addr v2, v1

    .line 13
    and-int/2addr v2, p0

    .line 14
    xor-int/2addr v1, v2

    .line 15
    aput v1, p3, v0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static k([II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    rsub-int/lit8 p1, p1, 0x0

    .line 3
    .line 4
    :goto_0
    const/16 v1, 0xa

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget v1, p0, v0

    .line 9
    .line 10
    xor-int/2addr v1, p1

    .line 11
    sub-int/2addr v1, p1

    .line 12
    aput v1, p0, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static k0(Lil0;Lto3;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lto3;->CLOUD:Lto3;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    sget-object p1, Ltb1;->a:Ltb1;

    .line 12
    .line 13
    invoke-static {}, Lqb1;->m()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-class v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "KEY_SECTION"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static l0([I[I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget v1, p0, v0

    .line 7
    .line 8
    aget v2, p1, v0

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    aput v1, p2, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public static final m(Leo6;Lmt3;Ljv1;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Leo6;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Leo6;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Leo6;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lio6;->a:Lio6;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lox1;->get(Lnx1;)Lmx1;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    new-instance v0, Lo41;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, p1, v2, v1}, Lo41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v1, Lc98;->b:Lsl4;

    .line 53
    .line 54
    invoke-interface {p1, v1}, Lox1;->get(Lnx1;)Lmx1;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lc98;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p1, Lc98;->a:Lrx1;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object p1, v2

    .line 66
    :goto_0
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-static {p1, v0, p2}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_3
    new-instance p1, Lo21;

    .line 74
    .line 75
    invoke-static {p2}, Lnc8;->D(Ljv1;)Ljv1;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-direct {p1, v1, p2}, Lo21;-><init>(ILjv1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lo21;->u()V

    .line 84
    .line 85
    .line 86
    :try_start_0
    iget-object p2, p0, Leo6;->c:Ld98;

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    new-instance v1, Lgo6;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-direct {v1, v2, p1, p0, v0}, Lgo6;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v1}, Ld98;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const-string p0, "internalTransactionExecutor"

    .line 103
    .line 104
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string v0, "Unable to acquire a thread to perform the database transaction."

    .line 111
    .line 112
    invoke-direct {p2, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lo21;->n(Ljava/lang/Throwable;)Z

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-virtual {p1}, Lo21;->s()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public static final m0(JJJLjava/lang/String;)J
    .locals 4

    .line 1
    sget v0, Lpv7;->a:I

    .line 2
    .line 3
    :try_start_0
    invoke-static {p6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-wide p0

    .line 12
    :cond_0
    invoke-static {v0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/16 p1, 0x27

    .line 17
    .line 18
    const-string v1, "System property \'"

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    cmp-long p0, p2, v2

    .line 27
    .line 28
    if-gtz p0, :cond_1

    .line 29
    .line 30
    cmp-long p0, v2, p4

    .line 31
    .line 32
    if-gtz p0, :cond_1

    .line 33
    .line 34
    return-wide v2

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "\' should be in range "

    .line 38
    .line 39
    invoke-static {v1, p6, p2, p3, v0}, Lu48;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string p3, ".."

    .line 44
    .line 45
    const-string p6, ", but is \'"

    .line 46
    .line 47
    invoke-static {p2, p3, p4, p5, p6}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p3, "\' has unrecognized value \'"

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public static n(II[I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0xa

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    add-int v1, p1, v0

    .line 7
    .line 8
    add-int v2, p0, v0

    .line 9
    .line 10
    aget v2, p2, v2

    .line 11
    .line 12
    aput v2, p3, v1

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static n0(IILjava/lang/String;)I
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const p1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const p1, 0x1ffffe

    .line 10
    .line 11
    .line 12
    :goto_0
    int-to-long v0, p0

    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    int-to-long v4, p1

    .line 16
    move-object v6, p2

    .line 17
    invoke-static/range {v0 .. v6}, Lnc8;->m0(JJJLjava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
.end method

.method public static o(Ljv1;Ljv1;Lqt3;)Ljv1;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lml0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Lml0;

    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Lml0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljv1;->getContext()Lox1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Llv2;->a:Llv2;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Lqe4;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0, p2}, Lqe4;-><init>(Ljv1;Ljv1;Lqt3;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v1, Lre4;

    .line 30
    .line 31
    invoke-direct {v1, p1, v0, p2, p0}, Lre4;-><init>(Ljv1;Lox1;Lqt3;Ljv1;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public static o0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    const-string v0, " cannot be cast to "

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-class p0, Lnc8;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Lpe4;->z(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public static p()Lww4;
    .locals 2

    .line 1
    new-instance v0, Lww4;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lww4;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final p0(IILp77;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    not-int p0, p0

    .line 10
    and-int/2addr p0, p1

    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_0
    const/16 v1, 0x20

    .line 13
    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    and-int/lit8 v1, p0, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p2, p1}, Lp77;->g(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Lug5;

    .line 33
    .line 34
    invoke-interface {p2}, Lp77;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1, v0}, Lug5;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static q(I[I[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    rsub-int/lit8 p0, p0, 0x0

    .line 3
    .line 4
    :goto_0
    const/16 v1, 0xa

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget v1, p1, v0

    .line 9
    .line 10
    aget v2, p2, v0

    .line 11
    .line 12
    xor-int v3, v1, v2

    .line 13
    .line 14
    and-int/2addr v3, p0

    .line 15
    xor-int/2addr v1, v3

    .line 16
    aput v1, p1, v0

    .line 17
    .line 18
    xor-int v1, v2, v3

    .line 19
    .line 20
    aput v1, p2, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static q0(ILhl2;)V
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-interface {p1, v0}, Lhl2;->a(B)V

    .line 5
    .line 6
    .line 7
    ushr-int/lit8 v0, p0, 0x10

    .line 8
    .line 9
    int-to-byte v0, v0

    .line 10
    invoke-interface {p1, v0}, Lhl2;->a(B)V

    .line 11
    .line 12
    .line 13
    ushr-int/lit8 v0, p0, 0x8

    .line 14
    .line 15
    int-to-byte v0, v0

    .line 16
    invoke-interface {p1, v0}, Lhl2;->a(B)V

    .line 17
    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    invoke-interface {p1, p0}, Lhl2;->a(B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static r([B[CII)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, p3, :cond_7

    .line 5
    .line 6
    add-int/lit8 v3, v1, 0x1

    .line 7
    .line 8
    add-int v4, p2, v1

    .line 9
    .line 10
    aget-byte v4, p0, v4

    .line 11
    .line 12
    int-to-char v4, v4

    .line 13
    aput-char v4, p1, v2

    .line 14
    .line 15
    const/16 v5, 0x80

    .line 16
    .line 17
    if-ge v4, v5, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    and-int/lit16 v6, v4, 0xe0

    .line 24
    .line 25
    const/16 v7, 0xc0

    .line 26
    .line 27
    if-ne v6, v7, :cond_3

    .line 28
    .line 29
    const-string v6, "bad second byte at "

    .line 30
    .line 31
    if-ge v3, p3, :cond_2

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    add-int v7, p2, v3

    .line 36
    .line 37
    aget-byte v7, p0, v7

    .line 38
    .line 39
    and-int/lit16 v8, v7, 0xc0

    .line 40
    .line 41
    if-ne v8, v5, :cond_1

    .line 42
    .line 43
    add-int/lit8 v3, v2, 0x1

    .line 44
    .line 45
    and-int/lit8 v4, v4, 0x1f

    .line 46
    .line 47
    shl-int/lit8 v4, v4, 0x6

    .line 48
    .line 49
    and-int/lit8 v5, v7, 0x3f

    .line 50
    .line 51
    or-int/2addr v4, v5

    .line 52
    int-to-char v4, v4

    .line 53
    aput-char v4, p1, v2

    .line 54
    .line 55
    :goto_1
    move v2, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Ljava/io/UTFDataFormatException;

    .line 58
    .line 59
    invoke-static {v3, v6}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    .line 68
    .line 69
    invoke-static {v3, v6}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_3
    and-int/lit16 v6, v4, 0xf0

    .line 78
    .line 79
    const/16 v7, 0xe0

    .line 80
    .line 81
    if-ne v6, v7, :cond_6

    .line 82
    .line 83
    add-int/lit8 v6, v1, 0x2

    .line 84
    .line 85
    if-ge v6, p3, :cond_5

    .line 86
    .line 87
    add-int v7, p2, v3

    .line 88
    .line 89
    aget-byte v7, p0, v7

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x3

    .line 92
    .line 93
    add-int/2addr v6, p2

    .line 94
    aget-byte v6, p0, v6

    .line 95
    .line 96
    and-int/lit16 v8, v7, 0xc0

    .line 97
    .line 98
    if-ne v8, v5, :cond_4

    .line 99
    .line 100
    and-int/lit16 v8, v6, 0xc0

    .line 101
    .line 102
    if-ne v8, v5, :cond_4

    .line 103
    .line 104
    add-int/lit8 v3, v2, 0x1

    .line 105
    .line 106
    and-int/lit8 v4, v4, 0xf

    .line 107
    .line 108
    shl-int/lit8 v4, v4, 0xc

    .line 109
    .line 110
    and-int/lit8 v5, v7, 0x3f

    .line 111
    .line 112
    shl-int/lit8 v5, v5, 0x6

    .line 113
    .line 114
    or-int/2addr v4, v5

    .line 115
    and-int/lit8 v5, v6, 0x3f

    .line 116
    .line 117
    or-int/2addr v4, v5

    .line 118
    int-to-char v4, v4

    .line 119
    aput-char v4, p1, v2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    new-instance p0, Ljava/io/UTFDataFormatException;

    .line 123
    .line 124
    const-string p1, "bad second or third byte at "

    .line 125
    .line 126
    invoke-static {v3, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_5
    new-instance p0, Ljava/io/UTFDataFormatException;

    .line 135
    .line 136
    const-string p1, "bad third byte at "

    .line 137
    .line 138
    invoke-static {v6, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_6
    new-instance p0, Ljava/io/UTFDataFormatException;

    .line 147
    .line 148
    const-string p1, "bad byte at "

    .line 149
    .line 150
    invoke-static {v1, p1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_7
    new-instance p0, Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {p0, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 161
    .line 162
    .line 163
    return-object p0
.end method

.method public static r0(Lqt3;Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Ljv1;->getContext()Lox1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Llv2;->a:Llv2;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lse4;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Lzm6;-><init>(Ljv1;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lte4;

    .line 19
    .line 20
    invoke-direct {v1, p2, v0}, Lkv1;-><init>(Ljv1;Lox1;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :goto_0
    const/4 p2, 0x2

    .line 25
    invoke-static {p2, p0}, Lnc8;->g(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static s(II[B[I)V
    .locals 5

    .line 1
    invoke-static {p2, p0}, Lnc8;->u([BI)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, p0, 0x4

    .line 6
    .line 7
    invoke-static {p2, v1}, Lnc8;->u([BI)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v2, p0, 0x8

    .line 12
    .line 13
    invoke-static {p2, v2}, Lnc8;->u([BI)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 p0, p0, 0xc

    .line 18
    .line 19
    invoke-static {p2, p0}, Lnc8;->u([BI)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const p2, 0x3ffffff

    .line 24
    .line 25
    .line 26
    and-int v3, v0, p2

    .line 27
    .line 28
    aput v3, p3, p1

    .line 29
    .line 30
    add-int/lit8 v3, p1, 0x1

    .line 31
    .line 32
    shl-int/lit8 v4, v1, 0x6

    .line 33
    .line 34
    ushr-int/lit8 v0, v0, 0x1a

    .line 35
    .line 36
    or-int/2addr v0, v4

    .line 37
    and-int/2addr v0, p2

    .line 38
    aput v0, p3, v3

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x2

    .line 41
    .line 42
    shl-int/lit8 v3, v2, 0xc

    .line 43
    .line 44
    ushr-int/lit8 v1, v1, 0x14

    .line 45
    .line 46
    or-int/2addr v1, v3

    .line 47
    const v3, 0x1ffffff

    .line 48
    .line 49
    .line 50
    and-int/2addr v1, v3

    .line 51
    aput v1, p3, v0

    .line 52
    .line 53
    add-int/lit8 v0, p1, 0x3

    .line 54
    .line 55
    shl-int/lit8 v1, p0, 0x13

    .line 56
    .line 57
    ushr-int/lit8 v2, v2, 0xd

    .line 58
    .line 59
    or-int/2addr v1, v2

    .line 60
    and-int/2addr p2, v1

    .line 61
    aput p2, p3, v0

    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x4

    .line 64
    .line 65
    ushr-int/lit8 p0, p0, 0x7

    .line 66
    .line 67
    aput p0, p3, p1

    .line 68
    .line 69
    return-void
.end method

.method public static s0(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    long-to-int p0, v0

    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    const-wide/32 v2, 0x1b873593

    .line 15
    .line 16
    .line 17
    mul-long/2addr v0, v2

    .line 18
    long-to-int p0, v0

    .line 19
    return p0
.end method

.method public static t(II[I[I)V
    .locals 5

    .line 1
    aget v0, p2, p0

    .line 2
    .line 3
    add-int/lit8 v1, p0, 0x1

    .line 4
    .line 5
    aget v1, p2, v1

    .line 6
    .line 7
    add-int/lit8 v2, p0, 0x2

    .line 8
    .line 9
    aget v2, p2, v2

    .line 10
    .line 11
    add-int/lit8 p0, p0, 0x3

    .line 12
    .line 13
    aget p0, p2, p0

    .line 14
    .line 15
    const p2, 0x3ffffff

    .line 16
    .line 17
    .line 18
    and-int v3, v0, p2

    .line 19
    .line 20
    aput v3, p3, p1

    .line 21
    .line 22
    add-int/lit8 v3, p1, 0x1

    .line 23
    .line 24
    shl-int/lit8 v4, v1, 0x6

    .line 25
    .line 26
    ushr-int/lit8 v0, v0, 0x1a

    .line 27
    .line 28
    or-int/2addr v0, v4

    .line 29
    and-int/2addr v0, p2

    .line 30
    aput v0, p3, v3

    .line 31
    .line 32
    add-int/lit8 v0, p1, 0x2

    .line 33
    .line 34
    shl-int/lit8 v3, v2, 0xc

    .line 35
    .line 36
    ushr-int/lit8 v1, v1, 0x14

    .line 37
    .line 38
    or-int/2addr v1, v3

    .line 39
    const v3, 0x1ffffff

    .line 40
    .line 41
    .line 42
    and-int/2addr v1, v3

    .line 43
    aput v1, p3, v0

    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x3

    .line 46
    .line 47
    shl-int/lit8 v1, p0, 0x13

    .line 48
    .line 49
    ushr-int/lit8 v2, v2, 0xd

    .line 50
    .line 51
    or-int/2addr v1, v2

    .line 52
    and-int/2addr p2, v1

    .line 53
    aput p2, p3, v0

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x4

    .line 56
    .line 57
    ushr-int/lit8 p0, p0, 0x7

    .line 58
    .line 59
    aput p0, p3, p1

    .line 60
    .line 61
    return-void
.end method

.method public static t0([B)Lbd9;
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lf79;->a:Lf79;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lmz9;->u([BLf79;)Lmz9;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    sget-object v0, Lxs9;->b:Lxs9;

    .line 8
    .line 9
    new-instance v1, Lot9;

    .line 10
    .line 11
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lau9;->a(Ljava/lang/String;)Ld2a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, p0, v2}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Lxs9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lut9;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v3, Lwt9;

    .line 34
    .line 35
    const-class v4, Lot9;

    .line 36
    .line 37
    invoke-direct {v3, v4, v2}, Lwt9;-><init>(Ljava/lang/Class;Ld2a;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lut9;->d:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    new-instance p0, Lqs9;

    .line 49
    .line 50
    invoke-direct {p0, v1}, Lqs9;-><init>(Lot9;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_0
    invoke-virtual {v0, v1}, Lxs9;->b(Lot9;)Lbd9;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 61
    .line 62
    const-string v1, "Failed to parse proto"

    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public static u([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    shl-int/lit8 p0, p0, 0x18

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public static u0(Lbd9;)[B
    .locals 1

    .line 1
    instance-of v0, p0, Lqs9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lqs9;

    .line 6
    .line 7
    iget-object p0, p0, Lqs9;->a:Lot9;

    .line 8
    .line 9
    iget-object p0, p0, Lot9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lmz9;

    .line 12
    .line 13
    invoke-virtual {p0}, Lo69;->c()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object v0, Lxs9;->b:Lxs9;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lxs9;->d(Lbd9;)Lvt9;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lot9;

    .line 25
    .line 26
    iget-object p0, p0, Lot9;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lmz9;

    .line 29
    .line 30
    invoke-virtual {p0}, Lo69;->c()[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static v0([B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    invoke-static {p0, v0}, Lnc8;->w0([B[B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "Private key must have 32 bytes."

    .line 19
    .line 20
    invoke-static {p0}, Ld6;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static w(Ljava/lang/String;I[B)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

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
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/16 v3, 0x7f

    .line 15
    .line 16
    if-gt v2, v3, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, p1, 0x1

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    aput-byte v2, p2, p1

    .line 22
    .line 23
    move p1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/16 v3, 0x7ff

    .line 26
    .line 27
    if-gt v2, v3, :cond_1

    .line 28
    .line 29
    add-int/lit8 v3, p1, 0x1

    .line 30
    .line 31
    shr-int/lit8 v4, v2, 0x6

    .line 32
    .line 33
    and-int/lit8 v4, v4, 0x1f

    .line 34
    .line 35
    or-int/lit16 v4, v4, 0xc0

    .line 36
    .line 37
    int-to-byte v4, v4

    .line 38
    aput-byte v4, p2, p1

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    and-int/lit8 v2, v2, 0x3f

    .line 43
    .line 44
    or-int/lit16 v2, v2, 0x80

    .line 45
    .line 46
    int-to-byte v2, v2

    .line 47
    aput-byte v2, p2, v3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 51
    .line 52
    shr-int/lit8 v4, v2, 0xc

    .line 53
    .line 54
    and-int/lit8 v4, v4, 0xf

    .line 55
    .line 56
    or-int/lit16 v4, v4, 0xe0

    .line 57
    .line 58
    int-to-byte v4, v4

    .line 59
    aput-byte v4, p2, p1

    .line 60
    .line 61
    add-int/lit8 v4, p1, 0x2

    .line 62
    .line 63
    shr-int/lit8 v5, v2, 0x6

    .line 64
    .line 65
    and-int/lit8 v5, v5, 0x3f

    .line 66
    .line 67
    or-int/lit16 v5, v5, 0x80

    .line 68
    .line 69
    int-to-byte v5, v5

    .line 70
    aput-byte v5, p2, v3

    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x3

    .line 73
    .line 74
    and-int/lit8 v2, v2, 0x3f

    .line 75
    .line 76
    or-int/lit16 v2, v2, 0x80

    .line 77
    .line 78
    int-to-byte v2, v2

    .line 79
    aput-byte v2, p2, v4

    .line 80
    .line 81
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public static w0([B[B)[B
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/16 v4, 0x20

    .line 7
    .line 8
    if-ne v2, v4, :cond_f

    .line 9
    .line 10
    const/16 v2, 0xb

    .line 11
    .line 12
    new-array v5, v2, [J

    .line 13
    .line 14
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v6, 0x0

    .line 19
    aget-byte v7, v0, v6

    .line 20
    .line 21
    and-int/lit16 v7, v7, 0xf8

    .line 22
    .line 23
    int-to-byte v7, v7

    .line 24
    aput-byte v7, v0, v6

    .line 25
    .line 26
    const/16 v7, 0x1f

    .line 27
    .line 28
    aget-byte v8, v0, v7

    .line 29
    .line 30
    and-int/lit8 v8, v8, 0x7f

    .line 31
    .line 32
    int-to-byte v8, v8

    .line 33
    aput-byte v8, v0, v7

    .line 34
    .line 35
    or-int/lit8 v8, v8, 0x40

    .line 36
    .line 37
    int-to-byte v8, v8

    .line 38
    aput-byte v8, v0, v7

    .line 39
    .line 40
    array-length v8, v1

    .line 41
    if-ne v8, v4, :cond_e

    .line 42
    .line 43
    array-length v8, v1

    .line 44
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    aget-byte v9, v8, v7

    .line 49
    .line 50
    and-int/lit8 v9, v9, 0x7f

    .line 51
    .line 52
    int-to-byte v9, v9

    .line 53
    aput-byte v9, v8, v7

    .line 54
    .line 55
    move v7, v6

    .line 56
    :goto_0
    sget-object v9, Lwx3;->e:[[B

    .line 57
    .line 58
    const/4 v10, 0x7

    .line 59
    if-ge v7, v10, :cond_1

    .line 60
    .line 61
    aget-object v10, v9, v7

    .line 62
    .line 63
    invoke-static {v10, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_0

    .line 68
    .line 69
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 73
    .line 74
    aget-object v1, v9, v7

    .line 75
    .line 76
    invoke-static {v1}, Lho6;->a0([B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "Banned public key: "

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_1
    const/16 v7, 0xa

    .line 91
    .line 92
    new-array v9, v7, [J

    .line 93
    .line 94
    move v10, v6

    .line 95
    :goto_1
    const/16 v11, 0x8

    .line 96
    .line 97
    if-ge v10, v7, :cond_2

    .line 98
    .line 99
    sget-object v12, Lxx3;->f:[I

    .line 100
    .line 101
    aget v12, v12, v10

    .line 102
    .line 103
    aget-byte v13, v8, v12

    .line 104
    .line 105
    and-int/lit16 v13, v13, 0xff

    .line 106
    .line 107
    int-to-long v13, v13

    .line 108
    add-int/lit8 v15, v12, 0x1

    .line 109
    .line 110
    aget-byte v15, v8, v15

    .line 111
    .line 112
    and-int/lit16 v15, v15, 0xff

    .line 113
    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    int-to-long v2, v15

    .line 117
    shl-long/2addr v2, v11

    .line 118
    or-long/2addr v2, v13

    .line 119
    add-int/lit8 v11, v12, 0x2

    .line 120
    .line 121
    aget-byte v11, v8, v11

    .line 122
    .line 123
    and-int/lit16 v11, v11, 0xff

    .line 124
    .line 125
    int-to-long v13, v11

    .line 126
    const/16 v11, 0x10

    .line 127
    .line 128
    shl-long/2addr v13, v11

    .line 129
    or-long/2addr v2, v13

    .line 130
    add-int/lit8 v12, v12, 0x3

    .line 131
    .line 132
    aget-byte v11, v8, v12

    .line 133
    .line 134
    and-int/lit16 v11, v11, 0xff

    .line 135
    .line 136
    int-to-long v11, v11

    .line 137
    const/16 v13, 0x18

    .line 138
    .line 139
    shl-long/2addr v11, v13

    .line 140
    or-long/2addr v2, v11

    .line 141
    sget-object v11, Lxx3;->g:[I

    .line 142
    .line 143
    aget v11, v11, v10

    .line 144
    .line 145
    shr-long/2addr v2, v11

    .line 146
    sget-object v11, Lxx3;->h:[I

    .line 147
    .line 148
    and-int/lit8 v12, v10, 0x1

    .line 149
    .line 150
    aget v11, v11, v12

    .line 151
    .line 152
    int-to-long v11, v11

    .line 153
    and-long/2addr v2, v11

    .line 154
    aput-wide v2, v9, v10

    .line 155
    .line 156
    add-int/lit8 v10, v10, 0x1

    .line 157
    .line 158
    const/16 v2, 0xb

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    const/16 v16, 0x0

    .line 162
    .line 163
    const/16 v2, 0x13

    .line 164
    .line 165
    new-array v3, v2, [J

    .line 166
    .line 167
    new-array v8, v2, [J

    .line 168
    .line 169
    const-wide/16 v12, 0x1

    .line 170
    .line 171
    aput-wide v12, v8, v6

    .line 172
    .line 173
    new-array v10, v2, [J

    .line 174
    .line 175
    aput-wide v12, v10, v6

    .line 176
    .line 177
    new-array v14, v2, [J

    .line 178
    .line 179
    new-array v15, v2, [J

    .line 180
    .line 181
    move-wide/from16 v17, v12

    .line 182
    .line 183
    new-array v12, v2, [J

    .line 184
    .line 185
    aput-wide v17, v12, v6

    .line 186
    .line 187
    new-array v13, v2, [J

    .line 188
    .line 189
    new-array v11, v2, [J

    .line 190
    .line 191
    aput-wide v17, v11, v6

    .line 192
    .line 193
    invoke-static {v9, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    .line 195
    .line 196
    :goto_2
    if-ge v6, v4, :cond_5

    .line 197
    .line 198
    rsub-int/lit8 v18, v6, 0x1f

    .line 199
    .line 200
    aget-byte v4, v0, v18

    .line 201
    .line 202
    and-int/lit16 v4, v4, 0xff

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    :goto_3
    const/16 v7, 0x8

    .line 206
    .line 207
    if-ge v2, v7, :cond_4

    .line 208
    .line 209
    rsub-int/lit8 v20, v2, 0x7

    .line 210
    .line 211
    shr-int v20, v4, v20

    .line 212
    .line 213
    and-int/lit8 v7, v20, 0x1

    .line 214
    .line 215
    invoke-static {v10, v3, v7}, Lwx3;->H([J[JI)V

    .line 216
    .line 217
    .line 218
    invoke-static {v14, v8, v7}, Lwx3;->H([J[JI)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v20, v0

    .line 222
    .line 223
    const/16 v0, 0xa

    .line 224
    .line 225
    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    move/from16 p0, v2

    .line 230
    .line 231
    const/16 v0, 0x13

    .line 232
    .line 233
    new-array v2, v0, [J

    .line 234
    .line 235
    move/from16 v21, v4

    .line 236
    .line 237
    new-array v4, v0, [J

    .line 238
    .line 239
    move/from16 v22, v6

    .line 240
    .line 241
    new-array v6, v0, [J

    .line 242
    .line 243
    move-object/from16 v23, v5

    .line 244
    .line 245
    new-array v5, v0, [J

    .line 246
    .line 247
    move/from16 v24, v7

    .line 248
    .line 249
    new-array v7, v0, [J

    .line 250
    .line 251
    move-object/from16 v25, v11

    .line 252
    .line 253
    new-array v11, v0, [J

    .line 254
    .line 255
    move-object/from16 v26, v2

    .line 256
    .line 257
    new-array v2, v0, [J

    .line 258
    .line 259
    invoke-static {v10, v10, v14}, Lxx3;->M([J[J[J)V

    .line 260
    .line 261
    .line 262
    invoke-static {v14, v1, v14}, Lxx3;->J([J[J[J)V

    .line 263
    .line 264
    .line 265
    const/16 v1, 0xa

    .line 266
    .line 267
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v3, v3, v8}, Lxx3;->M([J[J[J)V

    .line 272
    .line 273
    .line 274
    invoke-static {v8, v0, v8}, Lxx3;->J([J[J[J)V

    .line 275
    .line 276
    .line 277
    invoke-static {v5, v3, v14}, Lxx3;->I([J[J[J)V

    .line 278
    .line 279
    .line 280
    invoke-static {v7, v10, v8}, Lxx3;->I([J[J[J)V

    .line 281
    .line 282
    .line 283
    invoke-static {v5}, Lxx3;->G([J)V

    .line 284
    .line 285
    .line 286
    invoke-static {v5}, Lxx3;->D([J)V

    .line 287
    .line 288
    .line 289
    invoke-static {v7}, Lxx3;->G([J)V

    .line 290
    .line 291
    .line 292
    invoke-static {v7}, Lxx3;->D([J)V

    .line 293
    .line 294
    .line 295
    move-object/from16 v27, v3

    .line 296
    .line 297
    const/4 v3, 0x0

    .line 298
    invoke-static {v5, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    .line 300
    .line 301
    invoke-static {v5, v5, v7}, Lxx3;->M([J[J[J)V

    .line 302
    .line 303
    .line 304
    invoke-static {v7, v0, v7}, Lxx3;->J([J[J[J)V

    .line 305
    .line 306
    .line 307
    invoke-static {v2, v5}, Lxx3;->H([J[J)V

    .line 308
    .line 309
    .line 310
    invoke-static {v11, v7}, Lxx3;->H([J[J)V

    .line 311
    .line 312
    .line 313
    invoke-static {v7, v11, v9}, Lxx3;->I([J[J[J)V

    .line 314
    .line 315
    .line 316
    invoke-static {v7}, Lxx3;->G([J)V

    .line 317
    .line 318
    .line 319
    invoke-static {v7}, Lxx3;->D([J)V

    .line 320
    .line 321
    .line 322
    invoke-static {v2, v3, v15, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    .line 324
    .line 325
    invoke-static {v7, v3, v12, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    .line 327
    .line 328
    invoke-static {v4, v10}, Lxx3;->H([J[J)V

    .line 329
    .line 330
    .line 331
    invoke-static {v6, v14}, Lxx3;->H([J[J)V

    .line 332
    .line 333
    .line 334
    invoke-static {v13, v4, v6}, Lxx3;->I([J[J[J)V

    .line 335
    .line 336
    .line 337
    invoke-static {v13}, Lxx3;->G([J)V

    .line 338
    .line 339
    .line 340
    invoke-static {v13}, Lxx3;->D([J)V

    .line 341
    .line 342
    .line 343
    invoke-static {v6, v4, v6}, Lxx3;->J([J[J[J)V

    .line 344
    .line 345
    .line 346
    const/16 v0, 0x12

    .line 347
    .line 348
    const-wide/16 v2, 0x0

    .line 349
    .line 350
    move-object/from16 v5, v26

    .line 351
    .line 352
    invoke-static {v5, v1, v0, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 353
    .line 354
    .line 355
    const/4 v3, 0x0

    .line 356
    :goto_4
    if-ge v3, v1, :cond_3

    .line 357
    .line 358
    aget-wide v0, v6, v3

    .line 359
    .line 360
    const-wide/32 v28, 0x1db41

    .line 361
    .line 362
    .line 363
    mul-long v0, v0, v28

    .line 364
    .line 365
    aput-wide v0, v5, v3

    .line 366
    .line 367
    add-int/lit8 v3, v3, 0x1

    .line 368
    .line 369
    const/16 v1, 0xa

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_3
    invoke-static {v5}, Lxx3;->D([J)V

    .line 373
    .line 374
    .line 375
    invoke-static {v5, v5, v4}, Lxx3;->M([J[J[J)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v11, v25

    .line 379
    .line 380
    invoke-static {v11, v6, v5}, Lxx3;->I([J[J[J)V

    .line 381
    .line 382
    .line 383
    invoke-static {v11}, Lxx3;->G([J)V

    .line 384
    .line 385
    .line 386
    invoke-static {v11}, Lxx3;->D([J)V

    .line 387
    .line 388
    .line 389
    move/from16 v0, v24

    .line 390
    .line 391
    invoke-static {v13, v15, v0}, Lwx3;->H([J[JI)V

    .line 392
    .line 393
    .line 394
    invoke-static {v11, v12, v0}, Lwx3;->H([J[JI)V

    .line 395
    .line 396
    .line 397
    add-int/lit8 v2, p0, 0x1

    .line 398
    .line 399
    move-object v0, v12

    .line 400
    move-object v12, v8

    .line 401
    move-object v8, v0

    .line 402
    move-object v0, v13

    .line 403
    move-object v13, v10

    .line 404
    move-object v10, v0

    .line 405
    move-object v0, v14

    .line 406
    move-object v14, v11

    .line 407
    move-object v11, v0

    .line 408
    move-object/from16 v1, p1

    .line 409
    .line 410
    move-object v3, v15

    .line 411
    move-object/from16 v0, v20

    .line 412
    .line 413
    move/from16 v4, v21

    .line 414
    .line 415
    move/from16 v6, v22

    .line 416
    .line 417
    move-object/from16 v5, v23

    .line 418
    .line 419
    move-object/from16 v15, v27

    .line 420
    .line 421
    goto/16 :goto_3

    .line 422
    .line 423
    :cond_4
    move-object/from16 v20, v0

    .line 424
    .line 425
    move-object/from16 v27, v3

    .line 426
    .line 427
    move-object/from16 v23, v5

    .line 428
    .line 429
    move/from16 v22, v6

    .line 430
    .line 431
    add-int/lit8 v6, v22, 0x1

    .line 432
    .line 433
    move-object/from16 v1, p1

    .line 434
    .line 435
    const/16 v2, 0x13

    .line 436
    .line 437
    const/16 v4, 0x20

    .line 438
    .line 439
    const/16 v7, 0xa

    .line 440
    .line 441
    goto/16 :goto_2

    .line 442
    .line 443
    :cond_5
    move-object/from16 v23, v5

    .line 444
    .line 445
    move v0, v7

    .line 446
    new-array v1, v0, [J

    .line 447
    .line 448
    new-array v2, v0, [J

    .line 449
    .line 450
    new-array v4, v0, [J

    .line 451
    .line 452
    new-array v5, v0, [J

    .line 453
    .line 454
    new-array v6, v0, [J

    .line 455
    .line 456
    new-array v7, v0, [J

    .line 457
    .line 458
    new-array v11, v0, [J

    .line 459
    .line 460
    new-array v12, v0, [J

    .line 461
    .line 462
    new-array v13, v0, [J

    .line 463
    .line 464
    new-array v15, v0, [J

    .line 465
    .line 466
    move-object/from16 v19, v3

    .line 467
    .line 468
    new-array v3, v0, [J

    .line 469
    .line 470
    invoke-static {v2, v14}, Lxx3;->H([J[J)V

    .line 471
    .line 472
    .line 473
    invoke-static {v3, v2}, Lxx3;->H([J[J)V

    .line 474
    .line 475
    .line 476
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 477
    .line 478
    .line 479
    invoke-static {v4, v15, v14}, Lxx3;->E([J[J[J)V

    .line 480
    .line 481
    .line 482
    invoke-static {v5, v4, v2}, Lxx3;->E([J[J[J)V

    .line 483
    .line 484
    .line 485
    invoke-static {v15, v5}, Lxx3;->H([J[J)V

    .line 486
    .line 487
    .line 488
    invoke-static {v6, v15, v4}, Lxx3;->E([J[J[J)V

    .line 489
    .line 490
    .line 491
    invoke-static {v15, v6}, Lxx3;->H([J[J)V

    .line 492
    .line 493
    .line 494
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 495
    .line 496
    .line 497
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 498
    .line 499
    .line 500
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 501
    .line 502
    .line 503
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 504
    .line 505
    .line 506
    invoke-static {v7, v15, v6}, Lxx3;->E([J[J[J)V

    .line 507
    .line 508
    .line 509
    invoke-static {v15, v7}, Lxx3;->H([J[J)V

    .line 510
    .line 511
    .line 512
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 513
    .line 514
    .line 515
    const/4 v0, 0x2

    .line 516
    move v2, v0

    .line 517
    :goto_5
    const/16 v4, 0xa

    .line 518
    .line 519
    if-ge v2, v4, :cond_6

    .line 520
    .line 521
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 522
    .line 523
    .line 524
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 525
    .line 526
    .line 527
    add-int/lit8 v2, v2, 0x2

    .line 528
    .line 529
    goto :goto_5

    .line 530
    :cond_6
    invoke-static {v11, v3, v7}, Lxx3;->E([J[J[J)V

    .line 531
    .line 532
    .line 533
    invoke-static {v15, v11}, Lxx3;->H([J[J)V

    .line 534
    .line 535
    .line 536
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 537
    .line 538
    .line 539
    move v2, v0

    .line 540
    :goto_6
    const/16 v4, 0x14

    .line 541
    .line 542
    if-ge v2, v4, :cond_7

    .line 543
    .line 544
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 545
    .line 546
    .line 547
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 548
    .line 549
    .line 550
    add-int/lit8 v2, v2, 0x2

    .line 551
    .line 552
    goto :goto_6

    .line 553
    :cond_7
    invoke-static {v15, v3, v11}, Lxx3;->E([J[J[J)V

    .line 554
    .line 555
    .line 556
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 557
    .line 558
    .line 559
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 560
    .line 561
    .line 562
    move v2, v0

    .line 563
    :goto_7
    const/16 v4, 0xa

    .line 564
    .line 565
    if-ge v2, v4, :cond_8

    .line 566
    .line 567
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 568
    .line 569
    .line 570
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 571
    .line 572
    .line 573
    add-int/lit8 v2, v2, 0x2

    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_8
    invoke-static {v12, v15, v7}, Lxx3;->E([J[J[J)V

    .line 577
    .line 578
    .line 579
    invoke-static {v15, v12}, Lxx3;->H([J[J)V

    .line 580
    .line 581
    .line 582
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 583
    .line 584
    .line 585
    move v2, v0

    .line 586
    :goto_8
    const/16 v4, 0x32

    .line 587
    .line 588
    if-ge v2, v4, :cond_9

    .line 589
    .line 590
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 591
    .line 592
    .line 593
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 594
    .line 595
    .line 596
    add-int/lit8 v2, v2, 0x2

    .line 597
    .line 598
    goto :goto_8

    .line 599
    :cond_9
    invoke-static {v13, v3, v12}, Lxx3;->E([J[J[J)V

    .line 600
    .line 601
    .line 602
    invoke-static {v3, v13}, Lxx3;->H([J[J)V

    .line 603
    .line 604
    .line 605
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 606
    .line 607
    .line 608
    move v2, v0

    .line 609
    :goto_9
    const/16 v6, 0x64

    .line 610
    .line 611
    if-ge v2, v6, :cond_a

    .line 612
    .line 613
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 614
    .line 615
    .line 616
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 617
    .line 618
    .line 619
    add-int/lit8 v2, v2, 0x2

    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_a
    invoke-static {v3, v15, v13}, Lxx3;->E([J[J[J)V

    .line 623
    .line 624
    .line 625
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 626
    .line 627
    .line 628
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 629
    .line 630
    .line 631
    :goto_a
    if-ge v0, v4, :cond_b

    .line 632
    .line 633
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 634
    .line 635
    .line 636
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 637
    .line 638
    .line 639
    add-int/lit8 v0, v0, 0x2

    .line 640
    .line 641
    goto :goto_a

    .line 642
    :cond_b
    invoke-static {v15, v3, v12}, Lxx3;->E([J[J[J)V

    .line 643
    .line 644
    .line 645
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 646
    .line 647
    .line 648
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 649
    .line 650
    .line 651
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 652
    .line 653
    .line 654
    invoke-static {v15, v3}, Lxx3;->H([J[J)V

    .line 655
    .line 656
    .line 657
    invoke-static {v3, v15}, Lxx3;->H([J[J)V

    .line 658
    .line 659
    .line 660
    invoke-static {v1, v3, v5}, Lxx3;->E([J[J[J)V

    .line 661
    .line 662
    .line 663
    move-object/from16 v0, v23

    .line 664
    .line 665
    invoke-static {v0, v10, v1}, Lxx3;->E([J[J[J)V

    .line 666
    .line 667
    .line 668
    const/16 v4, 0xa

    .line 669
    .line 670
    new-array v1, v4, [J

    .line 671
    .line 672
    new-array v2, v4, [J

    .line 673
    .line 674
    const/16 v3, 0xb

    .line 675
    .line 676
    new-array v5, v3, [J

    .line 677
    .line 678
    new-array v6, v3, [J

    .line 679
    .line 680
    new-array v3, v3, [J

    .line 681
    .line 682
    invoke-static {v1, v9, v0}, Lxx3;->E([J[J[J)V

    .line 683
    .line 684
    .line 685
    invoke-static {v2, v9, v0}, Lxx3;->M([J[J[J)V

    .line 686
    .line 687
    .line 688
    new-array v7, v4, [J

    .line 689
    .line 690
    const-wide/32 v9, 0x76d06

    .line 691
    .line 692
    .line 693
    const/16 v17, 0x0

    .line 694
    .line 695
    aput-wide v9, v7, v17

    .line 696
    .line 697
    invoke-static {v6, v2, v7}, Lxx3;->M([J[J[J)V

    .line 698
    .line 699
    .line 700
    invoke-static {v6, v6, v8}, Lxx3;->E([J[J[J)V

    .line 701
    .line 702
    .line 703
    move-object/from16 v7, v19

    .line 704
    .line 705
    invoke-static {v6, v6, v7}, Lxx3;->M([J[J[J)V

    .line 706
    .line 707
    .line 708
    invoke-static {v6, v6, v1}, Lxx3;->E([J[J[J)V

    .line 709
    .line 710
    .line 711
    invoke-static {v6, v6, v7}, Lxx3;->E([J[J[J)V

    .line 712
    .line 713
    .line 714
    move/from16 v9, v17

    .line 715
    .line 716
    :goto_b
    if-ge v9, v4, :cond_c

    .line 717
    .line 718
    aget-wide v10, v6, v9

    .line 719
    .line 720
    const-wide/16 v12, 0x4

    .line 721
    .line 722
    mul-long/2addr v10, v12

    .line 723
    aput-wide v10, v5, v9

    .line 724
    .line 725
    add-int/lit8 v9, v9, 0x1

    .line 726
    .line 727
    goto :goto_b

    .line 728
    :cond_c
    invoke-static {v5}, Lxx3;->D([J)V

    .line 729
    .line 730
    .line 731
    invoke-static {v6, v1, v8}, Lxx3;->E([J[J[J)V

    .line 732
    .line 733
    .line 734
    invoke-static {v6, v6, v8}, Lxx3;->J([J[J[J)V

    .line 735
    .line 736
    .line 737
    invoke-static {v3, v2, v7}, Lxx3;->E([J[J[J)V

    .line 738
    .line 739
    .line 740
    invoke-static {v6, v6, v3}, Lxx3;->M([J[J[J)V

    .line 741
    .line 742
    .line 743
    invoke-static {v6, v6}, Lxx3;->H([J[J)V

    .line 744
    .line 745
    .line 746
    invoke-static {v5}, Lxx3;->K([J)[B

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-static {v6}, Lxx3;->K([J)[B

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_d

    .line 759
    .line 760
    invoke-static {v0}, Lxx3;->K([J)[B

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    return-object v0

    .line 765
    :cond_d
    invoke-static/range {p1 .. p1}, Lho6;->a0([B)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    const-string v1, "Arithmetic error in curve multiplication with the public key: "

    .line 770
    .line 771
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    return-object v16

    .line 779
    :cond_e
    const/16 v16, 0x0

    .line 780
    .line 781
    const-string v0, "Public key length is not 32-byte"

    .line 782
    .line 783
    invoke-static {v0}, Ld6;->f(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    return-object v16

    .line 787
    :cond_f
    const/16 v16, 0x0

    .line 788
    .line 789
    const-string v0, "Private key must have 32 bytes."

    .line 790
    .line 791
    invoke-static {v0}, Ld6;->f(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    return-object v16
.end method

.method public static x(II[B[I)V
    .locals 4

    .line 1
    aget v0, p3, p0

    .line 2
    .line 3
    add-int/lit8 v1, p0, 0x1

    .line 4
    .line 5
    aget v1, p3, v1

    .line 6
    .line 7
    add-int/lit8 v2, p0, 0x2

    .line 8
    .line 9
    aget v2, p3, v2

    .line 10
    .line 11
    add-int/lit8 v3, p0, 0x3

    .line 12
    .line 13
    aget v3, p3, v3

    .line 14
    .line 15
    add-int/lit8 p0, p0, 0x4

    .line 16
    .line 17
    aget p0, p3, p0

    .line 18
    .line 19
    shl-int/lit8 p3, v1, 0x1a

    .line 20
    .line 21
    or-int/2addr p3, v0

    .line 22
    invoke-static {p2, p3, p1}, Lnc8;->z([BII)V

    .line 23
    .line 24
    .line 25
    ushr-int/lit8 p3, v1, 0x6

    .line 26
    .line 27
    shl-int/lit8 v0, v2, 0x14

    .line 28
    .line 29
    or-int/2addr p3, v0

    .line 30
    add-int/lit8 v0, p1, 0x4

    .line 31
    .line 32
    invoke-static {p2, p3, v0}, Lnc8;->z([BII)V

    .line 33
    .line 34
    .line 35
    ushr-int/lit8 p3, v2, 0xc

    .line 36
    .line 37
    shl-int/lit8 v0, v3, 0xd

    .line 38
    .line 39
    or-int/2addr p3, v0

    .line 40
    add-int/lit8 v0, p1, 0x8

    .line 41
    .line 42
    invoke-static {p2, p3, v0}, Lnc8;->z([BII)V

    .line 43
    .line 44
    .line 45
    ushr-int/lit8 p3, v3, 0x13

    .line 46
    .line 47
    shl-int/lit8 p0, p0, 0x7

    .line 48
    .line 49
    or-int/2addr p0, p3

    .line 50
    add-int/lit8 p1, p1, 0xc

    .line 51
    .line 52
    invoke-static {p2, p0, p1}, Lnc8;->z([BII)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static y(II[I[I)V
    .locals 4

    .line 1
    aget v0, p2, p0

    .line 2
    .line 3
    add-int/lit8 v1, p0, 0x1

    .line 4
    .line 5
    aget v1, p2, v1

    .line 6
    .line 7
    add-int/lit8 v2, p0, 0x2

    .line 8
    .line 9
    aget v2, p2, v2

    .line 10
    .line 11
    add-int/lit8 v3, p0, 0x3

    .line 12
    .line 13
    aget v3, p2, v3

    .line 14
    .line 15
    add-int/lit8 p0, p0, 0x4

    .line 16
    .line 17
    aget p0, p2, p0

    .line 18
    .line 19
    shl-int/lit8 p2, v1, 0x1a

    .line 20
    .line 21
    or-int/2addr p2, v0

    .line 22
    aput p2, p3, p1

    .line 23
    .line 24
    add-int/lit8 p2, p1, 0x1

    .line 25
    .line 26
    ushr-int/lit8 v0, v1, 0x6

    .line 27
    .line 28
    shl-int/lit8 v1, v2, 0x14

    .line 29
    .line 30
    or-int/2addr v0, v1

    .line 31
    aput v0, p3, p2

    .line 32
    .line 33
    add-int/lit8 p2, p1, 0x2

    .line 34
    .line 35
    ushr-int/lit8 v0, v2, 0xc

    .line 36
    .line 37
    shl-int/lit8 v1, v3, 0xd

    .line 38
    .line 39
    or-int/2addr v0, v1

    .line 40
    aput v0, p3, p2

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x3

    .line 43
    .line 44
    ushr-int/lit8 p2, v3, 0x13

    .line 45
    .line 46
    shl-int/lit8 p0, p0, 0x7

    .line 47
    .line 48
    or-int/2addr p0, p2

    .line 49
    aput p0, p3, p1

    .line 50
    .line 51
    return-void
.end method

.method public static z([BII)V
    .locals 2

    .line 1
    int-to-byte v0, p1

    .line 2
    aput-byte v0, p0, p2

    .line 3
    .line 4
    add-int/lit8 v0, p2, 0x1

    .line 5
    .line 6
    ushr-int/lit8 v1, p1, 0x8

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    aput-byte v1, p0, v0

    .line 10
    .line 11
    add-int/lit8 v0, p2, 0x2

    .line 12
    .line 13
    ushr-int/lit8 v1, p1, 0x10

    .line 14
    .line 15
    int-to-byte v1, v1

    .line 16
    aput-byte v1, p0, v0

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x3

    .line 19
    .line 20
    ushr-int/lit8 p1, p1, 0x18

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, p0, p2

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract B()I
.end method

.method public abstract C()Landroid/content/Context;
.end method

.method public F()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract N()V
.end method

.method public O()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract P(Ljava/lang/Throwable;)V
.end method

.method public abstract Q(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract R(Lkb2;)V
.end method

.method public S(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public U()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract Y(Z)V
.end method

.method public abstract Z(Z)V
.end method

.method public abstract a0()V
.end method

.method public abstract b0(Z)V
.end method

.method public abstract c0(Z)V
.end method

.method public abstract d0(Ljava/lang/CharSequence;)V
.end method

.method public abstract e0(I)V
.end method

.method public abstract f0(Ljava/lang/CharSequence;)V
.end method

.method public abstract g0(Ljava/lang/CharSequence;)V
.end method

.method public i()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public j0(Lh80;)Ls8;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public abstract l()Z
.end method

.method public abstract v(Z)V
.end method
