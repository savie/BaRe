.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final authIntent:Landroid/content/Intent;

.field private final authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

.field private final context:Landroid/content/Context;

.field private final redirectUri:Ljava/lang/String;

.field private final requestHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestUrl:Ljava/lang/String;

.field private final sourceLibraryName:Ljava/lang/String;

.field private final sourceLibraryVersion:Ljava/lang/String;

.field private final utid:Ljava/lang/String;

.field private final webViewZoomControlsEnabled:Z

.field private final webViewZoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p12, 0x40

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p7, v1

    .line 7
    :cond_0
    and-int/lit16 v0, p12, 0x80

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move p8, v1

    .line 12
    :cond_1
    and-int/lit16 v0, p12, 0x100

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    move-object p9, v1

    .line 18
    :cond_2
    and-int/lit16 v0, p12, 0x200

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    move-object p10, v1

    .line 23
    :cond_3
    and-int/lit16 p12, p12, 0x400

    .line 24
    .line 25
    if-eqz p12, :cond_4

    .line 26
    .line 27
    move-object p11, v1

    .line 28
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->context:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authIntent:Landroid/content/Intent;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestUrl:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->redirectUri:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestHeader:Ljava/util/HashMap;

    .line 40
    .line 41
    iput-object p6, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 42
    .line 43
    iput-boolean p7, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomEnabled:Z

    .line 44
    .line 45
    iput-boolean p8, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomControlsEnabled:Z

    .line 46
    .line 47
    iput-object p9, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryName:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p10, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryVersion:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p11, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->utid:Ljava/lang/String;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->context:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authIntent:Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authIntent:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestUrl:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestUrl:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->redirectUri:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->redirectUri:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestHeader:Ljava/util/HashMap;

    .line 59
    .line 60
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestHeader:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_6

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 70
    .line 71
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 72
    .line 73
    if-eq v1, v2, :cond_7

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomEnabled:Z

    .line 77
    .line 78
    iget-boolean v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomEnabled:Z

    .line 79
    .line 80
    if-eq v1, v2, :cond_8

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_8
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomControlsEnabled:Z

    .line 84
    .line 85
    iget-boolean v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomControlsEnabled:Z

    .line 86
    .line 87
    if-eq v1, v2, :cond_9

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_9
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryName:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_a

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_a
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryVersion:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryVersion:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_b

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_b
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->utid:Ljava/lang/String;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->utid:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_c

    .line 121
    .line 122
    :goto_0
    const/4 p0, 0x0

    .line 123
    return p0

    .line 124
    :cond_c
    return v0
.end method

.method public final getAuthIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->redirectUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestHeader()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestHeader:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSourceLibraryName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSourceLibraryVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUtid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->utid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWebViewZoomControlsEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomControlsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getWebViewZoomEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authIntent:Landroid/content/Intent;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestUrl:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1, v3}, Lfz5;->g(IILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->redirectUri:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, v3}, Lfz5;->g(IILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestHeader:Ljava/util/HashMap;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    move v3, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :goto_1
    add-int/2addr v0, v3

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/2addr v3, v0

    .line 54
    mul-int/2addr v3, v1

    .line 55
    const/4 v0, 0x1

    .line 56
    iget-boolean v4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomEnabled:Z

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    move v4, v0

    .line 61
    :cond_2
    add-int/2addr v3, v4

    .line 62
    mul-int/2addr v3, v1

    .line 63
    iget-boolean v4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomControlsEnabled:Z

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v0, v4

    .line 69
    :goto_2
    add-int/2addr v3, v0

    .line 70
    mul-int/2addr v3, v1

    .line 71
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryName:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    move v0, v2

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_3
    add-int/2addr v3, v0

    .line 82
    mul-int/2addr v3, v1

    .line 83
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryVersion:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    move v0, v2

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    :goto_4
    add-int/2addr v3, v0

    .line 94
    mul-int/2addr v3, v1

    .line 95
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->utid:Ljava/lang/String;

    .line 96
    .line 97
    if-nez p0, :cond_6

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :goto_5
    add-int/2addr v3, v2

    .line 105
    mul-int/lit16 v3, v3, 0x3c1

    .line 106
    .line 107
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AuthorizationActivityParameters(context="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", authIntent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authIntent:Landroid/content/Intent;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", requestUrl="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestUrl:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", redirectUri="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->redirectUri:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", requestHeader="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->requestHeader:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", authorizationAgent="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->authorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", webViewZoomEnabled="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomEnabled:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", webViewZoomControlsEnabled="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->webViewZoomControlsEnabled:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", sourceLibraryName="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", sourceLibraryVersion="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->sourceLibraryVersion:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", utid="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivityParameters;->utid:Ljava/lang/String;

    .line 109
    .line 110
    const-string v1, ", webViewEnableSilentAuthorizationFlowTimeOutMs=null, isWebViewWebCpEnabled=false)"

    .line 111
    .line 112
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0
.end method
