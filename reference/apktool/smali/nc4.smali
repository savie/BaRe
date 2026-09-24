.class public final Lnc4;
.super Ljava/util/LinkedHashMap;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxn5;


# instance fields
.field public final a:Lmc4;


# direct methods
.method public constructor <init>(Ljc4;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    iput-object p1, p0, Lnc4;->a:Lmc4;

    return-void
.end method

.method public constructor <init>(Llc4;Lbz2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnc4;->a:Lmc4;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Liy2;

    .line 21
    .line 22
    new-instance v0, Ljc4;

    .line 23
    .line 24
    iget-object v1, p0, Lnc4;->a:Lmc4;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Liy2;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Liy2;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Liy2;->d()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, v0, Ljc4;->d:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p2}, Liy2;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v0, Ljc4;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2}, Liy2;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v0, Ljc4;->b:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v1, v0, Ljc4;->a:Lmc4;

    .line 54
    .line 55
    invoke-virtual {p2}, Liy2;->f()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)Lpn5;
    .locals 2

    .line 1
    new-instance v0, Ljc4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lnc4;->a:Lmc4;

    .line 7
    .line 8
    iput-object v1, v0, Ljc4;->a:Lmc4;

    .line 9
    .line 10
    iput-object p2, v0, Ljc4;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, v0, Ljc4;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final W()Lpn5;
    .locals 0

    .line 1
    iget-object p0, p0, Lnc4;->a:Lmc4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Lpn5;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lmc4;

    .line 6
    .line 7
    return-object p0
.end method
