.class public final Lwl4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lfg6;


# static fields
.field public static final a:Lwl4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwl4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwl4;->a:Lwl4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final u()Lqw0;
    .locals 5

    .line 1
    sget-object p0, Lrw0;->b:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lqw0;

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_3

    .line 20
    .line 21
    new-instance v0, Lqw0;

    .line 22
    .line 23
    invoke-direct {v0}, Lqw0;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lrw0;->a:Lla;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 31
    .line 32
    iget-object v3, v1, Lla;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Ljava/lang/ref/ReferenceQueue;

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lla;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-object v0
.end method
