.class public final Lyq1;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lil0;


# direct methods
.method public constructor <init>(Lil0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lyq1;->l:Lil0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 6

    .line 1
    check-cast p1, Lxq1;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 8
    .line 9
    iget-object p2, p1, Lxq1;->y:Lyq1;

    .line 10
    .line 11
    iget-object v0, p2, Lyq1;->l:Lil0;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lxq1;->w:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lxq1;->x:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p0, v2}, Lsq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const v2, 0x7f130588

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getUpdateDate()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-static {v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, ": "

    .line 50
    .line 51
    invoke-static {v0, v3, v2}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 66
    .line 67
    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const v5, 0x7f1302cf

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/16 v5, 0x11

    .line 89
    .line 90
    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    .line 92
    .line 93
    move-object v0, v2

    .line 94
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Lxq1;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 98
    .line 99
    new-instance v0, Lm51;

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-direct {v0, v1, p2, p0}, Lm51;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d005d

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lxq1;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lxq1;-><init>(Lyq1;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
