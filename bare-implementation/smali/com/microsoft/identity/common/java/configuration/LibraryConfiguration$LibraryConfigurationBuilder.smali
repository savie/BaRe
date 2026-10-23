.class public final Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private authorizationInCurrentTask:Z


# virtual methods
.method public final authorizationInCurrentTask(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->authorizationInCurrentTask:Z

    .line 2
    .line 3
    return-void
.end method

.method public final build()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->authorizationInCurrentTask:Z

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LibraryConfiguration.LibraryConfigurationBuilder(authorizationInCurrentTask="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->authorizationInCurrentTask:Z

    .line 9
    .line 10
    const-string v1, ", refreshInEnabled=false)"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
