.class public final Ly08;
.super Ljb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic M:La18;


# direct methods
.method public constructor <init>(La18;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly08;->M:La18;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final J(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p0, p0, Ly08;->M:La18;

    .line 3
    .line 4
    iput-boolean p1, p0, La18;->e:Z

    .line 5
    .line 6
    iget-object p0, p0, La18;->f:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lz08;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lz08;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final K(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, 0x1

    .line 5
    iget-object p0, p0, Ly08;->M:La18;

    .line 6
    .line 7
    iput-boolean p1, p0, La18;->e:Z

    .line 8
    .line 9
    iget-object p0, p0, La18;->f:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lz08;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Lz08;->a()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
