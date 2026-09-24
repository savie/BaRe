.class public final Lka5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lka5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lka5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lka5;->a:Lka5;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Lia5;
    .locals 5

    .line 1
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v1, v0, [C

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x3a

    .line 14
    .line 15
    aput-char v3, v1, v2

    .line 16
    .line 17
    const/4 v3, 0x6

    .line 18
    invoke-static {p0, v1, v3}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x4

    .line 27
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2}, Luq7;->X(Ljava/lang/String;)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x3

    .line 62
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/String;

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ne v1, v0, :cond_4

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ltz v0, :cond_4

    .line 84
    .line 85
    const/16 v1, 0x100

    .line 86
    .line 87
    if-ge v0, v1, :cond_4

    .line 88
    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/16 v1, 0x40

    .line 97
    .line 98
    if-eq v0, v1, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance v0, Lia5;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-direct {v0, p0, v2, v3, v1}, Lia5;-><init>(Ljava/lang/String;JI)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 116
    return-object p0
.end method

.method public static b([BJJJLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    const/16 v3, 0x3c

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    const-string v3, "SHA-256"

    .line 14
    .line 15
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    new-array v6, v5, [B

    .line 22
    .line 23
    move-wide/from16 v7, p3

    .line 24
    .line 25
    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    if-nez v9, :cond_1

    .line 30
    .line 31
    const-wide v9, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v9, v7, v9

    .line 37
    .line 38
    if-gtz v9, :cond_1

    .line 39
    .line 40
    const/16 v9, 0x18

    .line 41
    .line 42
    ushr-long v10, v7, v9

    .line 43
    .line 44
    const-wide/16 v12, 0xff

    .line 45
    .line 46
    and-long/2addr v10, v12

    .line 47
    long-to-int v10, v10

    .line 48
    int-to-byte v10, v10

    .line 49
    const/4 v11, 0x0

    .line 50
    aput-byte v10, v2, v11

    .line 51
    .line 52
    const/16 v14, 0x10

    .line 53
    .line 54
    ushr-long v15, v7, v14

    .line 55
    .line 56
    move/from16 p3, v9

    .line 57
    .line 58
    move/from16 p4, v10

    .line 59
    .line 60
    and-long v9, v15, v12

    .line 61
    .line 62
    long-to-int v9, v9

    .line 63
    int-to-byte v9, v9

    .line 64
    const/4 v10, 0x1

    .line 65
    aput-byte v9, v2, v10

    .line 66
    .line 67
    const/16 v15, 0x8

    .line 68
    .line 69
    ushr-long v16, v7, v15

    .line 70
    .line 71
    move-wide/from16 v18, v12

    .line 72
    .line 73
    and-long v12, v16, v18

    .line 74
    .line 75
    long-to-int v12, v12

    .line 76
    int-to-byte v12, v12

    .line 77
    const/4 v13, 0x2

    .line 78
    aput-byte v12, v2, v13

    .line 79
    .line 80
    move/from16 v17, v13

    .line 81
    .line 82
    move/from16 v16, v14

    .line 83
    .line 84
    and-long v13, v7, v18

    .line 85
    .line 86
    long-to-int v13, v13

    .line 87
    int-to-byte v13, v13

    .line 88
    const/4 v14, 0x3

    .line 89
    aput-byte v13, v2, v14

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 95
    .line 96
    .line 97
    move/from16 v20, v10

    .line 98
    .line 99
    array-length v10, v0

    .line 100
    sub-int/2addr v10, v1

    .line 101
    invoke-virtual {v3, v0, v1, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v6, v11, v5}, Ljava/security/MessageDigest;->digest([BII)I

    .line 105
    .line 106
    .line 107
    aget-byte v10, v6, v11

    .line 108
    .line 109
    move-object/from16 v21, v2

    .line 110
    .line 111
    int-to-long v1, v10

    .line 112
    and-long v1, v1, v18

    .line 113
    .line 114
    shl-long v1, v1, p3

    .line 115
    .line 116
    aget-byte v10, v6, v20

    .line 117
    .line 118
    move-object/from16 v22, v6

    .line 119
    .line 120
    int-to-long v5, v10

    .line 121
    and-long v5, v5, v18

    .line 122
    .line 123
    shl-long v5, v5, v16

    .line 124
    .line 125
    or-long/2addr v1, v5

    .line 126
    aget-byte v5, v22, v17

    .line 127
    .line 128
    int-to-long v5, v5

    .line 129
    and-long v5, v5, v18

    .line 130
    .line 131
    shl-long/2addr v5, v15

    .line 132
    or-long/2addr v1, v5

    .line 133
    aget-byte v5, v22, v14

    .line 134
    .line 135
    int-to-long v5, v5

    .line 136
    and-long v5, v5, v18

    .line 137
    .line 138
    or-long/2addr v1, v5

    .line 139
    cmp-long v1, v1, p1

    .line 140
    .line 141
    if-gtz v1, :cond_0

    .line 142
    .line 143
    new-array v0, v4, [B

    .line 144
    .line 145
    aput-byte p4, v0, v11

    .line 146
    .line 147
    aput-byte v9, v0, v20

    .line 148
    .line 149
    aput-byte v12, v0, v17

    .line 150
    .line 151
    aput-byte v13, v0, v14

    .line 152
    .line 153
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_0
    add-long v7, v7, p5

    .line 170
    .line 171
    move-object/from16 v2, v21

    .line 172
    .line 173
    move-object/from16 v6, v22

    .line 174
    .line 175
    const/16 v1, 0x40

    .line 176
    .line 177
    const/16 v5, 0x20

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 182
    return-object v0
.end method
