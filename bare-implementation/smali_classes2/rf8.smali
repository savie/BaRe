.class public final Lrf8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lq63;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public f:Ljava/lang/String;

.field public final g:Lgv7;

.field public final h:Ljava/lang/String;

.field public final i:Lgv7;


# direct methods
.method public constructor <init>(Lq63;IZLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrf8;->a:Lq63;

    .line 8
    .line 9
    iput p2, p0, Lrf8;->b:I

    .line 10
    .line 11
    iput-boolean p3, p0, Lrf8;->c:Z

    .line 12
    .line 13
    iput-object p4, p0, Lrf8;->d:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p5, p0, Lrf8;->e:Z

    .line 16
    .line 17
    new-instance p1, Las4;

    .line 18
    .line 19
    const/16 p3, 0x12

    .line 20
    .line 21
    invoke-direct {p1, p0, p3}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance p3, Lgv7;

    .line 25
    .line 26
    invoke-direct {p3, p1}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lrf8;->g:Lgv7;

    .line 30
    .line 31
    packed-switch p2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    packed-switch p2, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    packed-switch p2, :pswitch_data_2

    .line 38
    .line 39
    .line 40
    const-string p1, "Unknown file type"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    const-string p1, "Folder incremental backup manifest"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    const-string p1, "Folder incremental backup"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    const-string p1, "Folder base backup manifest"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_3
    const-string p1, "Folder base backup"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_4
    const-string p1, "WiFi"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    const-string p1, "Wallpaper"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_6
    const-string p1, "Call Logs"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_7
    const-string p1, "Messages"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_8
    const-string p1, "App special data"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_9
    const-string p1, "Media"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_a
    const-string p1, "Ext Data"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_b
    const-string p1, "Expansion"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_c
    const-string p1, "Data"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_d
    const-string p1, "Shared Libs"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_e
    const-string p1, "Split APKs"

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_f
    const-string p1, "APK"

    .line 89
    .line 90
    :goto_0
    iput-object p1, p0, Lrf8;->h:Ljava/lang/String;

    .line 91
    .line 92
    new-instance p1, Lpr4;

    .line 93
    .line 94
    const/16 p2, 0xc

    .line 95
    .line 96
    invoke-direct {p1, p0, p2}, Lpr4;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lgv7;

    .line 100
    .line 101
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, p0, Lrf8;->i:Lgv7;

    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lrf8;->g:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lrf8;->i:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method
