.class public final synthetic Llo3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;ZLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Llo3;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Llo3;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 2
    .line 3
    iget-object v0, p0, Llo3;->a:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

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
    new-instance v1, Lwy7;

    .line 15
    .line 16
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->Companion:Ltn3;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v3, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;->MISSING_ONLY:Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 22
    .line 23
    invoke-direct {v1, v3}, Lwy7;-><init>(Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lbj0;

    .line 27
    .line 28
    iget-object v4, p0, Llo3;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v3, v0, v4, v1}, Lbj0;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;Ljava/util/ArrayList;Lwy7;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p0, p0, Llo3;->b:Z

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1, v3, p0}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_1
    invoke-virtual {v3}, Lbj0;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-object v2
.end method
