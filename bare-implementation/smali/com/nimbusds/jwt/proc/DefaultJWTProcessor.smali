.class public Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/nimbusds/jwt/proc/ConfigurableJWTProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/ConfigurableJWTProcessor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private claimsSetAwareJWSKeySelector:Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

.field private jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 9
    .line 10
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    .line 16
    .line 17
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 23
    .line 24
    new-instance v0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1, v1}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>(Lcom/nimbusds/jwt/JWTClaimsSet;Ljava/util/Set;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public extractJWTClaimsSet(Lcom/nimbusds/jwt/JWT;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/nimbusds/jwt/JWT;->getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWETypeVerifier()Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWSTypeVerifier()Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsSetAwareJWSKeySelector:Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 2
    .line 3
    return-object p0
.end method

.method public process(Lcom/nimbusds/jwt/EncryptedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/EncryptedJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;->verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JWEKeySelector;->selectJWEKeys(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/security/Key;

    .line 71
    .line 72
    invoke-interface {v1, v2, v3}, Lcom/nimbusds/jose/proc/JWEDecrypterFactory;->createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/JWEObject;->decrypt(Lcom/nimbusds/jose/JWEDecrypter;)V
    :try_end_0
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/nimbusds/jose/Header;->getContentType()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "JWT"

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/nimbusds/jose/JOSEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/nimbusds/jose/Payload;->toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_1
    new-instance p0, Lcom/nimbusds/jwt/proc/BadJWTException;

    .line 114
    .line 115
    const-string p1, "The payload is not a nested signed JWT"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->extractJWTClaimsSet(Lcom/nimbusds/jwt/JWT;)Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyJWTClaimsSet(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    new-instance p0, Lcom/nimbusds/jose/proc/BadJWEException;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v0, "Encrypted JWT rejected: "

    .line 147
    .line 148
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1, v1}, Lcom/nimbusds/jose/proc/BadJWEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_4
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 163
    .line 164
    const-string p1, "Encrypted JWT rejected: No matching decrypter(s) found"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_5
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 171
    .line 172
    const-string p1, "Encrypted JWT rejected: Another algorithm expected, or no matching key(s) found"

    .line 173
    .line 174
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_6
    const-string p0, "No JWE decrypter is configured"

    .line 179
    .line 180
    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/4 p0, 0x0

    .line 184
    return-object p0

    .line 185
    :cond_7
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 186
    .line 187
    const-string p1, "Encrypted JWT rejected: No JWE key selector is configured"

    .line 188
    .line 189
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_8
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 194
    .line 195
    const-string p1, "Encrypted JWT rejected: No JWE header typ (type) verifier is configured"

    .line 196
    .line 197
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0
.end method

.method public process(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 201
    instance-of v0, p1, Lcom/nimbusds/jwt/SignedJWT;

    if-eqz v0, :cond_0

    .line 202
    check-cast p1, Lcom/nimbusds/jwt/SignedJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    instance-of v0, p1, Lcom/nimbusds/jwt/EncryptedJWT;

    if-eqz v0, :cond_1

    .line 204
    check-cast p1, Lcom/nimbusds/jwt/EncryptedJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/EncryptedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    return-object p0

    .line 205
    :cond_1
    instance-of v0, p1, Lcom/nimbusds/jwt/PlainJWT;

    if-eqz v0, :cond_2

    .line 206
    check-cast p1, Lcom/nimbusds/jwt/PlainJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/PlainJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    return-object p0

    .line 207
    :cond_2
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected JWT object type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public process(Lcom/nimbusds/jwt/PlainJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/PlainJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    if-nez p0, :cond_0

    .line 209
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p1, "Plain JWT rejected: No JWS header typ (type) verifier is configured"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/nimbusds/jose/PlainObject;->getHeader()Lcom/nimbusds/jose/PlainHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;->verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 211
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p1, "Unsecured (plain) JWTs are rejected, extend class to handle"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/SignedJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    if-eqz v0, :cond_8

    .line 213
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/Header;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;->verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 214
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p1, "Signed JWT rejected: No JWS key selector is configured"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 217
    invoke-virtual {p0, p1}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->extractJWTClaimsSet(Lcom/nimbusds/jwt/JWT;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->selectKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 219
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 220
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 221
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Key;

    invoke-interface {v2, v3, v4}, Lcom/nimbusds/jose/proc/JWSVerifierFactory;->createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {p1, v2}, Lcom/nimbusds/jose/JWSObject;->verify(Lcom/nimbusds/jose/JWSVerifier;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    invoke-virtual {p0, v0, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyJWTClaimsSet(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    return-object p0

    .line 225
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 226
    :cond_4
    new-instance p0, Lcom/nimbusds/jose/proc/BadJWSException;

    const-string p1, "Signed JWT rejected: Invalid signature"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJWSException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_5
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p1, "JWS object rejected: No matching verifier(s) found"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_6
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p1, "Signed JWT rejected: Another algorithm expected, or no matching key(s) found"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_7
    const-string p0, "No JWS verifier is configured"

    invoke-static {p0}, Lf6;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_8
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p1, "Signed JWT rejected: No JWS header typ (type) verifier is configured"

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public process(Ljava/lang/String;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 231
    invoke-static {p1}, Lcom/nimbusds/jwt/JWTParser;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/JWT;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    return-object p0
.end method

.method public selectKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)",
            "Ljava/util/List<",
            "+",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;,
            Lcom/nimbusds/jose/proc/BadJOSEException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0, p1, p2, p3}, Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;->selectKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0, p1, p3}, Lcom/nimbusds/jose/proc/JWSKeySelector;->selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance p0, Lcom/nimbusds/jose/proc/BadJOSEException;

    .line 32
    .line 33
    const-string p1, "Signed JWT rejected: No JWS key selector is configured"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public setJWEDecrypterFactory(Lcom/nimbusds/jose/proc/JWEDecrypterFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setJWEKeySelector(Lcom/nimbusds/jose/proc/JWEKeySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;

    .line 2
    .line 3
    return-void
.end method

.method public setJWETypeVerifier(Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 2
    .line 3
    return-void
.end method

.method public setJWSKeySelector(Lcom/nimbusds/jose/proc/JWSKeySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;

    .line 2
    .line 3
    return-void
.end method

.method public setJWSTypeVerifier(Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 2
    .line 3
    return-void
.end method

.method public setJWSVerifierFactory(Lcom/nimbusds/jose/proc/JWSVerifierFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setJWTClaimsSetAwareJWSKeySelector(Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsSetAwareJWSKeySelector:Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    .line 2
    .line 3
    return-void
.end method

.method public setJWTClaimsSetVerifier(Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 2
    .line 3
    return-void
.end method

.method public verifyJWTClaimsSet(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0, p1, p2}, Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p1
.end method
