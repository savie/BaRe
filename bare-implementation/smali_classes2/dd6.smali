.class public final Ldd6;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lsa1;

.field public final m:Z

.field public n:Lkd6;

.field public o:Lbt3;


# direct methods
.method public constructor <init>(Lsa1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Ldd6;->l:Lsa1;

    .line 6
    .line 7
    iput-boolean p2, p0, Ldd6;->m:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lgm7;->k:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    .line 1
    sget-object v0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzc6;

    .line 8
    .line 9
    iget-object p0, p0, Lzc6;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, "ID_MORE_QUICK_ACTIONS"

    .line 12
    .line 13
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lcd6;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzc6;

    .line 8
    .line 9
    invoke-virtual {p1, p0, p2}, Lcd6;->s(Lzc6;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const p0, 0x7f0d0156

    .line 5
    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const p0, 0x7f0d0155

    .line 9
    .line 10
    .line 11
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance p2, Lbd6;

    .line 5
    .line 6
    invoke-direct {p2, p0, p1}, Lbd6;-><init>(Ldd6;Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    new-instance p2, Lad6;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1}, Lad6;-><init>(Ldd6;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method
