.class public final synthetic Lh10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lh10;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lh10;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lh10;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lh10;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lh10;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lh10;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Las8;

    .line 12
    .line 13
    check-cast v1, Lau8;

    .line 14
    .line 15
    iget-object p0, p0, Las8;->b:Liu8;

    .line 16
    .line 17
    check-cast v1, Lzt8;

    .line 18
    .line 19
    iget-object p1, v1, Lzt8;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lrm;

    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-direct {v0, v1, p1, p0}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Lwa;

    .line 36
    .line 37
    check-cast v1, Lye4;

    .line 38
    .line 39
    invoke-virtual {p0}, Lho;->dismiss()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lye4;->invoke()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p0, Lkl3;

    .line 47
    .line 48
    check-cast v1, Lol3;

    .line 49
    .line 50
    iget-object p0, p0, Lkl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iget-object v1, v1, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 54
    .line 55
    invoke-static {p0, p1, v1, v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->a0(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_2
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    check-cast v1, Luv2;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, v1, Luv2;->f:Lox;

    .line 71
    .line 72
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lox;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lol1;->j(Z)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_3
    check-cast p0, Lji;

    .line 82
    .line 83
    check-cast v1, Lgj2;

    .line 84
    .line 85
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v2, v1, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, ":app_package_name"

    .line 96
    .line 97
    invoke-static {v2, v3}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Ljh;

    .line 102
    .line 103
    invoke-direct {v3, v0, v1, p0}, Ljh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v2, v3}, Lorg/swiftapps/swiftbackup/common/Const;->f(Ljava/lang/String;Ljava/lang/String;Lmt3;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_4
    check-cast p0, Ltv1;

    .line 111
    .line 112
    check-cast v1, Lqv1;

    .line 113
    .line 114
    sget p1, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->O:I

    .line 115
    .line 116
    iget-object p0, p0, Lfh6;->a:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance p1, Landroid/content/Intent;

    .line 126
    .line 127
    const-class v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;

    .line 128
    .line 129
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "extra_conversation"

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_5
    check-cast p0, Lac1;

    .line 146
    .line 147
    check-cast v1, Lbc1;

    .line 148
    .line 149
    iget-object p0, p0, Lac1;->m:Lxf;

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Lxf;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_6
    check-cast p0, Lk10;

    .line 156
    .line 157
    check-cast v1, Ll10;

    .line 158
    .line 159
    iget-object p0, p0, Lk10;->l:Lzs;

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lzs;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
