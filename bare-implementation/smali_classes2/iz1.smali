.class public abstract Liz1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Lsl4;

.field public static final c:[I

.field public static final d:[I

.field public static final e:Ltj9;

.field public static final f:Lkt9;

.field public static g:J

.field public static h:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Liz1;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lsl4;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Liz1;->b:Lsl4;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    sput-object v0, Liz1;->c:[I

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    fill-array-data v0, :array_1

    .line 29
    .line 30
    .line 31
    sput-object v0, Liz1;->d:[I

    .line 32
    .line 33
    new-instance v0, Ltj9;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1}, Ltj9;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Liz1;->e:Ltj9;

    .line 40
    .line 41
    new-instance v0, Lkt9;

    .line 42
    .line 43
    const-class v1, Lmj9;

    .line 44
    .line 45
    const-class v2, Lw99;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Liz1;->f:Lkt9;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 4
        -0x54ed7697
        -0x1d12097b
        0x2298a31d
        0x68039276
        -0x2de80a42
        0x3dceec73
        0x1b7c309a
        -0x5e4c66bf
        0x4b9eba7d    # 2.0804858E7f
        -0x34fdb39d    # -8539235.0f
        -0x2ba10c66
        0x29bdf3b
        0x0
        0x0
        0x0
        0x1000000
    .end array-data
.end method

.method public static final A(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_6

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-static {v0, v0, v1, p0}, Lnq7;->g0(CIILjava/lang/CharSequence;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-gez v2, :cond_5

    .line 17
    .line 18
    const-string v2, "/"

    .line 19
    .line 20
    invoke-static {p0, v2, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_4

    .line 25
    .line 26
    const/16 v2, 0x5c

    .line 27
    .line 28
    invoke-static {p0, v2}, Lnq7;->a0(Ljava/lang/CharSequence;C)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    new-array v2, v2, [C

    .line 36
    .line 37
    const/16 v3, 0x2f

    .line 38
    .line 39
    aput-char v3, v2, v0

    .line 40
    .line 41
    invoke-static {p0, v2, v1}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    const-string v2, "."

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    const-string v2, ".."

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "Unsafe SBA entry name: "

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    return-void

    .line 101
    :cond_3
    const-string v0, "Entry name must use \'/\' separators only: "

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    const-string v0, "Entry name must be relative: "

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    const-string p0, "Entry name must not contain NUL"

    .line 122
    .line 123
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    const-string p0, "Entry name must not be empty"

    .line 128
    .line 129
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public static C([BI)J
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
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    int-to-long p0, p0

    .line 33
    const-wide v0, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr p0, v0

    .line 39
    return-wide p0
.end method

.method public static D(IJ[B)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    add-int v1, p0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0xff

    .line 8
    .line 9
    and-long/2addr v2, p1

    .line 10
    long-to-int v2, v2

    .line 11
    int-to-byte v2, v2

    .line 12
    aput-byte v2, p3, v1

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    shr-long/2addr p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static final E(Ljava/lang/StringBuilder;Ljava/util/Iterator;Llk;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/util/Map$Entry;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Llk;->z(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 22
    .line 23
    .line 24
    const-string v0, " : "

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Llk;->z(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    const-string p2, ",\n  "

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/util/Map$Entry;

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Llk;->z(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 69
    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p2}, Llk;->z(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public static F([B[B)[B
    .locals 59

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/16 v3, 0x20

    .line 7
    .line 8
    if-ne v2, v3, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2}, Liz1;->C([BI)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const-wide/32 v6, 0x3ffffff

    .line 16
    .line 17
    .line 18
    and-long/2addr v4, v6

    .line 19
    const/4 v8, 0x3

    .line 20
    invoke-static {v0, v8}, Liz1;->C([BI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v9

    .line 24
    const/4 v11, 0x2

    .line 25
    shr-long/2addr v9, v11

    .line 26
    const-wide/32 v12, 0x3ffff03

    .line 27
    .line 28
    .line 29
    and-long/2addr v9, v12

    .line 30
    const/4 v12, 0x6

    .line 31
    invoke-static {v0, v12}, Liz1;->C([BI)J

    .line 32
    .line 33
    .line 34
    move-result-wide v13

    .line 35
    const/4 v15, 0x4

    .line 36
    shr-long/2addr v13, v15

    .line 37
    const-wide/32 v16, 0x3ffc0ff

    .line 38
    .line 39
    .line 40
    and-long v13, v13, v16

    .line 41
    .line 42
    move/from16 v16, v3

    .line 43
    .line 44
    const/16 v3, 0x9

    .line 45
    .line 46
    invoke-static {v0, v3}, Liz1;->C([BI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v17

    .line 50
    shr-long v17, v17, v12

    .line 51
    .line 52
    const-wide/32 v19, 0x3f03fff

    .line 53
    .line 54
    .line 55
    and-long v17, v17, v19

    .line 56
    .line 57
    move-wide/from16 v19, v6

    .line 58
    .line 59
    const/16 v6, 0xc

    .line 60
    .line 61
    invoke-static {v0, v6}, Liz1;->C([BI)J

    .line 62
    .line 63
    .line 64
    move-result-wide v21

    .line 65
    const/16 v7, 0x8

    .line 66
    .line 67
    shr-long v21, v21, v7

    .line 68
    .line 69
    const-wide/32 v23, 0xfffff

    .line 70
    .line 71
    .line 72
    and-long v21, v21, v23

    .line 73
    .line 74
    const-wide/16 v23, 0x5

    .line 75
    .line 76
    mul-long v25, v9, v23

    .line 77
    .line 78
    mul-long v27, v13, v23

    .line 79
    .line 80
    mul-long v29, v17, v23

    .line 81
    .line 82
    mul-long v31, v21, v23

    .line 83
    .line 84
    move/from16 v33, v11

    .line 85
    .line 86
    const/16 v11, 0x11

    .line 87
    .line 88
    move/from16 v34, v7

    .line 89
    .line 90
    new-array v7, v11, [B

    .line 91
    .line 92
    const-wide/16 v35, 0x0

    .line 93
    .line 94
    move/from16 v45, v15

    .line 95
    .line 96
    move-wide/from16 v37, v35

    .line 97
    .line 98
    move-wide/from16 v39, v37

    .line 99
    .line 100
    move-wide/from16 v41, v39

    .line 101
    .line 102
    move-wide/from16 v43, v41

    .line 103
    .line 104
    move v15, v2

    .line 105
    :goto_0
    array-length v6, v1

    .line 106
    const/16 v47, 0x18

    .line 107
    .line 108
    const/16 v3, 0x10

    .line 109
    .line 110
    const/16 v48, 0x1a

    .line 111
    .line 112
    if-ge v15, v6, :cond_1

    .line 113
    .line 114
    array-length v6, v1

    .line 115
    sub-int/2addr v6, v15

    .line 116
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-static {v1, v15, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    const/16 v49, 0x1

    .line 124
    .line 125
    aput-byte v49, v7, v6

    .line 126
    .line 127
    if-eq v6, v3, :cond_0

    .line 128
    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    invoke-static {v7, v6, v11, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 132
    .line 133
    .line 134
    :cond_0
    invoke-static {v7, v2}, Liz1;->C([BI)J

    .line 135
    .line 136
    .line 137
    move-result-wide v49

    .line 138
    and-long v49, v49, v19

    .line 139
    .line 140
    add-long v43, v43, v49

    .line 141
    .line 142
    invoke-static {v7, v8}, Liz1;->C([BI)J

    .line 143
    .line 144
    .line 145
    move-result-wide v49

    .line 146
    shr-long v49, v49, v33

    .line 147
    .line 148
    and-long v49, v49, v19

    .line 149
    .line 150
    add-long v35, v35, v49

    .line 151
    .line 152
    invoke-static {v7, v12}, Liz1;->C([BI)J

    .line 153
    .line 154
    .line 155
    move-result-wide v49

    .line 156
    shr-long v49, v49, v45

    .line 157
    .line 158
    and-long v49, v49, v19

    .line 159
    .line 160
    add-long v37, v37, v49

    .line 161
    .line 162
    const/16 v6, 0x9

    .line 163
    .line 164
    invoke-static {v7, v6}, Liz1;->C([BI)J

    .line 165
    .line 166
    .line 167
    move-result-wide v49

    .line 168
    shr-long v49, v49, v12

    .line 169
    .line 170
    and-long v49, v49, v19

    .line 171
    .line 172
    add-long v39, v39, v49

    .line 173
    .line 174
    const/16 v6, 0xc

    .line 175
    .line 176
    invoke-static {v7, v6}, Liz1;->C([BI)J

    .line 177
    .line 178
    .line 179
    move-result-wide v49

    .line 180
    shr-long v49, v49, v34

    .line 181
    .line 182
    and-long v49, v49, v19

    .line 183
    .line 184
    aget-byte v3, v7, v3

    .line 185
    .line 186
    shl-int/lit8 v3, v3, 0x18

    .line 187
    .line 188
    move-wide/from16 v51, v9

    .line 189
    .line 190
    int-to-long v8, v3

    .line 191
    or-long v8, v49, v8

    .line 192
    .line 193
    add-long v41, v41, v8

    .line 194
    .line 195
    mul-long v8, v43, v4

    .line 196
    .line 197
    mul-long v49, v35, v31

    .line 198
    .line 199
    add-long v49, v49, v8

    .line 200
    .line 201
    mul-long v8, v37, v29

    .line 202
    .line 203
    add-long v8, v8, v49

    .line 204
    .line 205
    mul-long v49, v39, v27

    .line 206
    .line 207
    add-long v49, v49, v8

    .line 208
    .line 209
    mul-long v8, v41, v25

    .line 210
    .line 211
    add-long v8, v8, v49

    .line 212
    .line 213
    mul-long v49, v43, v51

    .line 214
    .line 215
    mul-long v53, v35, v4

    .line 216
    .line 217
    add-long v53, v53, v49

    .line 218
    .line 219
    mul-long v49, v37, v31

    .line 220
    .line 221
    add-long v49, v49, v53

    .line 222
    .line 223
    mul-long v53, v39, v29

    .line 224
    .line 225
    add-long v53, v53, v49

    .line 226
    .line 227
    mul-long v49, v41, v27

    .line 228
    .line 229
    add-long v49, v49, v53

    .line 230
    .line 231
    mul-long v53, v43, v13

    .line 232
    .line 233
    mul-long v55, v35, v51

    .line 234
    .line 235
    add-long v55, v55, v53

    .line 236
    .line 237
    mul-long v53, v37, v4

    .line 238
    .line 239
    add-long v53, v53, v55

    .line 240
    .line 241
    mul-long v55, v39, v31

    .line 242
    .line 243
    add-long v55, v55, v53

    .line 244
    .line 245
    mul-long v53, v41, v29

    .line 246
    .line 247
    add-long v53, v53, v55

    .line 248
    .line 249
    mul-long v55, v43, v17

    .line 250
    .line 251
    mul-long v57, v35, v13

    .line 252
    .line 253
    add-long v57, v57, v55

    .line 254
    .line 255
    mul-long v55, v37, v51

    .line 256
    .line 257
    add-long v55, v55, v57

    .line 258
    .line 259
    mul-long v57, v39, v4

    .line 260
    .line 261
    add-long v57, v57, v55

    .line 262
    .line 263
    mul-long v55, v41, v31

    .line 264
    .line 265
    add-long v55, v55, v57

    .line 266
    .line 267
    mul-long v43, v43, v21

    .line 268
    .line 269
    mul-long v35, v35, v17

    .line 270
    .line 271
    add-long v35, v35, v43

    .line 272
    .line 273
    mul-long v37, v37, v13

    .line 274
    .line 275
    add-long v37, v37, v35

    .line 276
    .line 277
    mul-long v39, v39, v51

    .line 278
    .line 279
    add-long v39, v39, v37

    .line 280
    .line 281
    mul-long v41, v41, v4

    .line 282
    .line 283
    add-long v41, v41, v39

    .line 284
    .line 285
    shr-long v35, v8, v48

    .line 286
    .line 287
    and-long v8, v8, v19

    .line 288
    .line 289
    add-long v49, v49, v35

    .line 290
    .line 291
    shr-long v35, v49, v48

    .line 292
    .line 293
    and-long v37, v49, v19

    .line 294
    .line 295
    add-long v53, v53, v35

    .line 296
    .line 297
    shr-long v35, v53, v48

    .line 298
    .line 299
    and-long v39, v53, v19

    .line 300
    .line 301
    add-long v55, v55, v35

    .line 302
    .line 303
    shr-long v35, v55, v48

    .line 304
    .line 305
    and-long v43, v55, v19

    .line 306
    .line 307
    add-long v41, v41, v35

    .line 308
    .line 309
    shr-long v35, v41, v48

    .line 310
    .line 311
    and-long v41, v41, v19

    .line 312
    .line 313
    mul-long v35, v35, v23

    .line 314
    .line 315
    add-long v35, v35, v8

    .line 316
    .line 317
    shr-long v8, v35, v48

    .line 318
    .line 319
    and-long v35, v35, v19

    .line 320
    .line 321
    add-long v8, v37, v8

    .line 322
    .line 323
    add-int/lit8 v15, v15, 0x10

    .line 324
    .line 325
    move-wide/from16 v37, v39

    .line 326
    .line 327
    move-wide/from16 v39, v43

    .line 328
    .line 329
    const/16 v3, 0x9

    .line 330
    .line 331
    move-wide/from16 v43, v35

    .line 332
    .line 333
    move-wide/from16 v35, v8

    .line 334
    .line 335
    move-wide/from16 v9, v51

    .line 336
    .line 337
    const/4 v8, 0x3

    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_1
    shr-long v4, v35, v48

    .line 341
    .line 342
    and-long v6, v35, v19

    .line 343
    .line 344
    add-long v37, v37, v4

    .line 345
    .line 346
    shr-long v4, v37, v48

    .line 347
    .line 348
    and-long v8, v37, v19

    .line 349
    .line 350
    add-long v39, v39, v4

    .line 351
    .line 352
    shr-long v4, v39, v48

    .line 353
    .line 354
    and-long v10, v39, v19

    .line 355
    .line 356
    add-long v41, v41, v4

    .line 357
    .line 358
    shr-long v4, v41, v48

    .line 359
    .line 360
    and-long v13, v41, v19

    .line 361
    .line 362
    mul-long v4, v4, v23

    .line 363
    .line 364
    add-long v4, v4, v43

    .line 365
    .line 366
    shr-long v17, v4, v48

    .line 367
    .line 368
    and-long v4, v4, v19

    .line 369
    .line 370
    add-long v6, v6, v17

    .line 371
    .line 372
    add-long v23, v4, v23

    .line 373
    .line 374
    shr-long v17, v23, v48

    .line 375
    .line 376
    and-long v21, v23, v19

    .line 377
    .line 378
    add-long v17, v6, v17

    .line 379
    .line 380
    shr-long v23, v17, v48

    .line 381
    .line 382
    and-long v17, v17, v19

    .line 383
    .line 384
    add-long v23, v8, v23

    .line 385
    .line 386
    shr-long v25, v23, v48

    .line 387
    .line 388
    and-long v23, v23, v19

    .line 389
    .line 390
    add-long v25, v10, v25

    .line 391
    .line 392
    shr-long v27, v25, v48

    .line 393
    .line 394
    and-long v19, v25, v19

    .line 395
    .line 396
    add-long v27, v13, v27

    .line 397
    .line 398
    const-wide/32 v25, 0x4000000

    .line 399
    .line 400
    .line 401
    sub-long v27, v27, v25

    .line 402
    .line 403
    const/16 v1, 0x3f

    .line 404
    .line 405
    move v15, v12

    .line 406
    move-wide/from16 v25, v13

    .line 407
    .line 408
    shr-long v12, v27, v1

    .line 409
    .line 410
    and-long/2addr v4, v12

    .line 411
    and-long/2addr v6, v12

    .line 412
    and-long/2addr v8, v12

    .line 413
    and-long/2addr v10, v12

    .line 414
    and-long v25, v25, v12

    .line 415
    .line 416
    not-long v12, v12

    .line 417
    and-long v21, v21, v12

    .line 418
    .line 419
    or-long v4, v4, v21

    .line 420
    .line 421
    and-long v17, v17, v12

    .line 422
    .line 423
    or-long v6, v6, v17

    .line 424
    .line 425
    and-long v17, v23, v12

    .line 426
    .line 427
    or-long v8, v8, v17

    .line 428
    .line 429
    and-long v17, v19, v12

    .line 430
    .line 431
    or-long v10, v10, v17

    .line 432
    .line 433
    and-long v12, v27, v12

    .line 434
    .line 435
    or-long v12, v25, v12

    .line 436
    .line 437
    shl-long v17, v6, v48

    .line 438
    .line 439
    or-long v4, v4, v17

    .line 440
    .line 441
    const-wide v17, 0xffffffffL

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    and-long v4, v4, v17

    .line 447
    .line 448
    shr-long/2addr v6, v15

    .line 449
    const/16 v1, 0x14

    .line 450
    .line 451
    shl-long v14, v8, v1

    .line 452
    .line 453
    or-long/2addr v6, v14

    .line 454
    and-long v6, v6, v17

    .line 455
    .line 456
    const/16 v46, 0xc

    .line 457
    .line 458
    shr-long v8, v8, v46

    .line 459
    .line 460
    const/16 v14, 0xe

    .line 461
    .line 462
    shl-long v14, v10, v14

    .line 463
    .line 464
    or-long/2addr v8, v14

    .line 465
    and-long v8, v8, v17

    .line 466
    .line 467
    const/16 v14, 0x12

    .line 468
    .line 469
    shr-long/2addr v10, v14

    .line 470
    shl-long v12, v12, v34

    .line 471
    .line 472
    or-long/2addr v10, v12

    .line 473
    and-long v10, v10, v17

    .line 474
    .line 475
    invoke-static {v0, v3}, Liz1;->C([BI)J

    .line 476
    .line 477
    .line 478
    move-result-wide v12

    .line 479
    add-long/2addr v12, v4

    .line 480
    and-long v4, v12, v17

    .line 481
    .line 482
    invoke-static {v0, v1}, Liz1;->C([BI)J

    .line 483
    .line 484
    .line 485
    move-result-wide v14

    .line 486
    add-long/2addr v14, v6

    .line 487
    shr-long v6, v12, v16

    .line 488
    .line 489
    add-long/2addr v14, v6

    .line 490
    and-long v6, v14, v17

    .line 491
    .line 492
    move/from16 v1, v47

    .line 493
    .line 494
    invoke-static {v0, v1}, Liz1;->C([BI)J

    .line 495
    .line 496
    .line 497
    move-result-wide v12

    .line 498
    add-long/2addr v12, v8

    .line 499
    shr-long v8, v14, v16

    .line 500
    .line 501
    add-long/2addr v12, v8

    .line 502
    and-long v8, v12, v17

    .line 503
    .line 504
    const/16 v1, 0x1c

    .line 505
    .line 506
    invoke-static {v0, v1}, Liz1;->C([BI)J

    .line 507
    .line 508
    .line 509
    move-result-wide v0

    .line 510
    add-long/2addr v0, v10

    .line 511
    shr-long v10, v12, v16

    .line 512
    .line 513
    add-long/2addr v0, v10

    .line 514
    and-long v0, v0, v17

    .line 515
    .line 516
    new-array v3, v3, [B

    .line 517
    .line 518
    invoke-static {v2, v4, v5, v3}, Liz1;->D(IJ[B)V

    .line 519
    .line 520
    .line 521
    move/from16 v2, v45

    .line 522
    .line 523
    invoke-static {v2, v6, v7, v3}, Liz1;->D(IJ[B)V

    .line 524
    .line 525
    .line 526
    move/from16 v2, v34

    .line 527
    .line 528
    invoke-static {v2, v8, v9, v3}, Liz1;->D(IJ[B)V

    .line 529
    .line 530
    .line 531
    const/16 v6, 0xc

    .line 532
    .line 533
    invoke-static {v6, v0, v1, v3}, Liz1;->D(IJ[B)V

    .line 534
    .line 535
    .line 536
    return-object v3

    .line 537
    :cond_2
    const-string v0, "The key length in bytes must be 32."

    .line 538
    .line 539
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    const/4 v0, 0x0

    .line 543
    return-object v0
.end method

.method public static final a(Ljava/util/List;Ljj5;)Ljava/lang/Long;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lxy6;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljj5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Long;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    const-wide v4, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    sub-long/2addr v4, v0

    .line 37
    cmp-long v4, v4, v2

    .line 38
    .line 39
    if-gez v4, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-long/2addr v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static c(FFF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    cmpl-float p1, p0, p2

    .line 7
    .line 8
    if-lez p1, :cond_1

    .line 9
    .line 10
    return p2

    .line 11
    :cond_1
    return p0
.end method

.method public static d(III)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    if-le p0, p2, :cond_1

    .line 5
    .line 6
    return p2

    .line 7
    :cond_1
    return p0
.end method

.method public static e(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lxs1;->q(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_1
    :cond_0
    return-void
.end method

.method public static final f(Let8;)Les8;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Les8;

    .line 5
    .line 6
    invoke-virtual {p0}, Let8;->getSSID()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lnq7;->s0(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Let8;->getAllowedKeyManagement()Ljava/util/BitSet;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    sget-object p0, Lmt8;->UNKNOWN:Lmt8;

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    const/16 v3, 0x8

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    sget-object p0, Lmt8;->SAE:Lmt8;

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_c

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_c

    .line 49
    .line 50
    const/16 v3, 0xa

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_2
    const/4 v3, 0x1

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    sget-object p0, Lmt8;->WPA_PSK:Lmt8;

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v4, 0x9

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    sget-object p0, Lmt8;->OWE:Lmt8;

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    const/4 v4, 0x0

    .line 82
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    invoke-virtual {p0}, Let8;->getAllowedGroupCiphers()Ljava/util/BitSet;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-nez v5, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_6

    .line 100
    .line 101
    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_7

    .line 106
    .line 107
    :cond_6
    sget-object p0, Lmt8;->WEP:Lmt8;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    :goto_0
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_a

    .line 115
    .line 116
    invoke-virtual {p0}, Let8;->getPreSharedKey()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Liz1;->q(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_9

    .line 125
    .line 126
    invoke-virtual {p0}, Let8;->getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_8

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getPsk()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    goto :goto_1

    .line 137
    :cond_8
    const/4 p0, 0x0

    .line 138
    :goto_1
    invoke-static {p0}, Liz1;->q(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_a

    .line 143
    .line 144
    :cond_9
    sget-object p0, Lmt8;->WEP:Lmt8;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_a
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_b

    .line 152
    .line 153
    sget-object p0, Lmt8;->OPEN:Lmt8;

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_b
    sget-object p0, Lmt8;->UNKNOWN:Lmt8;

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_c
    :goto_2
    sget-object p0, Lmt8;->ENTERPRISE:Lmt8;

    .line 160
    .line 161
    :goto_3
    invoke-direct {v0, v1, p0}, Les8;-><init>(Ljava/lang/String;Lmt8;)V

    .line 162
    .line 163
    .line 164
    return-object v0
.end method

.method public static g(Ldd1;)Ljava/util/List;
    .locals 24

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->FTP:Ldd1;

    .line 5
    .line 6
    sget-object v1, Ldd1;->Filen:Ldd1;

    .line 7
    .line 8
    sget-object v2, Ldd1;->MegaNz:Ldd1;

    .line 9
    .line 10
    sget-object v3, Ldd1;->OneDrive:Ldd1;

    .line 11
    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ldd1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object/from16 v1, p0

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v5, v0, 0x1

    .line 27
    .line 28
    new-instance v6, Lqd1;

    .line 29
    .line 30
    sget-object v7, Lsd1;->INTERNET_CONNECTIVITY:Lsd1;

    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    const/16 v13, 0xc0

    .line 34
    .line 35
    const v8, 0x7f130126

    .line 36
    .line 37
    .line 38
    const v9, 0x7f130125

    .line 39
    .line 40
    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x1

    .line 43
    invoke-direct/range {v6 .. v13}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 44
    .line 45
    .line 46
    move-object v0, v6

    .line 47
    new-instance v6, Lqd1;

    .line 48
    .line 49
    sget-object v7, Lsd1;->FIREBASE_BACKEND_ACCESS:Lsd1;

    .line 50
    .line 51
    const v8, 0x7f130122

    .line 52
    .line 53
    .line 54
    const v9, 0x7f130121

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v6 .. v13}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 58
    .line 59
    .line 60
    move-object v9, v6

    .line 61
    new-instance v8, Lqd1;

    .line 62
    .line 63
    sget-object v11, Lsd1;->ACCESS:Lsd1;

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0xc0

    .line 68
    .line 69
    const v12, 0x7f130113

    .line 70
    .line 71
    .line 72
    const v13, 0x7f130112

    .line 73
    .line 74
    .line 75
    const/4 v14, 0x1

    .line 76
    const/4 v15, 0x1

    .line 77
    move-object v10, v8

    .line 78
    invoke-direct/range {v10 .. v17}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 79
    .line 80
    .line 81
    new-instance v11, Lqd1;

    .line 82
    .line 83
    sget-object v12, Lsd1;->BACKUP_SCAN:Lsd1;

    .line 84
    .line 85
    const/16 v17, 0x0

    .line 86
    .line 87
    const/16 v18, 0xe0

    .line 88
    .line 89
    const v13, 0x7f130144

    .line 90
    .line 91
    .line 92
    const v14, 0x7f130143

    .line 93
    .line 94
    .line 95
    const/16 v16, 0x1

    .line 96
    .line 97
    invoke-direct/range {v11 .. v18}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 98
    .line 99
    .line 100
    new-instance v12, Lqd1;

    .line 101
    .line 102
    sget-object v13, Lsd1;->SMALL_ROUND_TRIP:Lsd1;

    .line 103
    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    const/16 v19, 0xe0

    .line 107
    .line 108
    const v14, 0x7f13014b

    .line 109
    .line 110
    .line 111
    const v15, 0x7f13014a

    .line 112
    .line 113
    .line 114
    const/16 v17, 0x1

    .line 115
    .line 116
    invoke-direct/range {v12 .. v19}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 117
    .line 118
    .line 119
    new-instance v13, Lqd1;

    .line 120
    .line 121
    sget-object v14, Lsd1;->LARGE_ROUND_TRIP:Lsd1;

    .line 122
    .line 123
    const/16 v19, 0x0

    .line 124
    .line 125
    const/16 v20, 0xe0

    .line 126
    .line 127
    const v15, 0x7f130129

    .line 128
    .line 129
    .line 130
    const v16, 0x7f130128

    .line 131
    .line 132
    .line 133
    const/16 v18, 0x0

    .line 134
    .line 135
    invoke-direct/range {v13 .. v20}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 136
    .line 137
    .line 138
    new-instance v14, Lqd1;

    .line 139
    .line 140
    sget-object v15, Lsd1;->PROVIDER_TRANSFER_PIPELINE:Lsd1;

    .line 141
    .line 142
    const/16 v20, 0x0

    .line 143
    .line 144
    const/16 v21, 0xe0

    .line 145
    .line 146
    const v16, 0x7f130134

    .line 147
    .line 148
    .line 149
    const v17, 0x7f130133

    .line 150
    .line 151
    .line 152
    const/16 v18, 0x1

    .line 153
    .line 154
    const/16 v19, 0x1

    .line 155
    .line 156
    invoke-direct/range {v14 .. v21}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lqd1;

    .line 160
    .line 161
    sget-object v2, Lsd1;->MULTITHREADED_DOWNLOAD:Lsd1;

    .line 162
    .line 163
    const v3, 0x7f13012e

    .line 164
    .line 165
    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const/16 v8, 0xa0

    .line 171
    .line 172
    const v3, 0x7f13012d

    .line 173
    .line 174
    .line 175
    const v4, 0x7f13012c

    .line 176
    .line 177
    .line 178
    const/4 v6, 0x0

    .line 179
    invoke-direct/range {v1 .. v8}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 180
    .line 181
    .line 182
    new-instance v15, Lqd1;

    .line 183
    .line 184
    sget-object v16, Lsd1;->THUMBNAIL_DOWNLOAD:Lsd1;

    .line 185
    .line 186
    const/16 v21, 0x0

    .line 187
    .line 188
    const/16 v22, 0xe0

    .line 189
    .line 190
    const v17, 0x7f13015c

    .line 191
    .line 192
    .line 193
    const v18, 0x7f13015b

    .line 194
    .line 195
    .line 196
    const/16 v20, 0x1

    .line 197
    .line 198
    invoke-direct/range {v15 .. v22}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 199
    .line 200
    .line 201
    new-instance v16, Lqd1;

    .line 202
    .line 203
    sget-object v17, Lsd1;->VERSION_UPLOAD:Lsd1;

    .line 204
    .line 205
    const/16 v22, 0x0

    .line 206
    .line 207
    const/16 v23, 0xe0

    .line 208
    .line 209
    const v18, 0x7f130163

    .line 210
    .line 211
    .line 212
    const v19, 0x7f130162

    .line 213
    .line 214
    .line 215
    const/16 v21, 0x1

    .line 216
    .line 217
    invoke-direct/range {v16 .. v23}, Lqd1;-><init>(Lsd1;IIZZLjava/lang/Integer;I)V

    .line 218
    .line 219
    .line 220
    move-object v6, v0

    .line 221
    move-object v7, v9

    .line 222
    move-object v8, v10

    .line 223
    move-object v9, v11

    .line 224
    move-object v10, v12

    .line 225
    move-object v11, v13

    .line 226
    move-object v12, v14

    .line 227
    move-object v14, v15

    .line 228
    move-object/from16 v15, v16

    .line 229
    .line 230
    move-object v13, v1

    .line 231
    filled-new-array/range {v6 .. v15}, [Lqd1;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    return-object v0
.end method

.method public static h(Ldd1;Z)Ljava/util/ArrayList;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Liz1;->g(Ldd1;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lqd1;

    .line 28
    .line 29
    iget-boolean v6, v1, Lqd1;->d:Z

    .line 30
    .line 31
    iget-object v3, v1, Lqd1;->a:Lsd1;

    .line 32
    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    iget-boolean v2, v1, Lqd1;->e:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    sget-object v2, Lsd1;->LARGE_ROUND_TRIP:Lsd1;

    .line 42
    .line 43
    if-ne v3, v2, :cond_2

    .line 44
    .line 45
    :cond_1
    iget v4, v1, Lqd1;->b:I

    .line 46
    .line 47
    iget v5, v1, Lqd1;->c:I

    .line 48
    .line 49
    iget-boolean v8, v1, Lqd1;->f:Z

    .line 50
    .line 51
    iget-object v9, v1, Lqd1;->g:Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v10, v1, Lqd1;->h:Ldd1;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v2, Lqd1;

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    invoke-direct/range {v2 .. v10}, Lqd1;-><init>(Lsd1;IIZZZLjava/lang/Integer;Ldd1;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    :goto_1
    if-eqz v2, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-object v0
.end method

.method public static i([B[I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lg67;->m([BI[I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static j(Lorg/swiftapps/swiftbackup/home/HomeActivity;F)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "%"

    .line 21
    .line 22
    invoke-static {p1, v0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const v0, 0x7f130590

    .line 27
    .line 28
    .line 29
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method public static k(I)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x7e

    .line 4
    .line 5
    if-ne p0, v2, :cond_0

    .line 6
    .line 7
    new-array p0, v1, [B

    .line 8
    .line 9
    aput-byte v2, p0, v0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    shr-int/lit8 v2, p0, 0x8

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    and-int/lit16 p0, p0, 0xff

    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    const/4 v3, 0x3

    .line 21
    new-array v3, v3, [B

    .line 22
    .line 23
    const/16 v4, 0x5f

    .line 24
    .line 25
    aput-byte v4, v3, v0

    .line 26
    .line 27
    aput-byte v2, v3, v1

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    aput-byte p0, v3, v0

    .line 31
    .line 32
    return-object v3
.end method

.method public static l(Lgc8;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lgc8;->f:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {v0}, Lu81;->u(Ljava/lang/Class;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_8

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-ne v1, p0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne v1, p0, :cond_1

    .line 25
    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    if-ne v1, p0, :cond_2

    .line 34
    .line 35
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    if-ne v1, p0, :cond_3

    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    if-ne v1, p0, :cond_4

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_4
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    if-ne v1, p0, :cond_5

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_5
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    if-ne v1, p0, :cond_6

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_6
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    if-ne v1, p0, :cond_7

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string v0, " is not a primitive type"

    .line 91
    .line 92
    const-string v1, "Class "

    .line 93
    .line 94
    invoke-static {p0, v0, v1}, Lz5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_8
    invoke-virtual {p0}, Lgc8;->x0()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_d

    .line 103
    .line 104
    invoke-virtual {p0}, Lho6;->C()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_9

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_9
    const-class v1, Ljava/lang/String;

    .line 112
    .line 113
    if-ne v0, v1, :cond_a

    .line 114
    .line 115
    const-string p0, ""

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_a
    const-class v0, Ljava/util/Date;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lgc8;->A0(Ljava/lang/Class;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_b

    .line 125
    .line 126
    new-instance p0, Ljava/util/Date;

    .line 127
    .line 128
    invoke-direct {p0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_b
    const-class v0, Ljava/util/Calendar;

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lgc8;->A0(Ljava/lang/Class;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_c

    .line 139
    .line 140
    new-instance p0, Ljava/util/GregorianCalendar;

    .line 141
    .line 142
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_c
    return-object v2

    .line 150
    :cond_d
    :goto_0
    sget-object p0, Lpk4;->c:Lpk4;

    .line 151
    .line 152
    return-object p0
.end method

.method public static m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lyl6;->c()Lyl6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lyl6;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final n(III)I
    .locals 1

    .line 1
    if-lez p2, :cond_4

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    rem-int v0, p1, p2

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    add-int/2addr v0, p2

    .line 12
    :goto_0
    rem-int/2addr p0, p2

    .line 13
    if-ltz p0, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    add-int/2addr p0, p2

    .line 17
    :goto_1
    sub-int/2addr v0, p0

    .line 18
    rem-int/2addr v0, p2

    .line 19
    if-ltz v0, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_3
    add-int/2addr v0, p2

    .line 23
    :goto_2
    sub-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_4
    if-gez p2, :cond_9

    .line 26
    .line 27
    if-gt p0, p1, :cond_5

    .line 28
    .line 29
    :goto_3
    return p1

    .line 30
    :cond_5
    neg-int p2, p2

    .line 31
    rem-int/2addr p0, p2

    .line 32
    if-ltz p0, :cond_6

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_6
    add-int/2addr p0, p2

    .line 36
    :goto_4
    rem-int v0, p1, p2

    .line 37
    .line 38
    if-ltz v0, :cond_7

    .line 39
    .line 40
    goto :goto_5

    .line 41
    :cond_7
    add-int/2addr v0, p2

    .line 42
    :goto_5
    sub-int/2addr p0, v0

    .line 43
    rem-int/2addr p0, p2

    .line 44
    if-ltz p0, :cond_8

    .line 45
    .line 46
    goto :goto_6

    .line 47
    :cond_8
    add-int/2addr p0, p2

    .line 48
    :goto_6
    add-int/2addr p0, p1

    .line 49
    return p0

    .line 50
    :cond_9
    const-string p0, "Step is zero."

    .line 51
    .line 52
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static final o(Let8;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Let8;->getPasswordInfo()Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntIdentity()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Liz1;->q(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntAnonIdentity()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Liz1;->q(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->getEntPassword()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Liz1;->q(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static p()Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lx88;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const-class v0, Landroid/os/Trace;

    .line 13
    .line 14
    :try_start_0
    sget-object v1, Liz1;->h:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "TRACE_TAG_APP"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    sput-wide v3, Liz1;->g:J

    .line 30
    .line 31
    const-string v1, "isTagEnabled"

    .line 32
    .line 33
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Liz1;->h:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    :cond_1
    sget-object v0, Liz1;->h:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    sget-wide v3, Liz1;->g:J

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    throw v0

    .line 89
    :cond_3
    const-string v1, "Trace"

    .line 90
    .line 91
    const-string v3, "Unable to call isTagEnabled via reflection"

    .line 92
    .line 93
    invoke-static {v1, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    return v2
.end method

.method public static final q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lnq7;->s0(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "*"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Liz1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p1, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_4

    .line 21
    :cond_0
    :try_start_1
    const-string v1, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_3
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "UTF-8"

    .line 37
    .line 38
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "locales"

    .line 44
    .line 45
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    const-string v3, "application_locales"

    .line 49
    .line 50
    invoke-interface {v1, v2, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    const-string p1, "locales"

    .line 54
    .line 55
    invoke-interface {v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p1

    .line 70
    :try_start_5
    const-string v1, "AppLocalesStorageHelper"

    .line 71
    .line 72
    const-string v2, "Storing App Locales : Failed to persist app-locales in storage "

    .line 73
    .line 74
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    .line 76
    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_1
    :cond_1
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    goto :goto_3

    .line 82
    :goto_2
    if-eqz p0, :cond_2

    .line 83
    .line 84
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 85
    .line 86
    .line 87
    :catch_2
    :cond_2
    :try_start_8
    throw p1

    .line 88
    :catch_3
    const-string p0, "AppLocalesStorageHelper"

    .line 89
    .line 90
    const-string p1, "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing "

    .line 91
    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    monitor-exit v0

    .line 96
    :goto_3
    return-void

    .line 97
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 98
    throw p0
.end method

.method public static s(Lox1;Lox1;)Lox1;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Llv2;->a:Llv2;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Loc1;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Loc1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0, v0}, Lox1;->fold(Ljava/lang/Object;Lqt3;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lox1;

    .line 20
    .line 21
    return-object p0
.end method

.method public static t(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 8

    .line 1
    const-string v1, "Failed query: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 p0, 0x0

    .line 8
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {p0}, Liz1;->e(Landroid/database/Cursor;)V

    .line 38
    .line 39
    .line 40
    return-wide p1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0}, Liz1;->e(Landroid/database/Cursor;)V

    .line 48
    .line 49
    .line 50
    return-wide p3

    .line 51
    :goto_0
    :try_start_1
    const-string p2, "DocumentFile"

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Liz1;->e(Landroid/database/Cursor;)V

    .line 69
    .line 70
    .line 71
    return-wide p3

    .line 72
    :goto_1
    invoke-static {p0}, Liz1;->e(Landroid/database/Cursor;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public static u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v1, "Failed query: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 p0, 0x0

    .line 8
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {p1}, Liz1;->e(Landroid/database/Cursor;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p2, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Liz1;->e(Landroid/database/Cursor;)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    move-object v8, p1

    .line 54
    move-object p1, p0

    .line 55
    move-object p0, v8

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    move-object p2, v0

    .line 59
    move-object p1, p0

    .line 60
    :goto_0
    :try_start_2
    const-string v0, "DocumentFile"

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Liz1;->e(Landroid/database/Cursor;)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :goto_1
    invoke-static {p1}, Liz1;->e(Landroid/database/Cursor;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static v(Ljava/io/InputStream;)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1000

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static w(Ljava/io/InputStream;[BI)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    sub-int v1, p2, v0

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    add-int/2addr v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    return v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Liz1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    :try_start_1
    const-string v2, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "UTF-8"

    .line 17
    .line 18
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v5, v6, :cond_3

    .line 31
    .line 32
    const/4 v6, 0x3

    .line 33
    if-ne v5, v6, :cond_1

    .line 34
    .line 35
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-le v7, v4, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_5

    .line 44
    :cond_1
    :goto_1
    if-eq v5, v6, :cond_0

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    if-ne v5, v6, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v6, "locales"

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    const-string v4, "application_locales"

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_3
    if-eqz v2, :cond_4

    .line 70
    .line 71
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    goto :goto_6

    .line 77
    :catch_0
    :try_start_4
    const-string v3, "AppLocalesStorageHelper"

    .line 78
    .line 79
    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 80
    .line 81
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_1
    :cond_4
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const-string v2, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    return-object v1

    .line 101
    :goto_5
    if-eqz v2, :cond_6

    .line 102
    .line 103
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    .line 105
    .line 106
    :catch_2
    :cond_6
    :try_start_7
    throw p0

    .line 107
    :catch_3
    monitor-exit v0

    .line 108
    return-object v1

    .line 109
    :goto_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 110
    throw p0
.end method

.method public static y([B)[B
    .locals 55

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lg67;->l([BI)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    int-to-long v2, v2

    .line 9
    const-wide v4, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v2, v4

    .line 15
    const/4 v6, 0x4

    .line 16
    invoke-static {v0, v6}, Lg67;->k([BI)I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    shl-int/2addr v7, v6

    .line 21
    int-to-long v7, v7

    .line 22
    and-long/2addr v7, v4

    .line 23
    const/4 v9, 0x7

    .line 24
    invoke-static {v0, v9}, Lg67;->l([BI)I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    int-to-long v10, v10

    .line 29
    and-long/2addr v10, v4

    .line 30
    const/16 v12, 0xb

    .line 31
    .line 32
    invoke-static {v0, v12}, Lg67;->k([BI)I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    shl-int/2addr v12, v6

    .line 37
    int-to-long v12, v12

    .line 38
    and-long/2addr v12, v4

    .line 39
    const/16 v14, 0xe

    .line 40
    .line 41
    invoke-static {v0, v14}, Lg67;->l([BI)I

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    move-wide/from16 v16, v4

    .line 46
    .line 47
    int-to-long v4, v15

    .line 48
    and-long v4, v4, v16

    .line 49
    .line 50
    const/16 v15, 0x12

    .line 51
    .line 52
    invoke-static {v0, v15}, Lg67;->k([BI)I

    .line 53
    .line 54
    .line 55
    move-result v15

    .line 56
    shl-int/2addr v15, v6

    .line 57
    move/from16 v18, v6

    .line 58
    .line 59
    move-wide/from16 v19, v7

    .line 60
    .line 61
    int-to-long v6, v15

    .line 62
    and-long v6, v6, v16

    .line 63
    .line 64
    const/16 v8, 0x15

    .line 65
    .line 66
    invoke-static {v0, v8}, Lg67;->l([BI)I

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    int-to-long v14, v15

    .line 71
    and-long v14, v14, v16

    .line 72
    .line 73
    const/16 v8, 0x19

    .line 74
    .line 75
    invoke-static {v0, v8}, Lg67;->k([BI)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    shl-int/lit8 v8, v8, 0x4

    .line 80
    .line 81
    move-wide/from16 v21, v10

    .line 82
    .line 83
    int-to-long v9, v8

    .line 84
    and-long v8, v9, v16

    .line 85
    .line 86
    const/16 v10, 0x1c

    .line 87
    .line 88
    invoke-static {v0, v10}, Lg67;->l([BI)I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    move/from16 v23, v10

    .line 93
    .line 94
    int-to-long v10, v11

    .line 95
    and-long v10, v10, v16

    .line 96
    .line 97
    const/16 v1, 0x20

    .line 98
    .line 99
    invoke-static {v0, v1}, Lg67;->k([BI)I

    .line 100
    .line 101
    .line 102
    move-result v24

    .line 103
    shl-int/lit8 v1, v24, 0x4

    .line 104
    .line 105
    move-wide/from16 v25, v2

    .line 106
    .line 107
    int-to-long v1, v1

    .line 108
    and-long v1, v1, v16

    .line 109
    .line 110
    const/16 v3, 0x23

    .line 111
    .line 112
    invoke-static {v0, v3}, Lg67;->l([BI)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    move-wide/from16 v27, v1

    .line 117
    .line 118
    int-to-long v1, v3

    .line 119
    and-long v1, v1, v16

    .line 120
    .line 121
    const/16 v3, 0x27

    .line 122
    .line 123
    invoke-static {v0, v3}, Lg67;->k([BI)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    shl-int/lit8 v3, v3, 0x4

    .line 128
    .line 129
    move-wide/from16 v29, v1

    .line 130
    .line 131
    int-to-long v1, v3

    .line 132
    and-long v1, v1, v16

    .line 133
    .line 134
    const/16 v3, 0x2a

    .line 135
    .line 136
    invoke-static {v0, v3}, Lg67;->l([BI)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    move-wide/from16 v31, v1

    .line 141
    .line 142
    int-to-long v1, v3

    .line 143
    and-long v1, v1, v16

    .line 144
    .line 145
    const/16 v3, 0x2e

    .line 146
    .line 147
    invoke-static {v0, v3}, Lg67;->k([BI)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    shl-int/lit8 v3, v3, 0x4

    .line 152
    .line 153
    move-wide/from16 v33, v1

    .line 154
    .line 155
    int-to-long v1, v3

    .line 156
    and-long v1, v1, v16

    .line 157
    .line 158
    const/16 v3, 0x31

    .line 159
    .line 160
    invoke-static {v0, v3}, Lg67;->l([BI)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    move-wide/from16 v35, v1

    .line 165
    .line 166
    int-to-long v1, v3

    .line 167
    and-long v37, v1, v16

    .line 168
    .line 169
    const/16 v3, 0x35

    .line 170
    .line 171
    invoke-static {v0, v3}, Lg67;->k([BI)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    shl-int/lit8 v3, v3, 0x4

    .line 176
    .line 177
    move-wide/from16 v39, v1

    .line 178
    .line 179
    int-to-long v1, v3

    .line 180
    and-long v1, v1, v16

    .line 181
    .line 182
    const/16 v3, 0x38

    .line 183
    .line 184
    invoke-static {v0, v3}, Lg67;->l([BI)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    move-wide/from16 v41, v1

    .line 189
    .line 190
    int-to-long v1, v3

    .line 191
    and-long v43, v1, v16

    .line 192
    .line 193
    const/16 v3, 0x3c

    .line 194
    .line 195
    invoke-static {v0, v3}, Lg67;->k([BI)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    shl-int/lit8 v3, v3, 0x4

    .line 200
    .line 201
    move-wide/from16 v45, v1

    .line 202
    .line 203
    int-to-long v0, v3

    .line 204
    and-long v0, v0, v16

    .line 205
    .line 206
    const/16 v2, 0x3f

    .line 207
    .line 208
    aget-byte v2, p0, v2

    .line 209
    .line 210
    int-to-long v2, v2

    .line 211
    const-wide/16 v16, 0xff

    .line 212
    .line 213
    and-long v2, v2, v16

    .line 214
    .line 215
    const-wide/32 v16, -0x30a2c13

    .line 216
    .line 217
    .line 218
    mul-long v47, v2, v16

    .line 219
    .line 220
    sub-long v27, v27, v47

    .line 221
    .line 222
    const-wide/32 v47, 0x12631a6

    .line 223
    .line 224
    .line 225
    mul-long v49, v2, v47

    .line 226
    .line 227
    sub-long v29, v29, v49

    .line 228
    .line 229
    const-wide/32 v49, 0x79cd658

    .line 230
    .line 231
    .line 232
    mul-long v51, v2, v49

    .line 233
    .line 234
    sub-long v31, v31, v51

    .line 235
    .line 236
    const-wide/32 v51, -0x6215d1

    .line 237
    .line 238
    .line 239
    mul-long v53, v2, v51

    .line 240
    .line 241
    sub-long v33, v33, v53

    .line 242
    .line 243
    const-wide/16 v53, 0x14df

    .line 244
    .line 245
    mul-long v2, v2, v53

    .line 246
    .line 247
    sub-long v2, v35, v2

    .line 248
    .line 249
    shr-long v35, v43, v23

    .line 250
    .line 251
    add-long v0, v0, v35

    .line 252
    .line 253
    const-wide/32 v35, 0xfffffff

    .line 254
    .line 255
    .line 256
    and-long v43, v45, v35

    .line 257
    .line 258
    mul-long v45, v0, v16

    .line 259
    .line 260
    sub-long v10, v10, v45

    .line 261
    .line 262
    mul-long v45, v0, v47

    .line 263
    .line 264
    sub-long v27, v27, v45

    .line 265
    .line 266
    mul-long v45, v0, v49

    .line 267
    .line 268
    sub-long v29, v29, v45

    .line 269
    .line 270
    mul-long v45, v0, v51

    .line 271
    .line 272
    sub-long v31, v31, v45

    .line 273
    .line 274
    mul-long v0, v0, v53

    .line 275
    .line 276
    sub-long v33, v33, v0

    .line 277
    .line 278
    mul-long v0, v43, v16

    .line 279
    .line 280
    sub-long/2addr v8, v0

    .line 281
    mul-long v0, v43, v47

    .line 282
    .line 283
    sub-long/2addr v10, v0

    .line 284
    mul-long v0, v43, v49

    .line 285
    .line 286
    sub-long v27, v27, v0

    .line 287
    .line 288
    mul-long v0, v43, v51

    .line 289
    .line 290
    sub-long v29, v29, v0

    .line 291
    .line 292
    mul-long v43, v43, v53

    .line 293
    .line 294
    sub-long v31, v31, v43

    .line 295
    .line 296
    shr-long v0, v37, v23

    .line 297
    .line 298
    add-long v0, v41, v0

    .line 299
    .line 300
    and-long v37, v39, v35

    .line 301
    .line 302
    mul-long v39, v0, v16

    .line 303
    .line 304
    sub-long v14, v14, v39

    .line 305
    .line 306
    mul-long v39, v0, v47

    .line 307
    .line 308
    sub-long v8, v8, v39

    .line 309
    .line 310
    mul-long v39, v0, v49

    .line 311
    .line 312
    sub-long v10, v10, v39

    .line 313
    .line 314
    mul-long v39, v0, v51

    .line 315
    .line 316
    sub-long v27, v27, v39

    .line 317
    .line 318
    mul-long v0, v0, v53

    .line 319
    .line 320
    sub-long v29, v29, v0

    .line 321
    .line 322
    mul-long v0, v37, v16

    .line 323
    .line 324
    sub-long/2addr v6, v0

    .line 325
    mul-long v0, v37, v47

    .line 326
    .line 327
    sub-long/2addr v14, v0

    .line 328
    mul-long v0, v37, v49

    .line 329
    .line 330
    sub-long/2addr v8, v0

    .line 331
    mul-long v0, v37, v51

    .line 332
    .line 333
    sub-long/2addr v10, v0

    .line 334
    mul-long v37, v37, v53

    .line 335
    .line 336
    sub-long v27, v27, v37

    .line 337
    .line 338
    shr-long v0, v33, v23

    .line 339
    .line 340
    add-long/2addr v2, v0

    .line 341
    and-long v0, v33, v35

    .line 342
    .line 343
    mul-long v33, v2, v16

    .line 344
    .line 345
    sub-long v4, v4, v33

    .line 346
    .line 347
    mul-long v33, v2, v47

    .line 348
    .line 349
    sub-long v6, v6, v33

    .line 350
    .line 351
    mul-long v33, v2, v49

    .line 352
    .line 353
    sub-long v14, v14, v33

    .line 354
    .line 355
    mul-long v33, v2, v51

    .line 356
    .line 357
    sub-long v8, v8, v33

    .line 358
    .line 359
    mul-long v2, v2, v53

    .line 360
    .line 361
    sub-long/2addr v10, v2

    .line 362
    shr-long v2, v31, v23

    .line 363
    .line 364
    add-long/2addr v0, v2

    .line 365
    and-long v2, v31, v35

    .line 366
    .line 367
    mul-long v31, v0, v16

    .line 368
    .line 369
    sub-long v12, v12, v31

    .line 370
    .line 371
    mul-long v31, v0, v47

    .line 372
    .line 373
    sub-long v4, v4, v31

    .line 374
    .line 375
    mul-long v31, v0, v49

    .line 376
    .line 377
    sub-long v6, v6, v31

    .line 378
    .line 379
    mul-long v31, v0, v51

    .line 380
    .line 381
    sub-long v14, v14, v31

    .line 382
    .line 383
    mul-long v0, v0, v53

    .line 384
    .line 385
    sub-long/2addr v8, v0

    .line 386
    shr-long v0, v29, v23

    .line 387
    .line 388
    add-long/2addr v2, v0

    .line 389
    and-long v0, v29, v35

    .line 390
    .line 391
    mul-long v29, v2, v16

    .line 392
    .line 393
    sub-long v21, v21, v29

    .line 394
    .line 395
    mul-long v29, v2, v47

    .line 396
    .line 397
    sub-long v12, v12, v29

    .line 398
    .line 399
    mul-long v29, v2, v49

    .line 400
    .line 401
    sub-long v4, v4, v29

    .line 402
    .line 403
    mul-long v29, v2, v51

    .line 404
    .line 405
    sub-long v6, v6, v29

    .line 406
    .line 407
    mul-long v2, v2, v53

    .line 408
    .line 409
    sub-long/2addr v14, v2

    .line 410
    shr-long v2, v27, v23

    .line 411
    .line 412
    add-long/2addr v0, v2

    .line 413
    and-long v2, v27, v35

    .line 414
    .line 415
    mul-long v27, v0, v16

    .line 416
    .line 417
    sub-long v18, v19, v27

    .line 418
    .line 419
    mul-long v27, v0, v47

    .line 420
    .line 421
    sub-long v21, v21, v27

    .line 422
    .line 423
    mul-long v27, v0, v49

    .line 424
    .line 425
    sub-long v12, v12, v27

    .line 426
    .line 427
    mul-long v27, v0, v51

    .line 428
    .line 429
    sub-long v4, v4, v27

    .line 430
    .line 431
    mul-long v0, v0, v53

    .line 432
    .line 433
    sub-long/2addr v6, v0

    .line 434
    shr-long v0, v8, v23

    .line 435
    .line 436
    add-long/2addr v10, v0

    .line 437
    and-long v0, v8, v35

    .line 438
    .line 439
    shr-long v8, v10, v23

    .line 440
    .line 441
    add-long/2addr v2, v8

    .line 442
    and-long v8, v10, v35

    .line 443
    .line 444
    const/16 v10, 0x1b

    .line 445
    .line 446
    ushr-long v10, v8, v10

    .line 447
    .line 448
    add-long/2addr v2, v10

    .line 449
    mul-long v27, v2, v16

    .line 450
    .line 451
    sub-long v25, v25, v27

    .line 452
    .line 453
    mul-long v27, v2, v47

    .line 454
    .line 455
    sub-long v18, v18, v27

    .line 456
    .line 457
    mul-long v27, v2, v49

    .line 458
    .line 459
    sub-long v21, v21, v27

    .line 460
    .line 461
    mul-long v27, v2, v51

    .line 462
    .line 463
    sub-long v12, v12, v27

    .line 464
    .line 465
    mul-long v2, v2, v53

    .line 466
    .line 467
    sub-long/2addr v4, v2

    .line 468
    shr-long v2, v25, v23

    .line 469
    .line 470
    add-long v18, v18, v2

    .line 471
    .line 472
    and-long v2, v25, v35

    .line 473
    .line 474
    shr-long v25, v18, v23

    .line 475
    .line 476
    add-long v21, v21, v25

    .line 477
    .line 478
    and-long v18, v18, v35

    .line 479
    .line 480
    shr-long v25, v21, v23

    .line 481
    .line 482
    add-long v12, v12, v25

    .line 483
    .line 484
    and-long v21, v21, v35

    .line 485
    .line 486
    shr-long v25, v12, v23

    .line 487
    .line 488
    add-long v4, v4, v25

    .line 489
    .line 490
    and-long v12, v12, v35

    .line 491
    .line 492
    shr-long v25, v4, v23

    .line 493
    .line 494
    add-long v6, v6, v25

    .line 495
    .line 496
    and-long v4, v4, v35

    .line 497
    .line 498
    shr-long v25, v6, v23

    .line 499
    .line 500
    add-long v14, v14, v25

    .line 501
    .line 502
    and-long v6, v6, v35

    .line 503
    .line 504
    shr-long v25, v14, v23

    .line 505
    .line 506
    add-long v0, v0, v25

    .line 507
    .line 508
    and-long v14, v14, v35

    .line 509
    .line 510
    shr-long v25, v0, v23

    .line 511
    .line 512
    add-long v8, v8, v25

    .line 513
    .line 514
    and-long v0, v0, v35

    .line 515
    .line 516
    shr-long v25, v8, v23

    .line 517
    .line 518
    and-long v8, v8, v35

    .line 519
    .line 520
    sub-long v25, v25, v10

    .line 521
    .line 522
    and-long v10, v25, v16

    .line 523
    .line 524
    add-long/2addr v2, v10

    .line 525
    and-long v10, v25, v47

    .line 526
    .line 527
    add-long v18, v18, v10

    .line 528
    .line 529
    and-long v10, v25, v49

    .line 530
    .line 531
    add-long v21, v21, v10

    .line 532
    .line 533
    and-long v10, v25, v51

    .line 534
    .line 535
    add-long/2addr v12, v10

    .line 536
    and-long v10, v25, v53

    .line 537
    .line 538
    add-long/2addr v4, v10

    .line 539
    shr-long v10, v2, v23

    .line 540
    .line 541
    add-long v18, v18, v10

    .line 542
    .line 543
    and-long v2, v2, v35

    .line 544
    .line 545
    shr-long v10, v18, v23

    .line 546
    .line 547
    add-long v21, v21, v10

    .line 548
    .line 549
    and-long v10, v18, v35

    .line 550
    .line 551
    shr-long v16, v21, v23

    .line 552
    .line 553
    add-long v12, v12, v16

    .line 554
    .line 555
    and-long v16, v21, v35

    .line 556
    .line 557
    shr-long v18, v12, v23

    .line 558
    .line 559
    add-long v4, v4, v18

    .line 560
    .line 561
    and-long v12, v12, v35

    .line 562
    .line 563
    shr-long v18, v4, v23

    .line 564
    .line 565
    add-long v6, v6, v18

    .line 566
    .line 567
    and-long v4, v4, v35

    .line 568
    .line 569
    shr-long v18, v6, v23

    .line 570
    .line 571
    add-long v14, v14, v18

    .line 572
    .line 573
    and-long v6, v6, v35

    .line 574
    .line 575
    shr-long v18, v14, v23

    .line 576
    .line 577
    add-long v0, v0, v18

    .line 578
    .line 579
    and-long v14, v14, v35

    .line 580
    .line 581
    shr-long v18, v0, v23

    .line 582
    .line 583
    add-long v8, v8, v18

    .line 584
    .line 585
    and-long v0, v0, v35

    .line 586
    .line 587
    move-wide/from16 v18, v0

    .line 588
    .line 589
    const/16 v0, 0x20

    .line 590
    .line 591
    new-array v0, v0, [B

    .line 592
    .line 593
    shl-long v10, v10, v23

    .line 594
    .line 595
    or-long v1, v2, v10

    .line 596
    .line 597
    const/4 v3, 0x0

    .line 598
    invoke-static {v3, v1, v2, v0}, Lg67;->p(IJ[B)V

    .line 599
    .line 600
    .line 601
    shl-long v1, v12, v23

    .line 602
    .line 603
    or-long v1, v16, v1

    .line 604
    .line 605
    const/4 v3, 0x7

    .line 606
    invoke-static {v3, v1, v2, v0}, Lg67;->p(IJ[B)V

    .line 607
    .line 608
    .line 609
    shl-long v1, v6, v23

    .line 610
    .line 611
    or-long/2addr v1, v4

    .line 612
    const/16 v3, 0xe

    .line 613
    .line 614
    invoke-static {v3, v1, v2, v0}, Lg67;->p(IJ[B)V

    .line 615
    .line 616
    .line 617
    shl-long v1, v18, v23

    .line 618
    .line 619
    or-long/2addr v1, v14

    .line 620
    const/16 v3, 0x15

    .line 621
    .line 622
    invoke-static {v3, v1, v2, v0}, Lg67;->p(IJ[B)V

    .line 623
    .line 624
    .line 625
    long-to-int v1, v8

    .line 626
    move/from16 v2, v23

    .line 627
    .line 628
    invoke-static {v0, v1, v2}, Lg67;->n([BII)V

    .line 629
    .line 630
    .line 631
    return-object v0
.end method

.method public static z(Ljava/lang/String;Lo93;)Lub;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ln93;->a:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/io/File;

    .line 22
    .line 23
    const-string v1, "/system/bin/sh"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "/bin/sh"

    .line 36
    .line 37
    :goto_0
    new-instance p1, Ljava/lang/ProcessBuilder;

    .line 38
    .line 39
    const-string v2, "-c"

    .line 40
    .line 41
    filled-new-array {v1, v2, p0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    new-instance v1, Ljava/io/InputStreamReader;

    .line 66
    .line 67
    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Ljava/io/BufferedReader;

    .line 71
    .line 72
    const/16 v0, 0x2000

    .line 73
    .line 74
    invoke-direct {p1, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 75
    .line 76
    .line 77
    :try_start_0
    invoke-static {p1}, Lrs9;->q(Ljava/io/BufferedReader;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    new-instance p1, Lub;

    .line 89
    .line 90
    invoke-direct {p1, v0, p0}, Lub;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    invoke-static {p1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_1
    invoke-static {}, Lq;->j()V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0

    .line 106
    :cond_2
    filled-new-array {p0}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Lqe7;->c([Ljava/lang/String;)Lne7;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    new-instance p1, Lub;

    .line 115
    .line 116
    iget-object v0, p0, Lne7;->a:Ljava/util/ArrayList;

    .line 117
    .line 118
    iget p0, p0, Lne7;->b:I

    .line 119
    .line 120
    invoke-direct {p1, v0, p0}, Lub;-><init>(Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_3
    sget-object p1, Lorg/swiftapps/rootservice/ShellHelper;->INSTANCE:Lorg/swiftapps/rootservice/ShellHelper;

    .line 125
    .line 126
    filled-new-array {p0}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p1, p0}, Lorg/swiftapps/rootservice/ShellHelper;->su([Ljava/lang/String;)Lod7;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lod7;->b()Lgn6;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-instance p1, Lub;

    .line 139
    .line 140
    invoke-virtual {p0}, Lgn6;->a()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget p0, p0, Lgn6;->c:I

    .line 148
    .line 149
    invoke-direct {p1, v0, p0}, Lub;-><init>(Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    return-object p1
.end method


# virtual methods
.method public abstract B(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
