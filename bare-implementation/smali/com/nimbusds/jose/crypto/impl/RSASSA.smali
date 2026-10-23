.class public Lcom/nimbusds/jose/crypto/impl/RSASSA;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getSignerAndVerifier(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SHA256withRSA"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "SHA384withRSA"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "SHA512withRSA"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v2, "RSASSA-PSS"

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    .line 63
    .line 64
    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 65
    .line 66
    const/16 v7, 0x20

    .line 67
    .line 68
    const/4 v8, 0x1

    .line 69
    const-string v4, "SHA-256"

    .line 70
    .line 71
    const-string v5, "MGF1"

    .line 72
    .line 73
    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, p1, v3}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;Ljava/security/spec/PSSParameterSpec;)Ljava/security/Signature;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    const-string v1, "SHA256withRSA/PSS"

    .line 90
    .line 91
    invoke-static {v1, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_4
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    const-string v0, "SHA256withRSAandMGF1"

    .line 105
    .line 106
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_5
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    .line 122
    .line 123
    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 124
    .line 125
    const/16 v7, 0x30

    .line 126
    .line 127
    const/4 v8, 0x1

    .line 128
    const-string v4, "SHA-384"

    .line 129
    .line 130
    const-string v5, "MGF1"

    .line 131
    .line 132
    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 133
    .line 134
    .line 135
    invoke-static {v2, p1, v3}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;Ljava/security/spec/PSSParameterSpec;)Ljava/security/Signature;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_6
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    const-string v1, "SHA384withRSA/PSS"

    .line 149
    .line 150
    invoke-static {v1, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    return-object v1

    .line 157
    :cond_7
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    const-string v0, "SHA384withRSAandMGF1"

    .line 164
    .line 165
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_8
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_9

    .line 179
    .line 180
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    .line 181
    .line 182
    sget-object v6, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 183
    .line 184
    const/16 v7, 0x40

    .line 185
    .line 186
    const/4 v8, 0x1

    .line 187
    const-string v4, "SHA-512"

    .line 188
    .line 189
    const-string v5, "MGF1"

    .line 190
    .line 191
    invoke-direct/range {v3 .. v8}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 192
    .line 193
    .line 194
    invoke-static {v2, p1, v3}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;Ljava/security/spec/PSSParameterSpec;)Ljava/security/Signature;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_9

    .line 199
    .line 200
    return-object v1

    .line 201
    :cond_9
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_a

    .line 206
    .line 207
    const-string v1, "SHA512withRSA/PSS"

    .line 208
    .line 209
    invoke-static {v1, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_a

    .line 214
    .line 215
    return-object v1

    .line 216
    :cond_a
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/Algorithm;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_b

    .line 221
    .line 222
    const-string v0, "SHA512withRSAandMGF1"

    .line 223
    .line 224
    invoke-static {v0, p1}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-eqz p1, :cond_b

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_b
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    .line 232
    .line 233
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/RSASSAProvider;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 234
    .line 235
    invoke-static {p0, v0}, Lcom/nimbusds/jose/crypto/impl/AlgorithmSupportMessage;->unsupportedJWSAlgorithm(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/util/Collection;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p1
.end method

.method private static getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/crypto/impl/RSASSA;->getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;Ljava/security/spec/PSSParameterSpec;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method private static getSignerAndVerifier(Ljava/lang/String;Ljava/security/Provider;Ljava/security/spec/PSSParameterSpec;)Ljava/security/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 244
    :try_start_0
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz p2, :cond_1

    .line 246
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 247
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid RSASSA-PSS salt length parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method
