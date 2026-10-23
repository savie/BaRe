.class public final Ld16;
.super Ljava/security/KeyStoreSpi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lvz0;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld16;->a:Lvz0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lvh7;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lw06;

    .line 8
    .line 9
    invoke-direct {v1, v0, p2, p1, p3}, Lw06;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/security/PrivateKey;Lvh7;Ljava/security/cert/X509Certificate;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ld16;->a:Lvz0;

    .line 13
    .line 14
    invoke-interface {p0, v1}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcn6;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final engineAliases()Ljava/util/Enumeration;
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

.method public final engineContainsAlias(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final engineDeleteEntry(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lv06;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1}, Lv06;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Lvh7;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Ld16;->a:Lvz0;

    .line 17
    .line 18
    invoke-interface {p0, v1}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcn6;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/security/KeyStoreException;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ly06;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1}, Ly06;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Lvh7;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Ld16;->a:Lvz0;

    .line 17
    .line 18
    invoke-interface {p0, v1}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcn6;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcn6;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Lvk0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {p1}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :goto_1
    iget-short v0, p1, Lje;->b:S

    .line 44
    .line 45
    const/16 v1, 0x6a82

    .line 46
    .line 47
    if-ne v0, v1, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-static {p1}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :catch_2
    :goto_2
    return-object p0
.end method

.method public final engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lvh7;->values()[Lvh7;

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
    iget v3, v3, Lvh7;->a:I

    .line 12
    .line 13
    const/16 v4, 0x10

    .line 14
    .line 15
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0, v3}, Ld16;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1, v4}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld16;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/security/cert/Certificate;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 3

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ld16;->a:Lvz0;

    .line 13
    .line 14
    new-instance v2, Lu06;

    .line 15
    .line 16
    invoke-direct {v2, v1, p1, p2}, Lu06;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Lvh7;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v2}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcn6;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/security/KeyStore$Entry;
    :try_end_0
    .catch Lvk0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :goto_1
    iget-short p1, p0, Lje;->b:S

    .line 44
    .line 45
    const/16 p2, 0x6a82

    .line 46
    .line 47
    if-ne p1, p2, :cond_0

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_0
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :catch_2
    new-instance p0, Ljava/security/UnrecoverableEntryException;

    .line 55
    .line 56
    const-string p1, "Make sure the matching certificate is stored"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ld16;->a:Lvz0;

    .line 13
    .line 14
    new-instance v2, Lx06;

    .line 15
    .line 16
    invoke-direct {v2, v1, p1, p2}, Lx06;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Lvh7;[C)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v2}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcn6;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcn6;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/security/Key;
    :try_end_0
    .catch Lvk0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :goto_1
    iget-short p1, p0, Lje;->b:S

    .line 44
    .line 45
    const/16 p2, 0x6a82

    .line 46
    .line 47
    if-ne p1, p2, :cond_0

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_0
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :catch_2
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    .line 55
    .line 56
    const-string p1, "No way to infer KeyType, make sure the matching certificate is stored"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld16;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld16;->engineContainsAlias(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final engineLoad(Ljava/io/InputStream;[C)V
    .locals 0

    .line 12
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "KeyStore must be loaded with a null LoadStoreParameter"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 5
    .line 6
    const-string p1, "KeyStore must be loaded with null"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Ld16;->a(Lvh7;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/security/KeyStoreException;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    .line 24
    .line 25
    const-string p1, "Certificate must be X509Certificate"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    check-cast p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    .line 20
    .line 21
    const-string p1, "Certificate cannot use protParam"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 28
    .line 29
    if-eqz v0, :cond_6

    .line 30
    .line 31
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    move-object v2, v0

    .line 42
    move-object v0, p2

    .line 43
    move-object p2, v2

    .line 44
    :goto_0
    if-eqz p2, :cond_3

    .line 45
    .line 46
    instance-of v1, p2, Ljava/security/cert/X509Certificate;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/security/KeyStoreException;

    .line 52
    .line 53
    const-string p1, "Certificate must be X509Certificate"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 60
    .line 61
    if-nez p3, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    new-instance p0, Ljava/security/KeyStoreException;

    .line 65
    .line 66
    const-string p1, "protParam must be an instance of PivKeyStoreKeyParameters"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_5
    :goto_2
    :try_start_0
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0, p2}, Ld16;->a(Lvh7;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/security/KeyStoreException;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_6
    new-instance p0, Ljava/security/KeyStoreException;

    .line 86
    .line 87
    const-string p1, "Unsupported KeyStore entry."

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lvh7;->a(Ljava/lang/String;)Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p3, :cond_2

    .line 6
    .line 7
    array-length p3, p4

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p3, v0, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    aget-object p3, p4, p3

    .line 13
    .line 14
    instance-of p4, p3, Ljava/security/cert/X509Certificate;

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    :try_start_0
    check-cast p2, Ljava/security/PrivateKey;

    .line 19
    .line 20
    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Ld16;->a(Lvh7;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance p1, Ljava/security/KeyStoreException;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    .line 34
    .line 35
    const-string p1, "Certificate must be X509Certificate"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    new-instance p0, Ljava/security/KeyStoreException;

    .line 42
    .line 43
    const-string p1, "Certificate chain must be a single certificate, or empty"

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    new-instance p0, Ljava/security/KeyStoreException;

    .line 50
    .line 51
    const-string p1, "Password can not be set"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 57
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Use setKeyEntry with a PrivateKey instance instead of byte[]"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineSize()I
    .locals 0

    .line 1
    invoke-static {}, Lvh7;->values()[Lvh7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    return p0
.end method

.method public final engineStore(Ljava/io/OutputStream;[C)V
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
