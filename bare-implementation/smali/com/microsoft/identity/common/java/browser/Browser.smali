.class public final Lcom/microsoft/identity/common/java/browser/Browser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mIsCustomTabsServiceSupported:Ljava/lang/Boolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mSignatureHashes:Ljava/util/HashSet;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mSignatureHashes:Ljava/util/HashSet;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mVersion:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mIsCustomTabsServiceSupported:Ljava/lang/Boolean;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/browser/Browser;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/browser/Browser;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/microsoft/identity/common/java/browser/Browser;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mVersion:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/microsoft/identity/common/java/browser/Browser;->mVersion:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mSignatureHashes:Ljava/util/HashSet;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/microsoft/identity/common/java/browser/Browser;->mSignatureHashes:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSignatureHashes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mSignatureHashes:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x16a95

    .line 8
    .line 9
    .line 10
    mul-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mVersion:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mIsCustomTabsServiceSupported:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, v0

    .line 24
    iget-object p0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mSignatureHashes:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    mul-int/2addr v2, v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v2, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return v2
.end method

.method public final isCustomTabsServiceSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/browser/Browser;->mIsCustomTabsServiceSupported:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
