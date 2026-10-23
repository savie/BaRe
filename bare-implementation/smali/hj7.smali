.class public final Lhj7;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lil0;

.field public final m:I


# direct methods
.method public constructor <init>(Lil0;Lfm7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lgm7;-><init>(Lfm7;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lhj7;->l:Lil0;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lhj7;->m:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lfj7;

    .line 6
    .line 7
    iget-boolean p1, p1, Lfj7;->d:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lhj7;->m:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 2

    .line 1
    check-cast p1, Lgj7;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfj7;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lgj7;->w:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget v0, p0, Lfj7;->c:I

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Lgj7;->x:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-boolean v0, p0, Lfj7;->d:Z

    .line 22
    .line 23
    invoke-static {p2, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lsz8;->I(Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Lfj7;->e:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const v0, 0x7f0801f1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const v0, 0x7f0801ef

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p2, p1, Lgj7;->v:Lorg/swiftapps/swiftbackup/views/LocaleTextView;

    .line 47
    .line 48
    iget-object v0, p0, Lfj7;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p1, Lgj7;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    .line 55
    iget-object p1, p1, Lgj7;->y:Lhj7;

    .line 56
    .line 57
    new-instance v0, Lfj2;

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    invoke-direct {v0, v1, p1, p0}, Lfj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    iget p0, p0, Lhj7;->m:I

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const p0, 0x7f0d00a5

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    const p0, 0x7f0d00a4

    .line 10
    .line 11
    .line 12
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lgj7;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lgj7;-><init>(Lhj7;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
