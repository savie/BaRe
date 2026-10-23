.class public final synthetic Lt53;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Lt53;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lt53;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lt53;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lt53;->b:Ljava/util/List;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    sget-object v0, Lv53;->a:Lv53;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lv53;->d()Lq63;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lio4;->g(Lq63;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lw14;->a:Lgv7;

    .line 25
    .line 26
    new-instance v0, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/appslist/data/FavoriteAppsRepo$FavoritesWrapper;-><init>(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lv53;->d()Lq63;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, p0, v1}, Lw14;->g(Ljava/lang/Object;Lq63;Z)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lv53;->d()Lq63;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lq63;->h()Z

    .line 45
    .line 46
    .line 47
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
