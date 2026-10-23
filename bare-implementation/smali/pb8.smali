.class public final Lpb8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lpb8;->a:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lpb8;->a:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    array-length p0, p1

    .line 6
    const/4 p2, 0x0

    .line 7
    :goto_0
    if-ge p2, p0, :cond_0

    .line 8
    .line 9
    aget-object v0, p1, p2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 12
    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    sget-object p0, Lzh8;->e:[Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    return-object p0
.end method
