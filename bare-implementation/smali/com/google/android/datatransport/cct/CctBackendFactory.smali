.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lk22;)Lua8;
    .locals 2

    .line 1
    new-instance p0, Ld31;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Lhd0;

    .line 5
    .line 6
    iget-object v0, v0, Lhd0;->a:Landroid/content/Context;

    .line 7
    .line 8
    check-cast p1, Lhd0;

    .line 9
    .line 10
    iget-object v1, p1, Lhd0;->b:Lba1;

    .line 11
    .line 12
    iget-object p1, p1, Lhd0;->c:Lba1;

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, p1}, Ld31;-><init>(Landroid/content/Context;Lba1;Lba1;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
