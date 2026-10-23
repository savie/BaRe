.class public final synthetic Lro3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lro3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 5
    .line 6
    iput p2, p0, Lro3;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lro3;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 2
    .line 3
    iget-object v0, p0, Lro3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    iget v8, p0, Lro3;->b:I

    .line 15
    .line 16
    if-nez v8, :cond_1

    .line 17
    .line 18
    const p0, 0x7f1303bd

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v1, Lzn4;->a:Lzn4;

    .line 29
    .line 30
    new-instance v1, Lcv;

    .line 31
    .line 32
    const/16 v3, 0xe

    .line 33
    .line 34
    invoke-direct {v1, v3, v0, p0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_1
    new-instance v3, Llk3;

    .line 42
    .line 43
    const v11, 0x7f080121

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    const-string v4, "Copy folder setups"

    .line 48
    .line 49
    const v5, 0x7f1301c2

    .line 50
    .line 51
    .line 52
    const v7, 0x7f080121

    .line 53
    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    const v10, 0x7f1301c2

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v3 .. v11}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    iget-object p0, p0, Lro3;->c:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    sput-object v1, Lqo3;->k:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance p0, Landroid/content/Intent;

    .line 72
    .line 73
    const-class v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 74
    .line 75
    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "EXTRA_FOLDER_BATCH_ACTION_ITEM"

    .line 79
    .line 80
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    return-object v2
.end method
