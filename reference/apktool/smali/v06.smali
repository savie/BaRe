.class public final synthetic Lv06;
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
    iput-object p1, p0, Lv06;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lv06;->b:Lvh7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcn6;

    .line 2
    .line 3
    new-instance v0, Lz06;

    .line 4
    .line 5
    iget-object v1, p0, Lv06;->b:Lvh7;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lz06;-><init>(Lcn6;Lvh7;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lv06;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
