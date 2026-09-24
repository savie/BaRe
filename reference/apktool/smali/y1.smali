.class public final Ly1;
.super Lz0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final b:Ljava/util/HashSet;

.field public c:[B


# direct methods
.method public constructor <init>(Ljava/util/HashSet;[B)V
    .locals 1

    .line 1
    sget-object v0, Lm2;->l:Lk2;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lz0;-><init>(Lm2;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ly1;->b:Ljava/util/HashSet;

    .line 7
    .line 8
    iput-object p2, p0, Ly1;->c:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object p0, p0, Ly1;->b:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object p0, p0, Ly1;->b:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
