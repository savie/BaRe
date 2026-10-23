.class public final Ls16;
.super Ljava/security/Provider$Service;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lt16;


# direct methods
.method public constructor <init>(Lt16;Ljava/lang/String;)V
    .locals 8

    .line 1
    iput-object p1, p0, Ls16;->a:Lt16;

    .line 2
    .line 3
    const-class v0, Lu16;

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
    const-string v3, "Signature"

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v4, p2

    .line 17
    invoke-direct/range {v1 .. v7}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    new-instance p1, Lu16;

    .line 2
    .line 3
    iget-object v0, p0, Ls16;->a:Lt16;

    .line 4
    .line 5
    iget-object v1, v0, Lt16;->a:Lvz0;

    .line 6
    .line 7
    iget-object v0, v0, Lt16;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p1, v1, v0, v2}, Lu16;-><init>(Lvz0;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :catch_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "No underlying Provider supporting "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, " available."

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
