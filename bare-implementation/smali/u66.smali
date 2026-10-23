.class public final Lu66;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lu66;

.field public c:Lu66;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lz66;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu66;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lz66;

    .line 6
    .line 7
    iget-object p0, p0, Lz66;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0
.end method
