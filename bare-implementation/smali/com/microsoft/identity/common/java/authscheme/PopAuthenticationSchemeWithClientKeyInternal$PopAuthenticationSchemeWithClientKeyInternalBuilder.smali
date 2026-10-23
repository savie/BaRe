.class public abstract Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;",
        "B:",
        "Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field private kid:Ljava/lang/String;


# direct methods
.method public static synthetic access$100(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;->kid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final $fillValuesFrom(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;)Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;->access$000(Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;->kid:Ljava/lang/String;

    .line 9
    .line 10
    check-cast p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilderImpl;

    .line 11
    .line 12
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PopAuthenticationSchemeWithClientKeyInternal.PopAuthenticationSchemeWithClientKeyInternalBuilder(super="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme$TokenAuthenticationSchemeBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", kid="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/java/authscheme/PopAuthenticationSchemeWithClientKeyInternal$PopAuthenticationSchemeWithClientKeyInternalBuilder;->kid:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, ")"

    .line 23
    .line 24
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
