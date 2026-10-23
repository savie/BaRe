.class public final enum Loy;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Loy;

.field public static final enum AppInfo:Loy;

.field public static final enum ClearData:Loy;

.field public static final Companion:Lmy;

.field public static final enum EnableDisable:Loy;

.field public static final enum ForceStop:Loy;

.field public static final enum Launch:Loy;

.field public static final enum PlayStore:Loy;

.field public static final enum ShareApk:Loy;

.field public static final enum Uninstall:Loy;


# instance fields
.field private final appActionItemId:I

.field private final iconRes:I

.field private final id:Ljava/lang/String;

.field private final titleRes:I

.field private final tone:Lry;


# direct methods
.method private static final synthetic $values()[Loy;
    .locals 8

    .line 1
    sget-object v0, Loy;->Launch:Loy;

    .line 2
    .line 3
    sget-object v1, Loy;->EnableDisable:Loy;

    .line 4
    .line 5
    sget-object v2, Loy;->Uninstall:Loy;

    .line 6
    .line 7
    sget-object v3, Loy;->ForceStop:Loy;

    .line 8
    .line 9
    sget-object v4, Loy;->PlayStore:Loy;

    .line 10
    .line 11
    sget-object v5, Loy;->ClearData:Loy;

    .line 12
    .line 13
    sget-object v6, Loy;->AppInfo:Loy;

    .line 14
    .line 15
    sget-object v7, Loy;->ShareApk:Loy;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Loy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Loy;

    .line 2
    .line 3
    const v6, 0x7f080169

    .line 4
    .line 5
    .line 6
    sget-object v7, Lry;->Positive:Lry;

    .line 7
    .line 8
    const-string v1, "Launch"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "launch"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const v5, 0x7f1302ed

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Loy;->Launch:Loy;

    .line 21
    .line 22
    new-instance v1, Loy;

    .line 23
    .line 24
    const/16 v9, 0x10

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    const-string v2, "EnableDisable"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const-string v4, "enable_disable"

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    const v6, 0x7f130218

    .line 34
    .line 35
    .line 36
    const v7, 0x7f08012c

    .line 37
    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-direct/range {v1 .. v10}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Loy;->EnableDisable:Loy;

    .line 44
    .line 45
    new-instance v2, Loy;

    .line 46
    .line 47
    sget-object v9, Lry;->Destructive:Lry;

    .line 48
    .line 49
    const-string v3, "Uninstall"

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    const-string v5, "uninstall"

    .line 53
    .line 54
    const/4 v6, 0x3

    .line 55
    const v7, 0x7f13057d

    .line 56
    .line 57
    .line 58
    const v8, 0x7f080126

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v2 .. v9}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;)V

    .line 62
    .line 63
    .line 64
    sput-object v2, Loy;->Uninstall:Loy;

    .line 65
    .line 66
    new-instance v10, Loy;

    .line 67
    .line 68
    const/16 v18, 0x10

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    const-string v11, "ForceStop"

    .line 73
    .line 74
    const/4 v12, 0x3

    .line 75
    const-string v13, "force_stop"

    .line 76
    .line 77
    const/4 v14, 0x4

    .line 78
    const v15, 0x7f130285

    .line 79
    .line 80
    .line 81
    const v16, 0x7f08014e

    .line 82
    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    invoke-direct/range {v10 .. v19}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    sput-object v10, Loy;->ForceStop:Loy;

    .line 90
    .line 91
    new-instance v11, Loy;

    .line 92
    .line 93
    const/16 v19, 0x10

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const-string v12, "PlayStore"

    .line 98
    .line 99
    const/4 v13, 0x4

    .line 100
    const-string v14, "play_store"

    .line 101
    .line 102
    const/4 v15, 0x5

    .line 103
    const v16, 0x7f130410

    .line 104
    .line 105
    .line 106
    const v17, 0x7f080153

    .line 107
    .line 108
    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    invoke-direct/range {v11 .. v20}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    sput-object v11, Loy;->PlayStore:Loy;

    .line 115
    .line 116
    new-instance v3, Loy;

    .line 117
    .line 118
    const v8, 0x7f1300ff

    .line 119
    .line 120
    .line 121
    move-object v10, v9

    .line 122
    const v9, 0x7f08010d

    .line 123
    .line 124
    .line 125
    const-string v4, "ClearData"

    .line 126
    .line 127
    const/4 v5, 0x5

    .line 128
    const-string v6, "clear_data"

    .line 129
    .line 130
    const/4 v7, 0x6

    .line 131
    invoke-direct/range {v3 .. v10}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;)V

    .line 132
    .line 133
    .line 134
    sput-object v3, Loy;->ClearData:Loy;

    .line 135
    .line 136
    new-instance v4, Loy;

    .line 137
    .line 138
    const/16 v12, 0x10

    .line 139
    .line 140
    const/4 v13, 0x0

    .line 141
    const-string v5, "AppInfo"

    .line 142
    .line 143
    const/4 v6, 0x6

    .line 144
    const-string v7, "app_info"

    .line 145
    .line 146
    const/4 v8, 0x7

    .line 147
    const v9, 0x7f13005a

    .line 148
    .line 149
    .line 150
    const v10, 0x7f08015b

    .line 151
    .line 152
    .line 153
    const/4 v11, 0x0

    .line 154
    invoke-direct/range {v4 .. v13}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    .line 156
    .line 157
    sput-object v4, Loy;->AppInfo:Loy;

    .line 158
    .line 159
    new-instance v5, Loy;

    .line 160
    .line 161
    const/16 v13, 0x10

    .line 162
    .line 163
    const/4 v14, 0x0

    .line 164
    const-string v6, "ShareApk"

    .line 165
    .line 166
    const/4 v7, 0x7

    .line 167
    const-string v8, "share_apk"

    .line 168
    .line 169
    const/16 v9, 0x8

    .line 170
    .line 171
    const v10, 0x7f1304f5

    .line 172
    .line 173
    .line 174
    const v11, 0x7f0801e5

    .line 175
    .line 176
    .line 177
    const/4 v12, 0x0

    .line 178
    invoke-direct/range {v5 .. v14}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    .line 180
    .line 181
    sput-object v5, Loy;->ShareApk:Loy;

    .line 182
    .line 183
    invoke-static {}, Loy;->$values()[Loy;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sput-object v0, Loy;->$VALUES:[Loy;

    .line 188
    .line 189
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Loy;->$ENTRIES:Ljx2;

    .line 194
    .line 195
    new-instance v0, Lmy;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    sput-object v0, Loy;->Companion:Lmy;

    .line 201
    .line 202
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lry;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Loy;->id:Ljava/lang/String;

    .line 25
    iput p4, p0, Loy;->appActionItemId:I

    .line 26
    iput p5, p0, Loy;->titleRes:I

    .line 27
    iput p6, p0, Loy;->iconRes:I

    .line 28
    iput-object p7, p0, Loy;->tone:Lry;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x10

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lry;->Neutral:Lry;

    .line 6
    .line 7
    move-object v8, v0

    .line 8
    :goto_0
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move v5, p4

    .line 13
    move v6, p5

    .line 14
    move v7, p6

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object/from16 v8, p7

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    invoke-direct/range {v1 .. v8}, Loy;-><init>(Ljava/lang/String;ILjava/lang/String;IIILry;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Loy;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic title$default(Loy;Landroid/content/Context;Lji;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Loy;->title(Landroid/content/Context;Lji;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: title"

    .line 14
    .line 15
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Loy;
    .locals 1

    .line 1
    const-class v0, Loy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Loy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Loy;
    .locals 1

    .line 1
    sget-object v0, Loy;->$VALUES:[Loy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Loy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getAppActionItemId()I
    .locals 0

    .line 1
    iget p0, p0, Loy;->appActionItemId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIconRes()I
    .locals 0

    .line 1
    iget p0, p0, Loy;->iconRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Loy;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    .line 1
    iget p0, p0, Loy;->titleRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTone()Lry;
    .locals 0

    .line 1
    iget-object p0, p0, Loy;->tone:Lry;

    .line 2
    .line 3
    return-object p0
.end method

.method public final iconResFor(Lji;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Loy;->EnableDisable:Loy;

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const p0, 0x7f080137

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    iget p0, p0, Loy;->iconRes:I

    .line 19
    .line 20
    return p0
.end method

.method public final isAvailable(Lji;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lny;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lq;->j()V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :pswitch_0
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :pswitch_1
    sget-object p0, Lmp6;->a:Lmp6;

    .line 26
    .line 27
    invoke-static {}, Lmp6;->f()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lji;->isBundled()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    sget-object p0, Lmp6;->a:Lmp6;

    .line 60
    .line 61
    invoke-static {}, Lmp6;->f()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_4
    invoke-virtual {p1}, Lji;->isInstalled()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_0

    .line 79
    .line 80
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_0

    .line 85
    .line 86
    invoke-virtual {p1}, Lji;->isLaunchable()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    .line 92
    :goto_0
    :pswitch_5
    const/4 p0, 0x1

    .line 93
    return p0

    .line 94
    :cond_0
    return v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final title(Landroid/content/Context;Lji;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Loy;->EnableDisable:Loy;

    .line 5
    .line 6
    if-ne p0, v0, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Lji;->getEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const p0, 0x7f1301fd

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p0, 0x7f130216

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    iget p0, p0, Loy;->titleRes:I

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-object p0
.end method
