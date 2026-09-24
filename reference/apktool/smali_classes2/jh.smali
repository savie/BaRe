.class public final synthetic Ljh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ljh;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ljh;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ljh;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ljh;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Ljh;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Ljh;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lmt3;

    .line 13
    .line 14
    check-cast v2, Lj57;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 26
    .line 27
    iget-object p1, v2, Lj57;->o:Lu10;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v1

    .line 35
    :pswitch_0
    check-cast p0, Lqj2;

    .line 36
    .line 37
    check-cast v2, Lzj2;

    .line 38
    .line 39
    move-object v4, p1

    .line 40
    check-cast v4, Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 46
    .line 47
    sget-object v5, Liu;->EXTDATA:Liu;

    .line 48
    .line 49
    iget-object p0, v2, Lzj2;->a:Liz4;

    .line 50
    .line 51
    invoke-virtual {p0}, Liz4;->getBackup()Lgm;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object v6, p0, Lgm;->a:Lhk;

    .line 56
    .line 57
    iget-boolean p0, v2, Lzj2;->i:Z

    .line 58
    .line 59
    iget-object p1, v2, Lzj2;->j:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    :goto_0
    move-object v8, p1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    const/4 v7, 0x0

    .line 68
    invoke-virtual/range {v3 .. v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :pswitch_1
    check-cast p0, Lgj2;

    .line 73
    .line 74
    iget-object p0, p0, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 75
    .line 76
    check-cast v2, Lji;

    .line 77
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const v0, 0x7f1301c0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "\'"

    .line 98
    .line 99
    const-string v3, "\' "

    .line 100
    .line 101
    invoke-static {v2, p1, v3, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object v0, Lzn4;->a:Lzn4;

    .line 106
    .line 107
    new-instance v0, Lcv;

    .line 108
    .line 109
    const/16 v2, 0xe

    .line 110
    .line 111
    invoke-direct {v0, v2, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-object v1

    .line 118
    :pswitch_2
    check-cast p0, Lnh;

    .line 119
    .line 120
    check-cast v2, Lw45;

    .line 121
    .line 122
    check-cast p1, Lqh;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v0, Lzn4;->a:Lzn4;

    .line 128
    .line 129
    new-instance v0, Llh;

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    invoke-direct {v0, v3, p0, v2, p1}, Llh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 136
    .line 137
    .line 138
    return-object v1

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
