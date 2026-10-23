.class public final Landroidx/fragment/app/n;
.super Lfr3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lkm5;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lj9;

.field public final synthetic d:Lh9;

.field public final synthetic e:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;Lkm5;Ljava/util/concurrent/atomic/AtomicReference;Lj9;Lh9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/o;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/n;->a:Lkm5;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/fragment/app/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/fragment/app/n;->c:Lj9;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/fragment/app/n;->d:Lh9;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->generateActivityResultKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/fragment/app/n;->a:Lkm5;

    .line 8
    .line 9
    iget-object v2, v2, Lkm5;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/fragment/app/o;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object v2, v3, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 18
    .line 19
    invoke-virtual {v2}, Lio1;->getActivityResultRegistry()Lgo1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lio1;->getActivityResultRegistry()Lgo1;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/n;->c:Lj9;

    .line 33
    .line 34
    iget-object v4, p0, Landroidx/fragment/app/n;->d:Lh9;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v0, v3, v4}, Lgo1;->c(Ljava/lang/String;Lfu4;Lj9;Lh9;)Lt9;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
