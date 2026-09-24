.class public final synthetic Lxm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcn0;

.field public final synthetic b:Lv64$h;


# direct methods
.method public synthetic constructor <init>(Lpg5;Lv64$h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxm0;->a:Lcn0;

    .line 5
    .line 6
    iput-object p2, p0, Lxm0;->b:Lv64$h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lokhttp3/Response;

    .line 2
    .line 3
    sget v0, Lcn0;->k:I

    .line 4
    .line 5
    iget-object v0, p0, Lxm0;->a:Lcn0;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object p0, p0, Lxm0;->b:Lv64$h;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lcn0;->j(Lv64$h;)Ljava/util/concurrent/CompletableFuture;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
