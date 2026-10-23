.class public final Lnk5;
.super Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Configuration;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnk5;->a:Ljava/net/URL;

    .line 11
    .line 12
    const-class p1, Lnk5;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lnk5;->b:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 1
    const-string v0, "appendPathToURL failed"

    .line 2
    .line 3
    iget-object p0, p0, Lnk5;->b:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/util/UrlUtil;->appendPathAndQueryToURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string p2, "urlToAppend is marked non-null but is null"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final getAuthorityUrl()Ljava/net/URL;
    .locals 0

    .line 1
    iget-object p0, p0, Lnk5;->a:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method
