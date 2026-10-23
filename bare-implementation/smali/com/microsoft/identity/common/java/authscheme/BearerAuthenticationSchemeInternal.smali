.class public Lcom/microsoft/identity/common/java/authscheme/BearerAuthenticationSchemeInternal;
.super Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final SCHEME_BEARER:Ljava/lang/String; = "Bearer"

.field private static final serialVersionUID:J = 0xb6c77fc97418afeL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Bearer"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    const-string p0, "accessToken is marked non-null but is null"

    .line 5
    .line 6
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method
