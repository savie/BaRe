.class public final synthetic Le16;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:Lj16;

.field public final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lj16;Ljava/util/concurrent/ArrayBlockingQueue;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le16;->a:Lj16;

    .line 5
    .line 6
    iput-object p2, p0, Le16;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 7
    .line 8
    iput-object p3, p0, Le16;->c:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcn6;

    .line 2
    .line 3
    new-instance v0, Lf16;

    .line 4
    .line 5
    iget-object v1, p0, Le16;->a:Lj16;

    .line 6
    .line 7
    iget-object v2, p0, Le16;->c:[B

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, v2}, Lf16;-><init>(Lj16;Lcn6;[B)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Le16;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
