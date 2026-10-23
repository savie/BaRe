.class public final Lr23;
.super Lsg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lr23;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 8
    .line 9
    iput-boolean p2, p0, Lr23;->b:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lr23;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    iget-boolean v0, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-boolean p0, p0, Lr23;->b:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-virtual {p2, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    invoke-virtual {p2, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    const/high16 v1, 0x43200000    # 160.0f

    .line 25
    .line 26
    div-float/2addr p1, v1

    .line 27
    div-float/2addr v0, p1

    .line 28
    const/high16 p1, 0x40800000    # 4.0f

    .line 29
    .line 30
    cmpl-float p1, v0, p1

    .line 31
    .line 32
    if-lez p1, :cond_3

    .line 33
    .line 34
    iget-boolean p1, p0, Lr23;->b:Z

    .line 35
    .line 36
    iget-object p0, p0, Lr23;->a:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 37
    .line 38
    if-lez p2, :cond_1

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    if-gez p2, :cond_3

    .line 57
    .line 58
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v0:Z

    .line 59
    .line 60
    if-nez p2, :cond_3

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    const/4 p1, 0x3

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(Z)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method
