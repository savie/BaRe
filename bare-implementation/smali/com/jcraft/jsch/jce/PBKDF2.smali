.class public Lcom/jcraft/jsch/jce/PBKDF2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KDF;


# static fields
.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B


# instance fields
.field public a:Ljavax/crypto/SecretKeyFactory;

.field public b:[B

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->e:[B

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->f:[B

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->g:[B

    .line 23
    .line 24
    new-array v1, v0, [B

    .line 25
    .line 26
    fill-array-data v1, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->h:[B

    .line 30
    .line 31
    new-array v1, v0, [B

    .line 32
    .line 33
    fill-array-data v1, :array_4

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->i:[B

    .line 37
    .line 38
    new-array v1, v0, [B

    .line 39
    .line 40
    fill-array-data v1, :array_5

    .line 41
    .line 42
    .line 43
    sput-object v1, Lcom/jcraft/jsch/jce/PBKDF2;->j:[B

    .line 44
    .line 45
    new-array v0, v0, [B

    .line 46
    .line 47
    fill-array-data v0, :array_6

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->k:[B

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x7t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xat
    .end array-data

    :array_4
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xbt
    .end array-data

    :array_5
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xct
    .end array-data

    :array_6
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x2t
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 8

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->e:[B

    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->f:[B

    .line 13
    .line 14
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "PBKDF2WithHmacSHA224"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->g:[B

    .line 24
    .line 25
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string v0, "PBKDF2WithHmacSHA256"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->h:[B

    .line 35
    .line 36
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string v0, "PBKDF2WithHmacSHA384"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->i:[B

    .line 46
    .line 47
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const-string v0, "PBKDF2WithHmacSHA512"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->j:[B

    .line 57
    .line 58
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const-string v0, "PBKDF2WithHmacSHA512/224"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    sget-object v0, Lcom/jcraft/jsch/jce/PBKDF2;->k:[B

    .line 68
    .line 69
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    const-string v0, "PBKDF2WithHmacSHA512/256"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    const/4 v0, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_7
    :goto_0
    const-string v0, "PBKDF2WithHmacSHA1"

    .line 81
    .line 82
    :goto_1
    if-nez v0, :cond_b

    .line 83
    .line 84
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "unsupported pbkdf2 function oid: "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    :cond_8
    :goto_2
    array-length v4, p0

    .line 100
    if-ge v3, v4, :cond_a

    .line 101
    .line 102
    aget-byte v4, p0, v3

    .line 103
    .line 104
    and-int/lit16 v4, v4, 0xff

    .line 105
    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v6, "0x"

    .line 113
    .line 114
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    const/4 v7, 0x1

    .line 122
    if-ne v6, v7, :cond_9

    .line 123
    .line 124
    const-string v6, "0"

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_9
    const-string v6, ""

    .line 128
    .line 129
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    array-length v4, p0

    .line 145
    if-ge v3, v4, :cond_8

    .line 146
    .line 147
    const-string v4, ":"

    .line 148
    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_b
    return-object v0
.end method


# virtual methods
.method public final getKey([BI)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-byte v2, p1, v1

    .line 9
    .line 10
    and-int/lit16 v2, v2, 0xff

    .line 11
    .line 12
    int-to-char v2, v2

    .line 13
    aput-char v2, v0, v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    new-instance p1, Ljavax/crypto/spec/PBEKeySpec;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->b:[B

    .line 21
    .line 22
    iget v2, p0, Lcom/jcraft/jsch/jce/PBKDF2;->c:I

    .line 23
    .line 24
    mul-int/lit8 p2, p2, 0x8

    .line 25
    .line 26
    invoke-direct {p1, v0, v1, v2, p2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/jcraft/jsch/jce/PBKDF2;->a:Ljavax/crypto/SecretKeyFactory;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final initWithASN1([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/asn1/ASN1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/asn1/ASN1;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_d

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x2

    .line 18
    if-lt v0, v1, :cond_c

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    const/4 v2, 0x4

    .line 22
    if-gt v0, v2, :cond_c

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    aget-object v3, p1, v0

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_b

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aget-object v4, p1, v3

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_a

    .line 41
    .line 42
    array-length v4, p1

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x3

    .line 45
    if-ne v4, v2, :cond_2

    .line 46
    .line 47
    aget-object v2, p1, v1

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    aget-object v2, p1, v6

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    aget-object v2, p1, v6

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_0
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    array-length v2, p1

    .line 82
    if-ne v2, v6, :cond_5

    .line 83
    .line 84
    aget-object v2, p1, v1

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isSEQUENCE()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    aget-object v2, p1, v1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    aget-object v2, p1, v1

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_5
    :goto_0
    move-object v2, v5

    .line 111
    :goto_1
    aget-object v4, p1, v0

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iput-object v4, p0, Lcom/jcraft/jsch/jce/PBKDF2;->b:[B

    .line 118
    .line 119
    aget-object p1, p1, v3

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p1}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->c:I

    .line 130
    .line 131
    if-eqz v2, :cond_9

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->getContents()[Lcom/jcraft/jsch/asn1/ASN1;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    array-length v2, p1

    .line 138
    if-ne v2, v1, :cond_8

    .line 139
    .line 140
    aget-object v1, p1, v0

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isOBJECT()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    aget-object v1, p1, v3

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isNULL()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    aget-object p1, p1, v0

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 164
    .line 165
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_8
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 176
    .line 177
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_9
    :goto_2
    invoke-static {v5}, Lcom/jcraft/jsch/jce/PBKDF2;->a([B)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->d:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/jcraft/jsch/jce/PBKDF2;->a:Ljavax/crypto/SecretKeyFactory;

    .line 192
    .line 193
    return-void

    .line 194
    :cond_a
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_b
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 201
    .line 202
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_c
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_d
    new-instance p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 213
    .line 214
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 215
    .line 216
    .line 217
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_3
    instance-of v0, p1, Lcom/jcraft/jsch/JSchException;

    .line 219
    .line 220
    if-nez v0, :cond_11

    .line 221
    .line 222
    instance-of v0, p1, Ljava/security/NoSuchAlgorithmException;

    .line 223
    .line 224
    if-nez v0, :cond_10

    .line 225
    .line 226
    instance-of p0, p1, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 227
    .line 228
    if-nez p0, :cond_f

    .line 229
    .line 230
    instance-of p0, p1, Ljava/lang/ArithmeticException;

    .line 231
    .line 232
    if-eqz p0, :cond_e

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_e
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 236
    .line 237
    const-string v0, "pbkdf2 unavailable"

    .line 238
    .line 239
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .line 241
    .line 242
    throw p0

    .line 243
    :cond_f
    :goto_4
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    .line 244
    .line 245
    const-string v0, "invalid ASN1"

    .line 246
    .line 247
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    throw p0

    .line 251
    :cond_10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    .line 252
    .line 253
    iget-object p0, p0, Lcom/jcraft/jsch/jce/PBKDF2;->d:Ljava/lang/String;

    .line 254
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v2, "unsupported pbkdf2 algorithm: "

    .line 258
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-direct {v0, p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_11
    check-cast p1, Lcom/jcraft/jsch/JSchException;

    .line 274
    .line 275
    throw p1
.end method
