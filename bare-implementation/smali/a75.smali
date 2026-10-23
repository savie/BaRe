.class public final La75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvk6;


# virtual methods
.method public final f(Lfy3;Lpx7;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Lpx7;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    instance-of p0, p1, Landroid/graphics/drawable/Animatable;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 13
    .line 14
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    throw p0
.end method
