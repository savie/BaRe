.class public final Lr16;
.super Ljava/security/Provider$Service;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lt16;


# direct methods
.method public constructor <init>(Lt16;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lr16;->a:Lt16;

    .line 2
    .line 3
    const-class v0, Lm06;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const/4 v6, 0x0

    .line 10
    sget-object v7, Lt16;->d:Ljava/util/Map;

    .line 11
    .line 12
    const-string v3, "Cipher"

    .line 13
    .line 14
    const-string v4, "RSA"

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    invoke-direct/range {v1 .. v7}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    new-instance p1, Lm06;

    .line 2
    .line 3
    iget-object p0, p0, Lr16;->a:Lt16;

    .line 4
    .line 5
    iget-object v0, p0, Lt16;->a:Lvz0;

    .line 6
    .line 7
    iget-object p0, p0, Lt16;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1, v0, p0}, Lm06;-><init>(Lvz0;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
