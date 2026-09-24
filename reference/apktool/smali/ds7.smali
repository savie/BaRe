.class public final Lds7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lor6;


# instance fields
.field public final a:Lbs7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbs7;

    .line 5
    .line 6
    invoke-direct {v0}, Lbs7;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lds7;->a:Lbs7;

    .line 10
    .line 11
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lzo0;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lw74;
    .locals 0

    .line 1
    iget-object p0, p0, Lds7;->a:Lbs7;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
