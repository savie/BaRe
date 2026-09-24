.class public final Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private srcSku$set:Z

.field private srcSku$value:Ljava/lang/String;

.field private srcSkuVer$set:Z

.field private srcSkuVer$value:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/microsoft/identity/common/java/util/ClientExtraSku;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSku$value:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSku$set:Z

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    move-object v0, v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSkuVer$value:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSkuVer$set:Z

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v2, v1

    .line 18
    :goto_0
    new-instance p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku;

    .line 19
    .line 20
    invoke-direct {p0, v0, v2}, Lcom/microsoft/identity/common/java/util/ClientExtraSku;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final srcSku(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSku$value:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSku$set:Z

    .line 5
    .line 6
    return-void
.end method

.method public final srcSkuVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSkuVer$value:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSkuVer$set:Z

    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ClientExtraSku.ClientExtraSkuBuilder(srcSku$value="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSku$value:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", srcSkuVer$value="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/ClientExtraSku$ClientExtraSkuBuilder;->srcSkuVer$value:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, ", msalRuntimeVer$value=null, browserExtSku$value=null, browserExtVer$value=null, browserCoreVer$value=null, msalCppCoreVer$value=null)"

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
