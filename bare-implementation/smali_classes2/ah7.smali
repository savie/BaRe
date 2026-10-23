.class public final synthetic Lah7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Les5;


# instance fields
.field public final synthetic a:Lix6;

.field public final synthetic b:Les5;


# direct methods
.method public synthetic constructor <init>(Lix6;Les5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lah7;->a:Lix6;

    .line 5
    .line 6
    iput-object p2, p0, Lah7;->b:Les5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lah7;->a:Lix6;

    .line 2
    .line 3
    iget-object v0, v0, Lix6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lah7;->b:Les5;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Les5;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
