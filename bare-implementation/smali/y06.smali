.class public final synthetic Ly06;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final synthetic b:Lvh7;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Lvh7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly06;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    iput-object p2, p0, Ly06;->b:Lvh7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcn6;

    .line 2
    .line 3
    new-instance v0, Lyi1;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Ly06;->b:Lvh7;

    .line 7
    .line 8
    invoke-direct {v0, v1, p1, v2}, Lyi1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Ly06;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
