.class public final synthetic Lpb5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lpb5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lpb5;->b:Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lpb5;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lpb5;->b:Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N:Lgv7;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    sget v3, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v5, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v5, v3

    .line 31
    :goto_1
    xor-int/2addr v3, v5

    .line 32
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    .line 37
    .line 38
    iget-object v5, v5, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 39
    .line 40
    iget-boolean v5, v5, Lyb4;->q:Z

    .line 41
    .line 42
    if-eq v5, v3, :cond_2

    .line 43
    .line 44
    invoke-static {p0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-array v4, v4, [Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {p0, v5, v4}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 82
    .line 83
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 84
    .line 85
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 86
    .line 87
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v0, "Showing folder creation failed dialog (folder name = "

    .line 92
    .line 93
    invoke-static {v0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v7, 0x4

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lhv1;

    .line 104
    .line 105
    const v0, 0x7f140160

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p0, v0}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Ls35;

    .line 112
    .line 113
    invoke-direct {v3, p0, v0, p1, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 114
    .line 115
    .line 116
    const p0, 0x7f130167

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p0}, Lv75;->v(I)V

    .line 120
    .line 121
    .line 122
    const p0, 0x7f130166

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p0}, Lv75;->n(I)V

    .line 126
    .line 127
    .line 128
    const p0, 0x7f1303e6

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, p0, v2}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
