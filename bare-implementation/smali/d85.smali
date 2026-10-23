.class public final Ld85;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:La85;

.field public final synthetic b:Le85;


# direct methods
.method public constructor <init>(Le85;La85;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld85;->b:Le85;

    .line 5
    .line 6
    iput-object p2, p0, Ld85;->a:La85;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld85;->b:Le85;

    .line 2
    .line 3
    iget-object v0, v0, Lc85;->a:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Ld85;->a:La85;

    .line 8
    .line 9
    invoke-interface {p0}, La85;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    .line 1
    iget-object p0, p0, Ld85;->a:La85;

    .line 2
    .line 3
    invoke-interface {p0}, La85;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld85;->b:Le85;

    .line 2
    .line 3
    iget-object v0, v0, Lc85;->a:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lxj0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lxj0;-><init>(Landroid/window/BackEvent;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ld85;->a:La85;

    .line 13
    .line 14
    invoke-interface {p0, v0}, La85;->b(Lxj0;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld85;->b:Le85;

    .line 2
    .line 3
    iget-object v0, v0, Lc85;->a:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lxj0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lxj0;-><init>(Landroid/window/BackEvent;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ld85;->a:La85;

    .line 13
    .line 14
    invoke-interface {p0, v0}, La85;->c(Lxj0;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
