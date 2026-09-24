.class public final synthetic Lob5;
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
    iput p2, p0, Lob5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lob5;->b:Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

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
    iget v0, p0, Lob5;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    iget-object p0, p0, Lob5;->b:Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->M:Ldd1;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "org.swiftapps.swiftbackup.cloud.connect.extra.CLOUD_CONSTANT"

    .line 31
    .line 32
    invoke-virtual {v0}, Ldd1;->getConstant()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object v1

    .line 58
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 59
    .line 60
    new-instance p1, Lk3;

    .line 61
    .line 62
    const/16 v0, 0xf

    .line 63
    .line 64
    invoke-direct {p1, p0, v0}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0d0103

    .line 68
    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const v5, 0x7f0a020c

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 83
    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    check-cast v0, Landroid/widget/FrameLayout;

    .line 87
    .line 88
    new-instance v5, Lhv1;

    .line 89
    .line 90
    const v7, 0x7f140160

    .line 91
    .line 92
    .line 93
    invoke-direct {v5, p0, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    new-instance v8, Ls35;

    .line 97
    .line 98
    invoke-direct {v8, p0, v7, v5, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, v8, Lva;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Lra;

    .line 104
    .line 105
    iput-boolean v2, p0, Lra;->m:Z

    .line 106
    .line 107
    const v5, 0x7f13039b

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v5}, Lv75;->n(I)V

    .line 111
    .line 112
    .line 113
    new-instance v5, Lwm3;

    .line 114
    .line 115
    invoke-direct {v5, v6, p1}, Lwm3;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lk3;)V

    .line 116
    .line 117
    .line 118
    const p1, 0x7f1303e6

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, p1, v5}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const p1, 0x7f1300f1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, p1, v4}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lra;->s:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v3}, Lwa;->f(I)Landroid/widget/Button;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lvb3;

    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    invoke-direct {p1, p0, v0}, Lvb3;-><init>(Ljava/lang/Object;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "Missing required view with ID: "

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    move-object v1, v4

    .line 174
    :goto_1
    return-object v1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
