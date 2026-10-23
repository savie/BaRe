.class public abstract Lgu2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Comparable;Ljava/lang/Object;)V
    .locals 0

    .line 18
    iput p1, p0, Lgu2;->a:I

    iput-object p3, p0, Lgu2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgu2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lgu2;->a:I

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lgu2;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lgu2;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lju2;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lgu2;->a:I

    .line 21
    new-instance v0, Lje2;

    invoke-direct {v0}, Lje2;-><init>()V

    iput-object v0, p0, Lgu2;->c:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lgu2;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroidx/recyclerview/widget/a;I)Lgu2;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Ltu5;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p0, "invalid orientation"

    .line 13
    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance p1, Lsu5;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method


# virtual methods
.method public abstract a(Lfw6;)V
.end method

.method public abstract c(Lfw6;)V
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g(Landroid/view/View;)I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public o()I
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    iget v1, p0, Lgu2;->a:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lgu2;->n()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget p0, p0, Lgu2;->a:I

    .line 14
    .line 15
    sub-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public abstract p(Landroid/view/View;)I
.end method

.method public abstract q(Landroid/view/View;)I
.end method

.method public abstract r(I)V
.end method

.method public abstract s(Lfw6;)V
.end method

.method public abstract t(Lfw6;)V
.end method

.method public abstract u(Lfw6;)V
.end method

.method public abstract v(Lfw6;)V
.end method

.method public abstract w(Lfw6;)Lko6;
.end method

.method public abstract x(Lm61;)Lgu2;
.end method
