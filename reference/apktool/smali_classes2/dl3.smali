.class public final synthetic Ldl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

.field public final synthetic b:Lkj3;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ldl3;->b:Lkj3;

    .line 7
    .line 8
    iput-object p3, p0, Ldl3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f0a003b

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ldl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 11
    .line 12
    iget-object v2, p0, Ldl3;->b:Lkj3;

    .line 13
    .line 14
    iget-object p0, p0, Ldl3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lzn4;->a:Lzn4;

    .line 20
    .line 21
    new-instance p1, Ld32;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {p1, v0, v2, p0, v1}, Ld32;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    const v0, 0x7f0a008c

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    sget p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 46
    .line 47
    new-instance p0, Lqf;

    .line 48
    .line 49
    const/16 p1, 0xd

    .line 50
    .line 51
    invoke-direct {p0, p1, v1, v2}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v4, p0, v3}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 55
    .line 56
    .line 57
    return v3

    .line 58
    :cond_1
    sget-object p0, Lzn4;->a:Lzn4;

    .line 59
    .line 60
    new-instance p0, Lb56;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-direct {p0, v1, p1}, Lb56;-><init>(Lk28;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lzn4;->e(Lbt3;)V

    .line 67
    .line 68
    .line 69
    return v3

    .line 70
    :cond_2
    const v0, 0x7f0a0054

    .line 71
    .line 72
    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    new-instance p1, Lhv1;

    .line 85
    .line 86
    const v0, 0x7f140160

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v1, v0}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Ls35;

    .line 93
    .line 94
    invoke-direct {v5, v1, v0, p1, v4}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 95
    .line 96
    .line 97
    const p1, 0x7f1301e5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, p1}, Lv75;->v(I)V

    .line 101
    .line 102
    .line 103
    const p1, 0x7f13054e

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, p1}, Lv75;->n(I)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lrj1;

    .line 110
    .line 111
    const/4 v0, 0x3

    .line 112
    invoke-direct {p1, v0, v2, v1, p0}, Lrj1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const p0, 0x7f1305d0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, p0, p1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const p0, 0x7f1303ba

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, p0, v4}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 128
    .line 129
    .line 130
    return v3

    .line 131
    :cond_4
    const v0, 0x7f0a0084

    .line 132
    .line 133
    .line 134
    if-ne p1, v0, :cond_5

    .line 135
    .line 136
    sget-object p1, Lzn4;->a:Lzn4;

    .line 137
    .line 138
    new-instance p1, Lv20;

    .line 139
    .line 140
    const/4 v0, 0x5

    .line 141
    invoke-direct {p1, v0, v2, p0, v1}, Lv20;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_0
    return v3
.end method
