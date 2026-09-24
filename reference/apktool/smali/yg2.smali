.class public final synthetic Lyg2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbh2;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lln5;


# direct methods
.method public synthetic constructor <init>(Lbh2;Ljava/lang/Runnable;Lln5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyg2;->a:Lbh2;

    .line 5
    .line 6
    iput-object p2, p0, Lyg2;->b:Ljava/lang/Runnable;

    .line 7
    .line 8
    iput-object p3, p0, Lyg2;->c:Lln5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lyg2;->a:Lbh2;

    .line 2
    .line 3
    iget-object v0, v0, Lbh2;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    new-instance v1, Lro1;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    iget-object v3, p0, Lyg2;->b:Ljava/lang/Runnable;

    .line 9
    .line 10
    iget-object p0, p0, Lyg2;->c:Lln5;

    .line 11
    .line 12
    invoke-direct {v1, v2, v3, p0}, Lro1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
