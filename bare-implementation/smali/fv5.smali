.class public final Lfv5;
.super Ljava/util/LinkedHashMap;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxn5;


# instance fields
.field public final a:Lev5;


# direct methods
.method public constructor <init>(Lev5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfv5;->a:Lev5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic A(Ljava/lang/String;Ljava/lang/String;)Lpn5;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lfv5;->d(Ljava/lang/String;Ljava/lang/String;)Lav5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final W()Lpn5;
    .locals 0

    .line 1
    iget-object p0, p0, Lfv5;->a:Lev5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lav5;
    .locals 3

    .line 1
    new-instance v0, Lav5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lfv5;->a:Lev5;

    .line 7
    .line 8
    invoke-interface {v1}, Lev5;->c()Lx46;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-object v2, v0, Lav5;->a:Lx46;

    .line 13
    .line 14
    iput-object v1, v0, Lav5;->b:Lev5;

    .line 15
    .line 16
    iput-object p2, v0, Lav5;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, v0, Lav5;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v0
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
    check-cast p0, Lev5;

    .line 6
    .line 7
    return-object p0
.end method
