.class public final synthetic Lmi0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lmi0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmi0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lmi0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lmi0;->b:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lmi0;->a:I

    .line 2
    .line 3
    iget v0, p0, Lmi0;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lmi0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lmi0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lzc6;

    .line 13
    .line 14
    check-cast v1, Ldd6;

    .line 15
    .line 16
    iget-boolean p1, p0, Lzc6;->f:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p1, Lmp6;->a:Lmp6;

    .line 21
    .line 22
    invoke-static {}, Lmp6;->f()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, v1, Ldd6;->l:Lsa1;

    .line 29
    .line 30
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, v1, Lgm7;->j:Lqt3;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1, p0, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    :pswitch_0
    check-cast p0, Loi0;

    .line 47
    .line 48
    check-cast v1, Lli0;

    .line 49
    .line 50
    iget-object p1, v1, Lli0;->k:Lao;

    .line 51
    .line 52
    invoke-virtual {v1}, Lli0;->b()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    instance-of v2, p1, Lji0;

    .line 59
    .line 60
    iput-boolean v2, v1, Lli0;->f:Z

    .line 61
    .line 62
    iget-object v2, p1, Lao;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Loi0;->h:Landroid/widget/Toast;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 73
    .line 74
    .line 75
    :cond_2
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 76
    .line 77
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v2, p0, Loi0;->h:Landroid/widget/Toast;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object p1, p1, Lao;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lbt3;

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-interface {p1}, Lbt3;->invoke()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {v1}, Lli0;->a()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    xor-int/lit8 p1, p1, 0x1

    .line 108
    .line 109
    iput-boolean p1, v1, Lli0;->f:Z

    .line 110
    .line 111
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lhg6;->f(I)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Loi0;->g:Lat5;

    .line 115
    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    invoke-interface {p0, v1}, Lat5;->d(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
