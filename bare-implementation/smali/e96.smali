.class public final Le96;
.super Lod2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Ljava/lang/Class;

.field public final j:Ljava/lang/Class;

.field public final k:Lem4;

.field public final l:Lem4;


# direct methods
.method public constructor <init>(Lh96;Ljava/lang/Class;Lem4;Ljava/lang/Class;Lem4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Le96;->i:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p3, p0, Le96;->k:Lem4;

    .line 7
    .line 8
    iput-object p4, p0, Le96;->j:Ljava/lang/Class;

    .line 9
    .line 10
    iput-object p5, p0, Le96;->l:Lem4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Class;Lem4;)Lod2;
    .locals 4

    .line 1
    new-instance v0, Li96;

    .line 2
    .line 3
    iget-object v1, p0, Le96;->i:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p0, Le96;->k:Lem4;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Li96;-><init>(Ljava/lang/Class;Lem4;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Li96;

    .line 11
    .line 12
    iget-object v2, p0, Le96;->j:Ljava/lang/Class;

    .line 13
    .line 14
    iget-object v3, p0, Le96;->l:Lem4;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Li96;-><init>(Ljava/lang/Class;Lem4;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Li96;

    .line 20
    .line 21
    invoke-direct {v2, p1, p2}, Li96;-><init>(Ljava/lang/Class;Lem4;)V

    .line 22
    .line 23
    .line 24
    filled-new-array {v0, v1, v2}, [Li96;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lg96;

    .line 29
    .line 30
    invoke-direct {p2, p0, p1}, Lg96;-><init>(Lod2;[Li96;)V

    .line 31
    .line 32
    .line 33
    return-object p2
.end method

.method public final x(Ljava/lang/Class;)Lem4;
    .locals 1

    .line 1
    iget-object v0, p0, Le96;->i:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Le96;->k:Lem4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Le96;->j:Ljava/lang/Class;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Le96;->l:Lem4;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
