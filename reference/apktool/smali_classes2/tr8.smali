.class public final synthetic Ltr8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

.field public final synthetic e:Let8;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/ArrayList;ILorg/swiftapps/swiftbackup/wifi/WifiActivity;Let8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ltr8;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Ltr8;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Ltr8;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Ltr8;->d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 11
    .line 12
    iput-object p5, p0, Ltr8;->e:Let8;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f0a0054

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ltr8;->d:Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne p1, v0, :cond_4

    .line 14
    .line 15
    iget-boolean p1, p0, Ltr8;->a:Z

    .line 16
    .line 17
    iget-object v0, p0, Ltr8;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget p0, p0, Ltr8;->c:I

    .line 20
    .line 21
    const v3, 0x7f1301f8

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p1, Lno5;

    .line 41
    .line 42
    const/16 v0, 0xc

    .line 43
    .line 44
    invoke-direct {p1, p0, v0}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :cond_0
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-instance p1, Lbz7;

    .line 56
    .line 57
    sget-object v1, Lq05;->DEVICE:Lq05;

    .line 58
    .line 59
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {p1, v0, v1, v4}, Lbz7;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lut8;

    .line 67
    .line 68
    invoke-direct {v0, p1, v3, p0, v4}, Lut8;-><init>(Lbz7;ILiu8;Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_1
    invoke-static {v1}, Lorg/swiftapps/swiftbackup/common/Const;->y(Lzm;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    new-instance p1, Lus5;

    .line 96
    .line 97
    const/16 v0, 0xe

    .line 98
    .line 99
    invoke-direct {p1, p0, v0}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_3
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p1, Lbz7;

    .line 111
    .line 112
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 113
    .line 114
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {p1, v0, v1, v4}, Lbz7;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lut8;

    .line 122
    .line 123
    invoke-direct {v0, p1, v3, p0, v4}, Lut8;-><init>(Lbz7;ILiu8;Z)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 127
    .line 128
    .line 129
    return v2

    .line 130
    :cond_4
    const v0, 0x7f0a007b

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Ltr8;->e:Let8;

    .line 134
    .line 135
    if-ne p1, v0, :cond_5

    .line 136
    .line 137
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y()Liu8;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    new-instance v0, Lrm;

    .line 146
    .line 147
    const/16 v1, 0x10

    .line 148
    .line 149
    invoke-direct {v0, v1, p0, p1}, Lrm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 153
    .line 154
    .line 155
    return v2

    .line 156
    :cond_5
    const v0, 0x7f0a0085

    .line 157
    .line 158
    .line 159
    if-ne p1, v0, :cond_6

    .line 160
    .line 161
    invoke-virtual {v1, p0}, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->e0(Let8;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_0
    return v2
.end method
