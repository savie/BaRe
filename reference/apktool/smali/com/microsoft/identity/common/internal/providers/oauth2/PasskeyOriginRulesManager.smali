.class public abstract Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final PRODUCTION_ORIGINS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOVEREIGN_CLOUD_ORIGINS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v4, "https://mysignins.microsoft.scloud"

    .line 2
    .line 3
    const-string v5, "https://mysignins.eaglex.ic.gov"

    .line 4
    .line 5
    const-string v0, "https://login.microsoft.com"

    .line 6
    .line 7
    const-string v1, "https://account.live.com"

    .line 8
    .line 9
    const-string v2, "https://mysignins.microsoft.com"

    .line 10
    .line 11
    const-string v3, "https://mysignins.azure.us"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->PRODUCTION_ORIGINS:Ljava/util/Set;

    .line 22
    .line 23
    const-string v5, "https://login.sovcloud-identity.de"

    .line 24
    .line 25
    const-string v6, "https://login.sovcloud-identity.sg"

    .line 26
    .line 27
    const-string v1, "https://login.microsoftonline.us"

    .line 28
    .line 29
    const-string v2, "https://login.microsoftonline.microsoft.scloud"

    .line 30
    .line 31
    const-string v3, "https://login.microsoftonline.eaglex.ic.gov"

    .line 32
    .line 33
    const-string v4, "https://login.sovcloud-identity.fr"

    .line 34
    .line 35
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->SOVEREIGN_CLOUD_ORIGINS:Ljava/util/Set;

    .line 44
    .line 45
    const-string v0, "https://login.windows-ppe.net"

    .line 46
    .line 47
    const-string v1, "https://mysignins-ppe.microsoft.com"

    .line 48
    .line 49
    const-string v2, "https://account.live-int.com"

    .line 50
    .line 51
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static getAllowedOriginRules()Ljava/util/LinkedHashSet;
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->PRODUCTION_ORIGINS:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->SOVEREIGN_CLOUD_ORIGINS:Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lsz8;->R(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final isAllowedOrigin(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "https://"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Ljava/net/URI;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v4, "https"

    .line 29
    .line 30
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->PRODUCTION_ORIGINS:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/PasskeyOriginRulesManager;->SOVEREIGN_CLOUD_ORIGINS:Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const-string v0, "/"

    .line 87
    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v2, 0x6

    .line 93
    invoke-static {p0, v0, v2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "fido"

    .line 121
    .line 122
    invoke-static {v0, v2, v3}, Luq7;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    :goto_0
    return v3

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    :goto_1
    return v1

    .line 132
    :goto_2
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 133
    .line 134
    const-string v0, "PasskeyOriginRulesManager"

    .line 135
    .line 136
    const-string v2, "Error validating origin for URL."

    .line 137
    .line 138
    invoke-static {v0, v2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    return v1
.end method
