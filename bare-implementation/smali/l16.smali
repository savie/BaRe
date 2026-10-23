.class public final Ll16;
.super Ljava/security/Provider$Service;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lvz0;


# direct methods
.method public constructor <init>(Lt16;Ljava/lang/String;Ljava/util/Map;Lvz0;)V
    .locals 7

    .line 1
    iput-object p4, p0, Ll16;->a:Lvz0;

    .line 2
    .line 3
    const-string v2, "Signature"

    .line 4
    .line 5
    const-string v3, "NONEwithECDSA"

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v6, p3

    .line 12
    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lo06;

    .line 2
    .line 3
    iget-object p0, p0, Ll16;->a:Lvz0;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lo06;-><init>(Lvz0;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
