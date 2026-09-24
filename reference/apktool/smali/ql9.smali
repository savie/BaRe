.class public final Lql9;
.super Ljava/util/AbstractList;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lai9;


# instance fields
.field public final a:Lzh9;


# direct methods
.method public constructor <init>(Lzh9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lql9;->a:Lzh9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lql9;->a:Lzh9;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lzh9;->d(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcb2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcb2;-><init>(Lql9;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lll9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lll9;-><init>(Lql9;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lql9;->a:Lzh9;

    .line 2
    .line 3
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final zze()Lai9;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final zzg()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lql9;->a:Lzh9;

    .line 2
    .line 3
    iget-object p0, p0, Lzh9;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
