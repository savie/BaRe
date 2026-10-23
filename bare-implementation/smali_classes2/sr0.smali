.class public final synthetic Lsr0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Set;Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsr0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lsr0;->b:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p3, p0, Lsr0;->c:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 8

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lwa;

    .line 7
    .line 8
    iget-object v0, p0, Lsr0;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lji;

    .line 15
    .line 16
    iget-object v0, p0, Lsr0;->b:Ljava/util/Set;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    sget-object p3, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->Companion:Lcs0;

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 30
    .line 31
    invoke-virtual {p2}, Lji;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p2}, Lji;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v6, 0x4

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-direct/range {v2 .. v7}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lji;->isInstalled()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {v2, p2}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->setInstalled(Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p2}, Lji;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-ne v2, v1, :cond_1

    .line 88
    .line 89
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    iget-object p0, p0, Lsr0;->c:Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 98
    .line 99
    const/16 p3, 0x64

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    if-lt p2, p3, :cond_4

    .line 103
    .line 104
    const p2, 0x7f130341

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O:Landroid/widget/Toast;

    .line 115
    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O:Landroid/widget/Toast;

    .line 126
    .line 127
    if-eqz p2, :cond_4

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 130
    .line 131
    .line 132
    :cond_4
    const/4 p2, -0x1

    .line 133
    invoke-virtual {p1, p2}, Lwa;->f(I)Landroid/widget/Button;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-le v3, p3, :cond_5

    .line 142
    .line 143
    move v2, v1

    .line 144
    :cond_5
    xor-int/2addr v2, v1

    .line 145
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-static {p0, p2, p3, v1}, Lorg/swiftapps/swiftbackup/common/Const;->p(Landroid/content/Context;IIZ)Landroid/text/SpannableStringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p1, p0}, Lwa;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method
