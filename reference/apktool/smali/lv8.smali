.class public Llv8;
.super Lkv8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public s:Lvc4;

.field public t:Lvc4;

.field public u:Lvc4;


# direct methods
.method public constructor <init>(Ltv8;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkv8;-><init>(Ltv8;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Llv8;->s:Lvc4;

    .line 6
    .line 7
    iput-object p1, p0, Llv8;->t:Lvc4;

    .line 8
    .line 9
    iput-object p1, p0, Llv8;->u:Lvc4;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public j()Lvc4;
    .locals 1

    .line 1
    iget-object v0, p0, Llv8;->t:Lvc4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Liv8;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Llv8;->t:Lvc4;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Llv8;->t:Lvc4;

    .line 18
    .line 19
    return-object p0
.end method

.method public l()Lvc4;
    .locals 1

    .line 1
    iget-object v0, p0, Llv8;->s:Lvc4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Liv8;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Llv8;->s:Lvc4;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Llv8;->s:Lvc4;

    .line 18
    .line 19
    return-object p0
.end method

.method public n()Lvc4;
    .locals 1

    .line 1
    iget-object v0, p0, Llv8;->u:Lvc4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Liv8;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Llv8;->u:Lvc4;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Llv8;->u:Lvc4;

    .line 18
    .line 19
    return-object p0
.end method

.method public q(IIII)Ltv8;
    .locals 0

    .line 1
    iget-object p0, p0, Liv8;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p0, p1}, Ltv8;->h(Landroid/view/WindowInsets;Landroid/view/View;)Ltv8;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public w(Lvc4;)V
    .locals 0

    .line 1
    return-void
.end method
