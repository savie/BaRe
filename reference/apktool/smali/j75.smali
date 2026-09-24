.class public final Lj75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lw23;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li75;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iget-object v0, p1, Li75;->a:Ljava/lang/Object;

    check-cast v0, Lo75;

    .line 127
    iput-object v0, p0, Lj75;->a:Ljava/lang/Object;

    .line 128
    iget-object v0, p1, Li75;->b:Ljava/lang/Object;

    check-cast v0, Ljb9;

    .line 129
    iput-object v0, p0, Lj75;->b:Ljava/lang/Object;

    .line 130
    iget-object v0, p1, Li75;->c:Ljava/lang/Object;

    check-cast v0, Lsl4;

    .line 131
    iput-object v0, p0, Lj75;->c:Ljava/lang/Object;

    .line 132
    iget-object v0, p1, Li75;->d:Ljava/lang/Object;

    check-cast v0, Lhx0;

    .line 133
    iput-object v0, p0, Lj75;->d:Ljava/lang/Object;

    .line 134
    iget-object v0, p1, Li75;->e:Ljava/lang/Object;

    check-cast v0, Lhx0;

    .line 135
    iput-object v0, p0, Lj75;->e:Ljava/lang/Object;

    .line 136
    iget-object v0, p1, Li75;->f:Ljava/lang/Object;

    check-cast v0, Lcz4;

    .line 137
    iput-object v0, p0, Lj75;->f:Ljava/lang/Object;

    .line 138
    iget-object p1, p1, Li75;->k:Ljava/lang/Object;

    check-cast p1, Lky3;

    .line 139
    iput-object p1, p0, Lj75;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lil0;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0d012b

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0a00f8

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v5, v2

    .line 20
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const v0, 0x7f0a0120

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v6, v2

    .line 32
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    const v0, 0x7f0a020c

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v7, v2

    .line 44
    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    .line 45
    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    const v0, 0x7f0a02a1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v8, v2

    .line 56
    check-cast v8, Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz v8, :cond_0

    .line 59
    .line 60
    const v0, 0x7f0a04c2

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v9, v2

    .line 68
    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 69
    .line 70
    if-eqz v9, :cond_0

    .line 71
    .line 72
    const v0, 0x7f0a05ba

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v10, v2

    .line 80
    check-cast v10, Landroid/widget/TextView;

    .line 81
    .line 82
    if-eqz v10, :cond_0

    .line 83
    .line 84
    new-instance v3, Lke;

    .line 85
    .line 86
    move-object v4, p1

    .line 87
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 88
    .line 89
    invoke-direct/range {v3 .. v10}, Lke;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    .line 90
    .line 91
    .line 92
    iput-object v3, p0, Lj75;->a:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object v10, p0, Lj75;->b:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v9, p0, Lj75;->c:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v7, p0, Lj75;->d:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v6, p0, Lj75;->e:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v5, p0, Lj75;->f:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v8, p0, Lj75;->k:Ljava/lang/Object;

    .line 105
    .line 106
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string p1, "Missing required view with ID: "

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lj75;->a:Ljava/lang/Object;

    iput-object p2, p0, Lj75;->b:Ljava/lang/Object;

    iput-object p3, p0, Lj75;->c:Ljava/lang/Object;

    iput-object p4, p0, Lj75;->d:Ljava/lang/Object;

    iput-object p5, p0, Lj75;->e:Ljava/lang/Object;

    iput-object p6, p0, Lj75;->f:Ljava/lang/Object;

    iput-object p7, p0, Lj75;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Ljava/lang/String;Lj75;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lj75;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lj75;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    xor-int/2addr p0, v1

    .line 24
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lj75;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    move p0, v1

    .line 44
    :goto_2
    xor-int/2addr p0, v1

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lj75;->d:Ljava/lang/Object;

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
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x1e

    .line 31
    .line 32
    invoke-static {v1, p0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-lez v1, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    move-object v0, p0

    .line 59
    :cond_1
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lj75;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lca6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Ll97;

    .line 11
    .line 12
    iget-object v0, p0, Lj75;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lca6;

    .line 15
    .line 16
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lb97;

    .line 22
    .line 23
    iget-object v0, p0, Lj75;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lca6;

    .line 26
    .line 27
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, La97;

    .line 33
    .line 34
    iget-object v0, p0, Lj75;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lca6;

    .line 37
    .line 38
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, La48;

    .line 44
    .line 45
    iget-object v0, p0, Lj75;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lca6;

    .line 48
    .line 49
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v6, v0

    .line 54
    check-cast v6, Lfb2;

    .line 55
    .line 56
    iget-object v0, p0, Lj75;->f:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lca6;

    .line 59
    .line 60
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v7, v0

    .line 65
    check-cast v7, Lj76;

    .line 66
    .line 67
    iget-object p0, p0, Lj75;->k:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lca6;

    .line 70
    .line 71
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    move-object v8, p0

    .line 76
    check-cast v8, Lox1;

    .line 77
    .line 78
    new-instance v1, Lkd7;

    .line 79
    .line 80
    invoke-direct/range {v1 .. v8}, Lkd7;-><init>(Ll97;Lb97;La97;La48;Lfb2;Lj76;Lox1;)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lj75;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    return-object p0
.end method
