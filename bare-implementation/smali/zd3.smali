.class public final enum Lzd3;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnd3;


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lzd3;

.field public static final enum All:Lzd3;

.field public static final enum BackupNew:Lzd3;

.field public static final enum BackupOld:Lzd3;

.field public static final enum BackupsWithNotes:Lzd3;

.field public static final enum InstalledFromGooglePlay:Lzd3;

.field public static final enum MultipleBackups:Lzd3;

.field public static final enum NotInstalledFromGooglePlay:Lzd3;

.field public static final enum ProtectedBackups:Lzd3;


# direct methods
.method private static final synthetic $values()[Lzd3;
    .locals 8

    .line 1
    sget-object v0, Lzd3;->All:Lzd3;

    .line 2
    .line 3
    sget-object v1, Lzd3;->MultipleBackups:Lzd3;

    .line 4
    .line 5
    sget-object v2, Lzd3;->ProtectedBackups:Lzd3;

    .line 6
    .line 7
    sget-object v3, Lzd3;->BackupsWithNotes:Lzd3;

    .line 8
    .line 9
    sget-object v4, Lzd3;->BackupOld:Lzd3;

    .line 10
    .line 11
    sget-object v5, Lzd3;->BackupNew:Lzd3;

    .line 12
    .line 13
    sget-object v6, Lzd3;->InstalledFromGooglePlay:Lzd3;

    .line 14
    .line 15
    sget-object v7, Lzd3;->NotInstalledFromGooglePlay:Lzd3;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lzd3;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzd3;

    .line 2
    .line 3
    const-string v1, "All"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lzd3;->All:Lzd3;

    .line 10
    .line 11
    new-instance v0, Lzd3;

    .line 12
    .line 13
    const-string v1, "MultipleBackups"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lzd3;->MultipleBackups:Lzd3;

    .line 20
    .line 21
    new-instance v0, Lzd3;

    .line 22
    .line 23
    const-string v1, "ProtectedBackups"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lzd3;->ProtectedBackups:Lzd3;

    .line 30
    .line 31
    new-instance v0, Lzd3;

    .line 32
    .line 33
    const-string v1, "BackupsWithNotes"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lzd3;->BackupsWithNotes:Lzd3;

    .line 40
    .line 41
    new-instance v0, Lzd3;

    .line 42
    .line 43
    const-string v1, "BackupOld"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lzd3;->BackupOld:Lzd3;

    .line 50
    .line 51
    new-instance v0, Lzd3;

    .line 52
    .line 53
    const-string v1, "BackupNew"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lzd3;->BackupNew:Lzd3;

    .line 60
    .line 61
    new-instance v0, Lzd3;

    .line 62
    .line 63
    const-string v1, "InstalledFromGooglePlay"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lzd3;->InstalledFromGooglePlay:Lzd3;

    .line 70
    .line 71
    new-instance v0, Lzd3;

    .line 72
    .line 73
    const-string v1, "NotInstalledFromGooglePlay"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lzd3;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lzd3;->NotInstalledFromGooglePlay:Lzd3;

    .line 80
    .line 81
    invoke-static {}, Lzd3;->$values()[Lzd3;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lzd3;->$VALUES:[Lzd3;

    .line 86
    .line 87
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lzd3;->$ENTRIES:Ljx2;

    .line 92
    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
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
    sget-object v0, Lzd3;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lzd3;
    .locals 1

    .line 1
    const-class v0, Lzd3;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzd3;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lzd3;
    .locals 1

    .line 1
    sget-object v0, Lzd3;->$VALUES:[Lzd3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lzd3;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lyd3;->a:[I

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    aget p0, v1, p0

    .line 14
    .line 15
    packed-switch p0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lq;->j()V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    const p0, 0x7f1303dc

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_1
    const p0, 0x7f1302c3

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    const p0, 0x7f1302c1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_3
    const p0, 0x7f1302c2

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_4
    const p0, 0x7f1300bf

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    const p0, 0x7f13007c

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_6
    const p0, 0x7f13007b

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    const p0, 0x7f130030

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge isApplied()Z
    .locals 0

    .line 1
    invoke-super {p0}, Lnd3;->isApplied()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public isDefault()Z
    .locals 1

    .line 1
    sget-object v0, Lzd3;->All:Lzd3;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public reset()V
    .locals 2

    .line 1
    sget-object p0, Lzd3;->All:Lzd3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "key_filter_app_backup_age"

    .line 15
    .line 16
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "editor"

    .line 25
    .line 26
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method
