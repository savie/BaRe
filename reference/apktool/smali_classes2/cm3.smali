.class public final synthetic Lcm3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lkj3;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

.field public final synthetic c:Ldm3;

.field public final synthetic d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Ldm3;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcm3;->a:Lkj3;

    .line 5
    .line 6
    iput-object p2, p0, Lcm3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 7
    .line 8
    iput-object p3, p0, Lcm3;->c:Ldm3;

    .line 9
    .line 10
    iput-object p4, p0, Lcm3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 11
    .line 12
    iput-object p5, p0, Lcm3;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v2, p0, Lcm3;->a:Lkj3;

    .line 2
    .line 3
    iget-object v3, p0, Lcm3;->b:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Both localBackup and cloudBackup are null"

    .line 11
    .line 12
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Ldo3;

    .line 18
    .line 19
    iget-object v6, p0, Lcm3;->c:Ldm3;

    .line 20
    .line 21
    invoke-virtual {v6}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v4, p0, Lcm3;->d:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 26
    .line 27
    iget-object v5, p0, Lcm3;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct/range {v0 .. v5}, Ldo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lwy7;

    .line 33
    .line 34
    invoke-direct {p0, v4}, Lwy7;-><init>(Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Loj;

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-direct {v1, v2, v0, p0, v6}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0
.end method
