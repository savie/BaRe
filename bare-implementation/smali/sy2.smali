.class public final Lsy2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lga6;


# direct methods
.method public constructor <init>(Lga6;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lsy2;->a:Lga6;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lw87;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsy2;->a:Lga6;

    .line 2
    .line 3
    invoke-interface {v0}, Lga6;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lwa8;

    .line 8
    .line 9
    new-instance v1, Ldw2;

    .line 10
    .line 11
    const-string v2, "json"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lz5;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lz5;-><init>(Lsy2;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Lxa8;

    .line 22
    .line 23
    const-string p0, "FIREBASE_APPQUALITY_SESSION"

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1, v2}, Lxa8;->a(Ljava/lang/String;Ldw2;Lo98;)Lrh3;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Lid0;

    .line 30
    .line 31
    sget-object v1, Ld66;->a:Ld66;

    .line 32
    .line 33
    invoke-direct {v0, p1, v1}, Lid0;-><init>(Ljava/lang/Object;Ld66;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ly5;

    .line 37
    .line 38
    const/16 v1, 0xe

    .line 39
    .line 40
    invoke-direct {p1, v1}, Ly5;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Lrh3;->r(Lid0;Lza8;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
