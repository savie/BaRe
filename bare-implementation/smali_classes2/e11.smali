.class public final synthetic Le11;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lt45;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Lhm6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Le11;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le11;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Le11;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lgf;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    return-object p0
.end method

.method public b(ZZ)V
    .locals 3

    .line 1
    iget v0, p0, Le11;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Le11;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 10
    .line 11
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget-object p1, Ldz5;->a:Ldz5;

    .line 16
    .line 17
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 18
    .line 19
    invoke-static {p1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1, v1}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/d;->o()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->N()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->P()Lqi7;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const p2, 0x7f130409

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lfo0;->h:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object v0, p1, Lfo0;->i:Leo0;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    new-instance p2, Li00;

    .line 75
    .line 76
    const/16 v0, 0x9

    .line 77
    .line 78
    invoke-direct {p2, p0, v0}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lqi7;->h(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lqi7;->i()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void

    .line 88
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 89
    .line 90
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    sget-object p1, Ldz5;->f:Lgv7;

    .line 96
    .line 97
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/util/Set;

    .line 102
    .line 103
    invoke-static {p0, p1, v0}, Ldz5;->o(Lzm;Ljava/util/Set;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Y()Loi7;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object p1, p1, Loi7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->U()Lb11;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p1, p1, Lb11;->e:Lix6;

    .line 126
    .line 127
    new-instance p2, Lu10;

    .line 128
    .line 129
    invoke-direct {p2, p0, v0}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Lo01;

    .line 133
    .line 134
    invoke-direct {v2, v0, p2}, Lo01;-><init>(ILmt3;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0, v2}, Lix6;->e(Lfu4;Les5;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Z()Ls11;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p1, p1, Ls11;->f:Lex6;

    .line 145
    .line 146
    new-instance p2, Llm;

    .line 147
    .line 148
    const/4 v0, 0x6

    .line 149
    invoke-direct {p2, p0, v0}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lf11;

    .line 153
    .line 154
    invoke-direct {v0, v1, p2}, Lf11;-><init>(ILmt3;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p0, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Z()Ls11;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Ls11;->g:Lex6;

    .line 165
    .line 166
    new-instance p2, Lw20;

    .line 167
    .line 168
    const/4 v0, 0x3

    .line 169
    invoke-direct {p2, p0, v0}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lf11;

    .line 173
    .line 174
    invoke-direct {v0, v1, p2}, Lf11;-><init>(ILmt3;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p0, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    sget-object p1, Ldz5;->f:Lgv7;

    .line 182
    .line 183
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/util/Set;

    .line 188
    .line 189
    invoke-static {p0, p1}, Ldz5;->q(Lsa1;Ljava/util/Set;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Le11;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Le11;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->i(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Ljava/lang/reflect/Type;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->g(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
