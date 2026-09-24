.class public abstract Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.super Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SCHEME_DELIMITER:Ljava/lang/String; = " "

.field private static final serialVersionUID:J = 0x6f1ed6d39e6ee10bL


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;-><init>(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    .line 2
    .line 3
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;->canEqual(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    return v2

    .line 28
    :cond_3
    return v0
.end method

.method public abstract getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/identity/common/java/exception/ClientException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
