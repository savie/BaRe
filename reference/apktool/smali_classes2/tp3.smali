.class public final Ltp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

.field public final b:Lcy7;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final g:Lkm5;

.field public final h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;

.field public final n:Landroid/view/View;

.field public final o:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Lcy7;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ltp3;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 11
    .line 12
    iput-object p2, p0, Ltp3;->b:Lcy7;

    .line 13
    .line 14
    iget-object p1, p2, Lcy7;->q:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p1, p0, Ltp3;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object p1, p2, Lcy7;->r:Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p1, p0, Ltp3;->d:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object p1, p2, Lcy7;->n:Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Ltp3;->e:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p1, p2, Lcy7;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 27
    .line 28
    iput-object p1, p0, Ltp3;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 29
    .line 30
    new-instance p1, Lkm5;

    .line 31
    .line 32
    iget-object v0, p2, Lcy7;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 33
    .line 34
    const/16 v1, 0x11

    .line 35
    .line 36
    invoke-direct {p1, v0, v1}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Ltp3;->g:Lkm5;

    .line 40
    .line 41
    iget-object p1, p2, Lcy7;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 42
    .line 43
    iput-object p1, p0, Ltp3;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 44
    .line 45
    iget-object p1, p2, Lcy7;->p:Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object p1, p0, Ltp3;->i:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object p1, p2, Lcy7;->t:Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p1, p0, Ltp3;->j:Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object p1, p2, Lcy7;->x:Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object p1, p0, Ltp3;->k:Landroid/widget/TextView;

    .line 56
    .line 57
    iget-object p1, p2, Lcy7;->G:Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Ltp3;->l:Landroid/widget/TextView;

    .line 60
    .line 61
    iget-object p1, p2, Lcy7;->y:Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object p1, p0, Ltp3;->m:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object p1, p2, Lcy7;->d:Landroid/view/View;

    .line 66
    .line 67
    iput-object p1, p0, Ltp3;->n:Landroid/view/View;

    .line 68
    .line 69
    iget-object p1, p2, Lcy7;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    .line 71
    iput-object p1, p0, Ltp3;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    return-void
.end method

.method public static final a(Ltp3;I)V
    .locals 6

    .line 1
    iget-object p0, p0, Ltp3;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    .line 16
    .line 17
    const v1, 0x3f333333    # 0.7f

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "%"

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/16 v5, 0x11

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/text/SpannedString;

    .line 59
    .line 60
    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static final b(Lih6;Lih6;Ltp3;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lih6;->a:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p1, Lih6;->a:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    iget-object p1, p2, Ltp3;->n:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {p1, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p2, Ltp3;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    invoke-static {p1, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
