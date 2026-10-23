.class public final Luj1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

.field public final b:Ltf1;

.field public final c:Lng1;

.field public final d:Landroid/widget/TextView;

.field public final e:Lcom/google/android/material/button/MaterialButton;

.field public final f:Landroid/widget/LinearLayout;

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Ltf1;Lng1;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 8
    .line 9
    iput-object p2, p0, Luj1;->b:Ltf1;

    .line 10
    .line 11
    iput-object p3, p0, Luj1;->c:Lng1;

    .line 12
    .line 13
    iget-object p3, p2, Ltf1;->n:Lgm1;

    .line 14
    .line 15
    iget-object v0, p3, Lgm1;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Luj1;->d:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v0, p2, Ltf1;->k:Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    iput-object v0, p0, Luj1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    iget-object v1, p2, Ltf1;->b:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object v1, p0, Luj1;->f:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget-object v1, p2, Ltf1;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    iput-object v1, p0, Luj1;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    iget-object p2, p2, Ltf1;->p:Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p2, p0, Luj1;->h:Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object p2, p3, Lgm1;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Landroid/widget/ImageView;

    .line 40
    .line 41
    const v1, 0x7f0801fd

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p3, Lgm1;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Landroid/widget/TextView;

    .line 50
    .line 51
    const v1, 0x7f130024

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Luj1;->a()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p3, Lgm1;->a:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 63
    .line 64
    new-instance p3, Lnf;

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    invoke-direct {p3, p0, v1}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lsz8;->r(Landroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lg7;

    .line 81
    .line 82
    const/16 p2, 0x8

    .line 83
    .line 84
    invoke-direct {p1, p0, p2}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static final b(Ljava/lang/String;III)Ld71;
    .locals 1

    .line 1
    new-instance v0, Ld71;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Ld71;->a:I

    .line 7
    .line 8
    iput-object p0, v0, Ld71;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput p2, v0, Ld71;->c:I

    .line 11
    .line 12
    iput p3, v0, Ld71;->d:I

    .line 13
    .line 14
    return-object v0
.end method

.method public static final c(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " ("

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ")"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Luj1;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    sget-object v1, Ltb1;->a:Ltb1;

    .line 4
    .line 5
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Luj1;->d:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x7f1301e0

    .line 15
    .line 16
    .line 17
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 22
    .line 23
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object p0, p0, Luj1;->e:Lcom/google/android/material/button/MaterialButton;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const p0, 0x7f1300bd

    .line 33
    .line 34
    .line 35
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v4, p0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const-string v3, "\'"

    .line 47
    .line 48
    const-string v5, ""

    .line 49
    .line 50
    invoke-static {v2, v3, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 55
    .line 56
    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x6

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static {v2, v1, v6, v6, v5}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    add-int/2addr v5, v2

    .line 70
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 71
    .line 72
    invoke-static {v4}, Lsz8;->x(Landroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/16 v7, 0x21

    .line 80
    .line 81
    invoke-virtual {v3, v6, v2, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    const-string v3, "updateActiveTag"

    .line 90
    .line 91
    invoke-static {v2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v4, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
