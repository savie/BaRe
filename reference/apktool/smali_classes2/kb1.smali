.class public final synthetic Lkb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkb1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lkb1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkb1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget p2, p0, Lkb1;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lkb1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lkb1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lqo0;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    sget-object p1, Lzn4;->a:Lzn4;

    .line 15
    .line 16
    new-instance p1, Lkg;

    .line 17
    .line 18
    const/16 p2, 0x9

    .line 19
    .line 20
    invoke-direct {p1, p2, p0, v0}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    check-cast p0, Lil0;

    .line 28
    .line 29
    check-cast v0, Lmt3;

    .line 30
    .line 31
    sget-object p2, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;->Companion:Lob1;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const p2, 0x7f0d0065

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {p0, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const v2, 0x7f0a020c

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 52
    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    check-cast p2, Landroid/widget/FrameLayout;

    .line 56
    .line 57
    new-instance v2, Llb1;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    new-array v4, v4, [Landroid/text/InputFilter;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    aput-object v2, v4, v5

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lhv1;

    .line 72
    .line 73
    const v4, 0x7f140160

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, p0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Ls35;

    .line 80
    .line 81
    invoke-direct {v6, p0, v4, v2, v1}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 82
    .line 83
    .line 84
    const v2, 0x7f1303b7

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v2}, Lv75;->v(I)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Lmb1;

    .line 91
    .line 92
    invoke-direct {v2, v5, v3, p0, v0}, Lmb1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const p0, 0x7f1301ca

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, p0, v2}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const p0, 0x7f1300f1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, p0, v1}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, v6, Lva;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Lra;

    .line 110
    .line 111
    iput-object p2, p0, Lra;->s:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const/4 p2, -0x1

    .line 121
    invoke-virtual {p0, p2}, Lwa;->f(I)Landroid/widget/Button;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    .line 127
    .line 128
    new-instance p2, Lnb1;

    .line 129
    .line 130
    invoke-direct {p2, p0, v5}, Lnb1;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string p1, "Missing required view with ID: "

    .line 149
    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_0
    return-void

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
