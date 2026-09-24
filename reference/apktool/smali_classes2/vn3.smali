.class public final Lvn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

.field public final b:Lkj3;

.field public final c:Lun3;


# direct methods
.method public constructor <init>(Ldo3;Lqp3;Lnn3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p1, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 5
    .line 6
    iput-object p2, p0, Lvn3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 7
    .line 8
    iget-object p2, p1, Ldo3;->b:Lkj3;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iput-object p2, p0, Lvn3;->b:Lkj3;

    .line 14
    .line 15
    new-instance p2, Lun3;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lun3;-><init>(Lvn3;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lvn3;->c:Lun3;

    .line 21
    .line 22
    iget-object p0, p1, Ldo3;->c:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "props.cloudBackup null despite this being a cloud restore task"

    .line 30
    .line 31
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p3

    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    const-string p0, "localBackup is null!!"

    .line 37
    .line 38
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p3
.end method
