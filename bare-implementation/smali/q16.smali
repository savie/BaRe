.class public final Lq16;
.super Ljava/security/Provider$Service;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lt16;


# direct methods
.method public constructor <init>(Lt16;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lq16;->b:Lt16;

    .line 2
    .line 3
    const-class v0, Ln06;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    sget-object v7, Lt16;->c:Ljava/util/Map;

    .line 10
    .line 11
    const-string v3, "Signature"

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v6, p4

    .line 17
    invoke-direct/range {v1 .. v7}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, v1, Lq16;->a:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ln06;

    .line 2
    .line 3
    iget-object v0, p0, Lq16;->b:Lt16;

    .line 4
    .line 5
    iget-object v0, v0, Lt16;->a:Lvz0;

    .line 6
    .line 7
    iget-object p0, p0, Lq16;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, p0}, Ln06;-><init>(Lvz0;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
