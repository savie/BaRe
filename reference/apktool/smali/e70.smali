.class public final Le70;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls74;


# instance fields
.field public final e:Ls74;

.field public final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ls74;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lol1;

    .line 3
    .line 4
    iget-object v0, v0, Lol1;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lyr7;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-direct {p0, v0, v1}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Le70;->e:Ls74;

    .line 13
    .line 14
    check-cast p1, Lol1;

    .line 15
    .line 16
    iget-object p1, p1, Lol1;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lyr7;

    .line 19
    .line 20
    iget-object p1, p1, Lyr7;->c:Lix0;

    .line 21
    .line 22
    const-string v0, "bus.handlers.async-executor"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lix0;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    iput-object p1, p0, Le70;->f:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Lrd5;)V
    .locals 1

    .line 1
    new-instance v0, Ld70;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Ld70;-><init>(Le70;Ljava/lang/Object;Ljava/lang/Object;Lrd5;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Le70;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
