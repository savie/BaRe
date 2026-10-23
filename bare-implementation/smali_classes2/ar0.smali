.class public final Lar0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Luc8;


# static fields
.field public static final n:[C


# instance fields
.field public a:Lr33;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public k:[Lzq0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lar0;->n:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static d([B)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v1, v0, 0x2

    .line 3
    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    aget-byte v4, p0, v2

    .line 11
    .line 12
    add-int/lit8 v5, v3, 0x1

    .line 13
    .line 14
    ushr-int/lit8 v6, v4, 0x4

    .line 15
    .line 16
    and-int/lit8 v6, v6, 0xf

    .line 17
    .line 18
    sget-object v7, Lar0;->n:[C

    .line 19
    .line 20
    aget-char v6, v7, v6

    .line 21
    .line 22
    aput-char v6, v1, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    and-int/lit8 v4, v4, 0xf

    .line 27
    .line 28
    aget-char v4, v7, v4

    .line 29
    .line 30
    aput-char v4, v1, v5

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "Namespaces are not supported"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    iget p1, p0, Lar0;->f:I

    .line 18
    .line 19
    if-ge v0, p1, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lar0;->k:[Lzq0;

    .line 22
    .line 23
    aget-object p1, p1, v0

    .line 24
    .line 25
    iget-object p1, p1, Lzq0;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/4 p0, -0x1

    .line 38
    return p0
.end method

.method public final b(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lar0;->k:[Lzq0;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    iget p1, p0, Lzq0;->b:I

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x30

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x60

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x70

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 25
    .line 26
    iget p0, p0, Lzq0;->b:I

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Invalid conversion from "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    iget p0, p0, Lzq0;->e:I

    .line 47
    .line 48
    return p0

    .line 49
    :cond_2
    :try_start_0
    iget-object p1, p0, Lzq0;->c:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return p0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 58
    .line 59
    iget-object p0, p0, Lzq0;->a:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "Invalid attribute "

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, ": "

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final c(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lar0;->k:[Lzq0;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    iget p1, p0, Lzq0;->b:I

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x30

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0xc0

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/16 v0, 0xd0

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 25
    .line 26
    iget p0, p0, Lzq0;->b:I

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Invalid conversion from "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    const-string p1, "true"

    .line 47
    .line 48
    iget-object v0, p0, Lzq0;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    :cond_2
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_3
    const-string p1, "false"

    .line 59
    .line 60
    iget-object v0, p0, Lzq0;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    :goto_0
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 71
    .line 72
    iget-object v0, p0, Lzq0;->a:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p0, p0, Lzq0;->c:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "Invalid attribute "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ": "

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr33;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v1, v0, 0xf

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xf0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    if-eq v1, v3, :cond_6

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string p0, "Unknown token "

    .line 21
    .line 22
    const-string v2, " with type "

    .line 23
    .line 24
    invoke-static {p0, v1, v0, v2}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 33
    .line 34
    invoke-virtual {v0}, Lr33;->readUTF()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lar0;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, -0x1

    .line 46
    sparse-switch v1, :sswitch_data_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :sswitch_0
    const-string v1, "quot"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v4, 0x4

    .line 60
    goto :goto_0

    .line 61
    :sswitch_1
    const-string v1, "apos"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v4, 0x3

    .line 71
    goto :goto_0

    .line 72
    :sswitch_2
    const-string v1, "amp"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v4, 0x2

    .line 82
    goto :goto_0

    .line 83
    :sswitch_3
    const-string v1, "lt"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v4, v3

    .line 93
    goto :goto_0

    .line 94
    :sswitch_4
    const-string v1, "gt"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    move v4, v2

    .line 104
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-le v1, v3, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/16 v4, 0x23

    .line 118
    .line 119
    if-ne v1, v4, :cond_5

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    int-to-char v0, v0

    .line 130
    new-instance v1, Ljava/lang/String;

    .line 131
    .line 132
    new-array v3, v3, [C

    .line 133
    .line 134
    aput-char v0, v3, v2

    .line 135
    .line 136
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 141
    .line 142
    const-string v1, "Unknown entity "

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :pswitch_1
    const-string v1, "\""

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :pswitch_2
    const-string v1, "\'"

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :pswitch_3
    const-string v1, "&"

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :pswitch_4
    const-string v1, "<"

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_5
    const-string v1, ">"

    .line 165
    .line 166
    :goto_1
    iput-object v1, p0, Lar0;->e:Ljava/lang/String;

    .line 167
    .line 168
    iget v0, p0, Lar0;->f:I

    .line 169
    .line 170
    if-lez v0, :cond_8

    .line 171
    .line 172
    invoke-virtual {p0}, Lar0;->g()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_6
    iput-object v3, p0, Lar0;->d:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 179
    .line 180
    invoke-virtual {v0}, Lr33;->readUTF()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lar0;->e:Ljava/lang/String;

    .line 185
    .line 186
    iget v0, p0, Lar0;->f:I

    .line 187
    .line 188
    if-lez v0, :cond_8

    .line 189
    .line 190
    invoke-virtual {p0}, Lar0;->g()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_7
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 195
    .line 196
    invoke-virtual {v0}, Lr33;->b()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p0, Lar0;->d:Ljava/lang/String;

    .line 201
    .line 202
    iput-object v3, p0, Lar0;->e:Ljava/lang/String;

    .line 203
    .line 204
    iget v0, p0, Lar0;->f:I

    .line 205
    .line 206
    if-lez v0, :cond_8

    .line 207
    .line 208
    invoke-virtual {p0}, Lar0;->g()V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_8
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 213
    .line 214
    invoke-virtual {v0}, Lr33;->b()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Lar0;->d:Ljava/lang/String;

    .line 219
    .line 220
    iput-object v3, p0, Lar0;->e:Ljava/lang/String;

    .line 221
    .line 222
    iget v0, p0, Lar0;->f:I

    .line 223
    .line 224
    if-lez v0, :cond_8

    .line 225
    .line 226
    invoke-virtual {p0}, Lar0;->g()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :pswitch_9
    iput-object v3, p0, Lar0;->d:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v3, p0, Lar0;->e:Ljava/lang/String;

    .line 233
    .line 234
    iget v0, p0, Lar0;->f:I

    .line 235
    .line 236
    if-lez v0, :cond_8

    .line 237
    .line 238
    invoke-virtual {p0}, Lar0;->g()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_a
    iput-object v3, p0, Lar0;->d:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v3, p0, Lar0;->e:Ljava/lang/String;

    .line 245
    .line 246
    iget v0, p0, Lar0;->f:I

    .line 247
    .line 248
    if-lez v0, :cond_8

    .line 249
    .line 250
    invoke-virtual {p0}, Lar0;->g()V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_6
    iget v1, p0, Lar0;->f:I

    .line 255
    .line 256
    iget-object v3, p0, Lar0;->k:[Lzq0;

    .line 257
    .line 258
    array-length v4, v3

    .line 259
    if-ne v1, v4, :cond_7

    .line 260
    .line 261
    array-length v1, v3

    .line 262
    shr-int/lit8 v4, v1, 0x1

    .line 263
    .line 264
    add-int/2addr v4, v1

    .line 265
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, [Lzq0;

    .line 270
    .line 271
    iput-object v3, p0, Lar0;->k:[Lzq0;

    .line 272
    .line 273
    :goto_2
    if-ge v1, v4, :cond_7

    .line 274
    .line 275
    iget-object v3, p0, Lar0;->k:[Lzq0;

    .line 276
    .line 277
    new-instance v5, Lzq0;

    .line 278
    .line 279
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 280
    .line 281
    .line 282
    aput-object v5, v3, v1

    .line 283
    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_7
    iget-object v1, p0, Lar0;->k:[Lzq0;

    .line 288
    .line 289
    iget v3, p0, Lar0;->f:I

    .line 290
    .line 291
    add-int/lit8 v4, v3, 0x1

    .line 292
    .line 293
    iput v4, p0, Lar0;->f:I

    .line 294
    .line 295
    aget-object v1, v1, v3

    .line 296
    .line 297
    iget-object v3, p0, Lar0;->a:Lr33;

    .line 298
    .line 299
    invoke-virtual {v3}, Lr33;->b()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    iput-object v3, v1, Lzq0;->a:Ljava/lang/String;

    .line 304
    .line 305
    iput v0, v1, Lzq0;->b:I

    .line 306
    .line 307
    sparse-switch v0, :sswitch_data_1

    .line 308
    .line 309
    .line 310
    const-string p0, "Unexpected data type "

    .line 311
    .line 312
    invoke-static {v0, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :sswitch_5
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 321
    .line 322
    invoke-virtual {p0}, Lr33;->readDouble()D

    .line 323
    .line 324
    .line 325
    move-result-wide v2

    .line 326
    iput-wide v2, v1, Lzq0;->h:D

    .line 327
    .line 328
    return-void

    .line 329
    :sswitch_6
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 330
    .line 331
    invoke-virtual {p0}, Lr33;->readFloat()F

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    iput p0, v1, Lzq0;->g:F

    .line 336
    .line 337
    return-void

    .line 338
    :sswitch_7
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 339
    .line 340
    invoke-virtual {p0}, Lr33;->readLong()J

    .line 341
    .line 342
    .line 343
    move-result-wide v2

    .line 344
    iput-wide v2, v1, Lzq0;->f:J

    .line 345
    .line 346
    return-void

    .line 347
    :sswitch_8
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 348
    .line 349
    invoke-virtual {p0}, Lr33;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p0

    .line 353
    iput p0, v1, Lzq0;->e:I

    .line 354
    .line 355
    return-void

    .line 356
    :sswitch_9
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 357
    .line 358
    invoke-virtual {v0}, Lr33;->readUnsignedShort()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    new-array v3, v0, [B

    .line 363
    .line 364
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 365
    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v3, v2, v0}, Lr33;->readFully([BII)V

    .line 370
    .line 371
    .line 372
    iput-object v3, v1, Lzq0;->d:[B

    .line 373
    .line 374
    return-void

    .line 375
    :sswitch_a
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 376
    .line 377
    invoke-virtual {p0}, Lr33;->b()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    iput-object p0, v1, Lzq0;->c:Ljava/lang/String;

    .line 382
    .line 383
    return-void

    .line 384
    :sswitch_b
    iget-object p0, p0, Lar0;->a:Lr33;

    .line 385
    .line 386
    invoke-virtual {p0}, Lr33;->readUTF()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    iput-object p0, v1, Lzq0;->c:Ljava/lang/String;

    .line 391
    .line 392
    :cond_8
    :sswitch_c
    return-void

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_4
        0xd88 -> :sswitch_3
        0x179c4 -> :sswitch_2
        0x2dca53 -> :sswitch_1
        0x352309 -> :sswitch_0
    .end sparse-switch

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_c
        0x20 -> :sswitch_b
        0x30 -> :sswitch_a
        0x40 -> :sswitch_9
        0x50 -> :sswitch_9
        0x60 -> :sswitch_8
        0x70 -> :sswitch_8
        0x80 -> :sswitch_7
        0x90 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xb0 -> :sswitch_5
        0xc0 -> :sswitch_c
        0xd0 -> :sswitch_c
    .end sparse-switch
.end method

.method public final f()I
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 2
    .line 3
    iget v1, v0, Lr33;->e:I

    .line 4
    .line 5
    iget v2, v0, Lr33;->d:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lr33;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lr33;->a:[B

    .line 15
    .line 16
    iget v0, v0, Lr33;->d:I

    .line 17
    .line 18
    aget-byte v0, v1, v0

    .line 19
    .line 20
    const/16 v1, 0xf

    .line 21
    .line 22
    and-int/2addr v0, v1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lar0;->e()V

    .line 27
    .line 28
    .line 29
    goto :goto_0
.end method

.method public final g()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lar0;->f:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lar0;->k:[Lzq0;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-object v3, v2, Lzq0;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v3, v2, Lzq0;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v3, v2, Lzq0;->d:[B

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v0, p0, Lar0;->f:I

    .line 22
    .line 23
    return-void
.end method

.method public final getAttributeCount()I
    .locals 0

    .line 1
    iget p0, p0, Lar0;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAttributeName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->k:[Lzq0;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    iget-object p0, p0, Lzq0;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getAttributeNamespace(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAttributePrefix(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAttributeType(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "CDATA"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAttributeValue(I)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lar0;->k:[Lzq0;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lzq0;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lar0;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lar0;->k:[Lzq0;

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    invoke-virtual {p0}, Lzq0;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final getColumnNumber()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getDepth()I
    .locals 0

    .line 1
    iget p0, p0, Lar0;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final getEventType()I
    .locals 0

    .line 1
    iget p0, p0, Lar0;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getInputEncoding()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLineNumber()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lar0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    const-string p0, ""

    .line 12
    .line 13
    return-object p0
.end method

.method public final getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getNamespaceCount(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getNamespacePrefix(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getNamespaceUri(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getPositionDescription()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Token "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lar0;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " at depth "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lar0;->c:I

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lar0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTextCharacters([I)[C
    .locals 2

    .line 1
    iget-object p0, p0, Lar0;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aput v0, p1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    array-length v1, p0

    .line 12
    aput v1, p1, v0

    .line 13
    .line 14
    return-object p0
.end method

.method public final isAttributeDefault(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEmptyElementTag()Z
    .locals 2

    .line 1
    iget v0, p0, Lar0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lar0;->f()I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v0, 0x3

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 29
    .line 30
    const-string v0, "Not at START_TAG"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final isWhitespace()Z
    .locals 3

    .line 1
    iget v0, p0, Lar0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 15
    .line 16
    iget p0, p0, Lar0;->b:I

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Not applicable for token "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    iget-object p0, p0, Lar0;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    xor-int/2addr p0, v2

    .line 43
    return p0
.end method

.method public final next()I
    .locals 4

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lar0;->nextToken()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_5

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lar0;->e:Ljava/lang/String;

    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0}, Lar0;->f()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eq v2, v1, :cond_4

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-eq v2, v3, :cond_4

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    if-eq v2, v3, :cond_4

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    if-eq v2, v3, :cond_3

    .line 35
    .line 36
    const/16 v3, 0x9

    .line 37
    .line 38
    if-eq v2, v3, :cond_3

    .line 39
    .line 40
    iput v1, p0, Lar0;->b:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    iput-object v2, p0, Lar0;->d:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lar0;->e:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return v1

    .line 57
    :cond_3
    invoke-virtual {p0}, Lar0;->e()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p0}, Lar0;->e()V

    .line 62
    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lar0;->e:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    return v0
.end method

.method public final nextTag()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lar0;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lar0;->isWhitespace()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lar0;->next()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 26
    .line 27
    invoke-virtual {p0}, Lar0;->getPositionDescription()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    return v0
.end method

.method public final nextText()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lar0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Lar0;->next()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lar0;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Lar0;->next()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 24
    .line 25
    invoke-virtual {p0}, Lar0;->getPositionDescription()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    if-ne v0, v2, :cond_2

    .line 34
    .line 35
    const-string p0, ""

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 39
    .line 40
    invoke-virtual {p0}, Lar0;->getPositionDescription()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 49
    .line 50
    invoke-virtual {p0}, Lar0;->getPositionDescription()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final nextToken()I
    .locals 3

    .line 1
    iget v0, p0, Lar0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lar0;->c:I

    .line 8
    .line 9
    sub-int/2addr v0, v2

    .line 10
    iput v0, p0, Lar0;->c:I

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lar0;->f()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lar0;->e()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move v0, v2

    .line 21
    :goto_0
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lar0;->f()I

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lar0;->c:I

    .line 29
    .line 30
    add-int/2addr v1, v2

    .line 31
    iput v1, p0, Lar0;->c:I

    .line 32
    .line 33
    :goto_1
    iput v0, p0, Lar0;->b:I

    .line 34
    .line 35
    return v0
.end method

.method public final require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Namespaces are not supported"

    .line 11
    .line 12
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    iget p2, p0, Lar0;->b:I

    .line 17
    .line 18
    if-ne p2, p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lar0;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 30
    .line 31
    invoke-virtual {p0}, Lar0;->getPositionDescription()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final setFeature(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lx5;->e()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    iget-object p2, p0, Lar0;->a:Lr33;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iput-object v0, p2, Lr33;->c:Ljava/io/InputStream;

    .line 27
    .line 28
    iput v1, p2, Lr33;->d:I

    .line 29
    .line 30
    iput v1, p2, Lr33;->e:I

    .line 31
    .line 32
    iput v1, p2, Lr33;->f:I

    .line 33
    .line 34
    iput-object v0, p0, Lar0;->a:Lr33;

    .line 35
    .line 36
    :cond_2
    new-instance p2, Lr33;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lr33;-><init>(Ljava/io/InputStream;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lar0;->a:Lr33;

    .line 42
    .line 43
    iput v1, p0, Lar0;->b:I

    .line 44
    .line 45
    iput v1, p0, Lar0;->c:I

    .line 46
    .line 47
    iput-object v0, p0, Lar0;->d:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p0, Lar0;->e:Ljava/lang/String;

    .line 50
    .line 51
    iput v1, p0, Lar0;->f:I

    .line 52
    .line 53
    const/16 p1, 0x8

    .line 54
    .line 55
    new-array p1, p1, [Lzq0;

    .line 56
    .line 57
    iput-object p1, p0, Lar0;->k:[Lzq0;

    .line 58
    .line 59
    move p1, v1

    .line 60
    :goto_1
    iget-object p2, p0, Lar0;->k:[Lzq0;

    .line 61
    .line 62
    array-length v0, p2

    .line 63
    if-ge p1, v0, :cond_3

    .line 64
    .line 65
    new-instance v0, Lzq0;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    aput-object v0, p2, p1

    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 p1, 0x4

    .line 76
    :try_start_0
    new-array p2, p1, [B

    .line 77
    .line 78
    iget-object v0, p0, Lar0;->a:Lr33;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2, v1, p1}, Lr33;->readFully([BII)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lbr0;->d:[B

    .line 87
    .line 88
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Lar0;->f()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Lar0;->e()V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void

    .line 104
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v0, "Unexpected magic "

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {p2}, Lar0;->d([B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public final setInput(Ljava/io/Reader;)V
    .locals 0

    .line 142
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
