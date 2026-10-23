.class public final Lv92;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lx92;

.field public final synthetic b:Los4;


# direct methods
.method public constructor <init>(Lx92;Los4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv92;->a:Lx92;

    .line 2
    .line 3
    iput-object p2, p0, Lv92;->b:Los4;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lv92;->b:Los4;

    .line 2
    .line 3
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzl8;

    .line 8
    .line 9
    instance-of v1, v0, Lw24;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lw24;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Lw24;->getDefaultViewModelProviderFactory()Lwl8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    return-object v0

    .line 27
    :cond_2
    :goto_1
    iget-object p0, p0, Lv92;->a:Lx92;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getDefaultViewModelProviderFactory()Lwl8;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
