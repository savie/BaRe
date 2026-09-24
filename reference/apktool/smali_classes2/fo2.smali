.class public final Lfo2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:J

.field public final d:Lq63;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLq63;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lfo2;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lfo2;->b:I

    .line 13
    .line 14
    iput-wide p3, p0, Lfo2;->c:J

    .line 15
    .line 16
    iput-object p5, p0, Lfo2;->d:Lq63;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lfo2;->b:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_1

    .line 7
    .line 8
    .line 9
    packed-switch p0, :pswitch_data_2

    .line 10
    .line 11
    .line 12
    const-string p0, "Unknown file type"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const-string p0, "Folder incremental backup manifest"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    const-string p0, "Folder incremental backup"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const-string p0, "Folder base backup manifest"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_3
    const-string p0, "Folder base backup"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    const-string p0, "WiFi"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_5
    const-string p0, "Wallpaper"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_6
    const-string p0, "Call Logs"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_7
    const-string p0, "Messages"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_8
    const-string p0, "App special data"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_9
    const-string p0, "Media"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_a
    const-string p0, "Ext Data"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_b
    const-string p0, "Expansion"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_c
    const-string p0, "Data"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_d
    const-string p0, "Shared Libs"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_e
    const-string p0, "Split APKs"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_f
    const-string p0, "APK"

    .line 61
    .line 62
    :goto_0
    return-object p0

    .line 63
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

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
