.class public Lcom/jcraft/jsch/bc/SCrypt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/KDF;


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getKey([BI)[B
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/bc/SCrypt;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jsch/bc/SCrypt;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jsch/bc/SCrypt;->c:I

    .line 6
    .line 7
    iget p0, p0, Lcom/jcraft/jsch/bc/SCrypt;->d:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz p1, :cond_b

    .line 11
    .line 12
    if-eqz v0, :cond_a

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-le v1, v4, :cond_9

    .line 16
    .line 17
    add-int/lit8 v5, v1, -0x1

    .line 18
    .line 19
    and-int/2addr v5, v1

    .line 20
    if-nez v5, :cond_9

    .line 21
    .line 22
    if-ne v2, v4, :cond_1

    .line 23
    .line 24
    const/high16 v5, 0x10000

    .line 25
    .line 26
    if-ge v1, v5, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string p0, "Cost parameter N must be > 1 and < 65536."

    .line 30
    .line 31
    :goto_0
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :cond_1
    :goto_1
    if-lt v2, v4, :cond_8

    .line 36
    .line 37
    mul-int/lit16 v5, v2, 0x80

    .line 38
    .line 39
    mul-int/lit16 v6, v2, 0x400

    .line 40
    .line 41
    const v7, 0x7fffffff

    .line 42
    .line 43
    .line 44
    div-int/2addr v7, v6

    .line 45
    if-lt p0, v4, :cond_7

    .line 46
    .line 47
    if-gt p0, v7, :cond_7

    .line 48
    .line 49
    if-lt p2, v4, :cond_6

    .line 50
    .line 51
    mul-int/2addr p0, v5

    .line 52
    invoke-static {p0, p1, v0}, Lms8;->f(I[B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 v0, 0x0

    .line 57
    :try_start_0
    array-length v4, p0

    .line 58
    const/4 v6, 0x2

    .line 59
    ushr-int/2addr v4, v6

    .line 60
    new-array v3, v4, [I

    .line 61
    .line 62
    move v7, v0

    .line 63
    move v8, v7

    .line 64
    :goto_2
    if-ge v7, v4, :cond_2

    .line 65
    .line 66
    invoke-static {p0, v8}, Lxx3;->r([BI)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    aput v9, v3, v7

    .line 71
    .line 72
    add-int/lit8 v8, v8, 0x4

    .line 73
    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    mul-int v7, v1, v2

    .line 78
    .line 79
    move v8, v0

    .line 80
    :goto_3
    sub-int v9, v1, v8

    .line 81
    .line 82
    if-le v9, v6, :cond_3

    .line 83
    .line 84
    const/16 v9, 0x400

    .line 85
    .line 86
    if-le v7, v9, :cond_3

    .line 87
    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    ushr-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    ushr-int/2addr v5, v6

    .line 94
    move v6, v0

    .line 95
    :goto_4
    if-ge v6, v4, :cond_4

    .line 96
    .line 97
    invoke-static {v6, v1, v8, v2, v3}, Lms8;->e(IIII[I)V

    .line 98
    .line 99
    .line 100
    add-int/2addr v6, v5

    .line 101
    goto :goto_4

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_5

    .line 104
    :cond_4
    invoke-static {p0, v3}, Lxx3;->p([B[I)V

    .line 105
    .line 106
    .line 107
    invoke-static {p2, p1, p0}, Lms8;->f(I[B[B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 112
    .line 113
    .line 114
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :goto_5
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 119
    .line 120
    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 124
    .line 125
    .line 126
    :cond_5
    throw p1

    .line 127
    :cond_6
    const-string p0, "Generated key length dkLen must be >= 1."

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    const-string p0, " (based on block size r of "

    .line 131
    .line 132
    const-string p1, ")"

    .line 133
    .line 134
    const-string p2, "Parallelisation parameter p must be >= 1 and <= "

    .line 135
    .line 136
    invoke-static {p2, v7, p0, p1, v2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    goto :goto_0

    .line 141
    :cond_8
    const-string p0, "Block size r must be >= 1."

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_9
    const-string p0, "Cost parameter N must be > 1 and a power of 2"

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    const-string p0, "Salt S must be provided."

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_b
    const-string p0, "Passphrase P must be provided."

    .line 151
    .line 152
    goto :goto_0
.end method

.method public final initWithASN1([B)V
    .locals 6
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
    if-eqz p1, :cond_7

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
    const/4 v1, 0x4

    .line 18
    if-lt v0, v1, :cond_6

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    const/4 v2, 0x5

    .line 22
    if-gt v0, v2, :cond_6

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    aget-object v2, p1, v0

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/jcraft/jsch/asn1/ASN1;->isOCTETSTRING()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    aget-object v3, p1, v2

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    aget-object v4, p1, v3

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    aget-object v5, p1, v4

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    array-length v5, p1

    .line 61
    if-le v5, v1, :cond_1

    .line 62
    .line 63
    aget-object v1, p1, v1

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/jcraft/jsch/asn1/ASN1;->isINTEGER()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 73
    .line 74
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    :goto_0
    aget-object v0, p1, v0

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/jcraft/jsch/bc/SCrypt;->a:[B

    .line 85
    .line 86
    aget-object v0, p1, v2

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lcom/jcraft/jsch/bc/SCrypt;->b:I

    .line 97
    .line 98
    aget-object v0, p1, v3

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/jcraft/jsch/bc/SCrypt;->c:I

    .line 109
    .line 110
    aget-object p1, p1, v4

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/jcraft/jsch/asn1/ASN1;->getContent()[B

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lcom/jcraft/jsch/asn1/ASN1;->parseASN1IntegerAsInt([B)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, p0, Lcom/jcraft/jsch/bc/SCrypt;->d:I

    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_3
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 130
    .line 131
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_4
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 136
    .line 137
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_5
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 142
    .line 143
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_6
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 148
    .line 149
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_7
    new-instance p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 154
    .line 155
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 156
    .line 157
    .line 158
    throw p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    move-exception p0

    .line 160
    instance-of p1, p0, Lcom/jcraft/jsch/JSchException;

    .line 161
    .line 162
    if-nez p1, :cond_a

    .line 163
    .line 164
    instance-of p1, p0, Lcom/jcraft/jsch/asn1/ASN1Exception;

    .line 165
    .line 166
    if-nez p1, :cond_9

    .line 167
    .line 168
    instance-of p1, p0, Ljava/lang/ArithmeticException;

    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_8
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 174
    .line 175
    const-string v0, "scrypt unavailable"

    .line 176
    .line 177
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_9
    :goto_1
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 182
    .line 183
    const-string v0, "invalid ASN1"

    .line 184
    .line 185
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_a
    check-cast p0, Lcom/jcraft/jsch/JSchException;

    .line 190
    .line 191
    throw p0
.end method
