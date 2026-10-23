.class public final Lh96;
.super Lod2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Ljava/lang/Class;

.field public final j:Lem4;


# direct methods
.method public constructor <init>(Lod2;Ljava/lang/Class;Lem4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lh96;->i:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p3, p0, Lh96;->j:Lem4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Class;Lem4;)Lod2;
    .locals 6

    .line 1
    new-instance v0, Le96;

    .line 2
    .line 3
    iget-object v2, p0, Lh96;->i:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v3, p0, Lh96;->j:Lem4;

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Le96;-><init>(Lh96;Ljava/lang/Class;Lem4;Ljava/lang/Class;Lem4;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final x(Ljava/lang/Class;)Lem4;
    .locals 1

    .line 1
    iget-object v0, p0, Lh96;->i:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lh96;->j:Lem4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method
