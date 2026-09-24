.class public final Lrb9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbk0;


# instance fields
.field public final synthetic a:Lvb9;


# direct methods
.method public constructor <init>(Lvb9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrb9;->a:Lvb9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrb9;->a:Lvb9;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Lvb9;->c:Z

    .line 7
    .line 8
    iget-object p0, p0, Lrb9;->a:Lvb9;

    .line 9
    .line 10
    iget-object p0, p0, Lvb9;->b:Ly89;

    .line 11
    .line 12
    iget-object p1, p0, Ly89;->d:Lag9;

    .line 13
    .line 14
    iget-object p0, p0, Ly89;->e:Lc9;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, v0, Lvb9;->c:Z

    .line 22
    .line 23
    iget-object p1, p0, Lrb9;->a:Lvb9;

    .line 24
    .line 25
    iget v0, p1, Lvb9;->a:I

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    iget-boolean p1, p1, Lvb9;->c:Z

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lrb9;->a:Lvb9;

    .line 34
    .line 35
    iget-object p0, p0, Lvb9;->b:Ly89;

    .line 36
    .line 37
    invoke-virtual {p0}, Ly89;->a()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
