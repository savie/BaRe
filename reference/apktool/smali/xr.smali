.class public final synthetic Lxr;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxr;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lxr;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget v0, p0, Lxr;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lxr;->b:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0()Ltt;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v1, v1}, Ltt;->k(ZZ)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0()Ltt;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltt;->h:Lex6;

    .line 26
    .line 27
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lqt;

    .line 32
    .line 33
    if-eqz v0, :cond_7

    .line 34
    .line 35
    sget-object v2, Lnt;->a:Lnt;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    new-instance v0, Lu45;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-direct {v0, p0, p1, v2}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0f0006

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lfc5;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_0
    iget-object v3, p1, Lfc5;->f:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ge v2, v3, :cond_6

    .line 72
    .line 73
    add-int/lit8 v3, v2, 0x1

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const v5, 0x7f0a006a

    .line 86
    .line 87
    .line 88
    const v6, 0x7f080202

    .line 89
    .line 90
    .line 91
    const v7, 0x7f080101

    .line 92
    .line 93
    .line 94
    if-ne v4, v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Ldt;->Y()Lbt;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lbt;->isLocalSection()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_1

    .line 105
    .line 106
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const v5, 0x7f0a004c

    .line 115
    .line 116
    .line 117
    if-ne v4, v5, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0}, Ldt;->b0()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_1
    move v2, v3

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    invoke-static {}, Ll0;->a()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    new-instance p1, Lgb;

    .line 139
    .line 140
    invoke-direct {p1, p0, v1}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v0}, Lu45;->j()V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_2
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
