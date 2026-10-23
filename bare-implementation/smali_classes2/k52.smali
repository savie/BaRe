.class public final Lk52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk52;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk52;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget v0, p0, Lk52;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lk52;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast p0, Ld7;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ld7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 16
    .line 17
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->I0:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object v0, Lxq6;->j:Lxq6;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p1, v0

    .line 43
    :goto_0
    sget-object v1, Lxq6;->m:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v3, v2

    .line 60
    check-cast v3, Lxq6;

    .line 61
    .line 62
    iget-object v3, v3, Lxq6;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v3, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    move-object v0, v2

    .line 71
    :cond_3
    check-cast v0, Lxq6;

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    sget-object v0, Lxq6;->j:Lxq6;

    .line 76
    .line 77
    :cond_4
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->H0:Lxq6;

    .line 78
    .line 79
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->e0:Lgv7;

    .line 80
    .line 81
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/ImageView;

    .line 86
    .line 87
    iget v1, v0, Lxq6;->c:I

    .line 88
    .line 89
    iget-object v2, v0, Lxq6;->b:Ljava/lang/String;

    .line 90
    .line 91
    const/high16 v3, 0x40400000    # 3.0f

    .line 92
    .line 93
    invoke-static {p1, v1, v2, v3}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, v0, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->Z(Lxq6;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->m0()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p1, p0}, Lm62;->l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Lk52;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p2, p0, Lk52;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lk52;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 9
    .line 10
    iget-boolean p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->M:Z

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->d:Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object p3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->y:Landroid/widget/ImageButton;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->c(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 p2, 0x8

    .line 33
    .line 34
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->c(Z)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->K:Lug7;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->K:Lug7;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-interface {p2, p3}, Lug7;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->e:Ljava/lang/String;

    .line 67
    .line 68
    :cond_2
    :pswitch_0
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
