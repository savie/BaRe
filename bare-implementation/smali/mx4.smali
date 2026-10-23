.class public final Lmx4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwc5;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lfc5;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Lvc5;

.field public f:Llx4;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmx4;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lmx4;->b:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmx4;->f:Llx4;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Llx4;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d(Lfc5;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmx4;->e:Lvc5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lvc5;->d(Lfc5;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e(Llr7;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lfc5;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Lfc5;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Lgc5;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lgc5;->a:Llr7;

    .line 17
    .line 18
    new-instance v2, Lva;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lva;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v2, Lva;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lra;

    .line 26
    .line 27
    new-instance v4, Lmx4;

    .line 28
    .line 29
    iget-object v5, v3, Lra;->a:Landroid/view/ContextThemeWrapper;

    .line 30
    .line 31
    invoke-direct {v4, v5}, Lmx4;-><init>(Landroid/content/ContextWrapper;)V

    .line 32
    .line 33
    .line 34
    iput-object v4, v0, Lgc5;->c:Lmx4;

    .line 35
    .line 36
    iput-object v0, v4, Lmx4;->e:Lvc5;

    .line 37
    .line 38
    invoke-virtual {p1, v4, v1}, Lfc5;->b(Lwc5;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lgc5;->c:Lmx4;

    .line 42
    .line 43
    iget-object v4, v1, Lmx4;->f:Llx4;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    new-instance v4, Llx4;

    .line 48
    .line 49
    invoke-direct {v4, v1}, Llx4;-><init>(Lmx4;)V

    .line 50
    .line 51
    .line 52
    iput-object v4, v1, Lmx4;->f:Llx4;

    .line 53
    .line 54
    :cond_1
    iget-object v1, v1, Lmx4;->f:Llx4;

    .line 55
    .line 56
    iput-object v1, v3, Lra;->q:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    iput-object v0, v3, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    .line 60
    iget-object v1, p1, Lfc5;->G:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iput-object v1, v3, Lra;->e:Landroid/view/View;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p1, Lfc5;->y:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput-object v1, v3, Lra;->c:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iget-object v1, p1, Lfc5;->x:Ljava/lang/CharSequence;

    .line 72
    .line 73
    iput-object v1, v3, Lra;->d:Ljava/lang/CharSequence;

    .line 74
    .line 75
    :goto_0
    iput-object v0, v3, Lra;->o:Lgc5;

    .line 76
    .line 77
    invoke-virtual {v2}, Lva;->c()Lwa;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lgc5;->b:Lwa;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lgc5;->b:Lwa;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v2, 0x3eb

    .line 97
    .line 98
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 99
    .line 100
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    .line 102
    const/high16 v3, 0x20000

    .line 103
    .line 104
    or-int/2addr v2, v3

    .line 105
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    .line 107
    iget-object v0, v0, Lgc5;->b:Lwa;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lmx4;->e:Lvc5;

    .line 113
    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    invoke-interface {p0, p1}, Lvc5;->r(Lfc5;)Z

    .line 117
    .line 118
    .line 119
    :cond_3
    const/4 p0, 0x1

    .line 120
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final g(Lic5;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final h(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "android:menu:list"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final i(Lvc5;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Lic5;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final l(Landroid/content/Context;Lfc5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmx4;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lmx4;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lmx4;->b:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lmx4;->b:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lmx4;->c:Lfc5;

    .line 18
    .line 19
    iget-object p0, p0, Lmx4;->f:Llx4;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Llx4;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 2

    .line 1
    iget-object v0, p0, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lmx4;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p0, "android:menu:list"

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmx4;->c:Lfc5;

    .line 2
    .line 3
    iget-object p2, p0, Lmx4;->f:Llx4;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Llx4;->b(I)Lic5;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Lfc5;->q(Landroid/view/MenuItem;Lwc5;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
