.class public Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;
.super Lcom/microsoft/identity/common/java/authorities/Authority;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final TAG:Ljava/lang/String; = "AzureActiveDirectoryB2CAuthority"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "B2C"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createOAuth2Configuration()Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ":createOAuth2Configuration"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v3, "Creating OAuth2Configuration"

    .line 21
    .line 22
    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setMultipleCloudsSupported(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setAuthorityUrl(Ljava/net/URL;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "Setting slice parameters..."

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getSlice()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setSlice(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->getDataCenter()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setDataCenter(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;->setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-object v0
.end method

.method public createOAuth2Strategy(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryB2CAuthority;->createOAuth2Configuration()Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;-><init>(Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string p0, "parameters is marked non-null but is null"

    .line 14
    .line 15
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getB2CPolicyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authorities/Authority;->mAuthorityUrlString:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v0, p0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    aget-object p0, p0, v0

    .line 13
    .line 14
    return-object p0
.end method
