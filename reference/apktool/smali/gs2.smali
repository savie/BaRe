.class public final Lgs2;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 144
    new-array v1, v0, [I

    .line 145
    iput-object v1, p0, Lgs2;->a:Ljava/lang/Object;

    .line 146
    new-array v1, v0, [I

    .line 147
    iput-object v1, p0, Lgs2;->b:Ljava/lang/Object;

    .line 148
    new-array v1, v0, [I

    .line 149
    iput-object v1, p0, Lgs2;->c:Ljava/lang/Object;

    .line 150
    new-array v1, v0, [I

    .line 151
    iput-object v1, p0, Lgs2;->d:Ljava/lang/Object;

    .line 152
    new-array v1, v0, [I

    .line 153
    iput-object v1, p0, Lgs2;->e:Ljava/lang/Object;

    .line 154
    new-array v1, v0, [I

    .line 155
    iput-object v1, p0, Lgs2;->f:Ljava/lang/Object;

    .line 156
    new-array v1, v0, [I

    .line 157
    iput-object v1, p0, Lgs2;->g:Ljava/lang/Object;

    .line 158
    new-array v0, v0, [I

    .line 159
    iput-object v0, p0, Lgs2;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lil0;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgs2;->a:Ljava/lang/Object;

    .line 5
    .line 6
    const v0, 0x7f0d0188

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x7f0a00ec

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v5, v2

    .line 22
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    const v0, 0x7f0a0120

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v6, v2

    .line 34
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    const v0, 0x7f0a02b7

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const v0, 0x7f0a04c6

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-static {v2}, Lka;->b(Landroid/view/View;)Lka;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const v0, 0x7f0a04d2

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-static {v2}, Lka;->b(Landroid/view/View;)Lka;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const v0, 0x7f0a05ba

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    new-instance v3, Lnh;

    .line 87
    .line 88
    move-object v4, p1

    .line 89
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 90
    .line 91
    invoke-direct/range {v3 .. v8}, Lnh;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lka;Lka;)V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lgs2;->b:Ljava/lang/Object;

    .line 95
    .line 96
    iget-object p1, v8, Lka;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 99
    .line 100
    iput-object p1, p0, Lgs2;->c:Ljava/lang/Object;

    .line 101
    .line 102
    iget-object p1, v8, Lka;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 105
    .line 106
    iput-object p1, p0, Lgs2;->d:Ljava/lang/Object;

    .line 107
    .line 108
    iget-object p1, v7, Lka;->c:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 111
    .line 112
    iput-object p1, p0, Lgs2;->e:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object p1, v7, Lka;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 117
    .line 118
    iput-object p1, p0, Lgs2;->f:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v6, p0, Lgs2;->g:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v5, p0, Lgs2;->h:Ljava/lang/Object;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "Missing required view with ID: "

    .line 134
    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lgs2;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    .line 5
    invoke-virtual {p0}, Llo;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    :goto_0
    return-object p0

    .line 42
    :cond_1
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lgs2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    .line 5
    invoke-virtual {p0}, Llo;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    :goto_0
    return-object p0

    .line 42
    :cond_1
    return-object v0
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lgs2;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :goto_0
    move v0, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lgs2;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_1
    iget-object v2, p0, Lgs2;->g:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    invoke-virtual {p0}, Lgs2;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const v1, 0x3f19999a    # 0.6f

    .line 54
    .line 55
    .line 56
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lgs2;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    .line 63
    invoke-virtual {p0}, Lgs2;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    if-nez v0, :cond_6

    .line 77
    .line 78
    iget-object p0, p0, Lgs2;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Lil0;

    .line 81
    .line 82
    const v0, 0x7f130400

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_5

    .line 90
    :cond_6
    :goto_4
    const/4 p0, 0x0

    .line 91
    :goto_5
    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
