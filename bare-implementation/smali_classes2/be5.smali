.class public final Lbe5;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lbe5;->l:Landroid/widget/TextView;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 5

    .line 1
    check-cast p1, Lae5;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqv1;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lae5;->B:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Lae5;->v:Lmi7;

    .line 23
    .line 24
    iget-object v2, v1, Lmi7;->d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p1, Lae5;->x:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p0}, Lqv1;->getPhotoUri()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Ljm1;->D(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lae5;->y:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p0}, Lqv1;->getDisplayName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0}, Lqv1;->getMessageCount()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x2

    .line 58
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "%s (%s)"

    .line 63
    .line 64
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p1, Lae5;->z:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p0}, Lqv1;->getSnippet()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p1, Lae5;->A:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v3}, Lsz8;->w(Landroid/content/Context;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lqv1;->getLastSmsDate()J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-static {v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p1, Lae5;->C:Lbe5;

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Lgm7;->q(Ljl0;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v1, Lmi7;->d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Lzd5;

    .line 129
    .line 130
    invoke-direct {v1, v0, p0, p1}, Lzd5;-><init>(Lbe5;Lqv1;Lae5;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p1, Lae5;->w:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 137
    .line 138
    new-instance p2, Les;

    .line 139
    .line 140
    const/16 v0, 0xc

    .line 141
    .line 142
    invoke-direct {p2, p1, v0}, Les;-><init>(Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0176

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lae5;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lae5;-><init>(Lbe5;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbe5;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Lgm7;->b()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const v3, 0x7f1304e7

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v3, "app_locale"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v3, "prefs"

    .line 42
    .line 43
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    :goto_0
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v4}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lis4;->a()Ljava/util/Locale;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "/"

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, " "

    .line 97
    .line 98
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
