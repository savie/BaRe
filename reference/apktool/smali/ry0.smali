.class public final Lry0;
.super Ljava/security/KeyFactorySpi;

# interfaces
.implements Lm60;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lry0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget p0, p0, Lry0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lch0;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 12
    .line 13
    iput-object v0, p0, Lch0;->c:Lx1;

    .line 14
    .line 15
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->b:Lya;

    .line 16
    .line 17
    iget-object v0, v0, Lya;->b:Lb0;

    .line 18
    .line 19
    invoke-static {v0}, Ltv6;->k(Ljava/lang/Object;)Ltv6;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Ltv6;->b:Lya;

    .line 24
    .line 25
    iget-object v0, v0, Lya;->a:Lf1;

    .line 26
    .line 27
    iput-object v0, p0, Lch0;->a:Lf1;

    .line 28
    .line 29
    invoke-static {p1}, Ltu0;->e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ldw6;

    .line 34
    .line 35
    iput-object p1, p0, Lch0;->b:Ldw6;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    new-instance p0, Ltg0;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 44
    .line 45
    iput-object v0, p0, Ltg0;->b:Lx1;

    .line 46
    .line 47
    invoke-static {p1}, Ltu0;->e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lyj5;

    .line 52
    .line 53
    iput-object p1, p0, Ltg0;->a:Lyj5;

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_1
    new-instance p0, Lkf0;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->d:Lx1;

    .line 62
    .line 63
    iput-object v0, p0, Lkf0;->b:Lx1;

    .line 64
    .line 65
    invoke-static {p1}, Ltu0;->e(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ln60;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Luy0;

    .line 70
    .line 71
    iput-object p1, p0, Lkf0;->a:Luy0;

    .line 72
    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 1

    .line 1
    iget p0, p0, Lry0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ldh0;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->a:Lya;

    .line 12
    .line 13
    iget-object v0, v0, Lya;->b:Lb0;

    .line 14
    .line 15
    invoke-static {v0}, Ltv6;->k(Ljava/lang/Object;)Ltv6;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Ltv6;->b:Lya;

    .line 20
    .line 21
    iget-object v0, v0, Lya;->a:Lf1;

    .line 22
    .line 23
    iput-object v0, p0, Ldh0;->a:Lf1;

    .line 24
    .line 25
    invoke-static {p1}, Lmb6;->a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lew6;

    .line 30
    .line 31
    iput-object p1, p0, Ldh0;->b:Lew6;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_0
    new-instance p0, Lug0;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lmb6;->a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lzj5;

    .line 44
    .line 45
    iput-object p1, p0, Lug0;->a:Lzj5;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_1
    new-instance p0, Llf0;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lmb6;->a(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ln60;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lwy0;

    .line 58
    .line 59
    iput-object p1, p0, Llf0;->a:Lwy0;

    .line 60
    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 4

    .line 1
    iget v0, p0, Lry0;->a:I

    .line 2
    .line 3
    const-string v1, "."

    .line 4
    .line 5
    const-string v2, "Unsupported key specification: "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1}, Lq1;->t([B)Lq1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lry0;->a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 30
    .line 31
    .line 32
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object v3

    .line 39
    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :pswitch_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :try_start_1
    invoke-static {p1}, Lq1;->t([B)Lq1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lry0;->a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 83
    .line 84
    .line 85
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception p0

    .line 88
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-object v3

    .line 92
    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :pswitch_1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :try_start_2
    invoke-static {p1}, Lq1;->t([B)Lq1;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lry0;->a(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 136
    .line 137
    .line 138
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    goto :goto_2

    .line 140
    :catch_2
    move-exception p0

    .line 141
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    return-object v3

    .line 145
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3

    .line 1
    iget v0, p0, Lry0;->a:I

    .line 2
    .line 3
    const-string v1, "Unknown key specification: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lry0;->b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1, v1}, Lc6;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v2

    .line 37
    :pswitch_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :try_start_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lry0;->b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    .line 52
    .line 53
    .line 54
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception p0

    .line 57
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-static {p1, v1}, Lc6;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-object v2

    .line 65
    :pswitch_1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :try_start_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->k(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lry0;->b(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    goto :goto_2

    .line 84
    :catch_2
    move-exception p0

    .line 85
    invoke-static {p0}, Lb6;->c(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-static {p1, v1}, Lc6;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_2
    return-object v2

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5

    .line 1
    iget p0, p0, Lry0;->a:I

    .line 2
    .line 3
    const-string v0, "Unsupported key type: "

    .line 4
    .line 5
    const-string v1, "Unknown key specification: "

    .line 6
    .line 7
    const-class v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 8
    .line 9
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 10
    .line 11
    const-string v4, "."

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    instance-of p0, p1, Lch0;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 27
    .line 28
    check-cast p1, Lch0;

    .line 29
    .line 30
    invoke-virtual {p1}, Lch0;->getEncoded()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    instance-of p0, p1, Ldh0;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 49
    .line 50
    check-cast p1, Ldh0;

    .line 51
    .line 52
    invoke-virtual {p1}, Ldh0;->getEncoded()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object p0

    .line 60
    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 61
    .line 62
    invoke-static {p2, v1, v4}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :pswitch_0
    instance-of p0, p1, Ltg0;

    .line 96
    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 106
    .line 107
    check-cast p1, Ltg0;

    .line 108
    .line 109
    invoke-virtual {p1}, Ltg0;->getEncoded()[B

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    instance-of p0, p1, Lug0;

    .line 118
    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_4

    .line 126
    .line 127
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 128
    .line 129
    check-cast p1, Lug0;

    .line 130
    .line 131
    invoke-virtual {p1}, Lug0;->getEncoded()[B

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-object p0

    .line 139
    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 140
    .line 141
    invoke-static {p2, v1, v4}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_5
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :pswitch_1
    instance-of p0, p1, Lkf0;

    .line 175
    .line 176
    if-eqz p0, :cond_6

    .line 177
    .line 178
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_7

    .line 183
    .line 184
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 185
    .line 186
    check-cast p1, Lkf0;

    .line 187
    .line 188
    invoke-virtual {p1}, Lkf0;->getEncoded()[B

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    instance-of p0, p1, Llf0;

    .line 197
    .line 198
    if-eqz p0, :cond_8

    .line 199
    .line 200
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_7

    .line 205
    .line 206
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    .line 207
    .line 208
    check-cast p1, Llf0;

    .line 209
    .line 210
    invoke-virtual {p1}, Llf0;->getEncoded()[B

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 215
    .line 216
    .line 217
    :goto_2
    return-object p0

    .line 218
    :cond_7
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 219
    .line 220
    invoke-static {p2, v1, v4}, Lfz5;->l(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_8
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    .line 1
    iget p0, p0, Lry0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "Unsupported key type"

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    instance-of p0, p1, Lch0;

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    instance-of p0, p1, Ldh0;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1}, Ld6;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object p1, v0

    .line 22
    :cond_1
    :goto_0
    return-object p1

    .line 23
    :pswitch_0
    instance-of p0, p1, Ltg0;

    .line 24
    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    instance-of p0, p1, Lug0;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {v1}, Ld6;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v0

    .line 36
    :cond_3
    :goto_1
    return-object p1

    .line 37
    :pswitch_1
    instance-of p0, p1, Lkf0;

    .line 38
    .line 39
    if-nez p0, :cond_5

    .line 40
    .line 41
    instance-of p0, p1, Llf0;

    .line 42
    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    invoke-static {v1}, Ld6;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object p1, v0

    .line 50
    :cond_5
    :goto_2
    return-object p1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
