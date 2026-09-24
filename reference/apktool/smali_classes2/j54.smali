.class public final Lj54;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbt3;

.field public final c:Lbt3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lji1;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lik0;->a:Lik0;

    .line 9
    .line 10
    const-class v4, Lik0;

    .line 11
    .line 12
    const-string v5, "hasTelephony"

    .line 13
    .line 14
    const-string v6, "hasTelephony()Z"

    .line 15
    .line 16
    invoke-direct/range {v1 .. v8}, Lji1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v9, Li54;

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const-class v12, Lik0;

    .line 26
    .line 27
    const-string v13, "hasWallpaper"

    .line 28
    .line 29
    const-string v14, "hasWallpaper()Z"

    .line 30
    .line 31
    move-object v11, v3

    .line 32
    invoke-direct/range {v9 .. v16}, Li54;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    move-object/from16 v2, p1

    .line 39
    .line 40
    iput-object v2, v0, Lj54;->a:Landroid/content/Context;

    .line 41
    .line 42
    iput-object v1, v0, Lj54;->b:Lbt3;

    .line 43
    .line 44
    iput-object v9, v0, Lj54;->c:Lbt3;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(IIIII)Ls54;
    .locals 14

    .line 1
    iget-object p0, p0, Lj54;->a:Landroid/content/Context;

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ls54;

    .line 13
    .line 14
    const-string p0, "shortcut:"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v2, Lu54;->SHORTCUTS:Lu54;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    const/16 v13, 0x5c0

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v1, p0

    .line 37
    move/from16 v5, p3

    .line 38
    .line 39
    move/from16 v6, p4

    .line 40
    .line 41
    move/from16 v12, p5

    .line 42
    .line 43
    invoke-direct/range {v0 .. v13}, Ls54;-><init>(Ljava/lang/String;Lu54;Ljava/lang/String;Ljava/lang/String;IILji;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/lang/Integer;Lzc6;Ljava/util/List;II)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
