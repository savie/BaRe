.class public final Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final piv:Lw16;


# direct methods
.method public constructor <init>(Lw16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->piv:Lw16;

    .line 5
    .line 6
    return-void
.end method

.method private static getAndPutCertDetailsInList(Lvh7;Lw16;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lje;,
            Lvk0;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Lw16;->a(Lvh7;)Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;-><init>(Ljava/security/cert/X509Certificate;Lvh7;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    iget-short p2, p1, Lje;->b:S

    .line 16
    .line 17
    const/16 v0, 0x6a82

    .line 18
    .line 19
    if-ne p2, v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " slot is empty."

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 39
    .line 40
    const-string p1, "YubiKitSmartcardSession:getAndPutCertDetailsInList"

    .line 41
    .line 42
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    throw p1
.end method


# virtual methods
.method public final getCertDetailsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lje;,
            Lvk0;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lvh7;->c:Lvh7;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->piv:Lw16;

    .line 9
    .line 10
    invoke-static {v1, p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getAndPutCertDetailsInList(Lvh7;Lw16;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lvh7;->d:Lvh7;

    .line 14
    .line 15
    invoke-static {v1, p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getAndPutCertDetailsInList(Lvh7;Lw16;Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lvh7;->e:Lvh7;

    .line 19
    .line 20
    invoke-static {v1, p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getAndPutCertDetailsInList(Lvh7;Lw16;Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lvh7;->f:Lvh7;

    .line 24
    .line 25
    invoke-static {v1, p0, v0}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->getAndPutCertDetailsInList(Lvh7;Lw16;Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final getKeyForAuth(Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;[C)Lj16;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lt16;

    .line 2
    .line 3
    new-instance v1, Lk16;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->piv:Lw16;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lk16;-><init>(Lw16;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lt16;-><init>(Lvz0;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "YKPiv"

    .line 14
    .line 15
    invoke-static {p0, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitCertDetails;->getSlot()Lvh7;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Lvh7;->a:I

    .line 28
    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    instance-of p1, p0, Lj16;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    check-cast p0, Lj16;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 47
    .line 48
    const-string p0, "YubiKitSmartcardSession:getKeyForAuth"

    .line 49
    .line 50
    const-string p1, "Private key retrieved from YKPiv keystore is not of type PivPrivateKey."

    .line 51
    .line 52
    invoke-static {p0, p1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Ljava/lang/Exception;

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final getPinAttemptsRemaining()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lje;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->piv:Lw16;

    .line 2
    .line 3
    iget-object v0, p0, Lw16;->a:Lci7;

    .line 4
    .line 5
    sget-object v1, Lw16;->f:Ll15;

    .line 6
    .line 7
    const-string v2, "Getting PIN attempts"

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ll15;->k(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lw16;->e:Lx53;

    .line 13
    .line 14
    iget-object v3, p0, Lw16;->b:Lwj8;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lx53;->u(Lwj8;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    const/16 v5, -0x80

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v3, "Getting PIN metadata"

    .line 27
    .line 28
    invoke-interface {v1, v3}, Ll15;->k(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lw16;->n(Lol1;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Lie;

    .line 35
    .line 36
    const/16 v1, -0x9

    .line 37
    .line 38
    invoke-direct {p0, v1, v4, v6, v5}, Lie;-><init>(I[BII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lci7;->b(Lie;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcy0;->o([B)Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v0, 0x6

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, [B

    .line 59
    .line 60
    const/4 v1, 0x5

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, [B

    .line 70
    .line 71
    aget-byte p0, p0, v6

    .line 72
    .line 73
    aget-byte p0, v0, v6

    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    aget-byte p0, v0, p0

    .line 77
    .line 78
    return p0

    .line 79
    :cond_0
    :try_start_0
    new-instance v2, Lie;

    .line 80
    .line 81
    const/16 v3, 0x20

    .line 82
    .line 83
    invoke-direct {v2, v3, v4, v6, v5}, Lie;-><init>(I[BII)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lci7;->b(Lie;)[B

    .line 87
    .line 88
    .line 89
    const-string v0, "Using cached value, may be incorrect"

    .line 90
    .line 91
    invoke-interface {v1, v0}, Ll15;->k(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget p0, p0, Lw16;->c:I
    :try_end_0
    .catch Lje; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    return p0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    iget-short v2, v0, Lje;->b:S

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lw16;->b(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ltz v2, :cond_1

    .line 105
    .line 106
    iput v2, p0, Lw16;->c:I

    .line 107
    .line 108
    const-string p0, "Using value from empty verify"

    .line 109
    .line 110
    invoke-interface {v1, p0}, Ll15;->k(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return v2

    .line 114
    :cond_1
    throw v0
.end method

.method public final verifyPin([C)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lje;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/certbasedauth/YubiKitSmartcardSession;->piv:Lw16;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw16;->r([C)V
    :try_end_0
    .catch Ldg4; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :catch_0
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 9
    .line 10
    const-string p0, "YubiKitSmartcardSession:verifyPin"

    .line 11
    .line 12
    const-string p1, "Incorrect PIN entered."

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method
