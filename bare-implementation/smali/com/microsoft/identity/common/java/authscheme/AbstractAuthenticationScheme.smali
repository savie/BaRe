.class public abstract Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x21d2ecf931f1fa05L


# instance fields
.field private final mName:Ljava/lang/String;
    .annotation runtime Ly77;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;->access$100(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->mName:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "name is marked non-null but is null"

    .line 10
    .line 11
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->canEqual(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p0, :cond_3

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_4

    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x2b

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    const/16 v0, 0x3b

    .line 15
    .line 16
    add-int/2addr v0, p0

    .line 17
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AbstractAuthenticationScheme{mName=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->mName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "\'}"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
