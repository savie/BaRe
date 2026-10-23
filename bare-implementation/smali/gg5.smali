.class public final synthetic Lgg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lpg5;


# direct methods
.method public synthetic constructor <init>(Lpg5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgg5;->a:Lpg5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lwf8;

    .line 2
    .line 3
    sget v0, Lpg5;->n:I

    .line 4
    .line 5
    iget-object p0, p0, Lgg5;->a:Lpg5;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcn0;->G(Lwf8;)Ljava/util/concurrent/CompletableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
