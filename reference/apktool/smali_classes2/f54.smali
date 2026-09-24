.class public final Lf54;
.super Lg54;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Lt54;

.field public final synthetic v:Lh54;


# direct methods
.method public constructor <init>(Lh54;Lt54;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf54;->v:Lh54;

    .line 2
    .line 3
    iget-object p1, p2, Lt54;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lf54;->u:Lt54;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final r(Ls54;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf54;->u:Lt54;

    .line 5
    .line 6
    iget-object v1, v0, Lt54;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/widget/ImageView;

    .line 9
    .line 10
    iget-object p0, p0, Lf54;->v:Lh54;

    .line 11
    .line 12
    invoke-static {p0, v1, p1}, Lh54;->y(Lh54;Landroid/widget/ImageView;Ls54;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lt54;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v2, p1, Ls54;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lt54;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v2, p1, Ls54;->d:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    move v4, v3

    .line 43
    :goto_1
    xor-int/2addr v4, v3

    .line 44
    invoke-static {v1, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lt54;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    new-instance v1, Lvc3;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1, p2, v3}, Lvc3;-><init>(Lhg6;Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
