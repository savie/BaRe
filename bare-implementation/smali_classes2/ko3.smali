.class public final synthetic Lko3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lko3;->a:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lko3;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    sget p2, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p2, Lzn4;->a:Lzn4;

    .line 11
    .line 12
    new-instance p2, Lqj3;

    .line 13
    .line 14
    iget-object v0, p0, Lko3;->a:Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 15
    .line 16
    iget-boolean p0, p0, Lko3;->b:Z

    .line 17
    .line 18
    invoke-direct {p2, v0, p0, p1}, Lqj3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;ZLorg/swiftapps/swiftbackup/settings/FolderRestoreStrategy;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lbe8;->a:Lbe8;

    .line 25
    .line 26
    return-object p0
.end method
