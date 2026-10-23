.class public final Ly66;
.super Ljava/util/AbstractCollection;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lb76;


# direct methods
.method public constructor <init>(Lb76;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly66;->a:Lb76;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Ly66;->a:Lb76;

    .line 2
    .line 3
    invoke-virtual {p0}, Lb76;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ly66;->a:Lb76;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lb76;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lx66;

    .line 2
    .line 3
    iget-object p0, p0, Ly66;->a:Lb76;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lx66;-><init>(Lb76;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Ly66;->a:Lb76;

    .line 2
    .line 3
    iget-object p0, p0, Lb76;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
