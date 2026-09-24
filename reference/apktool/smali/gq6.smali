.class public final Lgq6;
.super Ldr0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Landroid/os/Messenger;

.field public final c:I

.field public final synthetic d:Liq6;


# direct methods
.method public constructor <init>(ILiq6;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lgq6;->d:Liq6;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Ldr0;-><init>(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/os/Messenger;

    .line 7
    .line 8
    invoke-direct {p2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lgq6;->b:Landroid/os/Messenger;

    .line 12
    .line 13
    iput p1, p0, Lgq6;->c:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgq6;->d:Liq6;

    .line 2
    .line 3
    iget-object v1, v0, Liq6;->c:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget p0, p0, Lgq6;->c:I

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Liq6;->b:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lhq6;

    .line 37
    .line 38
    if-gez p0, :cond_0

    .line 39
    .line 40
    iget-object v3, v2, Lhq6;->b:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_0
    new-instance v3, La9;

    .line 46
    .line 47
    const/4 v4, 0x7

    .line 48
    invoke-direct {v3, v1, v4}, La9;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, p0, v3}, Liq6;->g(Lhq6;ILjava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method
