.class public final enum Lzt2;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum c:Lzt2;

.field public static final enum d:Lzt2;

.field public static final enum e:Lzt2;

.field public static final enum f:Lzt2;

.field public static final synthetic k:[Lzt2;


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lzt2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    const-string v3, "SECP256R1"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, 0x100

    .line 14
    .line 15
    invoke-direct {v0, v3, v2, v4, v5}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lzt2;->c:Lzt2;

    .line 19
    .line 20
    move v2, v1

    .line 21
    new-instance v1, Lzt2;

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    new-array v4, v3, [B

    .line 25
    .line 26
    fill-array-data v4, :array_1

    .line 27
    .line 28
    .line 29
    const-string v6, "SECP256K1"

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-direct {v1, v6, v4, v7, v5}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 33
    .line 34
    .line 35
    move v4, v2

    .line 36
    new-instance v2, Lzt2;

    .line 37
    .line 38
    new-array v6, v3, [B

    .line 39
    .line 40
    fill-array-data v6, :array_2

    .line 41
    .line 42
    .line 43
    const-string v7, "SECP384R1"

    .line 44
    .line 45
    const/4 v8, 0x2

    .line 46
    const/16 v9, 0x180

    .line 47
    .line 48
    invoke-direct {v2, v7, v6, v8, v9}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 49
    .line 50
    .line 51
    sput-object v2, Lzt2;->d:Lzt2;

    .line 52
    .line 53
    move v6, v3

    .line 54
    new-instance v3, Lzt2;

    .line 55
    .line 56
    new-array v7, v6, [B

    .line 57
    .line 58
    fill-array-data v7, :array_3

    .line 59
    .line 60
    .line 61
    const-string v8, "SECP521R1"

    .line 62
    .line 63
    const/4 v10, 0x3

    .line 64
    const/16 v11, 0x209

    .line 65
    .line 66
    invoke-direct {v3, v8, v7, v10, v11}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 67
    .line 68
    .line 69
    move v7, v4

    .line 70
    new-instance v4, Lzt2;

    .line 71
    .line 72
    const/16 v8, 0x9

    .line 73
    .line 74
    new-array v11, v8, [B

    .line 75
    .line 76
    fill-array-data v11, :array_4

    .line 77
    .line 78
    .line 79
    const-string v12, "BrainpoolP256R1"

    .line 80
    .line 81
    const/4 v13, 0x4

    .line 82
    invoke-direct {v4, v12, v11, v13, v5}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 83
    .line 84
    .line 85
    move v11, v5

    .line 86
    new-instance v5, Lzt2;

    .line 87
    .line 88
    new-array v12, v8, [B

    .line 89
    .line 90
    fill-array-data v12, :array_5

    .line 91
    .line 92
    .line 93
    const-string v13, "BrainpoolP384R1"

    .line 94
    .line 95
    invoke-direct {v5, v13, v12, v6, v9}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 96
    .line 97
    .line 98
    new-instance v6, Lzt2;

    .line 99
    .line 100
    new-array v8, v8, [B

    .line 101
    .line 102
    fill-array-data v8, :array_6

    .line 103
    .line 104
    .line 105
    const-string v9, "BrainpoolP512R1"

    .line 106
    .line 107
    const/4 v12, 0x6

    .line 108
    const/16 v13, 0x200

    .line 109
    .line 110
    invoke-direct {v6, v9, v8, v12, v13}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 111
    .line 112
    .line 113
    move v8, v7

    .line 114
    new-instance v7, Lzt2;

    .line 115
    .line 116
    new-array v9, v10, [B

    .line 117
    .line 118
    fill-array-data v9, :array_7

    .line 119
    .line 120
    .line 121
    const-string v12, "X25519"

    .line 122
    .line 123
    const/4 v13, 0x7

    .line 124
    invoke-direct {v7, v12, v9, v13, v11}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 125
    .line 126
    .line 127
    sput-object v7, Lzt2;->e:Lzt2;

    .line 128
    .line 129
    move v9, v8

    .line 130
    new-instance v8, Lzt2;

    .line 131
    .line 132
    new-array v10, v10, [B

    .line 133
    .line 134
    fill-array-data v10, :array_8

    .line 135
    .line 136
    .line 137
    const-string v12, "Ed25519"

    .line 138
    .line 139
    invoke-direct {v8, v12, v10, v9, v11}, Lzt2;-><init>(Ljava/lang/String;[BII)V

    .line 140
    .line 141
    .line 142
    sput-object v8, Lzt2;->f:Lzt2;

    .line 143
    .line 144
    filled-new-array/range {v0 .. v8}, [Lzt2;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sput-object v0, Lzt2;->k:[Lzt2;

    .line 149
    .line 150
    return-void

    .line 151
    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0xat
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    nop

    .line 167
    :array_2
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :array_3
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    nop

    .line 183
    :array_4
    .array-data 1
        0x2bt
        0x24t
        0x3t
        0x3t
        0x2t
        0x8t
        0x1t
        0x1t
        0x7t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    nop

    .line 193
    :array_5
    .array-data 1
        0x2bt
        0x24t
        0x3t
        0x3t
        0x2t
        0x8t
        0x1t
        0x1t
        0xbt
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    nop

    .line 203
    :array_6
    .array-data 1
        0x2bt
        0x24t
        0x3t
        0x3t
        0x2t
        0x8t
        0x1t
        0x1t
        0xdt
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    nop

    .line 213
    :array_7
    .array-data 1
        0x2bt
        0x65t
        0x6et
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_8
    .array-data 1
        0x2bt
        0x65t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lzt2;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lzt2;->b:[B

    .line 7
    .line 8
    return-void
.end method

.method public static a([B)Lzt2;
    .locals 5

    .line 1
    invoke-static {}, Lzt2;->values()[Lzt2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lzt2;->b:[B

    .line 12
    .line 13
    invoke-static {p0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p0, "Not a supported EllipticCurve"

    .line 24
    .line 25
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzt2;
    .locals 1

    .line 1
    const-class v0, Lzt2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzt2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lzt2;
    .locals 1

    .line 1
    sget-object v0, Lzt2;->k:[Lzt2;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lzt2;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lzt2;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EllipticCurveValues{name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", bitLength="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lzt2;->a:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", oid="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object p0, p0, Lzt2;->b:[B

    .line 32
    .line 33
    array-length v2, p0

    .line 34
    invoke-static {p0, v1, v2}, Lx13;->f([BII)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
