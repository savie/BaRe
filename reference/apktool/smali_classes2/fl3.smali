.class public final synthetic Lfl3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


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
    iput-object p1, p0, Lfl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lfl3;->b:Lkj3;

    .line 7
    .line 8
    iput-object p3, p0, Lfl3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 3
    .line 4
    move-object v5, p2

    .line 5
    check-cast v5, Ljava/lang/String;

    .line 6
    .line 7
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lfl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object p1, Lzn4;->a:Lzn4;

    .line 19
    .line 20
    new-instance v0, Lcm3;

    .line 21
    .line 22
    iget-object v1, p0, Lfl3;->b:Lkj3;

    .line 23
    .line 24
    iget-object v2, p0, Lfl3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lcm3;-><init>(Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;Ldm3;Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lbe8;->a:Lbe8;

    .line 33
    .line 34
    return-object p0
.end method
