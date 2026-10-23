.class Lcom/jcraft/jsch/OpenSshCertificateUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


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

.method public static a([BI)[B
    .locals 6

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    if-gez p1, :cond_1

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    array-length v2, p0

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    aget-byte v2, p0, v1

    .line 16
    .line 17
    invoke-static {v2}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->e(B)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v2, -0x1

    .line 27
    move v4, v0

    .line 28
    move v3, v2

    .line 29
    :cond_3
    :goto_1
    array-length v5, p0

    .line 30
    if-ge v1, v5, :cond_8

    .line 31
    .line 32
    aget-byte v5, p0, v1

    .line 33
    .line 34
    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->e(B)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_5

    .line 39
    .line 40
    if-ne v3, v2, :cond_4

    .line 41
    .line 42
    move v3, v1

    .line 43
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_5
    if-eq v3, v2, :cond_7

    .line 47
    .line 48
    if-ne v4, p1, :cond_6

    .line 49
    .line 50
    sub-int/2addr v1, v3

    .line 51
    new-array p1, v1, [B

    .line 52
    .line 53
    invoke-static {p0, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    move v3, v2

    .line 60
    :cond_7
    :goto_2
    array-length v5, p0

    .line 61
    if-ge v1, v5, :cond_3

    .line 62
    .line 63
    aget-byte v5, p0, v1

    .line 64
    .line 65
    invoke-static {v5}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->e(B)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_8
    if-eq v3, v2, :cond_9

    .line 75
    .line 76
    if-ne v4, p1, :cond_9

    .line 77
    .line 78
    sub-int/2addr v1, v3

    .line 79
    new-array p1, v1, [B

    .line 80
    .line 81
    invoke-static {p0, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_9
    :goto_3
    const/4 p0, 0x0

    .line 86
    return-object p0
.end method

.method public static b(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey()[Lcom/jcraft/jsch/HostKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lau5;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/Set;

    .line 27
    .line 28
    return-object p0
.end method

.method public static c(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey()[Lcom/jcraft/jsch/HostKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ldu5;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/Set;

    .line 27
    .line 28
    return-object p0
.end method

.method public static d(Lcom/jcraft/jsch/HostKeyRepository;Lcom/jcraft/jsch/HostKey;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/jcraft/jsch/HostKey;->d:[B

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :goto_0
    return v0

    .line 10
    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/OpenSshCertificateUtil;->b(Lcom/jcraft/jsch/HostKeyRepository;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Li23;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Li23;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lw81;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, v1}, Lw81;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v0, Lcu5;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, v1}, Lcu5;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v0, Lcom/jcraft/jsch/f;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lcom/jcraft/jsch/f;-><init>([B)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public static e(B)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method
