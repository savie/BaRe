.class public final Llv1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnx1;
.implements Lmo1;
.implements Ldh5;
.implements Ldl9;
.implements Lum8;
.implements Lkx0;
.implements Laa1;
.implements Les3;
.implements Lc33;
.implements Lv79;
.implements Lcs9;
.implements Let9;
.implements Ly1a;


# static fields
.field public static final synthetic b:Llv1;

.field public static final synthetic c:Llv1;

.field public static final d:Llv1;

.field public static final e:Ll0;

.field public static final f:Llv1;

.field public static final k:Llv1;

.field public static final n:Llv1;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llv1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Llv1;->b:Llv1;

    .line 8
    .line 9
    new-instance v0, Llv1;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Llv1;->c:Llv1;

    .line 16
    .line 17
    new-instance v0, Llv1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Llv1;->d:Llv1;

    .line 24
    .line 25
    new-instance v0, Ll0;

    .line 26
    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ll0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Llv1;->e:Ll0;

    .line 33
    .line 34
    new-instance v0, Llv1;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Llv1;->f:Llv1;

    .line 41
    .line 42
    new-instance v0, Llv1;

    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Llv1;->k:Llv1;

    .line 49
    .line 50
    new-instance v0, Llv1;

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    invoke-direct {v0, v1}, Llv1;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Llv1;->n:Llv1;

    .line 57
    .line 58
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Llv1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 5

    .line 1
    const-string v0, "data:image"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x2c

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, ";base64"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    const-string p0, "Not a base64 image data URL."

    .line 49
    .line 50
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    const-string p0, "Missing comma in data URL."

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_2
    const-string p0, "Not a valid image data URL."

    .line 61
    .line 62
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Lgf0;
    .locals 1

    .line 1
    sget-object v0, Lhf0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx23;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lx23;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lgf0;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v0, "Unknown AEADCipher "

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static h(Ljava/lang/String;)Lc55;
    .locals 3

    .line 1
    const-string v0, "HMACT64"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ll22;

    .line 10
    .line 11
    new-instance v0, Lqg0;

    .line 12
    .line 13
    const-string v1, "MD5"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lqg0;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, v2, v1}, Ll22;-><init>(BI)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x40

    .line 24
    .line 25
    new-array v2, v1, [B

    .line 26
    .line 27
    iput-object v2, p0, Ll22;->c:Ljava/lang/Object;

    .line 28
    .line 29
    new-array v1, v1, [B

    .line 30
    .line 31
    iput-object v1, p0, Ll22;->d:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v0, p0, Ll22;->b:Ljava/lang/Object;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance v0, Llg0;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Llg0;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public static i(Lsu2;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_19

    .line 3
    .line 4
    if-ltz p2, :cond_19

    .line 5
    .line 6
    if-gez p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v1, v3, :cond_19

    .line 20
    .line 21
    if-eq v2, v3, :cond_19

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :cond_1
    const/4 v4, 0x1

    .line 28
    if-eqz p4, :cond_16

    .line 29
    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-ltz v1, :cond_3

    .line 39
    .line 40
    if-ge p4, v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-gez p2, :cond_4

    .line 44
    .line 45
    :cond_3
    :goto_0
    move v1, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_1
    move p4, v0

    .line 48
    :goto_2
    if-nez p2, :cond_5

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    if-gez v1, :cond_7

    .line 54
    .line 55
    if-eqz p4, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    move v1, v0

    .line 59
    goto :goto_3

    .line 60
    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz p4, :cond_9

    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-nez p4, :cond_8

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_8
    add-int/lit8 p2, p2, -0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_a

    .line 81
    .line 82
    add-int/lit8 p2, p2, -0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    if-eqz p4, :cond_b

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_b
    move p4, v4

    .line 93
    goto :goto_2

    .line 94
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-ltz v2, :cond_d

    .line 103
    .line 104
    if-ge p3, v2, :cond_c

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_c
    if-gez p2, :cond_e

    .line 108
    .line 109
    :cond_d
    :goto_4
    move p3, v3

    .line 110
    goto :goto_7

    .line 111
    :cond_e
    :goto_5
    move p4, v0

    .line 112
    :goto_6
    if-nez p2, :cond_f

    .line 113
    .line 114
    move p3, v2

    .line 115
    goto :goto_7

    .line 116
    :cond_f
    if-lt v2, p3, :cond_10

    .line 117
    .line 118
    if-eqz p4, :cond_15

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz p4, :cond_12

    .line 126
    .line 127
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    if-nez p4, :cond_11

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_11
    add-int/lit8 p2, p2, -0x1

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_13

    .line 144
    .line 145
    add-int/lit8 p2, p2, -0x1

    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    if-eqz p4, :cond_14

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    move p4, v4

    .line 160
    goto :goto_6

    .line 161
    :cond_15
    :goto_7
    if-eq v1, v3, :cond_19

    .line 162
    .line 163
    if-ne p3, v3, :cond_17

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_16
    sub-int/2addr v1, p2

    .line 167
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    add-int/2addr v2, p3

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    :cond_17
    const-class p2, Lbd8;

    .line 181
    .line 182
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, [Lbd8;

    .line 187
    .line 188
    if-eqz p2, :cond_19

    .line 189
    .line 190
    array-length p4, p2

    .line 191
    if-lez p4, :cond_19

    .line 192
    .line 193
    array-length p4, p2

    .line 194
    move v2, v0

    .line 195
    :goto_8
    if-ge v2, p4, :cond_18

    .line 196
    .line 197
    aget-object v3, p2, v2

    .line 198
    .line 199
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result p3

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 223
    .line 224
    .line 225
    move-result p4

    .line 226
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    .line 237
    .line 238
    .line 239
    return v4

    .line 240
    :cond_19
    :goto_9
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lz05;

    .line 2
    .line 3
    invoke-direct {p0}, Lz05;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Landroidx/fragment/app/u;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic e(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public g(Lot9;)Lbd9;
    .locals 2

    .line 1
    iget p0, p0, Llv1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lmz9;

    .line 10
    .line 11
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lf79;->a:Lf79;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lmy9;->u(Lt69;Lf79;)Lmy9;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {p1}, Lmy9;->x()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lmu9;->b()Lkc;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lmy9;->t()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lkc;->b:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p1}, Lmy9;->A()Lpy9;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lpy9;->t()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lkc;->c:Ljava/lang/Object;

    .line 66
    .line 67
    sget-object v1, Lsu9;->b:Lot9;

    .line 68
    .line 69
    invoke-virtual {p1}, Lmy9;->A()Lpy9;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lpy9;->w()Ljy9;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Llu9;

    .line 82
    .line 83
    iput-object p1, v0, Lkc;->d:Ljava/lang/Object;

    .line 84
    .line 85
    sget-object p1, Lsu9;->a:Lot9;

    .line 86
    .line 87
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lku9;

    .line 96
    .line 97
    iput-object p0, v0, Lkc;->e:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {v0}, Lkc;->c()Lmu9;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 105
    .line 106
    invoke-virtual {p1}, Lmy9;->x()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const-string v0, "Parsing HmacParameters failed: unknown Version "

    .line 111
    .line 112
    invoke-static {p1, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 122
    .line 123
    const-string v0, "Parsing HmacParameters failed: "

    .line 124
    .line 125
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "Wrong type URL in call to HmacProtoSerialization.parseParameters: "

    .line 134
    .line 135
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Lmz9;

    .line 146
    .line 147
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    :try_start_1
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    sget-object v1, Lf79;->a:Lf79;

    .line 164
    .line 165
    invoke-static {p1, v1}, Low9;->u(Lt69;Lf79;)Low9;

    .line 166
    .line 167
    .line 168
    move-result-object p1
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    invoke-virtual {p1}, Low9;->w()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_2

    .line 174
    .line 175
    invoke-static {}, Lkg9;->b()Lbs2;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1}, Low9;->t()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {v0, p1}, Lbs2;->m(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lbs2;->l()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lbs2;->n()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Lal9;->a(Lr0a;)Lig9;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    iput-object p0, v0, Lbs2;->e:Ljava/lang/Object;

    .line 201
    .line 202
    invoke-virtual {v0}, Lbs2;->k()Lkg9;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    goto :goto_1

    .line 207
    :cond_2
    const-string p0, "Only version 0 parameters are accepted"

    .line 208
    .line 209
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :catch_1
    move-exception p0

    .line 214
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 215
    .line 216
    const-string v0, "Parsing AesGcmParameters failed: "

    .line 217
    .line 218
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    throw p1

    .line 222
    :cond_3
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    const-string p1, "Wrong type URL in call to AesGcmProtoSerialization.parseParameters: "

    .line 227
    .line 228
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_1
    return-object v0

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public j([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public m(Lpp0;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Lnc6;

    .line 2
    .line 3
    const-class v0, Lht0;

    .line 4
    .line 5
    const-class v1, Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lpp0;->g(Lnc6;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-static {p0}, Lrs9;->e(Ljava/util/concurrent/Executor;)Lrx1;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public millis()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public n(Lpt9;)Lvm4;
    .locals 4

    .line 1
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 13
    .line 14
    sget-object v1, Lf79;->a:Lf79;

    .line 15
    .line 16
    invoke-static {p0, v1}, Llv9;->u(Lt69;Lf79;)Llv9;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Llv9;->t()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Llv9;->y()Lrv9;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lrv9;->t()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Llv9;->z()Liy9;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Liy9;->t()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lgf9;->b()Lfm1;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0}, Llv9;->y()Lrv9;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lrv9;->z()Lt69;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lt69;->d()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Lfm1;->d(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Llv9;->z()Liy9;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Liy9;->A()Lt69;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lt69;->d()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Lfm1;->e(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Llv9;->y()Lrv9;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lrv9;->y()Lzv9;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lzv9;->t()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v1, v2}, Lfm1;->f(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Llv9;->z()Liy9;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Liy9;->z()Lpy9;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lpy9;->t()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {v1, v2}, Lfm1;->g(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Llv9;->z()Liy9;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Liy9;->z()Lpy9;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lpy9;->w()Ljy9;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2}, Lmk9;->b(Ljy9;)Lff9;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, v1, Lfm1;->a:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v2, p1, Lpt9;->e:Lr0a;

    .line 129
    .line 130
    invoke-static {v2}, Lmk9;->a(Lr0a;)Lef9;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v1, Lfm1;->f:Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {v1}, Lfm1;->c()Lgf9;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v2, Lai5;

    .line 141
    .line 142
    const/16 v3, 0x8

    .line 143
    .line 144
    invoke-direct {v2, v3}, Lai5;-><init>(I)V

    .line 145
    .line 146
    .line 147
    iput-object v0, v2, Lai5;->c:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v0, v2, Lai5;->d:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v0, v2, Lai5;->e:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v1, v2, Lai5;->b:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {p0}, Llv9;->y()Lrv9;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lrv9;->z()Lt69;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lt69;->w()[B

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v3, Lkm8;

    .line 168
    .line 169
    invoke-static {v1}, Ld2a;->a([B)Ld2a;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-direct {v3, v1}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iput-object v3, v2, Lai5;->c:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-virtual {p0}, Llv9;->z()Liy9;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Liy9;->A()Lt69;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lt69;->w()[B

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    new-instance v1, Lkm8;

    .line 191
    .line 192
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-direct {v1, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    iput-object v1, v2, Lai5;->d:Ljava/lang/Object;

    .line 200
    .line 201
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 202
    .line 203
    iput-object p0, v2, Lai5;->e:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-virtual {v2}, Lai5;->B()Lte9;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 211
    .line 212
    const-string p1, "Only version 0 keys inner HMAC keys are accepted"

    .line 213
    .line 214
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 219
    .line 220
    const-string p1, "Only version 0 keys inner AES CTR keys are accepted"

    .line 221
    .line 222
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 227
    .line 228
    const-string p1, "Only version 0 keys are accepted"

    .line 229
    .line 230
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :catch_0
    const-string p0, "Parsing AesCtrHmacAeadKey failed"

    .line 235
    .line 236
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-object v0

    .line 240
    :cond_3
    const-string p0, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    .line 241
    .line 242
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-object v0
.end method

.method public o(Landroid/view/View;Ltv8;Lvm8;)Ltv8;
    .locals 4

    .line 1
    iget p0, p3, Lvm8;->d:I

    .line 2
    .line 3
    invoke-virtual {p2}, Ltv8;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p0

    .line 8
    iput v0, p3, Lvm8;->d:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p2}, Ltv8;->b()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p2}, Ltv8;->c()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, p3, Lvm8;->a:I

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move v3, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, p0

    .line 34
    :goto_1
    add-int/2addr v2, v3

    .line 35
    iput v2, p3, Lvm8;->a:I

    .line 36
    .line 37
    iget v3, p3, Lvm8;->c:I

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move p0, v1

    .line 43
    :goto_2
    add-int/2addr v3, p0

    .line 44
    iput v3, p3, Lvm8;->c:I

    .line 45
    .line 46
    iget p0, p3, Lvm8;->b:I

    .line 47
    .line 48
    iget p3, p3, Lvm8;->d:I

    .line 49
    .line 50
    invoke-virtual {p1, v2, p0, v3, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 51
    .line 52
    .line 53
    return-object p2
.end method

.method public y(Lai5;)Lch5;
    .locals 2

    .line 1
    iget p0, p0, Llv1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljg8;

    .line 7
    .line 8
    const-class v0, Lsy3;

    .line 9
    .line 10
    const-class v1, Ljava/io/InputStream;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lai5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lch5;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljg8;-><init>(Lch5;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    sget-object p0, Lfe8;->b:Lfe8;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/Class;)Ld89;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "This should never be called."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public zzb(Ljava/lang/Class;)Lhm9;
    .locals 2

    .line 1
    const-class p0, Lxi9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lxi9;->m(Ljava/lang/Class;)Lxi9;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-virtual {p0, v0}, Lxi9;->j(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lhm9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Unable to get message info for "

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, p0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "Unsupported message type: "

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v1
.end method

.method public zzb(Ljava/lang/Class;)Z
    .locals 0

    .line 55
    const/4 p0, 0x0

    return p0
.end method

.method public zzc(Ljava/lang/Class;)Z
    .locals 0

    .line 1
    const-class p0, Lxi9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
